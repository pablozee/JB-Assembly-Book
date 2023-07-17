.globl _start

.section .data
mystring:
    .ascii "Hello there!\n"
mystring_end:
.equ mystring_length, mystring_end - mystring

mystring2:
    .ascii "Nice to meet you!\n"
mystring2_end:
.equ mystring2_length, mystring2_end - mystring2

.section .text
_start:
    movq $10, %rcx

mainloop:
    movq %rcx, %rax
    movq $0, %rdx
    movq $2, %rsi
    divq %rsi
    cmpq $0, %rdx
    jz loop1
    jnz loop2

loop1:
    movq $1, %rax
    movq $1, %rdi
    movq $mystring, %rsi
    movq $mystring_length, %rdx
    syscall

    jmp loopcontrol

loop2:
    movq $1, %rax
    movq $1, %rdi
    movq $mystring2, %rsi
    movq $mystring2_length, %rdx
    syscall

loopcontrol:
    loopq mainloop

    movq $0x3C, %rax
    movq $0, %rdi
    syscall
