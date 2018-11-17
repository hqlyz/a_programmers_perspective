	.file	"typeconvert.c"
	.text
	.globl	type_convert_char_int
	.type	type_convert_char_int, @function
type_convert_char_int:
.LFB0:
	.cfi_startproc
	movsbl	(%rdi), %eax
	movl	%eax, (%rsi)
	ret
	.cfi_endproc
.LFE0:
	.size	type_convert_char_int, .-type_convert_char_int
	.globl	type_convert_char_uint
	.type	type_convert_char_uint, @function
type_convert_char_uint:
.LFB1:
	.cfi_startproc
	movsbl	(%rdi), %eax
	movl	%eax, (%rsi)
	ret
	.cfi_endproc
.LFE1:
	.size	type_convert_char_uint, .-type_convert_char_uint
	.globl	type_convert_uchar_long
	.type	type_convert_uchar_long, @function
type_convert_uchar_long:
.LFB2:
	.cfi_startproc
	movzbl	(%rdi), %eax
	movq	%rax, (%rsi)
	ret
	.cfi_endproc
.LFE2:
	.size	type_convert_uchar_long, .-type_convert_uchar_long
	.globl	type_convert_int_char
	.type	type_convert_int_char, @function
type_convert_int_char:
.LFB3:
	.cfi_startproc
	movl	(%rdi), %eax
	movb	%al, (%rsi)
	ret
	.cfi_endproc
.LFE3:
	.size	type_convert_int_char, .-type_convert_int_char
	.globl	type_convert_uint_uchar
	.type	type_convert_uint_uchar, @function
type_convert_uint_uchar:
.LFB4:
	.cfi_startproc
	movl	(%rdi), %eax
	movb	%al, (%rsi)
	ret
	.cfi_endproc
.LFE4:
	.size	type_convert_uint_uchar, .-type_convert_uint_uchar
	.globl	type_convert_char_short
	.type	type_convert_char_short, @function
type_convert_char_short:
.LFB5:
	.cfi_startproc
	movsbw	(%rdi), %ax
	movw	%ax, (%rsi)
	ret
	.cfi_endproc
.LFE5:
	.size	type_convert_char_short, .-type_convert_char_short
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
