.globl _start

.section .text
_start:
    movq $21, %rax
    movq $2, %rbx
    movq $0, %rdx

    divq %rbx

    cmpq $0, %rdx
    je even
    jne odd

even:
    movq $1, %rdi
    jmp complete

odd:
    movq $0, %rdi

complete:
    movq $60, %rax
    syscall



