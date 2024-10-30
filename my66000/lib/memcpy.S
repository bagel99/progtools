; r1 - destination
; r2 - source
; r3 - size
	.text
	.globl	memcpy
memcpy:
	mm	r3,r2,r1
	ret

