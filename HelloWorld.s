.data
outformat:  .asciz "%s"
string:     .asciz "Hello, World!\n"

.text
.global main

main:   ldr x0, =outformat
		ldr x1, =string
		bl printf

        b exit

exit:   mov x0, #0
        mov x8, #93
        svc #0