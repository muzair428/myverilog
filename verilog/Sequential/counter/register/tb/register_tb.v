module register_tb();
    reg clk;
    reg enable;
    reg reset;
    reg [31:0]write;
    reg [4:0]rd;
    reg [4:0]rs1;
    reg [4:0]rs2;

    wire [31:0]read1;
    wire [31:0]read2;

register u_register(
    .clk(clk),
    .enable(enable),
    .reset(reset),
    .write(write),
    .rd(rd),
    .rs1(rs1),
    .rs2(rs2),
    .read1(read1),
    .read2(read2)
);

always begin
    #5 clk = !clk;
end

initial begin
       clk = 0;
        enable = 0;
        reset = 0;
        write = 0;
        rd = 0;
        rs1 = 0;
        rs2 = 0;

end

initial begin
    $dumpfile("temp/register.vcd");
    $dumpvars(0,register_tb);
end

endmodule