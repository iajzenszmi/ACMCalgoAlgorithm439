	.file	"src.f"
	.text
	.globl	p3pgs_
	.type	p3pgs_, @function
p3pgs_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r9, -176(%rbp)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-48(%rbp), %xmm2
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-48(%rbp), %xmm2
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-48(%rbp), %xmm0
	movsd	.LC2(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movq	-176(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	movq	-136(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	*%rdx
	movq	%xmm0, %rax
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	movl	(%rax), %ebx
	movl	$1, -28(%rbp)
.L9:
	cmpl	%ebx, -28(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L11
	leaq	-128(%rbp), %rax
	movq	-160(%rbp), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	*%rdx
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-80(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	$1, -32(%rbp)
.L4:
	cmpl	$2, -32(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L12
	movl	-32(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	-112(%rbp), %rdx
	salq	$3, %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %r12
	movq	-160(%rbp), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	*%rdx
	movq	%xmm0, %rax
	movq	%rax, -64(%rbp,%r12,8)
	movl	-32(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	-128(%rbp), %rdx
	salq	$3, %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %r12
	movq	-168(%rbp), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	*%rdx
	movq	%xmm0, %rax
	movq	%rax, -96(%rbp,%r12,8)
	movl	-32(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-112(%rbp,%rax,8), %xmm0
	movl	-32(%rbp), %eax
	cltq
	subq	$1, %rax
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp,%rax,8)
	movl	-32(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-128(%rbp,%rax,8), %xmm0
	movl	-32(%rbp), %eax
	cltq
	subq	$1, %rax
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp,%rax,8)
	addl	$1, -32(%rbp)
	jmp	.L4
.L12:
	nop
	movq	-176(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-24(%rbp), %xmm2
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-88(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movq	-176(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -32(%rbp)
.L8:
	cmpl	$2, -32(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L13
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$1, -36(%rbp)
.L7:
	cmpl	$3, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L14
	movl	-36(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$3, %rax
	leaq	0(,%rax,8), %rdx
	leaq	am.0(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-96(%rbp,%rax,8), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	addl	$1, -36(%rbp)
	jmp	.L7
.L14:
	nop
	movq	-176(%rbp), %rax
	movsd	(%rax), %xmm1
	movl	-32(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-64(%rbp,%rax,8), %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movq	-176(%rbp), %rax
	movsd	%xmm0, (%rax)
	addl	$1, -32(%rbp)
	jmp	.L8
.L13:
	nop
	addl	$1, -28(%rbp)
	jmp	.L9
.L11:
	nop
	movq	-176(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	-48(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-176(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	p3pgs_, .-p3pgs_
	.data
	.align 32
	.type	am.0, @object
	.size	am.0, 48
am.0:
	.long	1487382380
	.long	1073446383
	.long	-985842842
	.long	-1077153926
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	-985842842
	.long	-1077153926
	.long	1487382380
	.long	1073446383
	.section	.rodata
	.align 8
.LC0:
	.long	788674272
	.long	1069341188
	.align 8
.LC1:
	.long	2048899364
	.long	1072456895
	.align 8
.LC2:
	.long	0
	.long	1073741824
	.align 8
.LC4:
	.long	0
	.long	1074790400
	.align 8
.LC5:
	.long	0
	.long	1075970048
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04.1) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
