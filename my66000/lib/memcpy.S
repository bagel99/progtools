; Really stupid implementations of memcpy
; r1 - destination
; r2 - source
; r3 - size
	.text
	.globl	memcpy
memcpy:
	beq0	r3,9f
	mov	r4,#0
0:	ldub	r5,[r2,r4,0]
	stb	r5,[r1,r4,0]
	add	r4,r4,#1
	add	r3,r3,#-1
	bne0	r3,0b
9:	ret

