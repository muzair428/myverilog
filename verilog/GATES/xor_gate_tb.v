module xor_gate_tb ();
 reg a_tb;
 reg b_tb;

 wire c_tb;

 xor_gate u_gate(
    .a(a_tb),
    .b(b_tb),
    .c(c_tb),
 );
 initial begin
    a_tb=0;
    b_tb=0;
    #5;
    a_tb=0;
    b_tb=1;
    #5;
    a_tb=1;
    b_tb=0;
    #5;
    a_tb=1;
    b_tb=1;
    #5;

 end

 initial begin
     $dumpfile("xor_gate.v");
     $dumpvars(0,xor_gate_tb);
 end
    
endmodule