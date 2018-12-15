	.file	"float_mov.c"
	.text
	.globl	float_mov
	.type	float_mov, @function
float_mov:
.LFB0:
	.cfi_startproc
	movss	%xmm0, (%rsi)
	movss	(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE0:
	.size	float_mov, .-float_mov
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
