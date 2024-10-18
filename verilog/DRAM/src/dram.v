module dram (
    input wire clk,                    
    input wire write_en,               
    input wire read_en,                
    input wire [1:0] address,         
    input wire [71:0] data_in,         

    output reg [71:0] data_out     
);

    
    reg [71:0] ram [3:0];


    always @(posedge clk) begin
        if (write_en) begin
            ram[address] <= data_in;
        end 
        else if (read_en) begin
            data_out <= ram[address];
        end 
        else begin
            
            data_out <= ram[address];
        end
    end

endmodule
