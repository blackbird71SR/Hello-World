.data

HelloWorld: .string "Hello World\n"

.text

la a0, HelloWorld
addi a7, zero, 4
ecall # shows message

addi a7, zero, 10 
ecall # finishes program
