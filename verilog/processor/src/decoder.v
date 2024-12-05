module decoder(
    input zero,
    input [6:0]op,
    output reg_write,
    output mem_write,
    output result_src,
    output alu_src,
    output pc_src,
    output [1:0] alu_op,
    output [1:0] imm_src
);


wire branch;
assign reg_write=(op==7'b0000011) | (op==7'b0110011);
assign alu_src=(op=='b0000011) | (op==7'b0100011)? 1'b0:1'b1;
assign mem_write=(op==7'b0100011)? 1'b1:1'b0;
assign result_src=(op==7'b0000011)? 1'b1:1'b0;
assign branch=(op==7'b1100011)? 1'b1:1'b0;
assign imm_src=(op==7'b0100011)? 2'b01 : (op==7'b1100011)? 2'b10:2'b00;
assign alu_op=(op==7'b0100011)? 2'b10 : (op==7'b1100011)? 2'b01:2'b00;
assign pc_src=zero & branch;
    
endmodule