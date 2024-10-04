module fsm_tb();
    reg clk;
    reg tx;
    reg busy;
    reg reset;
    reg [2:0]data;

    wire [2:0]d;
    

fsm u_fsm(
  .clk(clk),
  .tx(tx),
  .busy(busy),
  .reset(reset),
  .data(data)
);


initial begin
    clk=0;
    tx=0;
    busy=0;
    reset=0;
    data=3'b000;
    #5;
    reset=1;
    #5
    reset=0;
    #5
    tx=1;
    #5
    tx=0;
    busy=1;
    #5
    busy=1;
    #5;
end
initial begin
    $dumpfile("temp/fsm.vcd");
    $dumpvars(0,fsm_tb);
end
   
endmodule