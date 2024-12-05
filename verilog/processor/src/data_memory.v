
module data_mem(
    input clk,                  
    input write_enable,         
    input [31:0] A,             
    input [31:0] write_data,    
    input [2:0] mask,           
    input [31:0] imm_data,      
    input u_type_enable,        
    input j_type_enable,       
    output reg [31:0] rd        
);

    reg [31:0] data_mem [1023:0];
    wire [9:0] address_index = A[11:2];

    always @(*) begin
        if (u_type_enable) begin
            
            rd = imm_data;
        end else if (j_type_enable) begin
            
            rd = A + imm_data;  
        end else if (!write_enable) begin
        
            case (mask)
                3'b000: begin 
                    case (A[1:0])
                        2'b00: rd = {{24{data_mem[address_index][7]}}, data_mem[address_index][7:0]};
                        2'b01: rd = {{24{data_mem[address_index][15]}}, data_mem[address_index][15:8]};
                        2'b10: rd = {{24{data_mem[address_index][23]}}, data_mem[address_index][23:16]};
                        2'b11: rd = {{24{data_mem[address_index][31]}}, data_mem[address_index][31:24]};
                        default: rd = 32'b0;
                    endcase
                end
                3'b001: begin 
                    case (A[1])
                        1'b0: rd = {{16{data_mem[address_index][15]}}, data_mem[address_index][15:0]};
                        1'b1: rd = {{16{data_mem[address_index][31]}}, data_mem[address_index][31:16]};
                        default: rd = 32'b0;
                    endcase
                end
                3'b010: rd = data_mem[address_index];
                3'b100: begin 
                    case (A[1:0])
                        2'b00: rd = {24'b0, data_mem[address_index][7:0]};
                        2'b01: rd = {24'b0, data_mem[address_index][15:8]};
                        2'b10: rd = {24'b0, data_mem[address_index][23:16]};
                        2'b11: rd = {24'b0, data_mem[address_index][31:24]};
                        default: rd = 32'b0;
                    endcase
                end
                3'b101: begin 
                    case (A[1])
                        1'b0: rd = {16'b0, data_mem[address_index][15:0]};
                        1'b1: rd = {16'b0, data_mem[address_index][31:16]};
                        default: rd = 32'b0;
                    endcase
                end
                default: rd = 32'b0; 
            endcase
        end else begin
            rd = 32'b0; 
        end
    end

    always @(posedge clk) begin
        if (write_enable) begin
            case (mask)
                3'b000: begin 
                    case (A[1:0])
                        2'b00: data_mem[address_index][7:0] <= write_data[7:0];
                        2'b01: data_mem[address_index][15:8] <= write_data[7:0];
                        2'b10: data_mem[address_index][23:16] <= write_data[7:0];
                        2'b11: data_mem[address_index][31:24] <= write_data[7:0];
                    endcase
                end
                3'b001: begin 
                    case (A[1])
                        1'b0: data_mem[address_index][15:0] <= write_data[15:0];
                        1'b1: data_mem[address_index][31:16] <= write_data[15:0];
                    endcase
                end
                3'b010: data_mem[address_index] <= write_data; 
                default: ; 
            endcase
        end
    end

endmodule
