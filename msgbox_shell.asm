default rel
global Start

section .text
Start:
    push 0                  ; MB_OK
    lea r9, [title]         ; заголовок
    lea r8, [message]       ; сообщение
    xor rdx, rdx
    xor rcx, rcx
    call MessageBoxA
    
    xor eax, eax
    ret

section .data
    message db 'Bac B3JIOMaJlu!', 0
    title db 'Red Team', 0

extern MessageBoxA