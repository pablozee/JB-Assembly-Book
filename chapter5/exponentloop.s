.globl _start

.section .text
_start:
    movq $2, %rbx
    movq $3, %rcx
    movq $1, %rax

    cmpq $0, %rcx
    je complete

mainloop:
    mulq %rbx

    loopq mainloop

complete:
    movq %rax, %rdi
    
    movq $60, %rax
    syscall
