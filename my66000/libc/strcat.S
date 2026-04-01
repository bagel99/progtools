	.text
	.globl	strcat
strcat:	; r1=dst, r2=src
	mov	r3,r1		; save r1 for returned value
	vec	r4,{r3}
	ldub	r5,[r3]
	loop2	eq,r3,r5,r3	; term if r5=0, else r3+=1, cont if r3==r3
	mov	r4,#0
	vec	r5,{r4}
	ldub	r6,[r2,r4,0]
	stb	r6,[r3,r4,0]
	loop2	eq,r4,r6,r4	; term if r6=0, else r4+=1, cont if r4==r4
	ret

