.globl _start

.section .data
mystring:
    .ascii "Hello there! "
mystring_end:
.equ mystring_length, mystring_end - mystring

mystring2:
    .ascii "Nice to meet you!\n"
mystring2_end:
.equ mystring2_length, mystring2_end - mystring2


.section .text
_start:
    movq $1, %rax
    movq $1, %rdi
    movq $mystring, %rsi
    movq $mystring_length, %rdx
    syscall

    movq $1, %rax
    movq $1, %rdi
    movq $mystring2, %rsi
    movq $mystring2_length, %rdx
    syscall

    movq $0x3C, %rax
    movq $0, %rdi
    syscall
