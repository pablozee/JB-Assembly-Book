.globl _start

.section .text
_start:
    movq $100000000, %rcx

mainloop:
    loopq mainloop

complete:
    movq $3, %rdi
    movq $60, %rax
    syscall