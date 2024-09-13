module counter (
    input wire rst,
    input wire clk,

    output reg [2:0]q
);
always @(posedge clk or negedge rst) begin
    if(~rst) begin
      q<=3'b000;
    end
    
    else begin
        q=4+q;
    end

end


endmodule
