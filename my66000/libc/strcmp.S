	.text
	.globl	strcmp
strcmp:  ; r1=src1, r2=src2
	mov	r3,#0
	vec	r6,{r3}
	ldub	r4,[r1,r3,0]
	ldub	r5,[r2,r3,0]
	add	r5,r4,-r5
	pne0	r5,F		; found a not equal, exit loop
	loop2	eq,r3,r4,r3	; term if r4==0, else r3+=1, cont if r3==r3
	mov	r1,r5
	ret

