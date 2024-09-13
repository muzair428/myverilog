~`timescale 1ns/1ps
module gate1_tb();
reg a_tb;
reg b_tb;
reg c_tb;
reg d_tb;
reg s_tb;
reg f_tb;

wire e_tb;

gate1 u_gate(
    .a(a_tb),
    .b(b_tb),
    .c(c_tb),
    .d(d_tb),
     
);
initial begin 
    a_tb=0;
    b_tb=0;
    c_tb=0;
    d_tb=0;
    #5
end

initial begin
    $dumpfile("gate1.v");
    $dumpvars(0,gate1_tb);
end
    
endmodule