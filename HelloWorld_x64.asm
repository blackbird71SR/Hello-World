; Author : Abhinav Thakur
; Email  : compilepeace@gmail.com

; Description : This is a simple program to print "Hello World" to STDOUT in x86-64 bit (Linux platform),
;		intel architecure's Assembly language



global _start


section .text
_start:
	
	; ssize_t write(int fd, const void *buf, size_t count);
	mov	rax, 0x1		; write syscall number
	mov	rdi, 0x1		; FILE DESCRIPTOR FOR STDOUT
	mov	rsi, message	; Address of message
	mov	rdx, msglen		; length of message
	syscall

	
	; void _Exit(int status);
	mov	rax, 0x3c		; Syscall number for exit - 60
	mov	rdi, 0x0		; Exit status
	syscall


section .data
	message:	db	"Hello World", 0xa, 0xd, 0x0
	msglen	equ	$-message
