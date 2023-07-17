.globl _start

.section .text
_start:
    leaq people, %rbx
    movq numpeople, %rcx

    movq $0, %rdi

    cmpq $0, %rcx
    je finish

mainloop:
    movq HEIGHT_OFFSET(%rbx), %rax

    cmpq %rdi, %rax
    jbe endloop

    movq %rax, %rdi

endloop:
    addq $PERSON_RECORD_SIZE, %rbx

    loopq mainloop

finish:
    movq $60, %rax
    syscall