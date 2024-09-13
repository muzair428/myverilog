module gate1 (
    input wire a,
    input wire b,
    input wire c,
    input wire d,

    output wire e,
);
wire s,f;
assign s=(a&b);
assign f=(c&d);
assign e=(s|f);
    
endmodule