	.file	"prac_3_13.c"
	.text
	.globl	comp
	.type	comp, @function
comp:
.LFB0:
	.cfi_startproc
	cmpl	%esi, %edi
	setl	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	comp, .-comp
	.globl	comp2
	.type	comp2, @function
comp2:
.LFB1:
	.cfi_startproc
	cmpq	%rsi, %rdi
	setl	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	comp2, .-comp2
	.globl	comp3
	.type	comp3, @function
comp3:
.LFB2:
	.cfi_startproc
	cmpw	%si, %di
	setge	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	comp3, .-comp3
	.globl	comp4
	.type	comp4, @function
comp4:
.LFB3:
	.cfi_startproc
	cmpb	%sil, %dil
	setbe	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE3:
	.size	comp4, .-comp4
	.globl	comp5
	.type	comp5, @function
comp5:
.LFB4:
	.cfi_startproc
	cmpq	%rsi, %rdi
	setne	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE4:
	.size	comp5, .-comp5
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
