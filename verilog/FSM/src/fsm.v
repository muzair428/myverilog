module fsm (
    input wire clk,
    input wire reset,
    input wire tx,
    input wire busy,
    input wire [2:0] data
);

 wire x;
 wire y;
 wire [2:0]z;

Tx u_Tx(

    .tx(tx),
    .ready_i(x),
    .clk(clk),
    .reset(reset),
    .data(data),
    .valid_o(y),
    .data_o(z)

);

rx u_rx(
    .clk(clk),
    .busy(busy),
    .ready_o(x),
    .data_i(z),
    .valid_i(y)

);
    
endmodule