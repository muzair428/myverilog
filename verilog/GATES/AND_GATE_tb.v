`timescale 1ns/1ps
module AND_GATE_tb ();
  reg [2:0]a_tb;
  reg [2:0]b_tb;

  wire [2:0]c_tb;

AND_GATE u_gate(
    .a(a_tb),
    .b(b_tb),
    .c(c_tb),
);

initial begin
    a_tb=2'b00;
    b_tb=2'b00;
    #5;
    a_tb=2'b01;
    b_tb=2'b00;
    #5;
    a_tb=2'b00;
    b_tb=2'b01;
    #5;
    a_tb=2'b11;
    b_tb=2'b11;
    #5;
end
    initial begin
        $dumpfile("AND_GATE.v");
        $dumpvars(0,AND_GATE_TB)
    end
endmodule