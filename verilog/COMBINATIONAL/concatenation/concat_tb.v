module concat_tb ();
 reg [1:0]a;
 reg [1:0]b;
 wire [2:0] c;

 concat u_gate(
    .a(a),
    .b(b),
    .c(c)
 );

 initial begin
    a=2'b10;
    b=2'b11;
    #5;
    
 end

 initial begin
    $dumpfile("concat.vcd");
    $dumpvars(0,concat_tb);
 end
    
endmodule