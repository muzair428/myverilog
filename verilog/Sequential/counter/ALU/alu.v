module alu(
    input wire [3:0]a,
    input wire [3:0]b,
    input wire [2:0]sel,

    output reg [3:0]c
);

always @(*) begin
    if(sel==3'b000) begin
    c=a&b;
    end
    else if(sel==3'b001) begin
        c= !(a&b);
    end
    else if(sel==3'b011) begin
    c=(a|b);
    end
    else if(sel==3'b111) begin
    c=!(a|b);
    end
    else if(sel==3'b100) begin
    c=(a^b);
    end
    else if(sel==3'b010) begin
    c=!(a^b);
    end
    else if(sel==3'b110) begin
    c=a+b;
    end
    else if(sel==3'b001) begin
    c=a-b;
    end
    else begin
        c=0;
    end
end


endmodule