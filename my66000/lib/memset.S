; r1 - destination
; r2 - object
; r3 - count

	.text
	.globl	memset
memset:
	ms	r1,r2,r3
	ret

