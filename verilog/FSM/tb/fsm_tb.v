module fsm_tb();
    reg clk;
    reg tx;
    reg busy;
    reg reset;
    reg [2:0]data;

fsm u_fsm(
  .clk(clk),
  .tx(tx),
  .busy(busy),
  .reset(reset),
  .data(data)
);
always begin
    #5;
    clk=~clk;
end

initial begin
    clk=0;
    tx=0;
    busy=0;
    reset=1;
    data=3'b000;
    #5;
    reset=0;
    #5
    reset=1;
    #5
    tx=1;
    #5;
    tx=0;
    #100;
    $finish;
end
initial begin
    $dumpfile("temp/fsm.vcd");
    $dumpvars(0,fsm_tb);
end
   
endmodule