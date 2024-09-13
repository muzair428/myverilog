module half_adders_tb ();

    reg a_tb;
    reg b_tb;

    wire s_tb;
    wire c_tb;

half_adders u_gate(
    .a(a_tb),
    .b(b_tb),
    .s(s_tb),
    .c(c_tb)
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
end
    initial begin
     $dumpfile("half_adders.v");
     $dumpvars(0,half_adders_tb);

    end
endmodule