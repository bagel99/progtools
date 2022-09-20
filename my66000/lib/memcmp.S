; Really stupid implementations of memcmp
	.text
	.globl	memcmp
	.globl	memcmp1
	.globl	memcmp2
memcmp:
memcmp1:
memcmp2:
	ble0	r3,9f
	mov	r4,#0
0:	ldub	r5,[r1,r4,0]
	ldub	r6,[r2,r4,0]
	cmp	r5,r5,r6
	bne	r5,9f
	add	r4,r4,#1
	cmp	r5,r4,r3
	blo	r5,0b
8:	mov	r1,#1
	ret
9:	mov	r1,#0
	ret

	.globl	memcmp4
memcmp4:
	ble0	r3,9f
	mov	r4,#0
0:	lduw	r5,[r1,r4<<2,0]
	lduw	r6,[r2,r4<<2,0]
	cmp	r5,r5,r6
	bne	r5,9f
	add	r4,r4,#1
	cmp	r5,r4,r3
	blo	r5,0b
8:	mov	r1,#1
	ret
9:	mov	r1,#0
	ret

