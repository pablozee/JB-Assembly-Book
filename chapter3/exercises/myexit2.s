.globl _start

.section .text

_start:
    movq $60, %rax
    movq $99, %rdi
    syscall
