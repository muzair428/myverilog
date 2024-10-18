module dram_tb ();
    reg clk;                   
    reg write_en;              
    reg read_en;               
    reg [1:0] address;         
    reg [71:0] data_in;        

    wire [71:0] data_out;      

    
    dram u_dram (
        .clk(clk),
        .write_en(write_en),
        .read_en(read_en),
        .address(address),
        .data_in(data_in),
        .data_out(data_out)
    );


    always begin
         clk = ~clk;
        #5;
    end

    
    initial begin
        clk = 0;
        address = 2'b01;
        data_in = 72'd11;    
        write_en = 0;
        read_en = 0;
        #5;
        address = 2'b00;
        data_in = 72'd12;
        write_en = 1;        
        #10;
       address = 2'b10;     
        data_in = 72'd13;
        write_en = 1;
        read_en = 0;
        #15;
        write_en = 0;        
        read_en = 1;
        #20;
        $finish;
    end
    initial begin
        $dumpfile("temp/dram.vcd");
        $dumpvars(0,dram_tb);
    
    end
endmodule