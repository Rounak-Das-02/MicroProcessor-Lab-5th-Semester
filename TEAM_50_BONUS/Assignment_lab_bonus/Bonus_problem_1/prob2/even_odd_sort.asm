global even_odd_sort
section .text

even_odd_sort:
    cmp rsi, $1;            check if the size of array is <=1
    jle return;             if n <=1 then nno need to sort jmp to return
    mov r8, rdi;            moving array base address to r8
    mov r9, rdi;            moving array base address to r9
    mov r10,rsi;            copying size to r10
    sub r10, $2;            r10 = r10-2 counter for traversing the array in even and odd
    mov r11, r10;           r11 = r10
    mov rax, $0;            sort counter to check if the array is sorted or not
    mov r12, $8;
    imul r12, $2;           making r12 = 16 for easy address location in the array

loop_even_odd:
    cmp rax, $1;            checks if rax = 1 or not
    je return;              if rax = 1 then array is sorted, jmp to return
    mov rax, $1;            making rax = 1, if any swap happens it changes to 0
    
    even:
        mov rcx, [r8];      moving 1st element to rcx
        mov rdx, [r8+8];    moving adjacent element to rdx
        cmp rcx, rdx;       comparing both rcx and rdx (adjacent elements)
        jg swap_even;       if rcx > rdx then swap
        sub r11, $2;        else reduce the loop counter
        cmp r11, $0;        check if loop ended
        jl reset_even;      if loop ended then jmp to reset_even
        add r8, r12;        else update to next address
        jmp even;           loop even

    reset_even:
        mov r8, r9;         reset r8 to base address
        add r8, $8;         move to odd location
        mov r11, r10;       reset the loop counter
        cmp r11, $0;        check if odd loop is required or not
        jle loop_even_odd;  if not then jmp to loop_even_odd

    odd:
        mov rcx, [r8];      repeat the same loop process of even
        mov rdx, [r8+8];
        cmp rcx, rdx;
        jg swap_odd;
        sub r11, $2;
        cmp r11, $0;
        jle reset_odd;      loop condition is r11 >= 0
        add r8, r12;        update address to next odd location
        jmp odd;            loop odd

    reset_odd:
        mov r8, r9;         reset the base address
        mov r11, r10;       reset loop counter
        jmp loop_even_odd;  jmp back to loop_even_odd to check if array is sorted or not

swap_even:
    mov rcx, [r8];          swapping r8 and adjacent address to r8
    mov rdx, [r8+8];
    mov [r8], rdx;
    mov [r8+8], rcx;
    mov rax, $0;            reset rax to 0 to show swap occured
    sub r11, $2;            reduce the loop counter
    cmp r11, $0;            check if loop end is reached or not
    jl reset_even;
    add r8, r12;            update location of r8
    jmp even;               jmp back to even and continue the loop

swap_odd:
    mov rcx, [r8];          swapping r8 and adjacent address to r8
    mov rdx, [r8+8];
    mov [r8], rdx;
    mov [r8+8], rcx;
    mov rax, $0;            reset rax to 0 to show swap occured
    sub r11, $2;            reduce the loop counter
    cmp r11, $0;            check if loop end is reached or not
    jle reset_odd;
    add r8, r12;            update location of r8
    jmp odd;                jmp back to even and continue the loop

return:
    ret;                    terminates the program after the array is sorted