	.text
	.globl	strncat
strncat: ; r1=dst, r2=src, r3=cnt
	beq0	r3,9f
	mov	r4,r1		; save r1 for returned value
	vec	r5,{r4}
	ldub	r6,[r4]
	loop2	eq,r4,r6,r4	; term if r6=0, else r4+=1, cont if r4==r4
	mov	r6,#0
	vec	r7,{r6}
	ldub	r5,[r2,r6,0]
	stb	r5,[r4,r6,0]
	loop2	lo,r6,r5,r3	; term if r5==0, else r6+=1, cont if r6<r3
	stb	#0,[r4,r6,0]
9:	ret

