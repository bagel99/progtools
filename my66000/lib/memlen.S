	.globl	memlen1
memlen1:
	mov	r2,r1
0:	ldub	r3,[r1]
	beq0	r3,9f
	add	r1,r1,#1
	br	0b
9:	add	r1,r1,-r2
	ret

