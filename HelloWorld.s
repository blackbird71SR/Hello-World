.data 
       HelloWorld: .asciiz "Hello World"
.text  
.globl main

main: la $a0, HelloWorld
      li $v0, 4
      syscall
      
      li $v0, 10
      syscall