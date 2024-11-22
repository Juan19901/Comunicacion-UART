`timescale 1ns / 1ps

module Tx_tb;

    // Declaración de señales
    reg clk, RST, UART_WRITE, UART_BITS;
    reg [7:0] DATA_IN_Tx;
    wire DATA_OUT_Tx, IRQ_Tx;
    reg UART_PARITY;
    
    parameter clk_period = 20;
    // Instancia del módulo bajo prueba
    Tx uut(
        .RST(RST),
        .clk(clk),
        .UART_WRITE(UART_WRITE),
        .UART_BITS(UART_BITS),
        .UART_PARITY(UART_PARITY),
        .IRQ_Tx(IRQ_Tx),
        .DATA_IN_Tx(DATA_IN_Tx),
        .DATA_OUT_Tx(DATA_OUT_Tx)
    );

    // Configuración para guardar ondas en archivo
    initial begin
        $dumpfile("Tx_tb.vcd");
        $dumpvars(0, Tx_tb);
    end

     
    initial begin
        clk = 1'b0;
        forever #10 clk = ~clk; 
    end

    initial begin
        RST = 1'b0;
        #100 RST = 1'b1; 
    end

  
    initial begin
        
        DATA_IN_Tx = 8'b01011010;
        
        UART_WRITE = 1'b0;
        UART_PARITY = 2'b00;
        UART_BITS = 1'b0;
        
        #(clk_period);
        UART_WRITE = 1'b1;
        UART_PARITY = 2'b01;
        UART_BITS = 1'b1;
        #(clk_period);
        UART_WRITE = 1'b0;
        #(clk_period);
        
end
endmodule

//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 18.11.2024 10:02:23
//// Design Name: 
//// Module Name: Tx_tb
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module Tx_tb;

//    // Declaración de señales
//    reg clk, RST, UART_WRITE, UART_BITS, EN;
//    reg [7:0] DATA_IN;
//    wire DATA_OUT_Tx, IRQ_Tx;
//    reg [3:0] bitrate;
//    reg  UART_PARITY; // Paridad ahora es de 2 bits, según tu módulo
//    reg uart_clk_bit;         // Salida de reloj UART generada por el módulo BITRATE


//    // Instancia del módulo bajo prueba
//    Tx uut (
//        .clk(clk),
//        .uart_clk_bit(uart_clk_bit), // Conexión al reloj generado por BITRATE
//        .bitrate(bitrate),
//        .RST(RST),
//        .UART_WRITE(UART_WRITE),
//        .DATA_IN(DATA_IN),
//        .DATA_OUT_Tx(DATA_OUT_Tx),
//        .UART_BITS(UART_BITS),
//        .UART_PARITY(UART_PARITY),
//        .IRQ_Tx(IRQ_Tx),
//        .EN(EN)
//    );

////    BITRATE uuut(
////        .RST(RST),
////        .EN(EN),     // Activar BITRATE cuando se escribe UART
////        .clk_CPU(clk),
////        .bitrate(bitrate),
////        .uart_clock(uart_clk_bit)
////    );
//    // Configuración para guardar ondas en archivo
//    initial begin
//        $dumpfile("Tx_tb.vcd");
//        $dumpvars(0, Tx_tb);
//    end

//    // Generador de reloj (10 MHz)
//    initial begin
//        clk = 1'b0;
//        forever #5 clk = ~clk; // Período de 100 ns (10 MHz)
//    end

//    // Generación de señal de reset
//    initial begin
//        RST = 1'b0;
//        #10 RST = 1'b1; // Liberar reset después de 200 ns
//    end

//    initial begin
//        EN = 1'b0;
//        #10 EN = 1'b1; // Liberar reset después de 200 ns
//    end

//    initial begin
//        #10 uart_clk_bit = 1'b0;
//        #10 bitrate = 4'b0110; 
//    end
//    // Generación de estímulos
//    initial begin
//        // Configuración inicial
//        DATA_IN = 8'b01011010; // Datos iniciales
//        UART_WRITE = 1'b0;     // No se escribe al inicio
//        UART_BITS = 1'b1;      // 8 bits de datos
//        //UART_PARITY = 2'b00;   // Sin paridad

//        // Esperar a que el sistema se estabilice
//       #10;
        
//        // Primera transmisión: paridad impar
//        UART_WRITE = 1'b1;     // Inicia la transmisión
//        UART_PARITY = 1'b1;   // Configurar paridad impar
//        #100 UART_WRITE = 1'b0;
    
//end

//endmodule





