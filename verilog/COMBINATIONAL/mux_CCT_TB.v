module mux_cct_tb();
 
 reg x0_tb;
 reg x1_tb;
 reg x2_tb;
 reg x3_tb;
 reg c0_tb;
 reg c1_tb;

 wire m_tb;

mux_cct u_gate(
    .x0(x0_tb);
    .x1(x1_tb);
    .x2(x2_tb);
    .x3(x3_tb);
    .c0(c0_tb);
    .c1(c1_tb);
    .m(m_tb)
);

    initial begin
        c0_tb=0;
        c1_tb=0;
        #5;
        c0_tb=0;
        c1_tb=1;
        #5;
        c0_tb=1;
        c1_tb=0;
        #5;
        c0_tb=1;
        c1_tb=1;
        #5;
    end
   
   initial begin
    $dumpfile("mux_cct.v");
    $dumpvars(0,mux_cct_tb);
   end

endmodule