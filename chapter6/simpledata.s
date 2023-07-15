.globl _start

.section .data
first_value:
    .quad 4
second_value:
    .quad 6

.section .text
_start:
    movq first_value, %rdi

    addq second_value, %rdi

    movq $60, %rax
    syscall