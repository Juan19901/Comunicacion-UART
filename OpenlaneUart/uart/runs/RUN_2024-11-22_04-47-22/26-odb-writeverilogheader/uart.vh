// Auto-generated by OpenLane
module uart(
`ifdef USE_POWER_PINS
  inout VPWR,
  inout VGND,
`endif
  input RST,
  input EN,
  input clk_CPU,
  input UART_WRITE,
  input UART_BITS,
  input UART_PARITY,
  input DATA_IN_Rx,
  input[7:0] DATA_IN_Tx,
  input[3:0] bitrate,
  output uart_clock,
  output UART_AVAIL,
  output IRQ_Rx,
  output DATA_OUT_Tx,
  output IRQ_Tx,
  output[9:0] DATA_OUT_Rx
);
endmodule
