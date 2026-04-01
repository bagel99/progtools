	.text
	.globl	strncmp
strncmp: ; r1=src1, r2=src2, r3=cnt
	beq0	r3,9f		; n == 0
	mov	r4,#0
	vec	r7,{r4}
	ldub	r5,[r1,r4,0]
	ldub	r6,[r2,r4,0]
	add	r6,r5,-r6
	pne0	r6,F
	loop2	lo,r4,r5,r3	; term if r5==0, else r4+=1, cont if r3<r4
	mov	r1,r6
	ret
9:	mov	r1,#0
	ret

