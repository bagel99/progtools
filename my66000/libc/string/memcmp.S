	.text
	.globl	memcmp
memcmp:	; r1=src1, r2=src2, r3=cnt
	beq0	r3,9f
	mov	r4,#0
	vec	r7,{r4}
	ldub	r5,[r1,r4,0]
	ldub	r6,[r2,r4,0]
	add	r5,r5,-r6
	pne0	r5,F		; if not equal, skip next inst
	loop1	lo,r4,#1,r3	; r4+=1 cont if r4<r3
	mov	r1,r5
	ret
9:	mov	r1,#0
	ret

