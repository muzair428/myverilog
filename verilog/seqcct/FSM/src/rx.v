module rxc(
    input wire busy,
    input wire valid_i,
    input wire [2:0]data_i,

    output reg ready_o,
    reg [2:0]d

);


always @(*)begin
    if (valid_i==1 && busy==0)begin
        ready_o=1;
    end
    else if(valid_i==1 && busy==1)begin
        ready_o=0;
    end
    else begin
        ready_o=0;
    end

end
    
endmodule