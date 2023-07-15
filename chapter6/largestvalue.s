.globl _start

.section .data
numberofnumbers:
    .quad 7
mynumbers:
    .quad 5, 20, 33, 80, 52, 10, 1

.section .text
_start:
    movq numberofnumbers, %rcx

    movq $0, %rbx
    movq $0, %rdi

    cmp $0, %rcx
    je endloop

myloop:
    movq mynumbers(,%rbx,8), %rax

    cmp %rdi, %rax
    jbe loopcontrol

    movq %rax, %rdi

loopcontrol:
    incq %rbx

    loopq myloop

endloop:
    movq $60, %rax
    syscall
