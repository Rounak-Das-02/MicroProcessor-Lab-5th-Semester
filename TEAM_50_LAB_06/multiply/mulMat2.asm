global mulMat2
section .text
mulMat2: 
	cmp rcx,$0;
	jz finish;

	mov r13, rdi; //Base address of A
	mov r14, rsi; // Base address of B
	mov r15, rdx; // Base address of C
	xor rdx, rdx;
	mov rax, $8;
	imul rcx;
	mov r8, rax;// column width
	mov r9, $0;//
	mov r10, $0; // control variable for outerloop
	mov r11, $0; 
	mov r12, $0;// control variable for innermost loop
	loop1: cmp r10, rcx;// outerloop. 
		je next1;
		mov rax, r8;
		imul r10;
		mov r13, rdi; // 
		add r13, rax; // To get the address of first element in each row.
		mov r11, $0;  
	loop2: cmp r11, rcx;// This loop is responsible to get one row in res. matrix
		je next2;
		mov rax, $8;
		imul r11;
		mov r14, rsi;
		add r14, rax; // To get the address of first element in each column.
		mov r12, $0;
	loop3: cmp r12, rcx;// innermost loop 
		je next3;    // this loop is responsible to get one cell in res. matrix
	  	mov rax, [r13];
		mov rbx, [r14];
		imul rbx;
		add [r15], rax;
		add r14, r8;
		inc r12;
		jmp loop3;
 	next3:           ;// end for innermost loop
		add r15, $8;
		inc r11;
		jmp loop2;
	next2: 
		inc r10;
		jmp loop1;
	next1: 		;// end for outerloop
finish:	ret;
