//`timescale 1ns / 1ps

//module BITRATE_tb;
////parameter   Baudios9600 = 4'b0110;

//reg       RST;
//reg       clk;
//reg       EN;
//reg [31:0] bitrate;

//wire      uart_clock;


//BITRATE uut(
//    .RST(RST),
//    .clk(clk),
//    .bitrate(bitrate),
//    .EN(EN),
//    .uart_clock(uart_clock)
//);

//initial
//begin
//    $dumpfile("BITRATE_tb.vcd");
//    $dumpvars;
//end

////  System's clock 100MHz
//initial
//begin
//    clk = 1'b0;
//    forever #10 clk = ~clk;
//end

////  Resetting the system
//initial 
//begin
//    RST = 1'b0;
//    #100  RST = 1'b1;
//end
//initial 
//begin
//    EN = 1'b0;
//    #100  EN = 1'b1;
//end

////  Test
////integer i = 0;
//initial 
//begin
//    //for (i = 0; i < 4; i = i +1) 
//    //begin
//        bitrate = 10'd163;
//      //  #(3000000/(i+1));
//    //end
//end

//endmodule
