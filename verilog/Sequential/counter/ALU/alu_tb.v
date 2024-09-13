module  alu_tb();
reg [3:0]a;
reg [3:0]b;
reg [2:0]sel;
wire [3:0]c;

alu u_gate(
    .a(a),
    .b(b),
    .c(c),
    .sel(sel)
);

initial begin
    a=4'b0000;
    b=4'b0010;
    sel=3'b001;
    #5;
    a=4'b0001;
    b=4'b0011;
    sel=3'b011;
    #5;
    a=4'b0100;
    b=4'b1000;
    sel=3'b000;
    #5;
end

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0,alu_tb);
end

    
endmodule