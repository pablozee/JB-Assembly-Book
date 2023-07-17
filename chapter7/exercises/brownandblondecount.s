.globl _start

.section .text
_start:
    leaq people, %rbx

    movq numpeople, %rcx

    movq $0, %rdi

    cmpq $0, %rcx
    je finish

mainloop:
    cmpq $2, HAIR_OFFSET(%rbx)

    jne blondecheck

    incq %rdi

blondecheck:
    cmpq $3, HAIR_OFFSET(%rbx)

    jne endloop

    incq %rdi

endloop:
    addq $PERSON_RECORD_SIZE, %rbx
    loopq mainloop

finish:
    movq $60, %rax
    syscall
