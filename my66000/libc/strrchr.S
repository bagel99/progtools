	.text
	.globl	strrchr
	; this scans forwards, scanning backward would be more efficient
	; FIXME - what if val=='\0'
strrchr: ; r1=src, r2-val
	mov	r6,#0
	vec	r7,{r1,r6}
	ldub	r4,[r1]
	add	r5,-r4,r2
	cmov	r6,r5,r6,r1	; if match (r5==0), update r6
	loop2	eq,r1,r4,r1	; term if r4==0, else r1+=1, cont if r1==r1
	mov	r1,r6
	ret

