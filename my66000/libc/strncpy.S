	.text
	.globl	strncpy
strncpy: ; r1=dst, r2=src, r3=cnt
	mov	r4,#0
	beq0	r3,9f
	vec	r6,{r4}
	ldub	r5,[r2,r4,0]
	pne0	r5,T		; don't store NUL
	stb	r5,[r1,r4,0]
	loop2	lo,r4,r5,r3	; term if r5==0, else r4+=1, cont if r4<r3
	cmp	r2,r4,r3
	bge	r2,9f
	vec	r6,{r4}
	stb	#0,[r1,r4,0]	; padding
	loop1	lt,r4,#1,r3
9:	ret

