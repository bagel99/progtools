	.text
	.globl	strchr
strchr:	; r1=src, r2-val
	vec	r3,{r1}
	ldub	r4,[r1]
	add	r5,r4,-r2
	peq0	r5,FF		; if found equal, skip next 2 inst
	loop2	eq,r1,r4,r1	; term if r4==0, else r1+=1, cont if r1==r1
	mov	r1,#0
	ret

