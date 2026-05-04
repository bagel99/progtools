	.text
	.globl	strpbrk
strpbrk:	; r1=str r2=accept


	; outer loop - get next c from str
0:	ldub	r3,[r1]
	beq0	r3,8f		; end of str
	; inner loop - does c appear anywhere in accept
	mov	r4,#0		; beginning of accept
	vec	r7,{r6}
	ldub	r5,[r2,r4,0]
	add	r6,r5,-r3
	peq0	r6,F		; if found equal, exit loop
	loop2	eq,r4,r5,r4
	; exit because c is found or end of accept
	beq0	r6,9f		; found at r1
	add	r1,r1,#1	; outer loop bump r1
	br	0b

8:	mov	r1,#0	; fail
9:	ret
