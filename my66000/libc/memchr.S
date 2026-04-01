	.text
	.globl	memchr
memchr:	; r1=src, r2=val, r3=cnt
	beq0	r3,9f
	mov	r4,#0
	vec	r5,{r4}
	ldub	r6,[r1,r4,0]
	add	r6,r6,-r2
	loop2	lo,r4,r6,r3	; term if r6==0, else r4+=1, cont if r4<r3
	add	r1,r1,r4	; address of match
	pne0	r6,T		; if match skip next
9:	mov	r1,#0		; return 0 if no match
	ret

