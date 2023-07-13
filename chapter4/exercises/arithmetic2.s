.globl _start

.section .text

_start:
    # Perform various arithmetic functions 
    movq $3, %rsi
    movq %rsi, %rax
    addq %rsi, %rax
    mulq %rsi
    movq $2, %rbx
    addq %rbx, %rax
    movq $4, %rbx
    mulq %rbx
    movq %rax, %rdi

    # Set the exit system call number
    movq $60, %rax

    # Perform the system call
    syscall