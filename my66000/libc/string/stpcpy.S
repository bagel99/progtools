	.text
	.globl	stpcpy
stpcpy:	; r1=dst r2=src
	mov	r3,r1		; save r1 for returned value
	add	r2,r2,-r1
	vec	r6,{r3}
	ldub	r4,[r2,r3,0]
	stb	r4,[r3]
	loop2	eq,r3,r4,r3	; termi if r4==0, else r3+=1, cont if r3==r3
	mov	r1,r3
	ret

