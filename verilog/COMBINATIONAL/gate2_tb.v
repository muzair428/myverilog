module gate2_tb ();
  reg a_tb;
  reg b_tb;
  reg c_tb;
  reg d_tb;
  reg e_tb;
  reg l_tb;

  wire t_tb;
  wire k_tb;

gate2 u_gate(
    .a(a_tb),
    .b(b_tb),
    .c(c_tb),
    .d(d_tb),
    .e(e_tb),
    .l(l_tb),
);

initial begin
    a_tb=0;
    b_tb=0;
    c_tb=0;
    d_tb=0;
    e_tb=0;
    l_tb=0;
    #5
    a_tb=0;
    b_tb=0;
    c_tb=1;
    d_tb=1;
    e_tb=1;
    l_tb=1;
    #5;
end
initial begin
    $dumpfile("gate2.v");
    $dumpvars(0,gate2_tb);
end
    
endmodule