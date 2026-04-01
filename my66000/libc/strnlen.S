	.text
	.globl	strnlen
strnlen:
	mov	r3,#0
	vec	r5,{r3}
	ldub	r4,[r1,r3,0]
	loop2	lo,r3,r4,r2	; term if r4==0, else r3+=1, cont r3<r2
	mov	r1,r3
	ret

