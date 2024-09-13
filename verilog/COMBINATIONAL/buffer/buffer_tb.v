module  buffer_tb();
reg [1:0]a;
reg en;

wire [1:0]b;

buffer u_gate(
    .a(a),
    .en(en),
    .b(b)
);
initial begin 
    a=2'b10;
    en=1;
    #5;
     a=2'b10;
    en=0;
    #5;
end

initial begin
    $dumpfile("buffer.vcd");
    $dumpvars(0,buffer_tb);
end
    
endmodule