default rel
global Start

section .text
Start:
    mov rax, 15
    mov rbx, 100

    cmp rax, rbx
    jle less_or_equal   ; если 15 ≤ 100, прыгнуть

    ; иначе (rax > rbx)
    mov rcx, 100
    jmp end

less_or_equal:
    mov rcx, 200

end:
    ret