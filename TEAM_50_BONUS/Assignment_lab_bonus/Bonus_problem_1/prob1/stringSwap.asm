global stringSwap
section .text

;rdi=src, rsi=des, rdx=n;

stringSwap:
    mov r8,$0;      counter to go through set of strings
    mov r15,$8;
    imul r15,$8;    r15 stores value 64
loop1:
    cmp r8,rdx;     compare with n
    jge return;     if all strings are swapped then return
    
    mov r9,r8;      r9 = r8
    imul r9,r15;    r9 = r8*64
    mov r10,r9;     r10 = r9

    add r9, rdi;    current string in src (src base + r9)
    add r10, rsi;   current string in des (des base + r10)

    mov r11,[r9];   swapping 2 strings by moving the string data to r11 and r12  
    mov r12,[r10];
    mov [r10],r11;
    mov [r9],r12;

    inc r8;         incrementing the counter of number of strings swapped
    jmp loop1;      jmp back to loop1
return:
    ret;            terminate the program after set of strings memory swapp