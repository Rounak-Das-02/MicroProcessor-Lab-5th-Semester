global fact
section .text

fact:
    cmp rdi, $1
    jg next
    mov rax, $1
    ret

next:
    push rdi
    dec rdi
    call fact
    pop rbx;
    imul rbx
    ret;

