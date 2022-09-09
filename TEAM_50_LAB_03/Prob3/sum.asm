global sum

section .text

sum:
    xor rax, rax;
xor rcx, rcx;
mov rcx, $1;
mov rax, $1;

loop:
cmp rsi , $0
je finish;
dec rsi
imul rcx, rdi
add rax, rcx
jmp loop

finish: 
    ret