%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ; 레지스터 단위
    ; 8 bit = 1 byte;
    ; 16 bit = 2 byte = 1 word
    ; 32 bit = 4 byte = 2 word = 1 dword(double word)
    ; 64 bit = 8 byte = 4 word = 1 qword(quad word)
    
    ; r(a, b, c, d)x
    ; e(a, b, c, d)x
    ; (a, b, c, d)l
    
    ; 오른쪽에서 왼쪽으로 읽음
    ; mov reg1, cst
    ; mov reg1, reg2
    
    ; 하위 32비트 사용
    mov eax, 0x1234
    
    mov rbx, 0x12345678
    
    ; 최하단 1바이트 사용
    ; mov cl, 0xffffffff (ERROR)
    mov cl, 0xff
    
    mov al, 0x00
    mov rax, rdx
    
    xor rax, rax
    ret
    
;section .data