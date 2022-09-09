global minN
section .text

maxN:
    mov rax, [rdi]
    cmp rsi, $0;
    je finish;
    dec rsi

loop_n:
    add rdi, $8;
    cmp rax, [rdi];
    jg update
    mov rax, [rdi];

update:
    dec rsi
    cmp rsi, $0
    jne loop_n


finish:
    ret

