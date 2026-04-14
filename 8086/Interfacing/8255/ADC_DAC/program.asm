#1)ADC interfacing:
  
        OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AL,98H
        MOV DX,FFE6H
        OUT DX,AL
L2:
        MOV AL,00H
        MOV DX,FFE4H
        OUT DX,AL
        MOV AL,00H
        MOV DX,FFE2H
        OUT DX,AL
        MOV AL,02H
        MOV DX,FFE4H
        OUT DX,AL
        MOV AL,03H
        MOV DX,FFE4H
        OUT DX,AL
        MOV AL,01H
        MOV DX,FFE4H
        OUT DX,AL
        MOV AL,00H
        MOV DX,FFE4H
        OUT DX,AL
        MOV DX,FFE4H
        IN AL,DX
L1:
        RCL AL,01H
        JNC L1
        MOV AL,04H
        MOV DX,FFE4H
        OUT DX,AL
        MOV DX,FFE0H
        IN AL,DX
        MOV BL,00H
        MOV BH,00H
        DB 9AH,12H,0BH,00H,FFH
        JMP L2
CODE ENDS
END

#2)DAC interfacing:

                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AL,80H
        MOV DX,FFE6H
        OUT DX,AL
L1:
        MOV AL,FFH
        MOV DX,FFE0H
        OUT DX,AL
        MOV AL,00H
        MOV DX,FFE0H
        OUT DX,AL
        CALL DELAY
        JMP L1
DELAY:
        MOV BX,5555H
L2:
        DEC BX
        JNZ L2
        RET
CODE ENDS
END

#3)TRIANGULAR WAVEFORM:


                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AL,80H
        MOV DX,FFE6H
        OUT DX,AL
        MOV AL,00H
L1:
        MOV DX,FFE0H
        OUT DX,AL
        INC AL
        CMP AL,FFH
        JNZ L1
L2:
        MOV DX,FFE0H
        OUT DX,AL
        DEC AL
        CMP AL,00H
        JNZ L2
        JMP L1
CODE ENDS
END

#4)STAIRCASE WAVEFORM:
  

                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AL,80H
        MOV DX,FFE6H
        OUT DX,AL
L1:
        MOV AL,00H
NEXT:
        MOV DX,FFE0H
        OUT DX,AL
        CALL DELAY
        ADD AL,33H
        JNC NEXT
        JMP L1
DELAY:
        MOV BX,0FFFH
L2:
        DEC BX
        JNZ L2
        RET
CODE ENDS
END

5)SINE WAVEFORM:
  
        OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
LIST DB 80H,8BH,96H,A0H,ABH,B5H,BFH,C8H,D1H,D9H,E1H,E8H,F3H,F7H,FAH,FDH
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AL,80H
        MOV DX,FFE6H
        OUT DX,AL
L5:     MOV SI,OFFSET LIST
        MOV CL,13H
L1:     MOV AL,[SI]
        MOV DX,FFE0H
        OUT DX,AL
        INC SI
        DEC CL
        JNZ L1
        MOV CL,13H
L2:     MOV AL,[SI]
        MOV DX,FFE0H
        OUT DX,AL
        DEC SI
        DEC CL
        JNZ L2
        MOV SI,OFFSET LIST
        MOV CL,13H
L3:     MOV AL,[SI]
        NEG AL
        MOV DX,FFE0H
        OUT DX,AL
        INC SI
        JNZ L3
        MOV CL,13H
L4:     DEC SI
        MOV AL,[SI]
        NEG AL
        MOV DX,FFE0H
        OUT DX,AL
        DEC CL
        JNZ L4
        JMP L5
CODE ENDS 
END

