.globl _start

.section .text
_start:
    movq $4, %rdi
    call factorial

    movq %rax, %rdi
    movq $60, %rax
    syscall