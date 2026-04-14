# Experiment 3: String Operations in 8086

##  Aim

To write 8086 assembly language programs to perform operations on strings such as comparison, character search, and encryption.

##  Programs Included

### 1. Comparison of Two Strings

* Compares two strings character by character
* Uses CMPSB instruction
* Stores result:

  * 01H → Strings are equal
  * 00H → Strings are not equal

### 2. Occurrence of a Character

* Checks whether a specific character is present in a string
* Iterates through the string
* Stores result:

  * 01H → Character found
  * 00H → Not found

### 3. Alphabet Encryption

* Performs simple encryption on a character
* Uses transformation logic based on ASCII values

##  Concepts Used

* String instructions (CMPSB)
* Pointer registers (SI, DI)
* Looping using CL register
* ASCII value manipulation

##  Output

* Result stored in RES variable

##  Tools Used

* EMU8086 / 8086 Simulator

