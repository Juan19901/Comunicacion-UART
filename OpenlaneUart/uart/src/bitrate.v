
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
            input RST_BIT, EN, clk_CPU;
            input [3:0]bitrate;
            output reg uart_clock;

reg [9:0] counter_final;
reg [9:0] counter;


always @(*)begin
 
    case(bitrate)
    //300, 600, 1200, 1800, 2400, 4800, 9600, 19200, 38400, 57600, 115200
    Baudios300 : counter_final = 10'd100;
    Baudios600 : counter_final = 10'd150;
    Baudios1200 : counter_final = 10'd20;
    Baudios1800: counter_final = 10'd250;
    Baudios2400 : counter_final = 10'd300;
    Baudios4800: counter_final = 10'd350;
    Baudios9600 : counter_final = 10'd400;
    Baudios19200 : counter_final = 10'd450;
    Baudios38400 : counter_final = 10'd500;
    Baudios57600 : counter_final = 10'd550;
    Baudios115200 : counter_final = 10'd600;
    default : counter_final = 10'd400;
    
    
    endcase

end

always @(posedge clk_CPU or negedge RST_BIT) begin
    if (!RST_BIT) begin
        counter <= 10'd0;
        uart_clock <= 1'b0;
    end else if (EN) begin
        if (counter == counter_final) begin
            uart_clock <= ~uart_clock;
            counter <= 10'd0;
        end else begin
            counter <= counter + 1'd1;
        end
    end
end
endmodule
