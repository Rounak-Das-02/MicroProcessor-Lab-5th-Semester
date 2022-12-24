global stringReverse
section .text

stringReverse:
    xor rax, rax;       making rax = 0
    mov r8, rdi;        moving the starting address of char array to r8
    mov r9, rsi;        moving the starting address of result revered string to r9
    cmp byte[r8], $0;   checking if the string is empty or not by comparing 1st index element with byte of 0
    je return;          if string is empty then return

pushToStack:
    mov rdi, [r8];      moving the element at index of string to rdi
    push rdi;           pushing the characters into stack
    inc rax;            incrementing rax the size counter
    add r8, $1;         moving to next index in the string
    cmp byte[r8], $0;   checking if the end of string is reached
    jne pushToStack;    if not then continuing the loop

popFromStack:
    pop rbx;            popping the characters from the stack
    mov [r9], rbx;      adding those characters to r9
    add r9, $1;         moving to next index in r9
    dec rax;            decrementing the size counter
    cmp rax, $0;        checking if all characters are popped
    jnz popFromStack;   if not popped then return to loop

return:
    mov byte[r9], $0;   adding the ending chatracter of string the NULL
    ret;                terminating the process