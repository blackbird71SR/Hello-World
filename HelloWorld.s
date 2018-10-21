# Hello World in MIPS Assembly
.data
hello:	.asciiz "Hello World!"

.text
main:
    li $v0, 4
    la $a0, hello
    syscall
    
    li $v0, 10
    syscall