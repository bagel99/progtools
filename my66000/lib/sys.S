; This should be used only with a simple simulator

	.text
	.p2align 2
	.globl	exit
exit:
	svc	#0,#1
	.word	0		; halt?

	.globl	read
read:
	svc	#3,#3
	ret

	.globl	write
write:
	svc	#3,#4
	ret

	.globl	open
open:
	svc	#3,#5
	ret

	.globl	close
close:
	svc	#1,#6
	ret

	.globl	lseek
lseek:
	svc	#2,#19
	ret

