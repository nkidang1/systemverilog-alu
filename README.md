#RTL Design and Verification of an 8-bit ALU in SystemVerilog



##Overview



This project implements an 8-bit Arithmetic Logic Unit (ALU) in SystemVerilog and verifies its functionality using a self-checking testbench in AMD Vivado XSim.



The design demonstrates RTL development, simulation, and functional verification techniques commonly used in FPGA and ASIC design flows.



\---



\## Supported Operations



| Opcode | Operation |

|----------|----------|

| HLT | Halt |

| SKZ | Skip if Zero |

| ADD | Addition |

| AND | Bitwise AND |

| XOR | Bitwise XOR |

| LDA | Load Accumulator |

| STO | Store Accumulator |

| JMP | Jump |



\---



\## Project Structure



```text

systemverilog-alu/

│

├── rtl/

│   ├── alu.sv

│   └── typedefs.sv

│

├── tb/

│   └── alu\_test.sv

│

├── sim/

│   └── simulation\_output.png

│

├── README.md

└── .gitignore

```



\---



\## Design Overview



Inputs:

\- Opcode

\- Data



Outputs:

\- ALU Result

\- Zero Flag



```text

&#x20;         opcode,data

&#x20;              │

&#x20;              ▼

&#x20;       +-------------+

&#x20;       |     ALU     |

&#x20;       +-------------+

&#x20;              │

&#x20;              ▼

&#x20;       result, zero

```



\---



\## Simulation Environment



\- Language: SystemVerilog

\- Simulator: AMD Vivado XSim

\- Time Unit: 1 ns

\- Time Precision: 100 ps



\---



\## Compilation and Simulation



Compile:



```bash

xvlog -sv rtl/typedefs.sv rtl/alu.sv tb/alu\_test.sv

```



Elaborate:



```bash

xelab alu\_test -s sim

```



Run:



```bash

xsim sim -runall

```



\---



\## Verification



The self-checking testbench validates all supported ALU operations and compares actual outputs against expected results.



Simulation concludes with:



```text

ALU TEST PASSED

```



\---



\## Skills Demonstrated



\- RTL Design

\- SystemVerilog

\- Functional Verification

\- Testbench Development

\- FPGA Design Flow

\- Vivado XSim Simulation

\- Digital Logic Design

