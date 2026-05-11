# RISC-V Single-Cycle & 5-Stage Pipeline (Undergraduate Project)

This repository contains the Verilog HDL implementation of a **RISC-V RV32I** processor in both **Single-Cycle** and **5-Stage Pipeline** architectures. This work was completed as a undergraduate project at **Ho Chi Minh City University of Technology and Engineering**.

##  Project Information

- **Title:** RISC-V Single-Cycle and 5-Stage Pipeline Processor 
<!-- - **Supervisor:** ThS. Tran Hoang Quan   -->
- **Author:** Pham Phuc Gia Hien
- **Department:** Faculty of Electrical and Electronics Engineering, Ho Chi Minh City University of Technology and Engineering

##  Hardware and Tools


- **Synthesis Tool:** Vivado 2025.1
- **Simulation / Testbench:** Vivado Simulator 2025.1
- **HDL Languge:** Verilog
- **Instruction Set:** RV32I Base Integer Instruction Set
##  Repository Structure
RISC-V-single-cycle/
├── CORE/
│   ├── single_cycle/          # Single-cycle CPU design
│   └── five_stage/            # 5-stage pipeline CPU design
├── TEST/
│   ├── single_cycle_tb/       # Testbench for single-cycle
│   └── pipeline_tb/           # Testbench for 5-stage pipeline
├── RISC-V 5 STAGE.drawio      # Diagram source
├── RISC-V 5 STAGE.png         # Pipeline diagram
├── README.md

##  Project Overview

This project implements a basic RISC-V processor supporting the **RV32I** instruction set. The design includes two versions:
- **Single-Cycle Processor**: All instructions complete in one clock cycle.
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
- Compare performance between single-cycle and pipelined design
- Master Verilog HDL for complex digital systems
- Prepare foundation for advanced Computer Architecture projects

<!-- ##  Result test CNN layer

![Result CNN](./img/result_cnn.png) -->

##  Notes

- This project was completed for educational and research purposes.
- All source code is open source.

---

Thank you for visiting the repository!  
If you have any questions or want to contribute, Please don't hesitate to contact me at ntkhiem2510@gmail.com