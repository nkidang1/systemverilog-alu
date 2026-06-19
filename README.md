# RTL Design and Verification of an 8-Bit ALU in SystemVerilog

This project implements an 8-bit Arithmetic Logic Unit (ALU) in SystemVerilog and verifies its functionality using a self-checking testbench in AMD Vivado XSim. The objective was to gain hands-on experience with RTL design, combinational logic implementation, and verification workflows commonly used in FPGA and ASIC development.

The ALU supports a range of arithmetic and logical operations including addition, bitwise AND, bitwise XOR, load accumulator, store accumulator, jump, halt, and skip-if-zero instructions. Alongside the RTL implementation, a dedicated testbench was developed to exercise each operation and compare generated outputs against expected behavior.

Development and verification were carried out using AMD Vivado's XSim simulator. Simulation results confirmed correct functionality across all supported operations, with the testbench reporting a successful pass for all validation checks.

## Repository Contents

- `rtl/` contains the ALU RTL source code and supporting type definitions.
- `tb/` contains the SystemVerilog testbench used for verification.
- `sim/` contains simulation artifacts and example output screenshots.

## Tools Used

- SystemVerilog
- AMD Vivado
- XSim Simulator

## Skills Demonstrated

RTL Design • SystemVerilog • Functional Verification • Testbench Development • FPGA Design Flow • Digital Logic Design
