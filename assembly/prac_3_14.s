	.file	"prac_3_14.c"
	.text
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	movq	%rdi, %rax
	notq	%rax
	shrq	$63, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.globl	test2
	.type	test2, @function
test2:
.LFB1:
	.cfi_startproc
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	test2, .-test2
	.globl	test3
	.type	test3, @function
test3:
.LFB2:
	.cfi_startproc
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	test3, .-test3
	.globl	test4
	.type	test4, @function
test4:
.LFB3:
	.cfi_startproc
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE3:
	.size	test4, .-test4
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
