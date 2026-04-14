#1.comparison of two strings
      OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
STR1  DB "HELLO"
STR2 DB "HELLO"
RES DB 00H
COUNT DB 05H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA,ES:DATA
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        CLD
        MOV CL,COUNT
        LEA SI,STR1
        LEA DI,STR2
L2:     CMPSB
        JZ L1
        MOV RES,00H
        JMP L3
L1:     DEC CL
        JNZ L2
        MOV RES,01H
L3:     HLT
CODE ENDS
END

#2.occurrence of a character
                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
STR1 DB "HELLO"
STR2 DB "Q"
RES DB 00H
COUNT EQU 05H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA,ES:DATA
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        MOV CL,COUNT
        LEA DI,STR1
        MOV AL,STR2
L2:
        CMP [DI],AL
        JNZ L1
        MOV RES,01H
        JMP L3
L1:
        INC DI
        DEC CL
        JNZ L2
L3:
        HLT
CODE ENDS
END
#3.Alphabet encryption

        OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
CHAR DB 'A'
RES DB 00H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
        MOV AX,DATA
        MOV DS,AX
        MOV AL,CHAR
        MOV BL,5AH
        SUB BL,AL
        ADD BL,41H
        MOV RES,BL
        HLT
CODE ENDS
END


