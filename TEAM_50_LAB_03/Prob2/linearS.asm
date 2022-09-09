global linearS
section .text
linearS:
	xor rax, rax
	mov rcx, rsi
	mov rax, [rdi + 8*rcx]
	; mov rax, [rdi]
	ret 
	;	If true, jump to end and return -1

; next:
; 	cmp rsi, 0			;	Increment rcx count
; 	je end;	Compare rdx (key) and current element in array
; 	cmp rdx, [rdi];
; 	je success		;	If equal, exit to success method
; 	inc rcx;
; 	dec rsi
; 	add rdi, 8		;	Move to next element in array
; 	jmp next;

; success:
; 	mov rax, rcx	;	Store found element position in rax and move to end to return value

; end:
; 	ret						;	Return rax with position else -1 if not found