`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2024 09:52:17
// Design Name: 
// Module Name: Rx_tb
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


module Rx_tb;

    // Declaración de señales
    reg clk, RST, uart_clk;
    reg  DATA_IN_Rx;
    wire [9:0] DATA_OUT_Rx; 
    wire rst_bitrate, UART_AVAIL, IRQ_Rx;

    parameter clk_period = 200;
    // Instancia del módulo bajo prueba
    Rx uut(
        .RST(RST),
        .clk(clk),
        .uart_clk(uart_clk),
        
        .IRQ_Rx(IRQ_Rx),
        .rst_bitrate(rst_bitrate),
        .UART_AVAIL(UART_AVAIL),
        .DATA_IN_Rx(DATA_IN_Rx),
        .DATA_OUT_Rx(DATA_OUT_Rx)
    );

    // Configuración para guardar ondas en archivo
    initial begin
        $dumpfile("Rx_tb.vcd");
        $dumpvars(0, Rx_tb);
    end

    // Generador de reloj (100 MHz)
    initial begin
        uart_clk = 1'b0;
        forever #100 uart_clk = ~uart_clk; 
    end

    initial begin
    clk = 1'b0;
        forever #5 clk = ~clk;
    end
    // Generación de señal de reset
    initial begin
        RST = 1'b0;
        #10 RST = 1'b1; // Liberar reset después de 100 ns
    end

    // Generación de estímulos
    initial begin
        // Configuración inicial
        //DATA_IN = 10'b0110110101; 
        DATA_IN_Rx = 1'b0;
        #(clk_period);
         
        DATA_IN_Rx = 1'b0;
        #(clk_period);
        DATA_IN_Rx = 1'b1;
        #(clk_period);
        DATA_IN_Rx = 1'b1;
        #(clk_period);
        DATA_IN_Rx = 1'b0;
        #(clk_period);
        DATA_IN_Rx = 1'b1;
        #(clk_period);
        DATA_IN_Rx = 1'b1;
        #(clk_period);
        DATA_IN_Rx = 1'b0;
        #(clk_period);
        DATA_IN_Rx = 1'b1;
        #(clk_period);
        DATA_IN_Rx = 1'b0;
        #(clk_period);
        
        
end
endmodule
