	.text
	.globl	strtok		; not reentrant
	.globl	strtok_r
strtok:		; r1=str r2=delim
	la	r3,[ip,_strtoksave]
	br	strtok_r
	.bss
_strtoksave:
	.long	0

