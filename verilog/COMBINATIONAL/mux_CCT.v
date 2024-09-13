module mux_CCT (
    
    input wire x0,
    input wire x1,
    input wire x2,
    input wire x3,
    input wire c0,
    input wire c1,

    output wire m

);
 always @(*) begin
    (c0=0,c1=0)? m=x0:m=x1;
    (c0=0,c1=1)? m=x1:m=x2;
    (c0=1,c1=0)? m=x2:x=x3;
    (c0=1,c1=1)? m=x3:
 end
 
endmodule