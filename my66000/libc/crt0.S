	.text
	.p2align 2
	.globl	_start
_start:
	; zero .bss
	la	r4,[ip,_edata]
	la	r5,[ip,_end]
	add	r6,r5,-r4
	beq0	r6,0f
	ms	r4,#0,r6
0:	call	main
	br	exit
	.word	0	; halt?

