	.text
	.globl	strstr
strstr:		; r1=haystack r2=needle
	mov	r3,#0
	vec	r5,{r3}
	ldub	r4,[r2,r3,0]
	loop2	eq,r3,r4,r3
	; r3=strlen(needle)
	beq0	r3,9f		; return with r1=haystack
	add	r1,r1,#-1

0:	add	r1,r1,#1
	mov	r4,#0	// r4=1
	vec	r8,{r6,r7}
	ldub	r6,[r1,r4,0]	; haystack[j+i]
	ldub	r7,[r2,r4,0]	; needle[i]
	add	r7,r6,-r7
	pne0	r7,F		; exit if r7!=0
	loop2	lo,r4,r6,r3	; continue if r6!=0 and ++r4<r3	
	beq0	r6,8f		; end of haystack
	bne0	r7,0b		; no match, continue
	ret			; success
8:	mov	r1,#0		; fail
9:	ret
	
