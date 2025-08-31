# 4-Bit Subtractor in Verilog

## Overview
This project implements a **4-bit binary subtractor** using **Verilog HDL** on **EDA Playground**. The subtractor performs binary subtraction between two 4-bit numbers and produces a 4-bit difference along with a borrow-out. It is a fundamental component in digital arithmetic circuits such as ALUs.

---

## Features
- Subtracts two 4-bit binary numbers (`A` - `B`)
- Outputs a 4-bit difference (`DIFF`)
- Generates a borrow-out (`BOUT`)
- Fully tested with a Verilog testbench

---

## Files
- `design.sv` – 4-bit subtractor module
- `testbench.sv` – Testbench for simulation

---

## Inputs & Outputs
**Inputs:**  
- `A[3:0]` – Minuend (first number)  
- `B[3:0]` – Subtrahend (second number)  

**Outputs:**  
- `DIFF[3:0]` – 4-bit difference  
- `BOUT` – Borrow-out

---

## How It Works
The subtractor is implemented using **full subtractor logic** combined in a **ripple borrow configuration**:
B0 → FS0 → DIFF0 → B1 → FS1 → DIFF1 → B2 → FS2 → DIFF2 → B3 → FS3 → DIFF3 → BOUT

Each full subtractor calculates the difference of corresponding bits of `A` and `B` along with the borrow from the previous stage.

---

## Simulation
1. Open **EDA Playground**.
2. Copy the Verilog module and testbench code.
3. Select a simulator (e.g., Icarus Verilog).
4. Run the simulation.
5. Observe results in the console or waveform viewer.

**Example Table:**

| A       | B       | DIFF    | BOUT |
|---------|---------|---------|------|
| 0101    | 0011    | 0010    | 0    |
| 0010    | 0101    | 1111    | 1    |

---

## License
This project is for **educational purposes**.
