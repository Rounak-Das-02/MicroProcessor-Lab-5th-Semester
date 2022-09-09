global minN
section .text

minN:
    mov rax, [rdi]
    cmp rsi, 0;
    je finish;
    dec rsi

loop_n:
    add rdi, $8;
    cmp [rdi], rax;
    jg update
    mov rax, [rdi];

update:
    dec rsi
    cmp rsi, 0
    jne loop_n


finish:
    ret

