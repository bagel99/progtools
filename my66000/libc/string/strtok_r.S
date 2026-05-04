	.text
	.globl	strtok_r	; reentrant
strtok_r:		; r1=str r2=delim r3=saveptr
	beq0	r1,0f
	std	r1,[r3]
0:
