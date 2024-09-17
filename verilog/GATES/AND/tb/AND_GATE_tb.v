`timescale 1ns/1ps
module AND_GATE_tb ();
  reg [2:0]a_tb;
  reg [2:0]b_tb;

  wire [2:0]c_tb;

AND_GATE u_gate(
    .a(a_tb),
    .b(b_tb),
    .c(c_tb)
);

initial begin
    a_tb=3'b000;
    b_tb=3'b000;
    #5;
    a_tb=3'b010;
    b_tb=3'b001;
    #5;
    a_tb=3'b100;
    b_tb=3'b011;
    #5;
    a_tb=3'b110;
    b_tb=3'b101;
    #5;
end
    initial begin
        $dumpfile("temp/AND_GATE.vcd");
        $dumpvars(0,AND_GATE_tb);
    end
endmodule