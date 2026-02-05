; Q1 Solution for PRN 1161
; Target: 1161 Decimal = 0489 Hex
; High Byte = 04H, Low Byte = 89H (137 Decimal)

ORG 0000H

START:
    ; --- Generate High Byte (Target: 04H) ---
    MOV A, #02H     ; Load 2
    ADD A, #02H     ; 2 + 2 = 4 (04H)
    MOV R2, A       ; Save High Byte (04H) in R2 temporarily

    ; --- Generate Low Byte (Target: 89H / 137 Decimal) ---
    ; Logic: (13 * 10) + 7 = 137
    
    MOV A, #0DH     ; Load 13 decimal (0DH)
    MOV B, #0AH     ; Load 10 decimal (0AH)
    MUL AB          ; Multiply: 13 * 10 = 130
                    ; Result in Hex: A = 82H (130), B = 00H
    
    ADD A, #07H     ; Add 7: 130 + 7 = 137 (89H)
    
    ; --- Combine Final Result ---
    MOV B, R2       ; Restore High Byte (04H) from R2 into B
    
    ; FINAL RESULT:
    ; B = 04H
    ; A = 89H
    ; Combined B:A = 0489H (1161 Decimal)

END
