`timescale 1ns/1ps
module OR_GATE_tb();

reg [3:0]a_tb;
reg [3:0]b_tb;

wire [3:0]c_tb;

OR_GATE u_gate(
   .a(a_tb),
   .b(b_tb),
   .c(c_tb),
);
initial begin
    a_tb=3'b000;
    b_tb=3'b000;
    #5;
    a_tb=3'b000;
    b_tb=3'b001;
    #5;
    a_tb=3'b001;
    b_tb=3'b000;
    #5;
    a_tb=3'b001;
    b_tb=3'b001;
    #5;
end

initial begin
    $dumpfile("OR_GATE.v");
    $dumpvars(0,OR_GATE_tb);
end
    
endmodule