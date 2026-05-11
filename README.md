# RISC-V 5-Stage Pipeline (Undergraduate Project)

This repository contains the Verilog HDL implementation of a **RISC-V RV32I** processor in **5-Stage Pipeline** architectures. This work was completed as an undergraduate project at **Ho Chi Minh City University of Technology and Engineering**.

##  Project Information

- **Title:** RISC-V Single-Cycle and 5-Stage Pipeline Processor 
- **Author:** Pham Phuc Gia Hien
- **Department:** Faculty of Electrical and Electronics Engineering, Ho Chi Minh City University of Technology and Engineering

##  Hardware and Tools

- **Synthesis Tool:** Vivado 2025.1
- **Simulation / Testbench:** Vivado Simulator 2025.1
- **HDL Language:** Verilog
- **Instruction Set:** RV32I Base Integer Instruction Set

## Repository Structure

```bash
32-bit-RISC-V-processor/
├── CORE/                     
│   ├── top.v
│   ├── PC_reg.v
│   ├── inst_mem.v
│   ├── Decode_reg.v
│   ├── control_unit.v
│   ├── imm_extend.v
│   ├── regfile.v
│   ├── Execute_reg.v
│   ├── alu.v
│   ├── jump_branch.v
│   ├── mux2.v
│   ├── mux32.v
│   ├── Mem_reg.v
│   ├── data_memory.v
│   ├── Write_back_reg.v
│   └── Hazard_unit.v
│
├── TEST/                         
│   ├── tb.v
│   ├── instruction_R_type.mem
│   ├── instruction_I_type.mem
│   └── instruction_B_TYPE.mem
│
├── RISC-V 5 STAGE.drawio          
├── RISC-V 5 STAGE.png       
└── README.md
```

##  Project Overview
This project implements a basic RISC-V processor supporting the **RV32I** instruction set. The design includes two versions:
- **5-Stage Pipeline Processor**: Improved performance with pipelining (IF, ID, EX, MEM, WB).

### 5-Stage Pipeline Diagram
![5-Stage Pipeline Diagram](./RISC-V%205%20STAGE.png)

### Key Features
- Full support for RV32I base instructions (R-type, I-type, S-type, B-type, U-type, J-type)
- Hazard detection and forwarding unit (in pipeline version)
- Clean, modular Verilog code
- Comprehensive testbenches for verification

## Goals
- Understand the micro-architecture of modern processors
- Master Verilog HDL for complex digital systems
- Prepare foundation for advanced Computer Architecture projects

<!-- ##  Result test CNN layer

![Result CNN](./img/result_cnn.png) -->

##  Notes

- This project was completed for educational and research purposes.
- All source code is open source.

---

Thank you for visiting the repository!  
If you have any questions or want to contribute, please don't hesitate to contact me at hienphamphucgia@gmail.com
