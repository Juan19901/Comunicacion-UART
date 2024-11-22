

 
module tx(clk, RST, UART_WRITE, DATA_IN_Tx, DATA_OUT_Tx, UART_BITS, UART_PARITY, IRQ_Tx);

    input clk, RST, UART_WRITE, UART_BITS, UART_PARITY;
  
    input [7:0] DATA_IN_Tx;
    output reg DATA_OUT_Tx, IRQ_Tx;

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
            STOP = 4'b1011;

parameter   EVEN = 2'b01,
            ODD = 2'b10,
            No_parity = 2'b00;

reg [3:0] state, next;
reg parity_bit;
wire [7:0] DATA_IN_Tx;


always @(posedge clk, negedge RST) begin
    if (!RST)
        state <= IDLE;
    else
        state <= next;
end

always @(state or DATA_OUT_Tx or UART_BITS or UART_PARITY) begin
    next = 'bx;
    case (state)
        IDLE:    if (UART_WRITE) next = START; else next = IDLE;
        START:   next = BIT_0;
        BIT_0:   next = BIT_1;
        BIT_1:   next = BIT_2;
        BIT_2:   next = BIT_3;
        BIT_3:   next = BIT_4;
        BIT_4:   next = BIT_5;
        BIT_5:   next = BIT_6;
        BIT_6:   if (UART_BITS) next = BIT_7;
                 else if (UART_PARITY) next = PARITY;
                 else next = STOP;
        BIT_7:   if (UART_PARITY) next = PARITY; else next = STOP;
        PARITY:  next = STOP;
        STOP:    next = IDLE;
    endcase
end

always @(posedge clk, negedge RST) begin
    if (!RST) begin
        DATA_OUT_Tx <= 1'b1;  
        IRQ_Tx <= 1'b0;
    end else begin
        case (state)
            START: DATA_OUT_Tx <= 1'b0; 
            BIT_0: DATA_OUT_Tx <= DATA_IN_Tx[0]; 
            BIT_1: DATA_OUT_Tx <= DATA_IN_Tx[1]; 
            BIT_2: DATA_OUT_Tx <= DATA_IN_Tx[2]; 
            BIT_3: DATA_OUT_Tx <= DATA_IN_Tx[3]; 
            BIT_4: DATA_OUT_Tx <= DATA_IN_Tx[4]; 
            BIT_5: DATA_OUT_Tx <= DATA_IN_Tx[5]; 
            BIT_6: DATA_OUT_Tx <= DATA_IN_Tx[6]; 
            BIT_7: DATA_OUT_Tx <= DATA_IN_Tx[7];
            
            PARITY: DATA_OUT_Tx <= 1'b1; 
            STOP:    begin
                        DATA_OUT_Tx <= 1'b1; 
                        IRQ_Tx <= 1'b1;   
                     end
        endcase
    end
end
endmodule
