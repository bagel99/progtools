; This should be used only with a simple simulator

	.text
	.p2align 2
	.globl	exit
exit:
	mov	r8,#0
	.word	0xFFAA5501
	.word	0		; halt?

	.globl	open
open:
	mov	r8,#1
	.word	0xFFAA5501
	ret

	.globl	close
close:
	mov	r8,#2
	.word	0xFFAA5501
	ret

	.globl	read
read:
	mov	r8,#3
	.word	0xFFAA5501
	ret

	.globl	write
write:
	mov	r8,#4
	.word	0xFFAA5501
	ret

	.globl	lseek
lseek:
	mov	r8,#5
	.word	0xFFAA5501
	ret


; This must be the last thing loaded
	.text
; Really, really stupid implementation of malloc, free is not allowed
	.globl	malloc
	.globl	memalloc
malloc:
memalloc:
	mov	r3,#7
	add	r1,r1,r3
	and	r1,r1,-r3	; round up to 8-byte boundary
	mov	r2,r1
	la	r3,[ip,__myheap]
	ldd	r1,[r3,0]
	add	r2,r2,r1
	std	r2,[r3,0]
	ret

	.globl	memfree
memfree:
	ret

	.data
__myheap: .dword _end
	.p2align 4
	.globl	_edata
_edata:

	.bss
	.p2align 4
	.globl	_end
_end:

