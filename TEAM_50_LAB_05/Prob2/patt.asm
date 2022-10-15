global patt
section .text

patt:
    cmp rdi, $1
    jg next;
    mov rax, $1
    ret;

next:
    push rdi
    dec rdi
    call patt
    pop rbx;
    add rax, rbx
    ret;