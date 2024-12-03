module data_mem(
    
    input clk,
    input write_enable,
    input [31:0]A,
    input [31:0]write_data,

    output [31:0]rd
);

reg[31:0] data_mem[1023:0];

assign rd=(write_enable==1'b0)? data_mem[A] : 32'b0000000;

always @(posedge clk) begin
    if (write_enable)
    begin
        data_mem[A]<=write_data;
    end

end
    
endmodule