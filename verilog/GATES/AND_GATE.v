module AND_GATE (
    
    input wire [2:0]a;
    input wire [2:0]b;

    output wire [2:0]c;

);
    
    assign c=(a&b);
endmodule