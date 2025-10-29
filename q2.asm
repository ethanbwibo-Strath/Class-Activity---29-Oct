section .data
    sum dd 0

section .text
    global _start

_start:
    mov ecx, 15      ; counter = 15
    mov eax, 0       ; sum = 0

loop_start:
    add eax, ecx     ; sum += ecx
    inc ecx          ; ecx = ecx + 1
    cmp ecx, 26      ; stop when ecx == 26
    jne loop_start

    mov [sum], eax   ; store result in sum

    ; Exit cleanly
    mov eax, 1
    xor ebx, ebx
    int 0x80
