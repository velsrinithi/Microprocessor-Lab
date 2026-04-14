# Experiment 5: Seven Segment Display Interfacing (8086)

##  Aim

To interface seven segment displays with 8086 and display numbers and characters.

##  Programs Included

### 1. Single Seven Segment Display

* Displays digits (0–F) sequentially
* Uses lookup table for segment codes
* Outputs data to port

### 2. HELLO using Two Seven Segment Displays

* Displays characters using two displays
* Uses two output ports
* Alternates data between displays

##  Concepts Used

* I/O port communication using OUT instruction
* Segment code mapping
* Delay generation
* Hardware interfacing

##  Ports Used

* FFE0H → Display data
* FFE2H → Second display
* FFE6H → Control port

##  Output

* Digits/characters displayed on seven segment displays

##  Tools Used

* EMU8086 / 8086 Trainer Kit
