global sum
section .text

sum:
	mov rbx, rdi; a val 
	mov rcx, rsi; b val 
	mov rdx, $0
	je finish

a_square:
	add rdx, rdi
	dec rbx 
	cmp rbx, $0
	jne a_square

next1:
	mov rax, rdx 
	mov rdx, $0

acube:
	add rdx, rax 
	dec rdi
	cmp rdi, $0
	jne acube 

next2: 
	mov rax, rdx; //value of a3
	mov rdx, $0 


bsquare:
	add rdx, rsi 
	dec rcx 
	cmp rcx, $0
	jne bsquare 

next3:
	mov rbx, rdx 
	mov rdx, $0

bcube:
	add rdx, rbx 
	dec rsi
	cmp rsi, $0
	jne bcube 

finish:
	add rax, rdx 
	ret