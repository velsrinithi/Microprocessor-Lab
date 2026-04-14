# Experiment: 8253 Timer Interfacing using 8086

##  Aim
To interface and program the 8253 programmable interval timer using 8086 microprocessor in different modes.

---

##  Programs Included

### 1. Mode 0 (Interrupt on Terminal Count)
- Generates a single pulse after count completion
- Control Word: 90H
- Output is sent continuously to port FFFDH

---

### 2. Mode 2 (Rate Generator Mode)
- Generates periodic pulses
- Control Word: 94H
- Used for clock generation / timing signals

---

### 3. Mode 3 (Square Wave Generator Mode)
- Generates square wave output
- Control Word: 96H
- Useful for waveform generation

---

##  Concepts Used
- 8253 programmable timer operation
- Mode selection (0, 2, 3)
- Control word programming
- 8086 I/O port interfacing (IN/OUT)
- Frequency / pulse generation concepts

---

##  Ports Used
- Control Word Register: FFFFH  
- Counter/Data Port: FFFDH  

---

##  Output
- Timer-based pulse generation
- Square wave / periodic signals depending on mode

---

## Tools Used
- EMU8086 / 8086 Trainer Kit
- 8253 Programmable Interval Timer
