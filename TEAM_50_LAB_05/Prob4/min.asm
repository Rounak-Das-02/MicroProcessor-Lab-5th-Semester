global min
section .text

min:
    cmp rsi, $1
    jg next;
    mov rax, [rdi]
    ret;

next:
    mov rcx, [rdi]
    push rcx
    dec rsi
    add rdi, $8
    call min
    pop rbx;
    cmp rax, rbx
    jg swap
    ret

swap:
    mov rax, rbx
    ret


    