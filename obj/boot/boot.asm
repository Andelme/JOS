
obj/boot/boot.out:	file format ELF32-i386

Disassembly of section .text:
0000000000007c00 start:
    7c00:	fa 	cli
    7c01:	fc 	cld
    7c02:	31 c0 	xorl	%eax, %eax
    7c04:	8e d8 	movl	%eax, %ds
    7c06:	8e c0 	movl	%eax, %es
    7c08:	8e d0 	movl	%eax, %ss

0000000000007c0a seta20.1:
    7c0a:	e4 64 	inb	$100, %al
    7c0c:	a8 02 	testb	$2, %al
    7c0e:	75 fa 	jne	-6 <seta20.1>
    7c10:	b0 d1 	movb	$-47, %al
    7c12:	e6 64 	outb	%al, $100

0000000000007c14 seta20.2:
    7c14:	e4 64 	inb	$100, %al
    7c16:	a8 02 	testb	$2, %al
    7c18:	75 fa 	jne	-6 <seta20.2>
    7c1a:	b0 df 	movb	$-33, %al
    7c1c:	e6 60 	outb	%al, $96
    7c1e:	67 0f 01 15 	lgdtl	(%di)
    7c22:	68 7c 00 00 0f 	pushl	$251658364
    7c27:	20 c0 	andb	%al, %al
    7c29:	66 83 c8 01 	orw	$1, %ax
    7c2d:	0f 22 c0 	movl	%eax, %cr0
    7c30:	ea 35 7c 08 00 66 b8 	ljmpl	$-18330, $556085

0000000000007c35 protcseg:
    7c35:	66 b8 10 00 	movw	$16, %ax
    7c39:	8e d8 	movl	%eax, %ds
    7c3b:	8e c0 	movl	%eax, %es
    7c3d:	8e e0 	movl	%eax, %fs
    7c3f:	8e e8 	movl	%eax, %gs
    7c41:	8e d0 	movl	%eax, %ss
    7c43:	bc 00 7c 00 00 	movl	$31744, %esp
    7c48:	e8 23 00 00 00 	calll	35 <bootmain>

0000000000007c4d spin:
    7c4d:	eb fe 	jmp	-2 <spin>
    7c4f:	90 	nop

0000000000007c50 gdt:
		...
    7c58:	ff ff  <unknown>
    7c5a:	00 00 	addb	%al, (%eax)
    7c5c:	00 9a cf 00 ff ff 	addb	%bl, -65329(%edx)
    7c62:	00 00 	addb	%al, (%eax)
    7c64:	00 92 cf 00 17 00 	addb	%dl, 1507535(%edx)

0000000000007c68 gdtdesc:
    7c68:	17 	popl	%ss
    7c69:	00 50 7c 	addb	%dl, 124(%eax)
    7c6c:	00 00 	addb	%al, (%eax)
    7c6e:	cc 	int3
    7c6f:	cc 	int3

