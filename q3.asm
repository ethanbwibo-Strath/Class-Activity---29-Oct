section .data
    sum dd 0

section .text
    global _start

_start:
    mov ecx, 25
    mov eax, 0

loop_start:
    add eax, ecx
    dec ecx
    cmp ecx, 14
    jne loop_start

    mov [sum], eax

    mov eax, 1
    xor ebx, ebx
    int 0x80
