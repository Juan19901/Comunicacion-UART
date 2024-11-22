
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
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rx(clk, uart_clk, RST, DATA_IN_Rx, rst_bitrate, UART_AVAIL, IRQ_Rx, DATA_OUT_Rx);

    input clk, RST, uart_clk;
    input  DATA_IN_Rx;
    output reg rst_bitrate, UART_AVAIL, IRQ_Rx;
    output reg [9:0] DATA_OUT_Rx;

parameter   IDLE = 4'b0000,
            START = 4'b0001,
            BIT_0 = 4'b0010,
            BIT_1 = 4'b0011,
            BIT_2 = 4'b0100, 
            BIT_3 = 4'b0101,
            BIT_4 = 4'b0110,
            BIT_5 = 4'b0111,
            BIT_6 = 4'b1000,
            BIT_7 = 4'b1001,
            PARITY = 4'b1010,
            STOP = 4'b1011,
            RST_BITRATE = 4'b1100;

parameter   EVEN = 2'b01,
            ODD = 2'b10,
            No_parity = 2'b00;

reg [3:0] state, next;


always @(posedge uart_clk, negedge RST) begin
    if (!RST)
        state <= IDLE;
    else 
        state <= next;
end

always @(state or rst_bitrate or UART_AVAIL or DATA_OUT_Rx) begin
    next = 'bx;
    case (state)
        IDLE:    if (!DATA_IN_Rx) next = START; else next = IDLE;
        START:  if (!DATA_IN_Rx) next = RST_BITRATE; else next = START;
        RST_BITRATE: next = BIT_0;
        
        BIT_0:   next = BIT_1;
        BIT_1:   next = BIT_2;
        BIT_2:   next = BIT_3;
        BIT_3:   next = BIT_4;
        BIT_4:   next = BIT_5;
        BIT_5:   next = BIT_6;
        
        BIT_6:   if (DATA_IN_Rx) next = BIT_7;
                 else if (DATA_IN_Rx) next = PARITY;
                 else next = STOP;
                 
        BIT_7:   if (DATA_IN_Rx) next = PARITY; else next = STOP;
        PARITY:  next = STOP;
        STOP:    next = IDLE;
    endcase
end

always @(posedge clk, negedge RST) begin
    if (!RST) begin
        DATA_OUT_Rx <= 1'b1;  
        IRQ_Rx <= 1'b0;
        UART_AVAIL <= 1'b0;
        
        
    end else begin
    rst_bitrate <= 1'b1;
        case (state)
            START: rst_bitrate <= 1'b1;
            RST_BITRATE: rst_bitrate <= 1'b1;
            
            BIT_0: DATA_OUT_Rx[0] <= DATA_IN_Rx; 
            BIT_1: DATA_OUT_Rx[1] <= DATA_IN_Rx; 
            BIT_2: DATA_OUT_Rx[2] <= DATA_IN_Rx; 
            BIT_3: DATA_OUT_Rx[3] <= DATA_IN_Rx; 
            BIT_4: DATA_OUT_Rx[4] <= DATA_IN_Rx; 
            BIT_5: DATA_OUT_Rx[5] <= DATA_IN_Rx; 
            BIT_6: DATA_OUT_Rx[6] <= DATA_IN_Rx; 
            BIT_7: DATA_OUT_Rx[7] <= DATA_IN_Rx;
            
            PARITY: if(DATA_IN_Rx == 1'b1) DATA_OUT_Rx <= 1'b1;
                    else DATA_OUT_Rx <= 1'b0;
                     
            STOP:    begin
                        DATA_OUT_Rx <= 1'b1; 
                        IRQ_Rx <= 1'b1;
                        UART_AVAIL <= 1'b1;   
                     end
        endcase
    end
end

endmodule