0000000000007c70 bootmain:
    7c70:	55 	pushl	%ebp
    7c71:	89 e5 	movl	%esp, %ebp
    7c73:	53 	pushl	%ebx
    7c74:	57 	pushl	%edi
    7c75:	56 	pushl	%esi
    7c76:	83 ec 0c 	subl	$12, %esp
    7c79:	be 00 00 01 00 	movl	$65536, %esi
    7c7e:	31 ff 	xorl	%edi, %edi
    7c80:	47 	incl	%edi
    7c81:	83 ec 08 	subl	$8, %esp
    7c84:	57 	pushl	%edi
    7c85:	56 	pushl	%esi
    7c86:	e8 e4 00 00 00 	calll	228 <readsect>
    7c8b:	83 c4 10 	addl	$16, %esp
    7c8e:	81 c6 00 02 00 00 	addl	$512, %esi
    7c94:	47 	incl	%edi
    7c95:	81 fe 00 10 01 00 	cmpl	$69632, %esi
    7c9b:	75 e4 	jne	-28 <bootmain+0x11>
    7c9d:	81 3d 00 00 01 00 7f 45 4c 46 	cmpl	$1179403647, 65536
    7ca7:	75 6c 	jne	108 <bootmain+0xa5>
    7ca9:	8b 0d 1c 00 01 00 	movl	65564, %ecx
    7caf:	0f b7 05 2c 00 01 00 	movzwl	65580, %eax
    7cb6:	c1 e0 05 	shll	$5, %eax
    7cb9:	8d 84 01 00 00 01 00 	leal	65536(%ecx,%eax), %eax
    7cc0:	81 c1 00 00 01 00 	addl	$65536, %ecx
    7cc6:	89 45 ec 	movl	%eax, -20(%ebp)
    7cc9:	39 c8 	cmpl	%ecx, %eax
    7ccb:	76 42 	jbe	66 <bootmain+0x9f>
    7ccd:	8b 59 0c 	movl	12(%ecx), %ebx
    7cd0:	89 4d f0 	movl	%ecx, -16(%ebp)
    7cd3:	8b 79 14 	movl	20(%ecx), %edi
    7cd6:	01 df 	addl	%ebx, %edi
    7cd8:	81 e3 00 fe ff ff 	andl	$4294966784, %ebx
    7cde:	39 fb 	cmpl	%edi, %ebx
    7ce0:	73 22 	jae	34 <bootmain+0x94>
    7ce2:	8b 45 f0 	movl	-16(%ebp), %eax
    7ce5:	8b 70 04 	movl	4(%eax), %esi
    7ce8:	c1 ee 09 	shrl	$9, %esi
    7ceb:	46 	incl	%esi
    7cec:	83 ec 08 	subl	$8, %esp
    7cef:	56 	pushl	%esi
    7cf0:	53 	pushl	%ebx
    7cf1:	e8 79 00 00 00 	calll	121 <readsect>
    7cf6:	83 c4 10 	addl	$16, %esp
    7cf9:	81 c3 00 02 00 00 	addl	$512, %ebx
    7cff:	46 	incl	%esi
    7d00:	39 fb 	cmpl	%edi, %ebx
    7d02:	72 e8 	jb	-24 <bootmain+0x7c>
    7d04:	8b 4d f0 	movl	-16(%ebp), %ecx
    7d07:	83 c1 20 	addl	$32, %ecx
    7d0a:	3b 4d ec 	cmpl	-20(%ebp), %ecx
    7d0d:	72 be 	jb	-66 <bootmain+0x5d>
    7d0f:	ff 15 18 00 01 00 	calll	*65560
    7d15:	66 b8 00 8a 	movw	$35328, %ax
    7d19:	ba 00 8a 00 00 	movl	$35328, %edx
    7d1e:	66 ef 	outw	%ax, %dx
    7d20:	66 b8 00 8e 	movw	$36352, %ax
    7d24:	ba 00 8a 00 00 	movl	$35328, %edx
    7d29:	66 ef 	outw	%ax, %dx
    7d2b:	eb fe 	jmp	-2 <bootmain+0xbb>

