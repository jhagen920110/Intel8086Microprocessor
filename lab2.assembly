            .486
            .MODEL SMALL,STDCALL
            .DATA

            ORG     0FFC0H
            DB      0C0H,0F9H,0A4H,0B0H,99H,92H,82H,0F8H,80H,90H

            .CODE

BEGIN:

PORTA       EQU     0F8H
PORTB       EQU     0FAH
CTLREG      EQU     0F2H
BACK:       MOV     BL,0C0H
            MOV     AL,90H ;initialize AL
            OUT     CTLREG,AL
            IN      AL,PORTA
            AND     AL,0FH  ;masking first 4 bit
            XLAT            ;obtain the code from the table
            OUT     PORTB,AL;output
            JMP     BACK
            HLT
END         BEGIN
