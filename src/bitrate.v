
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2024 18:52:50
// Design Name: 
// Module Name: BITRATE
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 

//////////////////////////////////////////////////////////////////////////////////


module bitrate(RST_BIT, EN, clk_CPU, bitrate, uart_clock);
 
// Definición de parámetros para diferentes tasas de baudios.
// Cada valor representa un identificador único de 4 bits para una velocidad de transmisión específica.
parameter   Baudios300 =   4'b0000,
            Baudios600 =   4'b0001,
            Baudios1200 =  4'b0010,
            Baudios1800 =  4'b0011,
            Baudios2400 =  4'b0100,
            Baudios4800 =  4'b0101,
            Baudios9600 =  4'b0110, 
            Baudios19200 = 4'b0111,
            Baudios38400 = 4'b1000,
            Baudios57600 = 4'b1001,
            Baudios115200= 4'b1010;

// Definición de entradas y salidas del módulo.
input RST_BIT, EN, clk_CPU;           // RST_BIT: Reset activo en bajo, EN: Habilitación del módulo, clk_CPU: Reloj del sistema.
input [3:0] bitrate;                  // Entrada de 4 bits que selecciona la velocidad de baudios.
output reg uart_clock;                // Salida del reloj generado para la UART.

reg [9:0] counter_final;              // Registro que almacena el valor máximo del contador para una velocidad de baudios.
reg [9:0] counter;                    // Contador actual que genera el ciclo del reloj UART.

// Bloque combinacional: Define el valor máximo del contador (`counter_final`) según la velocidad seleccionada.
always @(*) begin
    case(bitrate)
        // Asignación de valores de contador final para cada velocidad de baudios.
        // Estos valores deben ajustarse según la frecuencia del reloj del sistema (`clk_CPU`).
        Baudios300     : counter_final = 10'd100;   // Ejemplo: 300 baudios requiere un contador final de 100 ciclos.
        Baudios600     : counter_final = 10'd150;
        Baudios1200    : counter_final = 10'd20;    
        Baudios1800    : counter_final = 10'd250;
        Baudios2400    : counter_final = 10'd300;
        Baudios4800    : counter_final = 10'd350;
        Baudios9600    : counter_final = 10'd400;
        Baudios19200   : counter_final = 10'd450;
        Baudios38400   : counter_final = 10'd500;
        Baudios57600   : counter_final = 10'd550;
        Baudios115200  : counter_final = 10'd600;
        default        : counter_final = 10'd400;   // Valor por defecto (ejemplo: 9600 baudios).
    endcase
end

// Bloque secuencial: Generación del reloj UART y control del contador.
always @(posedge clk_CPU or negedge RST_BIT) begin
    if (!RST_BIT) begin
        // Cuando RST_BIT está en bajo, se reinician el contador y la señal de reloj UART.
        counter <= 10'd0;
        uart_clock <= 1'b0;
    end else if (EN) begin
        // Si el módulo está habilitado (EN=1), comienza el conteo.
        if (counter == counter_final) begin
            // Cuando el contador alcanza el valor máximo, invierte la señal del reloj UART.
            uart_clock <= ~uart_clock;
            counter <= 10'd0;         // Reinicia el contador para el siguiente ciclo.
        end else begin
            // Incrementa el contador en cada ciclo del reloj del sistema.
            counter <= counter + 1'd1;
        end
    end
end
endmodule