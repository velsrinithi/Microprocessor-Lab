#1.ADDITION:
==========

.ORG 8000H
START:
        MOV R0,#00H
        MOV DPTR,#9000H
        MOVX A,@DPTR
        MOV R1,A
        INC DPTR
        MOVX A,@DPTR
        ADD A,R1
        JNC L1
        INC R0
L1:
        INC DPTR
        MOVX @DPTR,A
        MOV A,R0
        INC DPTR
        MOVX @DPTR,A
END



#2. SUBTRACTION:
==================

.ORG 8000H
START:
        MOV R0,#00H
        MOV DPTR,#9000H
        MOVX A,@DPTR
        MOV R1,A
        INC DPTR
        MOVX A,@DPTR
        MOV R2,A
        MOV A,R1
        CLR C
        SUBB A,R2
        INC DPTR
        MOVX @DPTR,A
        JNC L1
        INC DPTR
        MOV A,#01H
        MOVX @DPTR,A
L1:
        INC DPTR
        MOV A,#00H
        MOVX @DPTR,A
END

#3. MULTIPLICATION:
==========


.ORG 8000H
START:
        MOV DPTR,#9000H
        MOVX A,@DPTR
        INC DPTR
        MOV B,A
        MOVX A,@DPTR
        MUL AB
        INC DPTR
        MOVX @DPTR,A
        MOV A,B
        INC DPTR
        MOVX @DPTR,A
END

#4. DIVISION:
===========

.ORG 8000H
START:
        MOV DPTR,#9000H
        MOVX A,@DPTR
        MOV R1,A
        INC DPTR
        MOVX A,@DPTR
        MOV B,A
        MOV A,R1
        DIV AB
        INC DPTR
        MOVX @DPTR,A
        MOV A,B
        INC DPTR
        MOVX @DPTR,A
END
#5.computation of(a^2+b^2)/(a+b)
.ORG 8000H
START:
        MOV DPTR,#9000H
        MOVX A,@DPTR
        MOV R1,A        
        INC DPTR
        MOVX A,@DPTR
        MOV R2,A        
        MOV A,R1
        MOV B,R1
        MUL AB
        MOV R3,A       
        MOV A,R2
        MOV B,R2
        MUL AB
        MOV R4,A        
        MOV A,R3
        ADD A,R4
        MOV R5,A        
        MOV A,R1
        ADD A,R2
        MOV R6,A        
        MOV B,R6
        MOV A,R5
        DIV AB
        INC DPTR
        MOVX @DPTR,A
        MOV A,B
        INC DPTR
        MOVX @DPTR,A
END

