section .text
    global factorial      ; Make function visible to C

factorial:
    mov eax, 1            ; result = 1
    mov ecx, edi          ; copy n (C passes it in edi on x86_64)

loop_start:
    test ecx, ecx         ; check if ecx == 0
    jz done
    imul eax, ecx         ; result *= ecx
    dec ecx
    jmp loop_start

done:
    ret
