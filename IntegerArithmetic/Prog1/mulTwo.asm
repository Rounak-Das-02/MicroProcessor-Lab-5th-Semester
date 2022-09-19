global mulTwo
section .text
mulTwo:
	mov rax, rdi ; First parameter is in rdi
	mov rbx, rsi; Second parameter is in rsi
	mov rcx, $0; Initialize rdx with zero
	imul  rbx;
	ret
