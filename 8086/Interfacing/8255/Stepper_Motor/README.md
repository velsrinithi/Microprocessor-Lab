# Experiment: Stepper Motor Interfacing using 8086

##  Aim
To interface a stepper motor with 8086 microprocessor using 8255 PPI and generate clockwise and anti-clockwise rotation.

---

##  Programs Included

### 1. Clockwise Rotation
- Rotates motor in clockwise direction
- Sequence: 09H → 0CH → 06H → 03H

### 2. Anti-Clockwise Rotation
- Rotates motor in reverse direction
- Sequence: 03H → 06H → 0CH → 09H

### 3. Angle Rotation
- Rotates motor by fixed steps (90°, 180° etc.)

### 4. Continuous Rotation
- Repeats step sequence for continuous motion

---

##  Concepts Used
- 8255 PPI interfacing
- Stepper motor control sequence
- I/O operations (IN/OUT)
- Delay loops
- Direction control

---

##  Ports Used
- Port A (Data): FFE0H  
- Control Register: FFE6H  

---

##  Output
- Controlled stepper motor rotation (CW/CCW)

---

##  Tools Used
- EMU8086 / 8086 Trainer Kit
- 8255 PPI
- Stepper Motor Driver
