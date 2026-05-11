module alu(operand_1, operand_2, ALU_op, ALU_Result, Zero);
input [31:0] operand_1;                         // First operand for ALU operations
input [31:0] operand_2;                         // Second operand for ALU operations        
input [3:0]  ALU_op;                            // ALU operation control signal
output reg [31:0] ALU_Result;                   // Result of the ALU operation)
output Zero;

reg [32:0] sub_result; 
reg [31:0] shift_data;
reg [4:0] shift_amount;

//main ALU
always@(*)
    begin
        //default values 
        ALU_Result = 32'b0;            //result default
        sub_result = 32'b0;          //sub result
        shift_data = 32'b0;         
        shift_amount = 5'b0;
        sub_result = {1'b0,operand_1} + ({1'b0,~operand_2}+1); //subtraction result           

        //main ALU operations      
        case (ALU_op)
        4'b0000:    //add
            begin   
                ALU_Result = operand_1 + operand_2;    
            end
        4'b0001:     //sub
            begin  
                ALU_Result = sub_result[31:0];  
            end
        4'b0010: 
            begin // AND (R-type and I-type)
                ALU_Result = operand_1 & operand_2;
            end
        4'b0011: 
            begin // OR (R-type and I-type)
                ALU_Result = operand_1 | operand_2;
            end
        4'b0100: 
            begin // XOR (R-type and I-type)
                ALU_Result = operand_1 ^ operand_2;
            end
         // Shift Left Logical (SLL, R-type and I-type)
        4'b0101: 
            begin
                shift_data = operand_1;
                shift_amount = operand_2[4:0];  // Use lower 5 bits of i_operand_b for shift amount

                // Logical left shift
                if (shift_amount [0]) shift_data = {shift_data[30:0],1'b0};
                if (shift_amount[1]) shift_data = {shift_data[29:0], 2'b0};   // Shift by 2 bits
                if (shift_amount[2]) shift_data = {shift_data[27:0], 4'b0};   // Shift by 4 bits
                if (shift_amount[3]) shift_data = {shift_data[23:0], 8'b0};   // Shift by 8 bits
                if (shift_amount[4]) shift_data = {shift_data[15:0], 16'b0};  // Shift by 16 bits

                ALU_Result = shift_data;
            end

        // Shift Right Logical (SRL, R-type and I-type)
        4'b0110: 
            begin
                shift_data = operand_1;
                shift_amount = operand_2[4:0];  // Use lower 5 bits of i_operand_b for shift amount

                // Logical right shift
                if (shift_amount[0]) shift_data = {1'b0, shift_data[31:1]};   // Shift by 1 bit
                if (shift_amount[1]) shift_data = {2'b0, shift_data[31:2]};   // Shift by 2 bits
                if (shift_amount[2]) shift_data = {4'b0, shift_data[31:4]};   // Shift by 4 bits
                if (shift_amount[3]) shift_data = {8'b0, shift_data[31:8]};   // Shift by 8 bits
                if (shift_amount[4]) shift_data = {16'b0, shift_data[31:16]}; // Shift by 16 bits

               ALU_Result = shift_data;
            end

        // Shift Right Arithmetic (SRA, R-type and I-type)
        4'b0111: 
            begin
                shift_data = operand_1;
                shift_amount = operand_2[4:0];  // Use lower 5 bits of i_operand_b for shift amount

                // Arithmetic right shift
                if (shift_amount[0]) shift_data = {operand_1[31], shift_data[31:1]};   // Shift by 1 bit
                if (shift_amount[1]) shift_data = {{2{operand_1[31]}}, shift_data[31:2]};   // Shift by 2 bits
                if (shift_amount[2]) shift_data = {{4{operand_1[31]}}, shift_data[31:4]};   // Shift by 4 bits
                if (shift_amount[3]) shift_data = {{8{operand_1[31]}}, shift_data[31:8]};   // Shift by 8 bits
                if (shift_amount[4]) shift_data = {{16{operand_1[31]}}, shift_data[31:16]}; // Shift by 16 bits

                ALU_Result = shift_data;
            end
        4'b1000: 
            begin // SLT (Set Less Than, signed, R-type and I-type)
                ALU_Result = (operand_1[31] ^ operand_2[31]) ? operand_1[31] : sub_result[31];
            end
        4'b1001: 
            begin // SLTU (Set Less Than Unsigned, R-type and I-type)
               ALU_Result = !sub_result[32];
            end           
            default:    //default case
                begin 
                    ALU_Result = 32'b0;
                end
            endcase  
    end
    assign Zero = (ALU_Result == 32'b0) ? 1'b1 : 1'b0;
endmodule