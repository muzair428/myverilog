module register(
    input wire clk,
    input wire enable,
    input wire reset,
    input [31:0] write,
    input [4:0] rd,
    input [4:0] rs1,
    input [4:0] rs2,
    output wire [31:0] read1,
    output wire [31:0] read2
);
reg[31:0] memory[0:31];
 integer i;
always @(posedge clk) begin
    if (rst) begin
     for(i=0;i<31;i++)
     memory[i];
    end
    else if(enable)begin
        mem[rs1]=rs1;
    end
    else(rd)begin
        assign read1=mem[rs1];
        assign read2=mem[rs2];
    end
end
endmodule