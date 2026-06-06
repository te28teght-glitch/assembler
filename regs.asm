global Start

section .text
Start:
    mov rax, 0x123456789ABCDEF0
    mov ebx, 0x89ABCDEF
    mov cx, 0x1234
    mov dl, 0xAA

    xor eax, eax
    ret