; Really stupid implementations of memset
	.text
	.globl	memset
memset:
	beq0	r3,9f
0:	stb	r2,[r1,0]
	add	r1,r1,#1
	sub	r3,r3,#1
	bne0	r3,0b
9:	ret

