module ALU(

    input [31:0]A,
    input [31:0]B,
    input [2:0]control_signal,
    output reg [31:0]result
);

always @(*) begin
    case(control_signal)

    0:result=A+B;
    1:result=A-B;
    2:result=A/B;
    3:result=A&B;
    4:result=A^B;
    5:result=A|B;
    6:result=~(A|B);
    default: result=32'b0;

    endcase
end
   

endmodule