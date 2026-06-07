default rel
global Start

section .text
Start:
    mov rcx,10
    mov rax, 0
loop_start:
    add rax, 1
    dec rcx
    jnz loop_start

    ret
