global addMat

section .text

addMat:
    cmp rdx, $0;
    jz finish;
    mov rcx, rdx

next: 
    mov rax, [rdi];
    add rax, [rsi]
    mov [rdi], rax;
    add rdi, $8
    add rsi, $8
    loop next
    ret;

finish:
    ret 

