        .486
        .MODEL SMALL,STDCALL
        .CODE
START:
        PORTA   EQU     0F8H
        PORTB   EQU     0FAH
        CNTRL   EQU     0FEH
                MOV     AL,90H
                OUT     CNTRL,AL
                IN      AL,PORTA
                OUT     PORTB,AL
                JMP     START
                HLT
                END     START  
