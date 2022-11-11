global lcm
section .text
lcm:
    mov r11, $1;    moving 1 to r11 for storing product
           ;        a*b = lcm(a,b) * gcd(a,b)
           ;        so lcm(a,b) = (a*b)/gcd(a,b)
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
    imul r11, r8;
    imul r11, r9;   finding the product of the numbers
    dec rsi;
    cmp r8, r9;     comparing r8 and r9
    jl exchange;    if r8 less than r9 then swap

find_lcm:
    mov rax, r8;    finding gcd(a,b) using gcd(b, b%a)
    xor rdx, rdx;
    idiv r9;
    mov r8, rdx;
    cmp r8, $0;     gcd is found
    je update_lcm;  updating the values
    cmp r8, r9;
    jl exchange;    sorting the numbers in such a way a < b
    jmp find_lcm;   finding the gcd using loop

update_lcm:
    mov rax, r11;   the product of numbers is moved to rax
    xor rdx, rdx;   making rdx to 0
    idiv r9;        finding lcm
    mov r8, rax;    updating the r8 to the gcd of past elements
    cmp rsi, $0;    checking if size is 0
    je final;       if size=0 then complete array traversed
    add rdi, $8;    else go to next index
    mov r11, $1;    making the product back to 1
    jmp looping;    find the resultant lcm

exchange:
    mov r10, r8;    swapping r8 and r9 using r10 as temporary register
    mov r8, r9;
    mov r9, r10;
    jmp find_lcm;

final:
    mov rax, r8;    updating the return value to the final lcm
    jmp return;

single:
    mov rax, [rdi]; makes rax to single element and returns

return:
    ret