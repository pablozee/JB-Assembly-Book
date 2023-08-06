.globl _start

.section .data
value:
    .quad 5

.section .text
_start:
    pushq $0
    movq value, %rax

pushvalues:
    pushq %rax
    decq %rax
    jnz pushvalues
    
    movq $1, %rax

multiply:
    popq %rcx

    cmpq $0, %rcx
    je complete

    mulq %rcx

    jmp multiply

complete:
    movq %rax, %rdi
    movq $60, %rax
    syscall