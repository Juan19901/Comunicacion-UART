////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2024 09:36:10
// Design Name: 
// Module Name: UART
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Este módulo UART implementa la lógica para la transmisión y recepción de datos 
// en un sistema UART completo, controlado por un reloj de frecuencia configurable 
// y con capacidad para manejar la paridad y la longitud de los datos transmitidos.
// 
// Dependencies: 
// El módulo depende de otros módulos como 'bitrate', 'tx' y 'rx' para gestionar 
// la velocidad de transmisión, transmisión de datos y recepción de datos respectivamente.
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//  
//////////////////////////////////////////////////////////////////////////////////

module uart( 
    
    // Entradas del módulo UART
    input RST,                // Reset asíncrono
    input EN,                 // Señal de habilitación del UART
    input clk_CPU,            // Reloj principal del procesador
    input UART_WRITE,         // Señal de escritura de datos a transmitir
    input UART_BITS,          // Longitud de los bits de datos (8 bits o más)
    input UART_PARITY,        // Control de paridad (habilitar o deshabilitar)
    input DATA_IN_Rx,         // Datos recibidos por el receptor UART
    input [7:0] DATA_IN_Tx,   // Datos a transmitir por el transmisor UART
    input [3:0] bitrate,      // Configuración de la velocidad de transmisión
    
    // Salidas del módulo UART
    output uart_clock,        // Reloj generado para la UART, utilizado por los módulos 'tx' y 'rx'
    output UART_AVAIL,        // Señal que indica que los datos están disponibles para el receptor
    output IRQ_Rx,            // Interrupción para indicar que la recepción ha terminado
    output DATA_OUT_Tx,       // Datos transmitidos por el transmisor UART
    output IRQ_Tx,            // Interrupción para indicar que la transmisión ha terminado
    output [9:0] DATA_OUT_Rx  // Datos recibidos por el receptor UART, extendido a 10 bits
);

    // Señales internas para manejar el reset del bitrate y la sincronización
    wire rst_bit;
    wire rst_bitrate_uart;

    // Genera la señal de reset para el control del bitrate
    assign rst_bit = (RST && rst_bitrate_uart) ? 1'b1 : 1'b0;

    // Instanciación del módulo 'bitrate' que controla la velocidad de transmisión
    bitrate uart1(
        .RST_BIT(rst_bit),      // Se le pasa el control de reset del bitrate
        .EN(EN),                // Se habilita el control de transmisión
        .clk_CPU(clk_CPU),      // El reloj del procesador
        .bitrate(bitrate),      // La configuración de la velocidad de transmisión
        .uart_clock(uart_clock) // Señal de reloj generada para UART
    );

    // Instanciación del módulo 'tx' (transmisor UART) para transmitir datos
    tx uart2(
        .RST(RST),              // Reset asíncrono del transmisor
        .clk(uart_clock),       // Reloj generado por el módulo 'bitrate'
        .UART_WRITE(UART_WRITE),// Señal de control de escritura de datos
        .UART_BITS(UART_BITS),  // Longitud de los datos (por ejemplo, 8 bits)
        .UART_PARITY(UART_PARITY), // Control de paridad
        .DATA_IN_Tx(DATA_IN_Tx),  // Datos de entrada a transmitir
        .DATA_OUT_Tx(DATA_OUT_Tx), // Datos transmitidos
        .IRQ_Tx(IRQ_Tx)         // Interrupción de finalización de transmisión
    );

    // Instanciación del módulo 'rx' (receptor UART) para recibir datos
    rx uart3(
        .clk(clk_CPU),           // Reloj del procesador para sincronización
        .RST(RST),               // Reset asíncrono del receptor
        .uart_clk(uart_clock),   // Reloj UART generado
        .DATA_IN_Rx(DATA_IN_Rx),// Datos de entrada recibidos
        .rst_bitrate(rst_bitrate_uart), // Señal de reset para el control del bitrate en recepción
        .UART_AVAIL(UART_AVAIL), // Señal que indica que los datos están disponibles
        .IRQ_Rx(IRQ_Rx),         // Interrupción de finalización de recepción
        .DATA_OUT_Rx(DATA_OUT_Rx) // Datos recibidos y enviados al sistema
    );

endmodule
