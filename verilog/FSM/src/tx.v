module Tx(
    input wire clk,
    input wire reset,
    input [2:0]data,
    input wire tx,
    input wire ready_i,
    
    output reg valid_o,
    output reg [2:0]data_o
);

localparam idle = 2'b00;
localparam TX = 2'b01;
localparam valid = 2'b10;
reg [1:0] state;
reg [1:0] next_state;

always @(posedge clk or negedge reset)begin
     if(~reset) begin
        state <= idle;
    end
    else begin
        state <= next_state;
    end
end 

always @(*)begin
    if (state == idle) begin
    valid_o = 0;
    next_state = TX;
    end 
    else if (state == TX) begin
    valid_o = 0;
        if (tx) begin
            next_state = valid;
        end 
        else begin 
            next_state = TX;
        end
    end
    else if (state == valid) begin
    valid_o = 1;
    data_o = data;
    next_state = (~ready_i) ? valid : TX;
    end
    else begin
    next_state = idle;
    end
end


endmodule