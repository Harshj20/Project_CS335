foo:
.LFB0:
	pushq	%rbp
	movq	%rsp, %rbp
	push    $0
	movq	16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	%rbp, %rsp
	popq	%rbp
	ret
.LFE0:
	.size	foo, .-foo
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	endbr64
	pushq	%rbp
	movq	%rsp, %rbp
	push 	$0
	push	$0
	push    $10
	call	foo
	cltq
	addq	$8, %rsp
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movq	$0, %rax
	call	printf@PLT
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	ret