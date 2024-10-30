; This should be used only with a simple simulator

	.text
	.p2align 2
	.globl	exit
exit:
	svc	#0,#60
	.word	0		; halt?

	.globl	open
open:
	svc	#3,#2
	ret

	.globl	close
close:
	svc	#1,#3
	ret

	.globl	read
read:
	svc	#3,#0
	ret

	.globl	write
write:
	svc	#3,#1
	ret

	.globl	lseek
lseek:
	svc	#2,#8
	ret

