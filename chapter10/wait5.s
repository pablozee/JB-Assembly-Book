.globl _start

.section .data
curtime:
    .quad 0

.section .text
_start:
    movq $0xC9, %rax
    movq $curtime, %rdi
    syscall

    movq curtime, %rdx

    addq $5, %rdx

timeloop:
    movq $0xC9, %rax
    movq $curtime, %rdi
    syscall

    cmpq %rdx, curtime
    jb timeloop

timefinihs:
    movq $0x3C, %rax
    movq $0, %rdi
    syscall