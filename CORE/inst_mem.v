module inst_mem(addr,instruction);
    parameter SIZE = 32;
    parameter BASE_ADDRESS = 32'h00000000;
    parameter mem_SIZE = 256;
 
    input  [SIZE-1:0] addr;
    output reg [SIZE-1:0] instruction;

    // Instruction memory 
    reg [31:0] inst_memory [0:mem_SIZE-1];

    // Initialize memory with some instructions 
    initial begin
        $readmemh("instructions.mem", inst_memory);
    end
always @(*) begin
 instruction = inst_memory[addr - BASE_ADDRESS];
end    

endmodule