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
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//  
//////////////////////////////////////////////////////////////////////////////////

module uart( 
    
    input RST, EN, clk_CPU, UART_WRITE, UART_BITS, UART_PARITY, DATA_IN_Rx,
    input [7:0] DATA_IN_Tx,
    input [3:0]bitrate,
    output uart_clock, UART_AVAIL, IRQ_Rx,
    output DATA_OUT_Tx, IRQ_Tx,
    output [9:0] DATA_OUT_Rx
    );

wire rst_bit;
wire rst_bitrate_uart;

assign rst_bit = (RST && rst_bitrate_uart) ? 1'b1 : 1'b0;


bitrate uart1(

    .RST_BIT(rst_bit),
    .EN(EN),
    .clk_CPU(clk_CPU),
    .bitrate(bitrate),
    .uart_clock(uart_clock)
);

tx uart2(
    
    .RST(RST),
    .clk(uart_clock),
    .UART_WRITE(UART_WRITE),
    .UART_BITS(UART_BITS),
    .UART_PARITY(UART_PARITY),
    .DATA_IN_Tx(DATA_IN_Tx),
    .DATA_OUT_Tx(DATA_OUT_Tx),
    .IRQ_Tx(IRQ_Tx)
);


rx uart3(

    .clk(clk_CPU),
    .RST(RST),
    .uart_clk(uart_clock),
    .DATA_IN_Rx(DATA_IN_Rx),
    .rst_bitrate(rst_bitrate_uart),
    .UART_AVAIL(UART_AVAIL),
    .IRQ_Rx(IRQ_Rx),
    .DATA_OUT_Rx(DATA_OUT_Rx)
);


endmodule
