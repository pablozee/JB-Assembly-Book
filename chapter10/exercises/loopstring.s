.globl _start

.section .data
mystring:
    .ascii "Hello there!\n"
mystring_end:
.equ mystring_length, mystring_end - mystring

.section .text
_start:
    movq $10, %rcx

mainloop:
    movq $1, %rax
    movq $1, %rdi
    movq $mystring, %rsi
    movq $mystring_length, %rdx
    syscall

    loopq mainloop

    movq $0x3C, %rax
    movq $0, %rdi
    syscall