section .data
	take_input db "Enter integer %d: ", 0
	print_sum db "Sum = %d", 0xA, 0
    print_diff db "Difference = %d", 0xA, 0
    print_product db "Product = %d", 0xA, 0
    print_quotient db "Quotient = %d", 0xA, 0
	input_format db "%d", 0

section .bss
    input resd 1
    integer_1 resd 1
    integer_2 resd 1
    sum_result resb 1
    sub_result resb 1
    mul_result resb 1
    div_result resb 1

section .text
    global main
    extern printf
    extern scanf

main:
    mov rax, $0;						making rax = 0 initially
	mov [sum_result], rax;				sum_result stores the sum intitalize to 0
    mov [sub_result], rax;              sub_result stores the difference initialize to 0
    mov [mul_result], rax;				mul_result stores the product intitalize to 1
    mov [div_result], rax;				div_result stores the quotient intitalize to 0

	mov rbx, $0;						counter for taking 2 integers as input
	call input_integers;			    takes input of integers

    call addition;                      calls addition function integer1 + integer2
	call print_sum_result;				prints the sum in terminal

    call subtraction;                   calls subtraction function integer1 - integer2
    call print_sub_result;				prints the difference in terminal

    call multiplication;                calls multiplication function integer1 * integer 2
    call print_mul_result;				prints the product in terminal

    call division;                      calls division function integer1 / integer 2
    call print_div_result;				prints the quotient in terminal
    ; call print_sum_result;

	mov rax, $0;						resetting rax to 0
	ret;								termiantes the program

input_integers:
    inc rbx;
	call print_take_input;				prints "Enter integer 1: " in command line
	call get_input_from_commandline;	takes input of integer
    call update_input1;

    inc rbx;
	call print_take_input;				prints "Enter integer 2: " in command line
	call get_input_from_commandline;	takes input of integer
    call update_input2;

	ret;								else returns to previous function main

print_take_input:
	push rbp;
	mov rdi, take_input;				loads take_input string	into rdi
	mov rsi, rbx;						store rbx in rsi
	mov rax, $0;						reset rax to 0
	call printf;						call printf on rdi, rsi as arguments
	pop rbp;

	ret;								returns to previous function input_findSum_process

get_input_from_commandline:
	push rbp;
	mov rdi, input_format;				rdi has the format of input being taken "%d"
	mov rsi, input;						rsi has input memory
	call scanf;							calling scanf on rdi, rsi for taking input of integer
	pop rbp;

	ret;								returns to previous function input_findSum_process

update_input1:
    push rbp;
    mov rax, [input];                   moves taken input to rax
    mov [integer_1], rax;               moves 1st input to integer 1
    pop rbp;
    ret;                                returns to input_integers function

update_input2:
    push rbp;
    mov rax, [input];                   moves taken input to rax
    mov [integer_2], rax;               moves 2nd input to integer 2
    pop rbp;
    ret;                                returns to input_integers function

addition:
    push rbp;
    mov rax, $0;                        make rax = 0
    add rax, [integer_1];               add integer_1 value to rax
    add rax, [integer_2];               add integer_2 value to rax
    mov [sum_result], rax;              move rax to sum_result
    pop rbp;
    ret;                                return to main function

subtraction:
    push rbp;
    mov rax, $0;                        make rax = 0
    add rax, [integer_1];               add integer_1 value to rax
    sub rax, [integer_2];               subtract integer_2 value to rax
    mov [sub_result], rax;              move rax to sub_result
    pop rbp;
    ret;                                return to main function

multiplication:
    push rbp;
    mov r8, [integer_1];                move integer_1 value to r8
    mov rax, $1;                        make rax = 1
    imul rax, r8;                       multiply integer1 to rax and store in rax
    mov r8, [integer_2];                move integer_2 value to r8
    imul rax, r8;                       multiply integer2 to rax and store in rax
    mov [mul_result], rax;              moving rax to mul_result
    pop rbp;
    ret;                                return to main function

division:
    push rbp;
    xor r10, r10;
    ; xor rdx, rdx;                       make rdx = 0
    mov r9, [integer_1];                move integer_2 value to rbx
    xor r8,r8;
    loop1:
        add r10, [integer_2];               move integer_1 value to rax
        mov r12,r10;
        sub r10,r9;
        cmp r10,$0;
        jg break1;
        inc r8;
        ; mov [div_result], rsi;
        ; ret
        jmp loop1;
    break1:
        mov r9, $1;
        mov [div_result], r8;
        pop rbp;
        ret
    ; mov rsi, $2;
    ; idiv rbx;                            dividing rax with rbx   rax / rbx
    ; mov [div_result], rax;              quotient rax is stored in [div_result]
    ; ret;                                return to main function

print_sum_result:
    push rbp;
	mov rdi, print_sum;					moving "Sum = %d" to rdi
	mov rsi, [sum_result];				moving the sum to rsi
	mov rax, $0;						resetting rax to 0
	call printf;						calling printf on rdi, rsi to print the sum in terminal
	pop rbp;
	ret;								returns to previous function main

print_sub_result:
    push rbp;
	mov rdi, print_diff;				moving "Difference = %d" to rdi
	mov rsi, [sub_result];				moving the difference to rsi
	mov rax, $0;						resetting rax to 0
	call printf;						calling printf on rdi, rsi to print the difference in terminal
	pop rbp;
	ret;								returns to previous function main

print_mul_result:
    push rbp;
	mov rdi, print_product;				moving "Product = %d" to rdi
	mov rsi, [mul_result];				moving the product to rsi
	mov rax, $0;						resetting rax to 0
	call printf;						calling printf on rdi, rsi to print the product in terminal
	pop rbp;
	ret;								returns to previous function main

print_div_result:
    push rbp;
	mov rdi, print_quotient;			moving "Quotient = %d" to rdi
	mov rsi, [div_result];				moving the quotient to rsi
	mov rax, $0;						resetting rax to 0
	call printf;						calling printf on rdi, rsi to print the quotient in terminal
	pop rbp;
	ret;								returns to previous function main