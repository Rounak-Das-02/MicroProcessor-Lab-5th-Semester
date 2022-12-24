global stringsSort
section .text

stringsSort:
    mov rcx,$0;                     counter for loop1, i
    mov r15,$8;
    imul r15,$8;                    making b=64 the max size of each string
loop1:
    cmp rcx,rsi;                    checking if all strings are checked for sorting
    jge return;                     if all strings are checked and sorted then go to return

    mov rbx,r15;                    rbx store the first element to swap with         
    imul rbx,rcx;                   rbx = 64*rcx
    add rbx,rdi;                    moving to position in the array that is to be sorted rbx = rdi+64*rcx

    mov rax,rbx;                    make rax be the present min string

    mov r8,rcx;                     counter for loop2,j
    inc r8;                         j=i+1
    loop2:
        cmp r8,rsi;                 checking if all strings are compared to the present string
        jge swap1;                  if yes, then we swap the string to the min string for that position

        mov r14,r15;                current string in the position
        imul r14,r8;                r14 = 64*r8
        add r14,rdi;                r14 = rdi+64*r8
        
        mov r9,$0;                  counter for lexiographic
        compare:
            cmp r9,r15;             counter to check all the characters of the 2 strings being compared
            jge break2;             if all characters are compared then break

            mov r10,r14;            r10 = r14 used for comparing characters
            add r10,r9;             r10 = r10 + r9 going to the r9th position in the string
            mov r11,rax;            r11 = rax used for comparing characters
            add r11,r9;             r11 = r11 + r9 going to the r9th position in the string

            movzx r13,byte[r11];    moving the byte of the character at r11 to r13
            movzx r12,byte[r10];    moving the byte of the character at r10 to r12

            cmp r13, $0;            comparing the byte r13 to 0 which means null character
            je break2;              if r13 is 0 then end of string

            cmp r12,r13;            comparing the byte of the characters
            jl swap;                if r12 is less than r13 then swap the rax the min
            jg break2;              if greater then break

            inc r9;                 else increment r9 and continue the loop
            jmp compare;
        swap:
            mov rax,r14;            updating the min string
    break2:
        inc r8;                     incrementing r8 used for counter of the comparisions
        jmp loop2;                  jump to loop2 for comparing other strings

swap1:
    mov r11, [rax];                 swapping 2 strings by moving the string data to r10 and r11
    mov r10, [rbx];
    mov [rax], r10;                 then moving back the data to [rax], [rbx]
    mov [rbx], r11;

break1:
    inc rcx;                        incrementing the loop1 counter
    jmp loop1;                      jump back to loop1 for sorting the remaining array

return:
    ret;                            terminates the program
