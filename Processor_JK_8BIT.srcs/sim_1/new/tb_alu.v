`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jaikrishnan P
// 
// Create Date: 08.02.2026 19:34:46
// Design Name: ALU_8BIT
// Module Name: tb_alu
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




module tb_alu;

    // 1. Declare Inputs as Reg (Because we set the values)
    reg [7:0] A, B;
    reg [3:0] ALU_Op;

    // 2. Declare Outputs as Wire (Because we just watch them)
    wire [7:0] Result;
    wire [7:0] Result_High;
    wire Z, N, C, V, Err;

    // 3. Instantiate the Unit Under Test (UUT)
    // Make sure the name 'ALU_8BIT' matches your design file exactly!
    ALU_8BIT uut (
        .A(A), 
        .B(B), 
        .ALU_Op(ALU_Op), 
        .Result(Result), 
        .Result_High(Result_High), 
        .Z(Z), .N(N), .C(C), .V(V), .Err(Err)
    );

    // 4. Test Procedure
    initial begin
        // Setup for Waveform Viewer (GTKWave / Vivado)
        $dumpfile("alu_simulation.vcd"); // The file to open in GTKWave
        $dumpvars(0, tb_alu);

        // Header for the Console Output
        $display("------------------------------------------------------------------");
        $display("   ALU TESTBENCH START - CHECKING ALL OPS                         ");
        $display("------------------------------------------------------------------");
        $display(" Time | Opcode |  A  |  B  | Result | Res_Hi | Z N C V E | Operation");
        $display("------+--------+-----+-----+--------+--------+-----------+----------");

        // --- TEST 1: ADDITION (10 + 20 = 30) ---
        A = 10; B = 20; ALU_Op = 4'b0000; #10;
        print_result("ADD (Normal)");

        // --- TEST 2: ADDITION OVERFLOW (127 + 1 = -128 in signed) ---
        // 127 (01111111) + 1 = 128 (10000000). The sign bit flips! V should be 1.
        A = 8'd127; B = 8'd1; ALU_Op = 4'b0000; #10;
        print_result("ADD (Overflow Check)");

        // --- TEST 3: SUBTRACTION (50 - 20 = 30) ---
        A = 50; B = 20; ALU_Op = 4'b0001; #10;
        print_result("SUB (Normal)");

        // --- TEST 4: MULTIPLICATION (10 * 10 = 100) ---
        A = 10; B = 10; ALU_Op = 4'b0010; #10;
        print_result("MUL (Normal)");

        // --- TEST 5: MULTIPLICATION BIG (100 * 10 = 1000) ---
        // 1000 is too big for 8 bits. It needs Result_High.
        // 1000 = 0x03E8. So Result=E8 (232), Result_High=03 (3).
        A = 100; B = 10; ALU_Op = 4'b0010; #10;
        print_result("MUL (High Byte Check)");

        // --- TEST 6: DIVISION (100 / 2 = 50) ---
        A = 100; B = 2; ALU_Op = 4'b0011; #10;
        print_result("DIV (Normal)");

        // --- TEST 7: DIVISION BY ZERO (CRITICAL!) ---
        // Should trigger the 'Err' flag.
        A = 50; B = 0; ALU_Op = 4'b0011; #10;
        print_result("DIV (Zero Error Check)");

        // --- TEST 8: LOGIC AND (11110000 & 10101010) ---
        A = 8'hF0; B = 8'hAA; ALU_Op = 4'b0100; #10;
        print_result("AND Logic");

        // --- TEST 9: COMPARE (CMP 10, 10) ---
        // 10 - 10 = 0. Should set Zero Flag (Z=1).
        A = 10; B = 10; ALU_Op = 4'b1011; #10;
        print_result("CMP (Equal Check)");

        // --- TEST 10: COMPARE (CMP 10, 20) ---
        // 10 - 20 = -10. Should set Negative Flag (N=1).
        A = 10; B = 20; ALU_Op = 4'b1011; #10;
        print_result("CMP (Less Than Check)");

        $display("------------------------------------------------------------------");
        $display("           TEST COMPLETE                                     ");
        $display("------------------------------------------------------------------");
        $finish;
    end

    // Helper Task to print readable output automatically
    task print_result(input [30*8:1] op_name);
        begin
            $display(" %4t |  %b  | %3d | %3d |   %3d  |   %3d  | %b %b %b %b %b | %s", 
                $time, ALU_Op, A, B, Result, Result_High, Z, N, C, V, Err, op_name);
        end
    endtask

endmodule

 

