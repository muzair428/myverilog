module counter_tb ();
  
  reg rst;
  reg clk;

  wire [2:0]q;

counter u_gate(
    .rst(rst),
    .clk(clk),
    .q(q)
);

initial begin
    rst=0;
    clk=0;
    #10;
    rst=1;
    #200;
    $finish;
end

initial begin
   $dumpfile("temp/counter.vcd");
   $dumpvars(0,counter_tb); 
end

always begin
    #5 clk=~clk;  
end


    
endmodule