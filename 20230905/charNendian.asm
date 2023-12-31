%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    PRINT_STRING msg
    
    xor rax, rax
    ret
    
    ; 초기화 된 데이터
    ; [변수이름] [크기] [초기값]
    ; [크기] db(1) dw(2) dd(4) dq(8)
section .data
    ;msg db 'Hello world', 0x00
    
    msg db 0x48, 0x65, 0x6c, 0x6c, 0x6f, 0x20, 0x77, 0x6f, 0x72, 0x6c, 0x64, 0x0
    
    ; a db 17 ; [0x11]
    a db 0x11, 0x11, 0x11, 0x11
    
    b dd 0x12345678
     ; 장단점이 교차한다
     ; - 리틀 앤디언 : 캐스팅에 유리함
     ; - 빅 앤디언 : 숫자 비교에 유리함
    
    ; 초기화 되지 않은 데이터
    ; [변수이름] [크기] [개수]
    ; [크기] resb(1) resw(2) resd(4) resq(8)
section .bss
    e resb 10