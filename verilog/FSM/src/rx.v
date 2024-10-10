module rx(
    input wire clk,
    input wire busy,
    input wire valid_i,
    input wire [2:0]data_i,
    output reg ready_o
);
reg [2:0] data_s;
always @(posedge clk) begin
        if (valid_i && ~busy)begin
        ready_o <= 1;
        data_s <= data_i;
    end
end

always @(*)begin
if(valid_i && busy)begin
        ready_o=0;
        data_s = 0;
    end
    else begin
        ready_o=0;
        data_s = 0;
    end

end


    
endmodule