	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	leaq	L_.str(%rip), %rdi
	leaq	-12(%rbp), %rsi
	leaq	-8(%rbp), %rdx
	movb	$0, %al
	callq	_scanf
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	jne	LBB0_3
## BB#2:
	jmp	LBB0_8
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -60(%rbp)
	jg	LBB0_5
## BB#4:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, -4(%rbp)
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	jmp	LBB0_11
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	imull	$60, -12(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_7
## BB#6:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_8:
	cmpl	$0, -16(%rbp)
	jne	LBB0_10
## BB#9:
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, -4(%rbp)
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	jmp	LBB0_11
LBB0_10:
	leaq	L_.str.3(%rip), %rdi
	movl	$60, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-16(%rbp)
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %eax
	cltd
	movl	-72(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movl	%edx, -36(%rbp)
	movl	-32(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -40(%rbp)
	movl	-28(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -44(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -48(%rbp)
	movl	-24(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -52(%rbp)
	movl	-24(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -56(%rbp)
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %eax
	movl	-48(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	-52(%rbp), %r10d
	movl	%eax, %edx
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	_printf
	movl	$0, -4(%rbp)
	movl	%eax, -76(%rbp)         ## 4-byte Spill
LBB0_11:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	" %d:%d"

L_.str.1:                               ## @.str.1
	.asciz	"Error! Incorrect Format"

L_.str.2:                               ## @.str.2
	.asciz	"Error! The file is Empty!"

L_.str.3:                               ## @.str.3
	.asciz	"Total_time: %d:%02d \nLongest_time: %d:%02d \nAverage_time: %d:%02d"


.subsections_via_symbols
