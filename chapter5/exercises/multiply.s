.globl _start

.section .text
_start:
    movq $2, %rbx
    movq $4, %rcx
    movq $0, %rax

    cmpq $0, %rbx
    jz complete

    cmpq $0, %rcx
    jz complete

mainloop:
    addq %rbx, %rax

    loopq mainloop

complete:
    movq %rax, %rdi
    movq $60, %rax
    syscall
