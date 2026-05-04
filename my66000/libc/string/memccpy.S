	.text
	.globl	memccpy
memccpy:	; r1=dst, r2=src, r3=c, r4=n
	beq0	r4,9f
	mov	r5,#0
	vec	r6,{r5,r8}
	ldub	r7,[r2,r5,0]
	stb	r7,[r1,r5,0]
	add	r8,r7,-r3
	loop2	lo,r5,r8,r4	; exit if r8==0 or r5++ >= r4
	peq0	r8,TTF		; if c found
	add	r1,r1,r5	; &dst[i]
	add	r1,r1,#1	; one beyound
9:	mov	r1,#0
	ret
