global gcd
section .text
gcd:
    xor rax, rax;   making the return value to 0
    cmp rsi, $0;    check if size is 0
    je return;      if size=0 then return
    cmp rsi, $1;    checking if size is 1
    je single;      only one element present
    mov r8, [rdi];  taking the first element as r8
    dec rsi;        reducing the size
    add rdi, $8;    going to the next index

looping:
    mov r9, [rdi];  the second element is moved to r9
    dec rsi;
    cmp r8, r9;     comparing r8 and r9
    jl exchange;    if r8 less than r9 then swap

find_gcd:
    mov rax, r8;    finding gcd(a,b) using gcd(b, b%a)
    xor rdx, rdx;
    idiv r9;
    mov r8, rdx;
    cmp r8, $0;     gcd is found
    je update_gcd;  updating the values
    cmp r8, r9;
    jl exchange;    sorting the numbers in such a way a < b
    jmp find_gcd;   finding the gcd using loop

update_gcd:
    mov r8, r9;     updating the r8 to the gcd of past elements
    cmp rsi, $0;    checking if size is 0
    je final;       if size=0 then complete array traversed
    add rdi, $8;    else go to next index
    jmp looping;    find the resultant gcd 

exchange:
    mov r10, r8;    swapping r8 and r9 using r10 as temporary register
    mov r8, r9;
    mov r9, r10;
    jmp find_gcd;

final:
    mov rax, r8;    updating the return value to the final gcd
    jmp return;

single:
    mov rax, [rdi]; makes rax to single element and returns

return:
    ret