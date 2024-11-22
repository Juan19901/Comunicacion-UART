`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2024 07:58:42
// Design Name: 
// Module Name: Rx
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Módulo de recepción de datos UART con control de estados
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rx(clk, uart_clk, RST, DATA_IN_Rx, rst_bitrate, UART_AVAIL, IRQ_Rx, DATA_OUT_Rx);

    // Definición de entradas y salidas del módulo
    input clk, RST, uart_clk;       // Entradas: Reloj del sistema, Reloj UART, y Reset
    input DATA_IN_Rx;               // Entrada de datos de recepción UART (bit de entrada serial)
    output reg rst_bitrate, UART_AVAIL, IRQ_Rx;   // Salidas: Señales de control y de interrupción
    output reg [9:0] DATA_OUT_Rx;   // Salida de datos recibidos, 10 bits (incluyendo el bit de paridad)

    // Definición de los estados del FSM (Máquina de Estados Finita) de recepción
    parameter   IDLE = 4'b0000,      // Estado de reposo (sin actividad)
                START = 4'b0001,     // Estado que indica el inicio de la recepción
                BIT_0 = 4'b0010,    // Recibiendo el bit 0
                BIT_1 = 4'b0011,    // Recibiendo el bit 1
                BIT_2 = 4'b0100,    // Recibiendo el bit 2
                BIT_3 = 4'b0101,    // Recibiendo el bit 3
                BIT_4 = 4'b0110,    // Recibiendo el bit 4
                BIT_5 = 4'b0111,    // Recibiendo el bit 5
                BIT_6 = 4'b1000,    // Recibiendo el bit 6
                BIT_7 = 4'b1001,    // Recibiendo el bit 7
                PARITY = 4'b1010,   // Estado de paridad
                STOP = 4'b1011,     // Estado de parada (fin de la recepción)
                RST_BITRATE = 4'b1100; // Estado de reinicio de bitrate (velocidad de baudios)

    // Definición de valores de paridad
    parameter   EVEN = 2'b01,        // Paridad par
                ODD = 2'b10,         // Paridad impar
                No_parity = 2'b00;   // Sin paridad

    reg [3:0] state, next;          // Registro para el estado actual y el siguiente

    // Bloque de transición de estados (FSM)
    always @(posedge uart_clk, negedge RST) begin
        if (!RST)                    // Si el reset está activo, se va al estado IDLE
            state <= IDLE;
        else 
            state <= next;          // De lo contrario, se transita al siguiente estado
    end

    // Lógica combinacional para determinar el siguiente estado en función del estado actual
    always @(state or rst_bitrate or UART_AVAIL or DATA_OUT_Rx) begin
        next = 'bx;  // Inicializar la siguiente transición como desconocida
        case (state)
            IDLE:    if (!DATA_IN_Rx) next = START; else next = IDLE;  // Si la señal de entrada es baja, se inicia la recepción
            START:  if (!DATA_IN_Rx) next = RST_BITRATE; else next = START; // Espera a que DATA_IN_Rx sea baja para comenzar
            RST_BITRATE: next = BIT_0;  // Reinicia la recepción y pasa al bit 0
            
            // Transiciones para recibir los 8 bits de datos
            BIT_0:   next = BIT_1;
            BIT_1:   next = BIT_2;
            BIT_2:   next = BIT_3;
            BIT_3:   next = BIT_4;
            BIT_4:   next = BIT_5;
            BIT_5:   next = BIT_6;
            
            BIT_6:   if (DATA_IN_Rx) next = BIT_7;   // Si el bit es 1, pasa a BIT_7
                     else if (DATA_IN_Rx) next = PARITY; // Si es 0, pasa a paridad
                     else next = STOP; // Si es 0, pasa a la comprobación de STOP
                     
            BIT_7:   if (DATA_IN_Rx) next = PARITY; else next = STOP;
            PARITY:  next = STOP;
            STOP:    next = IDLE;  // Después del STOP, regresa al estado IDLE
        endcase
    end

    // Lógica secuencial para actualizar las señales y almacenar los datos recibidos
    always @(posedge clk, negedge RST) begin
        if (!RST) begin
            DATA_OUT_Rx <= 1'b1;  // Restablecer la salida de datos
            IRQ_Rx <= 1'b0;        // Desactivar la interrupción
            UART_AVAIL <= 1'b0;    // Indicar que no hay datos disponibles
        end else begin
            rst_bitrate <= 1'b1;   // Restablecer la señal de bitrate
            case (state)
                START: rst_bitrate <= 1'b1; // Restablecer el bitrate en el estado de inicio
                RST_BITRATE: rst_bitrate <= 1'b1; // Restablecer el bitrate cuando se reinicia
                BIT_0: DATA_OUT_Rx[0] <= DATA_IN_Rx;  // Almacenar el bit 0
                BIT_1: DATA_OUT_Rx[1] <= DATA_IN_Rx;  // Almacenar el bit 1
                BIT_2: DATA_OUT_Rx[2] <= DATA_IN_Rx;  // Almacenar el bit 2
                BIT_3: DATA_OUT_Rx[3] <= DATA_IN_Rx;  // Almacenar el bit 3
                BIT_4: DATA_OUT_Rx[4] <= DATA_IN_Rx;  // Almacenar el bit 4
                BIT_5: DATA_OUT_Rx[5] <= DATA_IN_Rx;  // Almacenar el bit 5
                BIT_6: DATA_OUT_Rx[6] <= DATA_IN_Rx;  // Almacenar el bit 6
                BIT_7: DATA_OUT_Rx[7] <= DATA_IN_Rx;  // Almacenar el bit 7
                
                PARITY: if(DATA_IN_Rx == 1'b1) DATA_OUT_Rx <= 1'b1; // Verificación de paridad
                         else DATA_OUT_Rx <= 1'b0;
                         
                STOP:    begin
                            DATA_OUT_Rx <= 1'b1;  // Completar el byte recibido
                            IRQ_Rx <= 1'b1;        // Señalar interrupción
                            UART_AVAIL <= 1'b1;    // Indicar que los datos están disponibles
                         end
            endcase
        end
    end

endmodule
