#1.360 DEGREE ROTATION 

                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
LIST DB 01H,02H,04H,08H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AL,80H
        MOV DX,FFE6H
        OUT DX,AL
L3:
        MOV CH,32H
L2:
        MOV SI,OFFSET LIST
        MOV CL,04H
L1:
        MOV AL,[SI]
        MOV DX,FFE0H
        OUT DX,AL
        CALL DELAY
        INC SI
        DEC CL
        JNZ L1
        DEC CH
        JNZ L2
        JMP L3
DELAY:
        MOV BX,AAAAH
L4:
        DEC BX
        JNZ L4
        RET
        HLT
CODE ENDS
END


#2.90 DEGREE ROTATION
                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
LIST1 DB 08H,04H,02H,01H
LIST2 DB 01H,02H,04H,08H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AL,80H
        MOV DX,FFE6H
        OUT DX,AL
L3:
        MOV CH,0CH
L2:
        MOV SI,OFFSET LIST1
        MOV CL,04H
L1:
        MOV AL,[SI]
        MOV DX,FFE0H
        OUT DX,AL
        CALL DELAY
        INC SI
        DEC CL
        JNZ L1
        DEC CH
        JNZ L2
L4:
        MOV CH,0CH
L5:
        MOV DI,OFFSET LIST2
        MOV CL,04H
L6:
        MOV AL,[DI]
        MOV DX,FFE0H
        OUT DX,AL
        CALL DELAY
        INC DI
        DEC CL
        JNZ L6
        DEC CH
        JNZ L5
        JMP L3
DELAY:
        MOV BX,AAAAH
L7:
        DEC BX
        JNZ L7
        RET
CODE ENDS
END

