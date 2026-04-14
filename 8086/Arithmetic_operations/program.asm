#1.Addition of two 16 bit numbers
              OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
NUM1 DW AAAAH
NUM2 DW BBBBH
SUM DW 0000H
CARRY DB 00H
DATA ENDS
CODE SEGMENT
                ASSUME CS:CODE,DS:DATA
                MOV AX,DATA
                MOV DS,AX
                MOV CL,00H
                MOV AX,NUM1
                ADD AX,NUM2
                JNC L1
                INC CL
L1:             MOV SUM,AX
                MOV CARRY,CL
CODE ENDS
END

#2.Subtraction of two 16 bit numbers
                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
NUM1 DW AAAAH
NUM2 DW BBBBH
DIFF DW 0000H
BR DB 00H
DATA ENDS
CODE SEGMENT
                ASSUME CS:CODE,DS:DATA
                MOV AX,DATA
                MOV DS,AX
                MOV CL,00H
                MOV AX,NUM1
                MOV BX,NUM2
                SUB AX,BX
                JNC L1
                INC CL
L1:             MOV DIFF,AX
                MOV BR,CL
CODE ENDS
END
#3.Multiplication of two 16 bit numbers
                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
NUM1 DW AAAAH
NUM2 DW BBBBH
LSB DW 0000H
MSB DW 0000H
DATA ENDS
CODE SEGMENT
                ASSUME CS:CODE,DS:DATA
                MOV AX,DATA
                MOV DS,AX
                MOV AX,NUM1
                MOV BX,NUM2
                MUL BX
                MOV LSB,AX
                MOV MSB,DX
CODE ENDS
END
#4.calculation of A^2 - B^2
                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
A DB 05H
B DB 03H
SUM DB 00H
DIFF DB 00H
LSB DW 0000H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
        MOV AX,DATA
        MOV DS,AX
        MOV AL,A
        ADD AL,B
        MOV SUM,AL
        MOV AL,A
        SUB AL,B
        MOV DIFF,AL
        MOV AL,SUM
        MOV BL,DIFF
        MUL BL
        MOV LSB,AX
CODE ENDS
END
