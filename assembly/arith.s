	.file	"arith.c"
	.text
	.globl	arith
	.type	arith, @function
arith:
.LFB0:
	.cfi_startproc
	xorq	%rsi, %rdi
	leaq	(%rdx,%rdx,2), %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	andl	$252645135, %edi
	subq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	arith, .-arith
	.globl	arith2
	.type	arith2, @function
arith2:
.LFB1:
	.cfi_startproc
	orq	%rsi, %rdi
	sarq	$3, %rdi
	notq	%rdi
	movq	%rdx, %rax
	subq	%rdi, %rax
	ret
	.cfi_endproc
.LFE1:
	.size	arith2, .-arith2
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
