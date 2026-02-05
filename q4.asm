; Q4 Solution for Mobile Suffix 2531
; Target: 2531 Decimal = 09E3 Hex
; High Byte: 09H, Low Byte: E3H
; Logic: Construct values using ORL/ANL/CLR

ORG 0000H

START:
    ; --- Generate High Byte (Target: 09H) ---
    CLR A           ; Clear Accumulator (A = 00H)
    ORL A, #08H     ; Set bit 3 (A = 08H)
    ORL A, #01H     ; Set bit 0 (08H | 01H = 09H)
    MOV R2, A       ; Save High Byte (09H) temporarily in R2

    ; --- Generate Low Byte (Target: E3H) ---
    ; Target Binary: 1110 0011
    
    CLR A           ; Reset Accumulator
    ORL A, #0E0H    ; Set top 3 bits (1110 0000 = E0H)
    ORL A, #03H     ; Set bottom 2 bits (0000 0011 = 03H)
                    ; Result: E0H | 03H = E3H
    
    ; --- Combine Final Result ---
    MOV B, R2       ; Move High Byte (09H) into Register B
    
    ; FINAL STATE:
    ; B = 09H
    ; A = E3H
    ; Combined B:A = 09E3H (2531 Decimal)

END
