	.file	"test.c"
	.text
	.p2align 4,,15
	.globl	foo
	.def	foo;	.scl	2;	.type	32;	.endef
	.seh_proc	foo
foo:
	.seh_endprologue
	movzwl	(%rcx), %ecx
	xorl	%eax, %eax
	.p2align 4,,10
.L2:
	addl	%ecx, (%rdx,%rax)
	addq	$4, %rax
	cmpq	$64, %rax
	jne	.L2
	ret
	.seh_endproc
