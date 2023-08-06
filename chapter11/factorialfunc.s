.globl factorial

.section .text
factorial:
    enter $16, $0

    cmpq $1, %rdi
    jne continue

    movq $1, %rax
    leave
    ret

continue:
    movq %rdi, -8(%rbp)

    decq %rdi
    call factorial

    mulq -8(%rbp)
    leave
    ret
