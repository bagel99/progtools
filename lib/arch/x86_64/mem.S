	.text
	.file	"tmp.e3cuOQGTmE"
	.globl	memalloc
	.p2align	4, 0x90
	.type	memalloc,@function
memalloc:
	jmp	malloc
.Lfunc_end0:
	.size	memalloc, .Lfunc_end0-memalloc

	.globl	memfree
	.p2align	4, 0x90
	.type	memfree,@function
memfree:
	jmp	free
.Lfunc_end1:
	.size	memfree, .Lfunc_end1-memfree


	.section	".note.GNU-stack","",@progbits
