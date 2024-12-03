module register_file(
     input clk, 
     input reset,
     input [4:0] rs1, 
     input [4:0] rs2, 
     input [4:0] rd, 
     input [31:0] write, 
     input reg_write, 
     output [31:0] read1, 
     output [31:0] read2
     
    );
     


    reg [31:0] register[0:31];
    integer i;

    assign read1 = register[rs1];
    assign read2 = register[rs2];

    always @(posedge clk) begin
        if (reset)
            for(i=0;i<32;i=i+1)begin
                register[i]=32'd0;
            end

        else begin
            register[rd] = write;
        end
            end
 endmodule