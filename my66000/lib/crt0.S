	.text
	.p2align 2
__crt0:
	; zero .bss
	la	r4,[ip,_edata]
	la	r5,[ip,_end]
	br	1f
0:	std	r6,[r4]
	add	r4,r4,#8
1:	cmp	r7,r4,r5
	blo	r7,0b
	call	main
	br	exit
	.inst	0	; halt?

