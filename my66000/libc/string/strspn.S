	.text
	.globl	strspn
strspn:		; r1=str r2=accept

	mov	r3,r1
	; outer loop - get next c from str
0:	ldub	r4,[r3]		; str[i]
	beq0	r4,9f		; end of str
	mov	r5,r2		; beginning of accept

	; inner loop - does c appear anywhere in accept
1:	ldub	r6,[r5]		; accept[i]
	beq0	r6,2f
	add	r7,r6,-r4	; accept[i] - c
	beq0	r7,2f		; found
	add	r5,r5,#1
	br	1b

2:	beq0	r6,9f
	add	r3,r3,#1
	br	0b

9:	add	r1,r3,-r1
	ret
