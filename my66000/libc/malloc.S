; This should be used only with a simple simulator
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

	.globl	_end
	.data
__myheap: .dword _end

