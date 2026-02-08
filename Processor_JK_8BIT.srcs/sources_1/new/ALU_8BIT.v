`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jaikrishnan P
// 
// Create Date: 08.02.2026 17:18:55
// Design Name: 
// Module Name: ALU_8BIT
// Project Name: Processor_JK
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module adder8bit (
    input [7:0] A, B,
    output [8:0] Sum_Out // 9th bit is the Carry
);
    assign Sum_Out = A + B;
endmodule

module subtractor8bit (
    input [7:0] A, B,
    output [8:0] Diff_Out // 9th bit is Borrow/Sign info
);
    assign Diff_Out = A - B;
endmodule

module multiplier8bit (
    input [7:0] A, B,
    output [15:0] Prod_Out // Full 16-bit result
);
    assign Prod_Out = A * B;
endmodule

module divider8bit (
    input [7:0] A, B,
    output [7:0] Quotient,
    output [7:0] Remainder,
    output Div_Err
);
    // If B is 0, set Error high, otherwise do the math
    assign Div_Err = (B == 0); 
    assign Quotient = (B == 0) ? 8'b0 : (A / B);
    assign Remainder = (B == 0) ? 8'b0 : (A % B);
endmodule

module ALU_8BIT(
    input [7:0] A, B,
    input [3:0] ALU_Op,   // Matches your ISA Opcode (4 bits)
    output reg [7:0] Result,
    output reg [7:0] Result_High, // For Mul/Div upper bits
    output reg Z, N, C, V, Err    // Flags: Zero, Neg, Carry, Overflow, Error
);

    // --- Wires for internal connections ---
    wire [8:0] add_res, sub_res;
    wire [15:0] mul_res;
    wire [7:0] div_quot, div_rem;
    wire div_err_sig;

    // --- Instantiate the Workers ---
    adder8bit      u_add (.A(A), .B(B), .Sum_Out(add_res));
    subtractor8bit u_sub (.A(A), .B(B), .Diff_Out(sub_res));
    multiplier8bit u_mul (.A(A), .B(B), .Prod_Out(mul_res));
    divider8bit    u_div (.A(A), .B(B), .Quotient(div_quot), .Remainder(div_rem), .Div_Err(div_err_sig));

    // --- Main Logic ---
    always @(*) begin
        // 1. Reset defaults
        Result = 0; Result_High = 0;
        Z = 0; N = 0; C = 0; V = 0; Err = 0;

        case(ALU_Op)
            // --- ARITHMETIC ---
            4'b0000: begin // ADD
                Result = add_res[7:0];
                C = add_res[8];
                // Overflow: (Pos+Pos=Neg) or (Neg+Neg=Pos)
                V = (A[7] & B[7] & ~Result[7]) | (~A[7] & ~B[7] & Result[7]);
            end

            4'b0001: begin // SUB
                Result = sub_res[7:0];
                C = sub_res[8]; 
                // Overflow: (Pos-Neg=Neg) or (Neg-Pos=Pos)
                V = (A[7] & ~B[7] & ~Result[7]) | (~A[7] & B[7] & Result[7]);
            end

            4'b0010: begin // MUL
                Result = mul_res[7:0];       // Lower 8 bits
                Result_High = mul_res[15:8]; // Upper 8 bits
                V = (Result_High != 0);      // Overflow if result > 255
            end

            4'b0011: begin // DIV
                Result = div_quot;
                Result_High = div_rem;
                Err = div_err_sig;
            end

            // --- LOGIC ---
            4'b0100: Result = A & B; // AND
            4'b0101: Result = A | B; // OR
            4'b0110: Result = A ^ B; // XOR

            // --- MOVES & SPECIALS ---
            4'b0111: Result = A; // MOV (Pass A through)
            
            4'b1000: Result = B; // LDI (Pass B/Immediate through)
            
            4'b1011: begin // CMP (Compare) -> Same as SUB, but we ignore Result later
                Result = sub_res[7:0]; 
                C = sub_res[8];
                V = (A[7] & ~B[7] & ~Result[7]) | (~A[7] & B[7] & Result[7]);
            end

            default: Result = 8'b0; // Default safety
        endcase

        // 2. Universal Flags (Apply to all ops)
        Z = (Result == 0 && Result_High == 0); // Zero flag
        N = Result[7]; // Negative flag (MSB)
    end
endmodule
