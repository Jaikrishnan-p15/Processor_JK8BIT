# 🚀 8-Bit CPU From Scratch (Verilog)

**Current Status:** Phase 1 Complete (ALU Design & Verification) 
**Tools:** Xilinx Vivado, Verilog HDL, GTKWave

## 📝 Project Overview
I am building a custom 8-bit Processor from scratch based on a modified Harvard RISC architecture ("NITPY-8"). The goal is to understand computer architecture at the transistor/logic level, moving beyond abstract theory.

## ⚙️ Phase 1: The Arithmetic Logic Unit (ALU)
The heart of the CPU is ready. I designed a modular ALU capable of handling 8-bit arithmetic and logic operations with full flag support (Zero, Negative, Carry, Overflow).

### Key Features:
- **Modular Design:** Separate blocks for Adder, Subtractor, Multiplier, and Divider.
- **Advanced Flag Logic:** - `V` (Overflow) for signed arithmetic.
  - `C` (Carry) for unsigned extensions.
  - `Z` (Zero) and `N` (Negative) for branch predictions.
- **Handling Edge Cases:** - Hardware protection against **Division by Zero**.
  - **16-bit support** for Multiplication results (High/Low bytes).
- **Instruction Set Support:** Designed to natively support `CMP` (Compare) and `MOV` operations without extra logic.

## 🛠️ Simulation Results
Verified using a comprehensive Testbench covering 10+ corner cases including overflow and zero-division errors.


## 🔜 Next Steps (Phase 2)
- [ ] Designing the 8x8 Register File (Dual Read Ports).
- [ ] Implementing the Program Counter & Instruction Memory.
- [ ] Designing the Control Unit FSM.

---
*Built by Jaikrishnan P | ECE @ NITPY*
