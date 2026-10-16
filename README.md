#Design and Verification of Scan-Chain-verilog-project-using-Modelsim and Verilog HDL

## 📌 Project Overview
This project implements a 4-bit scan chain using Verilog HDL and verifies its functionality through simulation in ModelSim.

A scan chain is a Design for Testability (DFT) technique used to improve access to internal flip-flops in digital integrated circuits during testing.

## 🎯 Objectives
- Design a 4-bit scan chain using Verilog HDL.
- Implement normal mode and scan mode operations.
- Perform parallel data loading and serial data shifting.
- Verify the design using a Verilog testbench and ModelSim waveform simulation.

## 🛠️ Tools and Technologies
- **Language:** Verilog HDL
- **Simulation Tool:** ModelSim
- **Concept:** Digital Design and Design for Testability (DFT)

## ⚙️ Working Principle

### 1. Reset Mode
When reset is active, all four register bits are initialized to `0000`.

### 2. Normal Mode
When `scan_en = 0`, the 4-bit input data `d` is loaded into the register `q` at the rising edge of the clock.

### 3. Scan Mode
When `scan_en = 1`, serial data enters through `scan_in` and shifts through the four register bits on each rising clock edge.

### 4. Scan Output
The output `scan_out` is connected to the most significant register bit, `q[3]`.

## 📂 Project Files

| File | Description |
|---|---|
| `scan_chain.v` | Verilog RTL design of the 4-bit scan chain |
| `tb_scan_chain.v` | Testbench to verify normal and scan modes |
| `waveform.png` | Simulation waveform screenshot (optional) |

## 🧪 Verification
The design is simulated using ModelSim to verify:
- Reset functionality
- Parallel loading in normal mode
- Serial shifting in scan mode
- Scan output behavior
- Timing behavior using waveform analysis

## 📊 Expected Results
The simulation demonstrates correct register loading in normal mode and serial shifting in scan mode. The waveform can be used to inspect the clock, reset, scan enable, scan input, register output, and scan output signals.

## 📚 Key Learnings
- Verilog HDL coding
- Sequential circuit design
- Testbench development
- ModelSim simulation and waveform analysis
- Fundamentals of Design for Testability (DFT)

## 🚀 Future Improvements
- Extend the design to an 8-bit or 16-bit scan chain.
- Add more test cases for different scan input patterns.
- Explore scan-based fault testing and automatic test-pattern generation (ATPG).

 
