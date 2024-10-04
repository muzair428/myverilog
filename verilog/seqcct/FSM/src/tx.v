module tx(
    input wire clk,
    input wire reset,
    input [2:0]data,
    input tx,
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
    
    if (state == idle) begin
    valid_o = 0;
    next_state = TX;
end else if (state == TX) begin
    valid_o = 0;
    if (tx) 
        next_state = valid;
    else 
        next_state = TX;
end else if (state == valid) begin
    valid_o = 1;
    data_o = data;
    if (ready_i) 
        next_state = TX;
    else 
        next_state = valid;
end

end


endmodule