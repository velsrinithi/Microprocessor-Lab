# Experiment 1: 16-bit Arithmetic Operations in 8086

##  Aim

To write 8086 assembly language programs to perform 16-bit arithmetic operations such as addition, subtraction, multiplication, and evaluation of the expression (A² - B²).

## Programs Included

### 1. Addition of Two 16-bit Numbers

* Adds two 16-bit numbers
* Stores result in memory
* Carry is stored separately

### 2. Subtraction of Two 16-bit Numbers

* Subtracts second number from first
* Stores result in memory
* Borrow is stored separately

### 3. Multiplication of Two 16-bit Numbers

* Multiplies two 16-bit numbers
* Lower 16 bits stored in AX (LSB)
* Upper 16 bits stored in DX (MSB)

### 4. Evaluation of Expression (A² - B²)

* Uses identity:
  (A² - B²) = (A + B)(A - B)
* Computes sum and difference
* Multiplies results to get final output

##  Registers Used

* AX, BX → Arithmetic operations
* DX → Stores higher bits in multiplication
* CL → Used for carry/borrow tracking

## Output

* Results are stored in memory locations:

  * SUM, DIFF
  * LSB, MSB
  * CARRY / BR

##  Tools Used

* EMU8086 / 8086 Simulator

