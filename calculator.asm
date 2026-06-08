default rel
global Start
extern GetStdHandle
extern ReadConsoleA
extern WriteConsoleA
extern ExitProcess

section .data
    msg1 dq "Напиши первое число:",0
    msg1_len equ $ - msg1
