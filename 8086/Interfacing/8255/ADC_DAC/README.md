# Experiment : ADC and DAC Interfacing (8086)

##  Aim

To interface ADC and DAC with 8086 microprocessor and generate different waveforms.

## Programs Included

### 1. ADC Interfacing

* Reads analog signal and converts to digital
* Uses control signals and input ports

### 2. DAC Interfacing

* Converts digital data to analog signal
* Outputs through DAC

### 3. Triangular Waveform

* Generates increasing and decreasing voltage pattern

### 4. Staircase Waveform

* Generates step-by-step increasing signal

### 5. Sine Waveform

* Generates sine wave using lookup table

## Concepts Used

* ADC and DAC interfacing
* I/O port communication (IN, OUT)
* Delay generation
* Lookup tables
* Waveform generation

## Ports Used

* FFE0H → Data output
* FFE2H / FFE4H → Control signals
* FFE6H → Configuration

##  Output

* Analog signals (waveforms) generated through DAC
* Digital values read from ADC

## 🛠️ Tools Used

* EMU8086 / 8086 Trainer Kit

