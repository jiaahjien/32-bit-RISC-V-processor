module Reg_file(clk,rst,write_en, read_addr1, read_addr2, write_addr, write_data, data1, data2, checker1, checker2, checker3, checker4, checker5, checker6, checker7, checker8, checker9, checker10, checker11, checker12, checker13, checker14, checker15,checker16, checker17, checker18, checker19, checker20, checker21, checker22, checker23, checker24, checker25,checker26, checker27, checker28, checker29, checker30, checker31);
    
    parameter SIZE = 32;
    input clk, rst, write_en; // Clock, reset, write enable
    input [4:0] read_addr1, read_addr2, write_addr; // Read address 1, read address 2, write address
    input [SIZE-1:0] write_data; // Write data
    output  [SIZE-1:0] data1, data2; // Read data 1, read data 2
    output [31:0] checker1;
output [31:0] checker2;
output [31:0] checker3;
output [31:0] checker4;
output [31:0] checker5;
output [31:0] checker6;
output [31:0] checker7;
output [31:0] checker8;
output [31:0] checker9;
output [31:0] checker10;
output [31:0] checker11;
output [31:0] checker12;
output [31:0] checker13;
output [31:0] checker14;
output [31:0] checker15;
output [31:0] checker16;
output [31:0] checker17;
output [31:0] checker18;
output [31:0] checker19;
output [31:0] checker20;
output [31:0] checker21;
output [31:0] checker22;
output [31:0] checker23;
output [31:0] checker24;
output [31:0] checker25;
output [31:0] checker26;
output [31:0] checker27;
output [31:0] checker28;
output [31:0] checker29;
output [31:0] checker30;
output [31:0] checker31;


    reg [SIZE-1:0] regfile [0:SIZE-1]; // Register file
 
    // Read operations
    assign data1 = (read_addr1 != 0) ? regfile[read_addr1] : 32'b0;
    assign data2 = (read_addr2 != 0) ? regfile[read_addr2] : 32'b0; 
    
     assign checker1 = regfile[1];
    assign checker2 = regfile[2];
    assign checker3 = regfile[3];
    assign checker4 = regfile[4];
    assign checker5 = regfile[5];
    assign checker6  = regfile[6];
    assign checker7  = regfile[7];
    assign checker8  = regfile[8];
    assign checker9  = regfile[9];
    assign checker10 = regfile[10];
    assign checker11 = regfile[11];
    assign checker12 = regfile[12];
    assign checker13 = regfile[13];
    assign checker14 = regfile[14];
    assign checker15 = regfile[15];
    assign checker16 = regfile[16];
    assign checker17 = regfile[17];
    assign checker18 = regfile[18];
    assign checker19 = regfile[19];
    assign checker20 = regfile[20];
    assign checker21 = regfile[21];
    assign checker22 = regfile[22];
    assign checker23 = regfile[23];
    assign checker24 = regfile[24];
    assign checker25 = regfile[25];
    assign checker26 = regfile[26];
    assign checker27 = regfile[27];
    assign checker28 = regfile[28];
    assign checker29 = regfile[29];
    assign checker30 = regfile[30];
    assign checker31 = regfile[31];
    
    integer i;
    // Write operation
    always @(negedge clk) begin
        regfile[0] = 32'b0; // Register 0 is always 0
        if (rst) begin
            // Reset all registers to 0
            for (i = 0; i < 32; i = i + 1) begin
                if (i == 2) 
                    regfile[i] <= 32'h500; //address
                else
                regfile[i] <= 32'b0;
            end
        end else if (write_en && write_addr != 0) begin
            // Write data to the register file
            regfile[write_addr] <= write_data;
        end
    end

endmodule
