%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ; 쉬프트(shift) 연산, 논리(logical) 연산
    
    mov eax, 0x12345678
    PRINT_HEX 4, eax
    NEWLINE
    shl eax, 8
    PRINT_HEX 4, eax
    NEWLINE
    shr eax, 8
    PRINT_HEX 4, eax
    NEWLINE
    ; 곱셈/나눗셈 빠르게 할 수 있음
    ; 게임서버에서 ObjectID를 만들어 줄 때
    
    ; not and or xor
    
    ; ex) 조건 A 잘생겼다
    ; 조건 B 키가 크다
    
    ; not A : 잘생겼다의 반대 -> (0이면 1, 1이면 0)
    ; A and B : 잘생겼고 and 키도 크고 -> 둘 다 1이면 1, 아니면 0
    ; A or B : 잘생겼거나 or 키가 크거나 -> 둘 중 하나라도 1이면 1, 아니면 0
    ; A xor B : 잘생기고 작거나 or 못생기고 크거나 -> 둘다 1이거나 둘다 0이면 0, 아니면 1
    
    mov al, 0b10010101
    mov bl, 0b01111100
    
    ; 0b00010100 = 0x14
    and al, bl ; al = al and bl
    PRINT_HEX 1, al
    NEWLINE
    
    ; 0b11101011 = 0xEB
    not  al
    PRINT_HEX 1, al
    NEWLINE
    
    ; 응용 사례 : bitflag
    
    mov al, 0b10010101
    mov bl, 0b01111100
    
    NEWLINE
    PRINT_HEX 1, al
    NEWLINE
    xor al, bl
    PRINT_HEX 1, al
    NEWLINE
    xor al, bl
    PRINT_HEX 1, al
    NEWLINE
    ; 동일한 값으로 xor 두 번하면 자기 자신으로 되돌아오는 특성
    ; 암호학에서 유용하다! (value xor key)
    
    ; mov al, 0
    xor al, al
    PRINT_HEX 1, al
    
    ; mov rax, 0
    xor rax, rax
    ret
    
section .data

section .bss