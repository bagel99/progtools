	.text
	.globl	strlen
strlen:
	mov	r2,#0
	vec	r4,{r2}
	ldub	r3,[r1,r2,0]
	loop2	eq,r2,r3,r2	; term if r3==0, else r2+=1, cont if r2==r2
	mov	r1,r2
	ret

