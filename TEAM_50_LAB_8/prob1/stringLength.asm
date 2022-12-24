global stringLength
section .text

stringLength:
    xor rax, rax;       making rax = 0
    mov r8, rdi;        moving the starting address of char array to r8
    cmp byte[r8], $0;   checking if the string is empty or not by comparing 1st index element with byte of 0
    je return;          if string is empty then return

findLength:
    inc rax;            increment rax the length counter
    add r8, $1;         moving to next index in the string
    cmp byte[r8], $0;   checking if end of the string is reached
    jne findLength;     if not then contnuing the loop

return:
    ret;                returns rax and terminates