0000000000007d2d readseg:
    7d2d:	55 	pushl	%ebp
    7d2e:	89 e5 	movl	%esp, %ebp
    7d30:	53 	pushl	%ebx
    7d31:	57 	pushl	%edi
    7d32:	56 	pushl	%esi
    7d33:	83 ec 0c 	subl	$12, %esp
    7d36:	8b 75 08 	movl	8(%ebp), %esi
    7d39:	8b 7d 0c 	movl	12(%ebp), %edi
    7d3c:	01 f7 	addl	%esi, %edi
    7d3e:	81 e6 00 fe ff ff 	andl	$4294966784, %esi
    7d44:	39 fe 	cmpl	%edi, %esi
    7d46:	73 1f 	jae	31 <readseg+0x3a>
    7d48:	8b 5d 10 	movl	16(%ebp), %ebx
    7d4b:	c1 eb 09 	shrl	$9, %ebx
    7d4e:	43 	incl	%ebx
    7d4f:	83 ec 08 	subl	$8, %esp
    7d52:	53 	pushl	%ebx
    7d53:	56 	pushl	%esi
    7d54:	e8 16 00 00 00 	calll	22 <readsect>
    7d59:	83 c4 10 	addl	$16, %esp
    7d5c:	81 c6 00 02 00 00 	addl	$512, %esi
    7d62:	43 	incl	%ebx
    7d63:	39 fe 	cmpl	%edi, %esi
    7d65:	72 e8 	jb	-24 <readseg+0x22>
    7d67:	83 c4 0c 	addl	$12, %esp
    7d6a:	5e 	popl	%esi
    7d6b:	5f 	popl	%edi
    7d6c:	5b 	popl	%ebx
    7d6d:	5d 	popl	%ebp
    7d6e:	c3 	retl

0000000000007d6f readsect:
    7d6f:	57 	pushl	%edi
    7d70:	8b 4c 24 0c 	movl	12(%esp), %ecx
    7d74:	8b 7c 24 08 	movl	8(%esp), %edi
    7d78:	ba f7 01 00 00 	movl	$503, %edx
    7d7d:	ec 	inb	%dx, %al
    7d7e:	24 c0 	andb	$-64, %al
    7d80:	3c 40 	cmpb	$64, %al
    7d82:	75 f9 	jne	-7 <readsect+0xe>
    7d84:	b0 01 	movb	$1, %al
    7d86:	ba f2 01 00 00 	movl	$498, %edx
    7d8b:	ee 	outb	%al, %dx
    7d8c:	89 c8 	movl	%ecx, %eax
    7d8e:	ba f3 01 00 00 	movl	$499, %edx
    7d93:	ee 	outb	%al, %dx
    7d94:	88 e8 	movb	%ch, %al
    7d96:	ba f4 01 00 00 	movl	$500, %edx
    7d9b:	ee 	outb	%al, %dx
    7d9c:	89 c8 	movl	%ecx, %eax
    7d9e:	c1 e8 10 	shrl	$16, %eax
    7da1:	ba f5 01 00 00 	movl	$501, %edx
    7da6:	ee 	outb	%al, %dx
    7da7:	c1 e9 18 	shrl	$24, %ecx
    7daa:	80 c9 e0 	orb	$-32, %cl
    7dad:	89 c8 	movl	%ecx, %eax
    7daf:	ba f6 01 00 00 	movl	$502, %edx
    7db4:	ee 	outb	%al, %dx
    7db5:	b0 20 	movb	$32, %al
    7db7:	ba f7 01 00 00 	movl	$503, %edx
    7dbc:	ee 	outb	%al, %dx
    7dbd:	ba f7 01 00 00 	movl	$503, %edx
    7dc2:	ec 	inb	%dx, %al
    7dc3:	24 c0 	andb	$-64, %al
    7dc5:	3c 40 	cmpb	$64, %al
    7dc7:	75 f9 	jne	-7 <readsect+0x53>
    7dc9:	ba f0 01 00 00 	movl	$496, %edx
    7dce:	b9 80 00 00 00 	movl	$128, %ecx
    7dd3:	fc 	cld
    7dd4:	f2 6d 	repne		insl	%dx, %es:(%edi)
    7dd6:	5f 	popl	%edi
    7dd7:	c3 	retl

0000000000007dd8 waitdisk:
    7dd8:	ba f7 01 00 00 	movl	$503, %edx
    7ddd:	ec 	inb	%dx, %al
    7dde:	24 c0 	andb	$-64, %al
    7de0:	3c 40 	cmpb	$64, %al
    7de2:	75 f9 	jne	-7 <waitdisk+0x5>
    7de4:	c3 	retl
