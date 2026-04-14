#1.print a character I twice
CODE SEGMENT
         ASSUME CS:CODE
START:
        MOV AH,02H
        MOV BH,00H
        MOV DH,03H
        MOV DL,02H
        INT 10H
        MOV AH,0AH
        MOV AL,'I'
        MOV DH,02H
        MOV CX,0002H
        INT 10H
        MOV AH,4CH
        INT 21H
CODE ENDS
END
#2.string comparison
DATA SEGMENT
STR1 DB "ABCD","$"
STR2 DB "ABCD","$"
COUNT DB 04H
OUT1 DB "EQUAL","$"
OUT2 DB "NOT EQUAL","$"
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA,ES:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        MOV SI,OFFSET STR1
        MOV DI,OFFSET STR2
        MOV BL,COUNT
        CLD
L2:
        CMPSB
        JZ L1
        JMP L3
L1:
        DEC BL
        JNZ L2
        MOV AH,09H
        MOV DX,OFFSET OUT1
        INT 21H
        JMP L4
L3:
        MOV AH,09H
        MOV DX,OFFSET OUT2
        INT 21H
L4:
        MOV AH,4CH
        INT 21H
CODE ENDS
END
#3.file
DATA SEGMENT
FN DB "TEXT.TXT","$"
MSG DB "HELLO WORLD"
BUFFER DB 0BH DUP(00H),"$"
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA,ES:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX
        MOV AH,3CH
        MOV CX,0000H
        MOV DX,OFFSET FN
        INT 21H
        MOV BX,AX
        MOV AH,40H
        MOV CX,0BH
        MOV DX,OFFSET MSG
        INT 21H
        MOV AH,3EH
        INT 21H
        MOV AH,3DH
        MOV DX,OFFSET FN
        INT 21H
        MOV BX,AX
        MOV AH,3FH
        MOV DX,OFFSET BUFFER
        MOV CX,0BH
        INT 21H
        MOV AH,09H
        MOV DX,OFFSET BUFFER
        INT 21H
        MOV AH,4CH
        INT 21H
CODE ENDS
END
#4.print T-pattern using T
CODE SEGMENT
        ASSUME CS:CODE
START:
        MOV AH,02H
        MOV BH,00H
        MOV DH,03H
        MOV DL,20H
        INT 10H
        MOV AH,0AH
        MOV AL,'T'
        MOV BH,00H
        MOV CX,0005H
        INT 10H
        MOV AH,02H
        MOV BH,00H
        MOV DH,04H
        MOV DL,22H
        INT 10H
        MOV AH,0AH
        MOV AL,'T'
        MOV CX,0001H
        INT 10H
        MOV AH,02H
        MOV BH,00H
        MOV DH,05H
        MOV DL,22H
        INT 10H
        MOV AH,0AH
        MOV AL,'T'
        MOV BH,00H
        MOV CX,0001H
        INT 10H
        MOV AH,02H
        MOV BH,00H
        MOV DH,06H
        MOV DL,22H
        INT 10H
        MOV AH,0AH
        MOV AL,'T'
        MOV BH,00H
        MOV CX,0001H
        INT 10H
        MOV AH,02H
        MOV BH,00H
        MOV DH,07H
        MOV DL,22H
        INT 10H
        MOV AH,0AH
        MOV AL,'T'
        MOV BH,00H
        MOV CX,0001H
        INT 10H
        MOV AH,4CH
        INT 21H
CODE ENDS
END

