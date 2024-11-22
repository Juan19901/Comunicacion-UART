`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2024 10:14:09
// Design Name: 
// Module Name: UART_tb
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
 

module UART_tb;
    
    reg RST, EN, clk_CPU, UART_WRITE, UART_BITS, UART_PARITY, DATA_IN_Rx;
    reg [7:0] DATA_IN_Tx;
    reg [3:0] bitrate;
    wire uart_clock, UART_AVAIL, IRQ_Rx;
    wire DATA_OUT_Tx, IRQ_Tx;
    wire [9:0] DATA_OUT_Rx;

    parameter clk_period = 20000;
     
     
    UART uut(
         
        .EN(EN),
        .RST(RST),
        .clk_CPU(clk_CPU),
        .UART_WRITE(UART_WRITE), 
        .UART_BITS(UART_BITS), 
        .UART_PARITY(UART_PARITY), 
        .DATA_IN_Rx(DATA_IN_Rx),
        .DATA_IN_Tx(DATA_IN_Tx),
        .IRQ_Rx(IRQ_Rx),
        .IRQ_Tx(IRQ_Tx),
        .bitrate(bitrate),
        .uart_clock(uart_clock),
        .UART_AVAIL(UART_AVAIL),
        .DATA_OUT_Rx(DATA_OUT_Rx),
        .DATA_OUT_Tx(DATA_OUT_Tx)
    );

     
    initial begin
        $dumpfile("UART_tb.vcd");
        $dumpvars(0, UART_tb);
    end
     
    initial begin
        clk_CPU = 1'b0;
        forever #100 clk_CPU = ~clk_CPU; 
    end
    
    initial begin
        RST = 1'b0;
        #20 RST = 1'b1; 
    end
    
    initial begin
        EN = 1'b0;
        #20 EN = 1'b1; 
    end

    
    initial begin
    
        bitrate = 4'b0010; 
        DATA_IN_Tx = 8'b01011010;
        DATA_IN_Rx = 1'b0;
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
        
        DATA_IN_Rx = 1'b1;
        #(clk_period);
        DATA_IN_Rx = 1'b0;
        #(clk_period);
        DATA_IN_Rx = 1'b1;
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
