global primeNumbers

section .text

primeNumbers:
    xor rax, rax
    xor rbx, rbx ;Temporary storage of array element
    xor r9, r9 ; Loop control variable
    xor r8,r8 ; The result
    xor rcx, rcx ; Number of prime Numbers
    cmp rsi, 0 ; 
    je finish ;

next1:
    mov rbx, [rdi] ;
    xor r10,r10

next2:
    mov rax, [rdi] ;
    mov rdx, $0
    idiv rbx
    cmp rdx, $0
    jne next3
    inc r10

next3:
    dec rbx
    jz next4
    
    jmp next2

next4:
    ; jmp finish
    cmp r10, 2
    je next5
    dec rsi
    jz finish
    add rdi, $8
    jmp next1

next5:
    inc r8
    xor r10,r10
    jmp next4;

finish:
    ; mov rax, r8
    mov rax, r10
    ret
