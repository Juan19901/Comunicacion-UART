module tx(clk, RST, UART_WRITE, DATA_IN_Tx, DATA_OUT_Tx, UART_BITS, UART_PARITY, IRQ_Tx);

    // Entradas:
    input clk, RST, UART_WRITE, UART_BITS, UART_PARITY;
    input [7:0] DATA_IN_Tx; // 8 bits de datos de entrada para transmitir

    // Salidas:
    output reg DATA_OUT_Tx, // Dato de salida de transmisión serial
    output reg IRQ_Tx;      // Señal de interrupción que indica que la transmisión ha terminado

    // Parámetros de estados de la máquina de estados
    parameter   IDLE = 4'b0000,  // Estado inactivo
                START = 4'b0001, // Estado de inicio, transmitiendo bit de inicio (0)
                BIT_0 = 4'b0010, // Transmitir el primer bit de datos
                BIT_1 = 4'b0011, // Transmitir el segundo bit de datos
                BIT_2 = 4'b0100, // Transmitir el tercer bit de datos
                BIT_3 = 4'b0101, // Transmitir el cuarto bit de datos
                BIT_4 = 4'b0110, // Transmitir el quinto bit de datos
                BIT_5 = 4'b0111, // Transmitir el sexto bit de datos
                BIT_6 = 4'b1000, // Transmitir el séptimo bit de datos
                BIT_7 = 4'b1001, // Transmitir el octavo bit de datos
                PARITY = 4'b1010, // Transmitir bit de paridad (si se utiliza)
                STOP = 4'b1011;  // Transmitir bit de parada (1)

    // Valores para paridad
    parameter   EVEN = 2'b01,   // Paridad par
                ODD = 2'b10,    // Paridad impar
                No_parity = 2'b00; // Sin paridad

    // Registro para controlar el estado actual de la FSM y el siguiente estado
    reg [3:0] state, next;
    reg parity_bit; // Registro para almacenar el bit de paridad calculado
    wire [7:0] DATA_IN_Tx; // Redundante, ya definido en las entradas

    // Máquina de estados (FSM) que controla la transmisión de los bits
    always @(posedge clk, negedge RST) begin
        if (!RST)               // Si el reset es bajo, el estado se pone a IDLE
            state <= IDLE;
        else
            state <= next;      // Si no, se cambia al siguiente estado
    end

    // Lógica de transición de la máquina de estados
    always @(state or DATA_OUT_Tx or UART_BITS or UART_PARITY) begin
        next = 'bx;  // Inicializa el siguiente estado a un valor indefinido
        case (state)
            IDLE:    if (UART_WRITE) next = START; else next = IDLE;  // Si UART_WRITE es activado, pasa al estado START
            START:   next = BIT_0; // Pasa al primer bit de datos
            BIT_0:   next = BIT_1; // Pasa al siguiente bit
            BIT_1:   next = BIT_2; // Pasa al siguiente bit
            BIT_2:   next = BIT_3; // Pasa al siguiente bit
            BIT_3:   next = BIT_4; // Pasa al siguiente bit
            BIT_4:   next = BIT_5; // Pasa al siguiente bit
            BIT_5:   next = BIT_6; // Pasa al siguiente bit
            BIT_6:   if (UART_BITS) next = BIT_7; // Si se usan 8 bits, pasa al siguiente bit
                     else if (UART_PARITY) next = PARITY; // Si hay paridad, pasa al estado de paridad
                     else next = STOP; // Si no hay paridad, pasa al estado de STOP
            BIT_7:   if (UART_PARITY) next = PARITY; else next = STOP; // Si hay paridad, pasa a paridad, de lo contrario, a STOP
            PARITY:  next = STOP; // Después de paridad, pasa a STOP
            STOP:    next = IDLE; // Después del bit de parada, vuelve al estado IDLE
        endcase
    end

    // Lógica que controla la salida `DATA_OUT_Tx` y la interrupción `IRQ_Tx`
    always @(posedge clk, negedge RST) begin
        if (!RST) begin
            DATA_OUT_Tx <= 1'b1;   // En reset, la salida de datos es 1 (inactivo)
            IRQ_Tx <= 1'b0;         // La interrupción está desactivada
        end else begin
            case (state)
                START: DATA_OUT_Tx <= 1'b0; // El bit de inicio es 0
                BIT_0: DATA_OUT_Tx <= DATA_IN_Tx[0]; // Transmitir el primer bit
                BIT_1: DATA_OUT_Tx <= DATA_IN_Tx[1]; // Transmitir el segundo bit
                BIT_2: DATA_OUT_Tx <= DATA_IN_Tx[2]; // Transmitir el tercer bit
                BIT_3: DATA_OUT_Tx <= DATA_IN_Tx[3]; // Transmitir el cuarto bit
                BIT_4: DATA_OUT_Tx <= DATA_IN_Tx[4]; // Transmitir el quinto bit
                BIT_5: DATA_OUT_Tx <= DATA_IN_Tx[5]; // Transmitir el sexto bit
                BIT_6: DATA_OUT_Tx <= DATA_IN_Tx[6]; // Transmitir el séptimo bit
                BIT_7: DATA_OUT_Tx <= DATA_IN_Tx[7]; // Transmitir el octavo bit
                PARITY: DATA_OUT_Tx <= 1'b1; // Transmitir el bit de paridad (por defecto 1)
                STOP:    begin
                            DATA_OUT_Tx <= 1'b1;  // El bit de parada es 1
                            IRQ_Tx <= 1'b1;       // La interrupción se activa, indicando que la transmisión ha terminado
                         end
            endcase
        end
    end
endmodule
