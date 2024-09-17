`timescale 1ns/1ps
module OR_GATE();

reg [3:0]a_tb;
reg [3:0]b_tb;

wire [3:0]c_tb;

OR_GATE u_OR_GATE(
   .a(a_tb),
   .b(b_tb),
   .c(c_tb)
);
initial begin
    a_tb=4'b0000;
    b_tb=4'b0000;
    #5;
    a_tb=4'b0001;
    b_tb=4'b0010;
    #5;
    a_tb=4'b0011;
    b_tb=4'b0100;
    #5;
    a_tb=4'b0011;
    b_tb=4'b0111;
    #5;
end

initial begin
    $dumpfile("temp/OR_GATE.vcd");
    $dumpvars(0,OR_GATE_tb);
end
    
endmodule