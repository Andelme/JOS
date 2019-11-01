
obj/kern/kernel:	file format ELF32-i386

Disassembly of section .text:
00000000e0100000 .text:
e0100000:	02 b0 ad 1b 00 00 	addb	7085(%eax), %dh
e0100006:	00 00 	addb	%al, (%eax)
e0100008:	fe 4f 52 	decb	82(%edi)
e010000b:	e4 fa 	inb	$250, %al
e010000d:	66 c7 05 72 04 00 00 34 12 	movw	$4660, 1138
e0100016:	b8 00 d0 11 00 	movl	$1167360, %eax
e010001b:	0f 22 d8 	movl	%eax, %cr3
e010001e:	0f 20 c0 	movl	%cr0, %eax
e0100021:	0d 01 00 01 80 	orl	$2147549185, %eax
e0100026:	0f 22 c0 	movl	%eax, %cr0
e0100029:	b8 30 00 10 e0 	movl	$3759145008, %eax
e010002e:	ff e0 	jmpl	*%eax
e0100030:	bd 00 00 00 00 	movl	$0, %ebp
e0100035:	bc 00 60 11 e0 	movl	$3759235072, %esp
e010003a:	e8 31 00 00 00 	calll	49 <i386_init>
e010003f:	eb fe 	jmp	-2 <spin>
e0100041:	cc 	int3
e0100042:	cc 	int3
e0100043:	cc 	int3
e0100044:	cc 	int3
e0100045:	cc 	int3
e0100046:	cc 	int3
e0100047:	cc 	int3
e0100048:	cc 	int3
e0100049:	cc 	int3
e010004a:	cc 	int3
e010004b:	cc 	int3
e010004c:	cc 	int3
e010004d:	cc 	int3
e010004e:	cc 	int3
e010004f:	cc 	int3
e0100050:	83 ec 0c 	subl	$12, %esp
e0100053:	e8 a8 8c 00 00 	calll	36008 <__asan_init>
e0100058:	e8 c3 8d 00 00 	calll	36291 <__asan_version_mismatch_check_v8>
e010005d:	83 c4 0c 	addl	$12, %esp
e0100060:	c3 	retl
e0100061:	cc 	int3
e0100062:	cc 	int3
e0100063:	cc 	int3
e0100064:	cc 	int3
e0100065:	cc 	int3
e0100066:	cc 	int3
e0100067:	cc 	int3
e0100068:	cc 	int3
e0100069:	cc 	int3
e010006a:	cc 	int3
e010006b:	cc 	int3
e010006c:	cc 	int3
e010006d:	cc 	int3
e010006e:	cc 	int3
e010006f:	cc 	int3
e0100070:	b8 00 40 12 e0 	movl	$3759292416, %eax
e0100075:	3d 2c 1b 12 e0 	cmpl	$3759282988, %eax
e010007a:	74 20 	je	32 <i386_init+0x2c>
e010007c:	31 c9 	xorl	%ecx, %ecx
e010007e:	ba 2c 1b 12 e0 	movl	$3759282988, %edx
e0100083:	29 d0 	subl	%edx, %eax
e0100085:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010008f:	90 	nop
e0100090:	c6 81 2c 1b 12 e0 00 	movb	$0, -535684308(%ecx)
e0100097:	41 	incl	%ecx
e0100098:	39 c1 	cmpl	%eax, %ecx
e010009a:	72 f4 	jb	-12 <i386_init+0x20>
e010009c:	55 	pushl	%ebp
e010009d:	89 e5 	movl	%esp, %ebp
e010009f:	56 	pushl	%esi
e01000a0:	83 ec 14 	subl	$20, %esp
e01000a3:	be a0 1a 12 e0 	movl	$3759282848, %esi
e01000a8:	81 fe fc 1a 12 e0 	cmpl	$3759282940, %esi
e01000ae:	73 0d 	jae	13 <i386_init+0x4d>
e01000b0:	ff 16 	calll	*(%esi)
e01000b2:	83 c6 04 	addl	$4, %esi
e01000b5:	81 fe fc 1a 12 e0 	cmpl	$3759282940, %esi
e01000bb:	72 f3 	jb	-13 <i386_init+0x40>
e01000bd:	e8 1e 04 00 00 	calll	1054 <cons_init>
e01000c2:	e8 49 7d 00 00 	calll	32073 <tsc_calibrate>
e01000c7:	c7 44 24 04 ac 1a 00 00 	movl	$6828, 4(%esp)
e01000cf:	c7 04 24 e0 9f 10 e0 	movl	$3759185888, (%esp)
e01000d6:	e8 65 3e 00 00 	calll	15973 <cprintf>
e01000db:	c7 44 24 04 00 40 12 e0 	movl	$3759292416, 4(%esp)
e01000e3:	c7 04 24 20 a0 10 e0 	movl	$3759185952, (%esp)
e01000ea:	e8 51 3e 00 00 	calll	15953 <cprintf>
e01000ef:	e8 7c 16 00 00 	calll	5756 <mem_init>
e01000f4:	e8 97 2f 00 00 	calll	12183 <env_init>
e01000f9:	e8 52 3f 00 00 	calll	16210 <clock_idt_init>
e01000fe:	e8 5d 3b 00 00 	calll	15197 <pic_init>
e0100103:	e8 88 3a 00 00 	calll	14984 <rtc_init>
e0100108:	0f b7 05 00 0f 12 e0 	movzwl	-535687424, %eax
e010010f:	25 ff fe 00 00 	andl	$65279, %eax
e0100114:	89 04 24 	movl	%eax, (%esp)
e0100117:	e8 e4 3b 00 00 	calll	15332 <irq_setmask_8259A>
e010011c:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0100123:	e8 08 10 00 00 	calll	4104 <monitor>
e0100128:	e8 63 4d 00 00 	calll	19811 <sched_yield>
e010012d:	0f 1f 00 	nopl	(%eax)
e0100130:	55 	pushl	%ebp
e0100131:	89 e5 	movl	%esp, %ebp
e0100133:	56 	pushl	%esi
e0100134:	83 ec 14 	subl	$20, %esp
e0100137:	83 3d ac 2f 12 e0 00 	cmpl	$0, -535679060
e010013e:	75 50 	jne	80 <_panic+0x60>
e0100140:	8b 75 10 	movl	16(%ebp), %esi
e0100143:	8b 45 0c 	movl	12(%ebp), %eax
e0100146:	8b 4d 08 	movl	8(%ebp), %ecx
e0100149:	89 35 ac 2f 12 e0 	movl	%esi, -535679060
e010014f:	fa 	cli
e0100150:	fc 	cld
e0100151:	8d 55 14 	leal	20(%ebp), %edx
e0100154:	89 55 f8 	movl	%edx, -8(%ebp)
e0100157:	89 44 24 08 	movl	%eax, 8(%esp)
e010015b:	89 4c 24 04 	movl	%ecx, 4(%esp)
e010015f:	c7 04 24 60 a0 10 e0 	movl	$3759186016, (%esp)
e0100166:	e8 d5 3d 00 00 	calll	15829 <cprintf>
e010016b:	8b 45 f8 	movl	-8(%ebp), %eax
e010016e:	89 44 24 04 	movl	%eax, 4(%esp)
e0100172:	89 34 24 	movl	%esi, (%esp)
e0100175:	e8 56 3c 00 00 	calll	15446 <vcprintf>
e010017a:	c7 04 24 a0 a0 10 e0 	movl	$3759186080, (%esp)
e0100181:	e8 ba 3d 00 00 	calll	15802 <cprintf>
e0100186:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100190:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0100197:	e8 94 0f 00 00 	calll	3988 <monitor>
e010019c:	eb f2 	jmp	-14 <_panic+0x60>
e010019e:	66 90 	nop
e01001a0:	55 	pushl	%ebp
e01001a1:	89 e5 	movl	%esp, %ebp
e01001a3:	53 	pushl	%ebx
e01001a4:	57 	pushl	%edi
e01001a5:	56 	pushl	%esi
e01001a6:	83 e4 e0 	andl	$-32, %esp
e01001a9:	83 ec 40 	subl	$64, %esp
e01001ac:	89 e6 	movl	%esp, %esi
e01001ae:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e01001b5:	74 0f 	je	15 <_warn+0x26>
e01001b7:	83 ec 0c 	subl	$12, %esp
e01001ba:	6a 20 	pushl	$32
e01001bc:	e8 cf 87 00 00 	calll	34767 <__asan_stack_malloc_0>
e01001c1:	83 c4 10 	addl	$16, %esp
e01001c4:	eb 02 	jmp	2 <_warn+0x28>
e01001c6:	31 c0 	xorl	%eax, %eax
e01001c8:	8b 4d 0c 	movl	12(%ebp), %ecx
e01001cb:	85 c0 	testl	%eax, %eax
e01001cd:	89 46 18 	movl	%eax, 24(%esi)
e01001d0:	89 c3 	movl	%eax, %ebx
e01001d2:	75 0a 	jne	10 <_warn+0x3e>
e01001d4:	89 e3 	movl	%esp, %ebx
e01001d6:	83 c3 e0 	addl	$-32, %ebx
e01001d9:	83 e3 e0 	andl	$-32, %ebx
e01001dc:	89 dc 	movl	%ebx, %esp
e01001de:	89 5e 1c 	movl	%ebx, 28(%esi)
e01001e1:	8d 43 10 	leal	16(%ebx), %eax
e01001e4:	89 46 14 	movl	%eax, 20(%esi)
e01001e7:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e01001ed:	c7 43 04 14 a2 10 e0 	movl	$3759186452, 4(%ebx)
e01001f4:	c7 43 08 a0 01 10 e0 	movl	$3759145376, 8(%ebx)
e01001fb:	89 df 	movl	%ebx, %edi
e01001fd:	c1 ef 03 	shrl	$3, %edi
e0100200:	c7 87 00 00 80 de f1 f1 f8 f3 	movl	$4093178353, -562036736(%edi)
e010020a:	c6 87 02 00 80 de 04 	movb	$4, -562036734(%edi)
e0100211:	8d 55 14 	leal	20(%ebp), %edx
e0100214:	89 53 10 	movl	%edx, 16(%ebx)
e0100217:	83 ec 04 	subl	$4, %esp
e010021a:	51 	pushl	%ecx
e010021b:	ff 75 08 	pushl	8(%ebp)
e010021e:	68 e0 a0 10 e0 	pushl	$3759186144
e0100223:	e8 18 3d 00 00 	calll	15640 <cprintf>
e0100228:	8b 56 14 	movl	20(%esi), %edx
e010022b:	83 c4 10 	addl	$16, %esp
e010022e:	89 d0 	movl	%edx, %eax
e0100230:	c1 e8 03 	shrl	$3, %eax
e0100233:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0100239:	84 c0 	testb	%al, %al
e010023b:	75 60 	jne	96 <_warn+0xfd>
e010023d:	83 ec 08 	subl	$8, %esp
e0100240:	ff 73 10 	pushl	16(%ebx)
e0100243:	ff 75 10 	pushl	16(%ebp)
e0100246:	e8 85 3b 00 00 	calll	15237 <vcprintf>
e010024b:	83 c4 04 	addl	$4, %esp
e010024e:	68 a0 a0 10 e0 	pushl	$3759186080
e0100253:	e8 e8 3c 00 00 	calll	15592 <cprintf>
e0100258:	83 c4 10 	addl	$16, %esp
e010025b:	c6 87 02 00 80 de f8 	movb	$-8, -562036734(%edi)
e0100262:	c7 03 0e 36 e0 45 	movl	$1172321806, (%ebx)
e0100268:	8b 46 18 	movl	24(%esi), %eax
e010026b:	85 c0 	testl	%eax, %eax
e010026d:	74 1c 	je	28 <_warn+0xeb>
e010026f:	c7 87 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edi)
e0100279:	c7 87 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edi)
e0100283:	8b 40 3c 	movl	60(%eax), %eax
e0100286:	c6 00 00 	movb	$0, (%eax)
e0100289:	eb 0a 	jmp	10 <_warn+0xf5>
e010028b:	c7 87 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edi)
e0100295:	8d 65 f4 	leal	-12(%ebp), %esp
e0100298:	5e 	popl	%esi
e0100299:	5f 	popl	%edi
e010029a:	5b 	popl	%ebx
e010029b:	5d 	popl	%ebp
e010029c:	c3 	retl
e010029d:	89 d1 	movl	%edx, %ecx
e010029f:	80 e1 07 	andb	$7, %cl
e01002a2:	80 c1 03 	addb	$3, %cl
e01002a5:	38 c1 	cmpb	%al, %cl
e01002a7:	7c 94 	jl	-108 <_warn+0x9d>
e01002a9:	83 ec 0c 	subl	$12, %esp
e01002ac:	52 	pushl	%edx
e01002ad:	e8 de 84 00 00 	calll	34014 <__asan_report_load4>
e01002b2:	83 c4 10 	addl	$16, %esp
e01002b5:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01002bf:	90 	nop
e01002c0:	83 ec 0c 	subl	$12, %esp
e01002c3:	e8 38 8a 00 00 	calll	35384 <__asan_init>
e01002c8:	e8 53 8b 00 00 	calll	35667 <__asan_version_mismatch_check_v8>
e01002cd:	83 ec 08 	subl	$8, %esp
e01002d0:	6a 05 	pushl	$5
e01002d2:	68 00 00 12 e0 	pushl	$3759276032
e01002d7:	e8 54 8a 00 00 	calll	35412 <__asan_register_globals>
e01002dc:	83 c4 1c 	addl	$28, %esp
e01002df:	c3 	retl
e01002e0:	83 ec 14 	subl	$20, %esp
e01002e3:	6a 05 	pushl	$5
e01002e5:	68 00 00 12 e0 	pushl	$3759276032
e01002ea:	e8 91 8a 00 00 	calll	35473 <__asan_unregister_globals>
e01002ef:	83 c4 1c 	addl	$28, %esp
e01002f2:	c3 	retl
e01002f3:	cc 	int3
e01002f4:	cc 	int3
e01002f5:	cc 	int3
e01002f6:	cc 	int3
e01002f7:	cc 	int3
e01002f8:	cc 	int3
e01002f9:	cc 	int3
e01002fa:	cc 	int3
e01002fb:	cc 	int3
e01002fc:	cc 	int3
e01002fd:	cc 	int3
e01002fe:	cc 	int3
e01002ff:	cc 	int3
e0100300:	80 3d 40 1b 12 e0 00 	cmpb	$0, -535684288
e0100307:	74 07 	je	7 <serial_intr+0x10>
e0100309:	b9 70 03 10 e0 	movl	$3759145840, %ecx
e010030e:	eb 10 	jmp	16 <cons_intr>
e0100310:	c3 	retl
e0100311:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010031b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0100320:	55 	pushl	%ebp
e0100321:	89 e5 	movl	%esp, %ebp
e0100323:	56 	pushl	%esi
e0100324:	50 	pushl	%eax
e0100325:	89 ce 	movl	%ecx, %esi
e0100327:	eb 11 	jmp	17 <cons_intr+0x1a>
e0100329:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0100330:	c7 05 48 1d 12 e0 00 00 00 00 	movl	$0, -535683768
e010033a:	ff d6 	calll	*%esi
e010033c:	85 c0 	testl	%eax, %eax
e010033e:	74 fa 	je	-6 <cons_intr+0x1a>
e0100340:	83 f8 ff 	cmpl	$-1, %eax
e0100343:	74 23 	je	35 <cons_intr+0x48>
e0100345:	8b 0d 48 1d 12 e0 	movl	-535683768, %ecx
e010034b:	8d 51 01 	leal	1(%ecx), %edx
e010034e:	89 15 48 1d 12 e0 	movl	%edx, -535683768
e0100354:	88 81 44 1b 12 e0 	movb	%al, -535684284(%ecx)
e010035a:	81 3d 48 1d 12 e0 00 02 00 00 	cmpl	$512, -535683768
e0100364:	75 d4 	jne	-44 <cons_intr+0x1a>
e0100366:	eb c8 	jmp	-56 <cons_intr+0x10>
e0100368:	83 c4 04 	addl	$4, %esp
e010036b:	5e 	popl	%esi
e010036c:	5d 	popl	%ebp
e010036d:	c3 	retl
e010036e:	66 90 	nop
e0100370:	ba fd 03 00 00 	movl	$1021, %edx
e0100375:	ec 	inb	%dx, %al
e0100376:	89 c1 	movl	%eax, %ecx
e0100378:	b8 ff ff ff ff 	movl	$4294967295, %eax
e010037d:	f6 c1 01 	testb	$1, %cl
e0100380:	74 09 	je	9 <serial_proc_data+0x1b>
e0100382:	ba f8 03 00 00 	movl	$1016, %edx
e0100387:	ec 	inb	%dx, %al
e0100388:	0f b6 c0 	movzbl	%al, %eax
e010038b:	c3 	retl
e010038c:	0f 1f 40 00 	nopl	(%eax)
e0100390:	b9 a0 03 10 e0 	movl	$3759145888, %ecx
e0100395:	eb 89 	jmp	-119 <cons_intr>
e0100397:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e01003a0:	55 	pushl	%ebp
e01003a1:	89 e5 	movl	%esp, %ebp
e01003a3:	56 	pushl	%esi
e01003a4:	50 	pushl	%eax
e01003a5:	ba 64 00 00 00 	movl	$100, %edx
e01003aa:	ec 	inb	%dx, %al
e01003ab:	89 c1 	movl	%eax, %ecx
e01003ad:	b8 ff ff ff ff 	movl	$4294967295, %eax
e01003b2:	f6 c1 01 	testb	$1, %cl
e01003b5:	0f 84 cd 00 00 00 	je	205 <kbd_proc_data+0xe8>
e01003bb:	ba 60 00 00 00 	movl	$96, %edx
e01003c0:	ec 	inb	%dx, %al
e01003c1:	3c e0 	cmpb	$-32, %al
e01003c3:	75 0e 	jne	14 <kbd_proc_data+0x33>
e01003c5:	80 0d 4c 1d 12 e0 40 	orb	$64, -535683764
e01003cc:	31 c0 	xorl	%eax, %eax
e01003ce:	e9 b5 00 00 00 	jmp	181 <kbd_proc_data+0xe8>
e01003d3:	84 c0 	testb	%al, %al
e01003d5:	8b 0d 4c 1d 12 e0 	movl	-535683764, %ecx
e01003db:	78 53 	js	83 <kbd_proc_data+0x90>
e01003dd:	f6 c1 40 	testb	$64, %cl
e01003e0:	74 0b 	je	11 <kbd_proc_data+0x4d>
e01003e2:	0c 80 	orb	$-128, %al
e01003e4:	83 e1 bf 	andl	$-65, %ecx
e01003e7:	89 0d 4c 1d 12 e0 	movl	%ecx, -535683764
e01003ed:	0f b6 c0 	movzbl	%al, %eax
e01003f0:	0f b6 90 68 a5 10 e0 	movzbl	-535779992(%eax), %edx
e01003f7:	0b 15 4c 1d 12 e0 	orl	-535683764, %edx
e01003fd:	0f b6 88 68 a6 10 e0 	movzbl	-535779736(%eax), %ecx
e0100404:	31 d1 	xorl	%edx, %ecx
e0100406:	89 0d 4c 1d 12 e0 	movl	%ecx, -535683764
e010040c:	89 ca 	movl	%ecx, %edx
e010040e:	83 e2 03 	andl	$3, %edx
e0100411:	8b 14 95 58 a5 10 e0 	movl	-535780008(,%edx,4), %edx
e0100418:	0f b6 04 02 	movzbl	(%edx,%eax), %eax
e010041c:	f6 c1 08 	testb	$8, %cl
e010041f:	74 3f 	je	63 <kbd_proc_data+0xc0>
e0100421:	89 c2 	movl	%eax, %edx
e0100423:	80 c2 9f 	addb	$-97, %dl
e0100426:	80 fa 19 	cmpb	$25, %dl
e0100429:	77 27 	ja	39 <kbd_proc_data+0xb2>
e010042b:	83 c0 e0 	addl	$-32, %eax
e010042e:	eb 58 	jmp	88 <kbd_proc_data+0xe8>
e0100430:	f6 c1 40 	testb	$64, %cl
e0100433:	75 02 	jne	2 <kbd_proc_data+0x97>
e0100435:	24 7f 	andb	$127, %al
e0100437:	0f b6 c0 	movzbl	%al, %eax
e010043a:	0f b6 80 68 a5 10 e0 	movzbl	-535779992(%eax), %eax
e0100441:	f7 d0 	notl	%eax
e0100443:	21 c1 	andl	%eax, %ecx
e0100445:	83 e1 bf 	andl	$-65, %ecx
e0100448:	89 0d 4c 1d 12 e0 	movl	%ecx, -535683764
e010044e:	31 c0 	xorl	%eax, %eax
e0100450:	eb 36 	jmp	54 <kbd_proc_data+0xe8>
e0100452:	89 c2 	movl	%eax, %edx
e0100454:	80 c2 bf 	addb	$-65, %dl
e0100457:	8d 70 20 	leal	32(%eax), %esi
e010045a:	80 fa 1a 	cmpb	$26, %dl
e010045d:	0f 42 c6 	cmovbl	%esi, %eax
e0100460:	83 e1 06 	andl	$6, %ecx
e0100463:	83 f9 06 	cmpl	$6, %ecx
e0100466:	75 20 	jne	32 <kbd_proc_data+0xe8>
e0100468:	3d e9 00 00 00 	cmpl	$233, %eax
e010046d:	75 19 	jne	25 <kbd_proc_data+0xe8>
e010046f:	c7 04 24 36 a3 10 e0 	movl	$3759186742, (%esp)
e0100476:	e8 c5 3a 00 00 	calll	15045 <cprintf>
e010047b:	b0 03 	movb	$3, %al
e010047d:	ba 92 00 00 00 	movl	$146, %edx
e0100482:	ee 	outb	%al, %dx
e0100483:	b8 e9 00 00 00 	movl	$233, %eax
e0100488:	83 c4 04 	addl	$4, %esp
e010048b:	5e 	popl	%esi
e010048c:	5d 	popl	%ebp
e010048d:	c3 	retl
e010048e:	66 90 	nop
e0100490:	55 	pushl	%ebp
e0100491:	89 e5 	movl	%esp, %ebp
e0100493:	83 ec 08 	subl	$8, %esp
e0100496:	e8 65 fe ff ff 	calll	-411 <serial_intr>
e010049b:	e8 f0 fe ff ff 	calll	-272 <kbd_intr>
e01004a0:	8b 0d 44 1d 12 e0 	movl	-535683772, %ecx
e01004a6:	31 c0 	xorl	%eax, %eax
e01004a8:	3b 0d 48 1d 12 e0 	cmpl	-535683768, %ecx
e01004ae:	74 21 	je	33 <cons_getc+0x41>
e01004b0:	8d 51 01 	leal	1(%ecx), %edx
e01004b3:	89 15 44 1d 12 e0 	movl	%edx, -535683772
e01004b9:	0f b6 81 44 1b 12 e0 	movzbl	-535684284(%ecx), %eax
e01004c0:	31 c9 	xorl	%ecx, %ecx
e01004c2:	81 fa 00 02 00 00 	cmpl	$512, %edx
e01004c8:	0f 45 ca 	cmovnel	%edx, %ecx
e01004cb:	89 0d 44 1d 12 e0 	movl	%ecx, -535683772
e01004d1:	83 c4 08 	addl	$8, %esp
e01004d4:	5d 	popl	%ebp
e01004d5:	c3 	retl
e01004d6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01004e0:	55 	pushl	%ebp
e01004e1:	89 e5 	movl	%esp, %ebp
e01004e3:	83 ec 08 	subl	$8, %esp
e01004e6:	e8 25 00 00 00 	calll	37 <cga_init>
e01004eb:	e8 a0 00 00 00 	calll	160 <serial_init>
e01004f0:	80 3d 40 1b 12 e0 00 	cmpb	$0, -535684288
e01004f7:	75 0c 	jne	12 <cons_init+0x25>
e01004f9:	c7 04 24 a3 a4 10 e0 	movl	$3759187107, (%esp)
e0100500:	e8 3b 3a 00 00 	calll	14907 <cprintf>
e0100505:	83 c4 08 	addl	$8, %esp
e0100508:	5d 	popl	%ebp
e0100509:	c3 	retl
e010050a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0100510:	0f b7 05 00 80 0b e0 	movzwl	-536117248, %eax
e0100517:	66 c7 05 00 80 0b e0 5a a5 	movw	$42330, -536117248
e0100520:	0f b7 0d 00 80 0b e0 	movzwl	-536117248, %ecx
e0100527:	81 f9 5a a5 00 00 	cmpl	$42330, %ecx
e010052d:	75 12 	jne	18 <cga_init+0x31>
e010052f:	66 a3 00 80 0b e0 	movw	%ax, 3758850048
e0100535:	b9 00 80 0b e0 	movl	$3758850048, %ecx
e010053a:	ba d4 03 00 00 	movl	$980, %edx
e010053f:	eb 0a 	jmp	10 <cga_init+0x3b>
e0100541:	b9 00 00 0b e0 	movl	$3758817280, %ecx
e0100546:	ba b4 03 00 00 	movl	$948, %edx
e010054b:	56 	pushl	%esi
e010054c:	89 15 50 1d 12 e0 	movl	%edx, -535683760
e0100552:	b0 0e 	movb	$14, %al
e0100554:	ee 	outb	%al, %dx
e0100555:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e010055b:	42 	incl	%edx
e010055c:	ec 	inb	%dx, %al
e010055d:	0f b6 f0 	movzbl	%al, %esi
e0100560:	c1 e6 08 	shll	$8, %esi
e0100563:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e0100569:	b0 0f 	movb	$15, %al
e010056b:	ee 	outb	%al, %dx
e010056c:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e0100572:	42 	incl	%edx
e0100573:	ec 	inb	%dx, %al
e0100574:	0f b6 c0 	movzbl	%al, %eax
e0100577:	09 f0 	orl	%esi, %eax
e0100579:	89 0d 54 1d 12 e0 	movl	%ecx, -535683756
e010057f:	66 a3 58 1d 12 e0 	movw	%ax, 3759283544
e0100585:	5e 	popl	%esi
e0100586:	c3 	retl
e0100587:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0100590:	31 c0 	xorl	%eax, %eax
e0100592:	ba fa 03 00 00 	movl	$1018, %edx
e0100597:	ee 	outb	%al, %dx
e0100598:	b0 80 	movb	$-128, %al
e010059a:	ba fb 03 00 00 	movl	$1019, %edx
e010059f:	ee 	outb	%al, %dx
e01005a0:	b0 0c 	movb	$12, %al
e01005a2:	ba f8 03 00 00 	movl	$1016, %edx
e01005a7:	ee 	outb	%al, %dx
e01005a8:	31 c0 	xorl	%eax, %eax
e01005aa:	ba f9 03 00 00 	movl	$1017, %edx
e01005af:	ee 	outb	%al, %dx
e01005b0:	b0 03 	movb	$3, %al
e01005b2:	ba fb 03 00 00 	movl	$1019, %edx
e01005b7:	ee 	outb	%al, %dx
e01005b8:	31 c0 	xorl	%eax, %eax
e01005ba:	ba fc 03 00 00 	movl	$1020, %edx
e01005bf:	ee 	outb	%al, %dx
e01005c0:	b0 01 	movb	$1, %al
e01005c2:	ba f9 03 00 00 	movl	$1017, %edx
e01005c7:	ee 	outb	%al, %dx
e01005c8:	ba fd 03 00 00 	movl	$1021, %edx
e01005cd:	ec 	inb	%dx, %al
e01005ce:	3c ff 	cmpb	$-1, %al
e01005d0:	0f 95 05 40 1b 12 e0 	setne	-535684288
e01005d7:	ba fa 03 00 00 	movl	$1018, %edx
e01005dc:	ec 	inb	%dx, %al
e01005dd:	ba f8 03 00 00 	movl	$1016, %edx
e01005e2:	ec 	inb	%dx, %al
e01005e3:	c3 	retl
e01005e4:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01005ee:	66 90 	nop
e01005f0:	8b 4c 24 04 	movl	4(%esp), %ecx
e01005f4:	eb 0a 	jmp	10 <cons_putc>
e01005f6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100600:	55 	pushl	%ebp
e0100601:	89 e5 	movl	%esp, %ebp
e0100603:	56 	pushl	%esi
e0100604:	50 	pushl	%eax
e0100605:	89 ce 	movl	%ecx, %esi
e0100607:	e8 44 00 00 00 	calll	68 <serial_putc>
e010060c:	89 f1 	movl	%esi, %ecx
e010060e:	e8 8d 00 00 00 	calll	141 <lpt_putc>
e0100613:	89 f1 	movl	%esi, %ecx
e0100615:	83 c4 04 	addl	$4, %esp
e0100618:	5e 	popl	%esi
e0100619:	5d 	popl	%ebp
e010061a:	e9 e1 00 00 00 	jmp	225 <cga_putc>
e010061f:	90 	nop
e0100620:	55 	pushl	%ebp
e0100621:	89 e5 	movl	%esp, %ebp
e0100623:	83 ec 08 	subl	$8, %esp
e0100626:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100630:	e8 5b fe ff ff 	calll	-421 <cons_getc>
e0100635:	85 c0 	testl	%eax, %eax
e0100637:	74 f7 	je	-9 <getchar+0x10>
e0100639:	83 c4 08 	addl	$8, %esp
e010063c:	5d 	popl	%ebp
e010063d:	c3 	retl
e010063e:	66 90 	nop
e0100640:	b8 01 00 00 00 	movl	$1, %eax
e0100645:	c3 	retl
e0100646:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100650:	55 	pushl	%ebp
e0100651:	89 e5 	movl	%esp, %ebp
e0100653:	53 	pushl	%ebx
e0100654:	56 	pushl	%esi
e0100655:	89 cb 	movl	%ecx, %ebx
e0100657:	ba fd 03 00 00 	movl	$1021, %edx
e010065c:	ec 	inb	%dx, %al
e010065d:	a8 20 	testb	$32, %al
e010065f:	75 29 	jne	41 <serial_putc+0x3a>
e0100661:	be 01 00 00 00 	movl	$1, %esi
e0100666:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100670:	e8 eb 01 00 00 	calll	491 <delay>
e0100675:	ba fd 03 00 00 	movl	$1021, %edx
e010067a:	ec 	inb	%dx, %al
e010067b:	81 fe ff 31 00 00 	cmpl	$12799, %esi
e0100681:	77 07 	ja	7 <serial_putc+0x3a>
e0100683:	24 20 	andb	$32, %al
e0100685:	46 	incl	%esi
e0100686:	84 c0 	testb	%al, %al
e0100688:	74 e6 	je	-26 <serial_putc+0x20>
e010068a:	89 d8 	movl	%ebx, %eax
e010068c:	ba f8 03 00 00 	movl	$1016, %edx
e0100691:	ee 	outb	%al, %dx
e0100692:	5e 	popl	%esi
e0100693:	5b 	popl	%ebx
e0100694:	5d 	popl	%ebp
e0100695:	c3 	retl
e0100696:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01006a0:	55 	pushl	%ebp
e01006a1:	89 e5 	movl	%esp, %ebp
e01006a3:	53 	pushl	%ebx
e01006a4:	56 	pushl	%esi
e01006a5:	89 cb 	movl	%ecx, %ebx
e01006a7:	ba 79 03 00 00 	movl	$889, %edx
e01006ac:	ec 	inb	%dx, %al
e01006ad:	84 c0 	testb	%al, %al
e01006af:	78 27 	js	39 <lpt_putc+0x38>
e01006b1:	be 01 00 00 00 	movl	$1, %esi
e01006b6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01006c0:	e8 9b 01 00 00 	calll	411 <delay>
e01006c5:	ba 79 03 00 00 	movl	$889, %edx
e01006ca:	ec 	inb	%dx, %al
e01006cb:	81 fe ff 31 00 00 	cmpl	$12799, %esi
e01006d1:	77 05 	ja	5 <lpt_putc+0x38>
e01006d3:	46 	incl	%esi
e01006d4:	84 c0 	testb	%al, %al
e01006d6:	79 e8 	jns	-24 <lpt_putc+0x20>
e01006d8:	89 d8 	movl	%ebx, %eax
e01006da:	ba 78 03 00 00 	movl	$888, %edx
e01006df:	ee 	outb	%al, %dx
e01006e0:	b0 0d 	movb	$13, %al
e01006e2:	ba 7a 03 00 00 	movl	$890, %edx
e01006e7:	ee 	outb	%al, %dx
e01006e8:	b0 08 	movb	$8, %al
e01006ea:	ba 7a 03 00 00 	movl	$890, %edx
e01006ef:	ee 	outb	%al, %dx
e01006f0:	5e 	popl	%esi
e01006f1:	5b 	popl	%ebx
e01006f2:	5d 	popl	%ebp
e01006f3:	c3 	retl
e01006f4:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01006fe:	66 90 	nop
e0100700:	55 	pushl	%ebp
e0100701:	89 e5 	movl	%esp, %ebp
e0100703:	56 	pushl	%esi
e0100704:	50 	pushl	%eax
e0100705:	89 c8 	movl	%ecx, %eax
e0100707:	0d 00 07 00 00 	orl	$1792, %eax
e010070c:	81 f9 ff 00 00 00 	cmpl	$255, %ecx
e0100712:	0f 47 c1 	cmoval	%ecx, %eax
e0100715:	89 c1 	movl	%eax, %ecx
e0100717:	80 c1 f8 	addb	$-8, %cl
e010071a:	80 f9 05 	cmpb	$5, %cl
e010071d:	0f 87 9b 00 00 00 	ja	155 <cga_putc+0xbe>
e0100723:	0f b6 c9 	movzbl	%cl, %ecx
e0100726:	ff 24 8d 40 a5 10 e0 	jmpl	*-535780032(,%ecx,4)
e010072d:	0f b7 0d 58 1d 12 e0 	movzwl	-535683752, %ecx
e0100734:	66 85 c9 	testw	%cx, %cx
e0100737:	0f 84 ea 00 00 00 	je	234 <cga_putc+0x127>
e010073d:	49 	decl	%ecx
e010073e:	66 89 0d 58 1d 12 e0 	movw	%cx, -535683752
e0100745:	25 00 ff ff ff 	andl	$4294967040, %eax
e010074a:	83 c8 20 	orl	$32, %eax
e010074d:	8b 15 54 1d 12 e0 	movl	-535683756, %edx
e0100753:	0f b7 c9 	movzwl	%cx, %ecx
e0100756:	66 89 04 4a 	movw	%ax, (%edx,%ecx,2)
e010075a:	eb 32 	jmp	50 <cga_putc+0x8e>
e010075c:	b9 20 00 00 00 	movl	$32, %ecx
e0100761:	e8 9a fe ff ff 	calll	-358 <cons_putc>
e0100766:	b9 20 00 00 00 	movl	$32, %ecx
e010076b:	e8 90 fe ff ff 	calll	-368 <cons_putc>
e0100770:	b9 20 00 00 00 	movl	$32, %ecx
e0100775:	e8 86 fe ff ff 	calll	-378 <cons_putc>
e010077a:	b9 20 00 00 00 	movl	$32, %ecx
e010077f:	e8 7c fe ff ff 	calll	-388 <cons_putc>
e0100784:	b9 20 00 00 00 	movl	$32, %ecx
e0100789:	e8 72 fe ff ff 	calll	-398 <cons_putc>
e010078e:	0f b7 0d 58 1d 12 e0 	movzwl	-535683752, %ecx
e0100795:	eb 42 	jmp	66 <cga_putc+0xd9>
e0100797:	66 83 05 58 1d 12 e0 50 	addw	$80, -535683752
e010079f:	0f b7 05 58 1d 12 e0 	movzwl	-535683752, %eax
e01007a6:	69 c0 cd cc 00 00 	imull	$52429, %eax, %eax
e01007ac:	c1 e8 16 	shrl	$22, %eax
e01007af:	c1 e0 04 	shll	$4, %eax
e01007b2:	8d 0c 80 	leal	(%eax,%eax,4), %ecx
e01007b5:	66 89 0d 58 1d 12 e0 	movw	%cx, -535683752
e01007bc:	eb 1b 	jmp	27 <cga_putc+0xd9>
e01007be:	8b 15 54 1d 12 e0 	movl	-535683756, %edx
e01007c4:	0f b7 35 58 1d 12 e0 	movzwl	-535683752, %esi
e01007cb:	8d 4e 01 	leal	1(%esi), %ecx
e01007ce:	66 89 0d 58 1d 12 e0 	movw	%cx, -535683752
e01007d5:	66 89 04 72 	movw	%ax, (%edx,%esi,2)
e01007d9:	0f b7 c1 	movzwl	%cx, %eax
e01007dc:	3d d0 07 00 00 	cmpl	$2000, %eax
e01007e1:	72 44 	jb	68 <cga_putc+0x127>
e01007e3:	a1 54 1d 12 e0 	movl	3759283540, %eax
e01007e8:	8d 88 a0 00 00 00 	leal	160(%eax), %ecx
e01007ee:	83 ec 04 	subl	$4, %esp
e01007f1:	68 00 0f 00 00 	pushl	$3840
e01007f6:	51 	pushl	%ecx
e01007f7:	50 	pushl	%eax
e01007f8:	e8 33 8b 00 00 	calll	35635 <__wrap_memmove>
e01007fd:	83 c4 10 	addl	$16, %esp
e0100800:	b8 60 ff ff ff 	movl	$4294967136, %eax
e0100805:	8b 0d 54 1d 12 e0 	movl	-535683756, %ecx
e010080b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0100810:	66 c7 84 01 a0 0f 00 00 20 07 	movw	$1824, 4000(%ecx,%eax)
e010081a:	83 c0 02 	addl	$2, %eax
e010081d:	75 f1 	jne	-15 <cga_putc+0x110>
e010081f:	66 83 05 58 1d 12 e0 b0 	addw	$-80, -535683752
e0100827:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e010082d:	b0 0e 	movb	$14, %al
e010082f:	ee 	outb	%al, %dx
e0100830:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e0100836:	42 	incl	%edx
e0100837:	a0 59 1d 12 e0 	movb	3759283545, %al
e010083c:	ee 	outb	%al, %dx
e010083d:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e0100843:	b0 0f 	movb	$15, %al
e0100845:	ee 	outb	%al, %dx
e0100846:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e010084c:	42 	incl	%edx
e010084d:	a0 58 1d 12 e0 	movb	3759283544, %al
e0100852:	ee 	outb	%al, %dx
e0100853:	83 c4 04 	addl	$4, %esp
e0100856:	5e 	popl	%esi
e0100857:	5d 	popl	%ebp
e0100858:	c3 	retl
e0100859:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0100860:	ba 84 00 00 00 	movl	$132, %edx
e0100865:	ec 	inb	%dx, %al
e0100866:	ba 84 00 00 00 	movl	$132, %edx
e010086b:	ec 	inb	%dx, %al
e010086c:	ba 84 00 00 00 	movl	$132, %edx
e0100871:	ec 	inb	%dx, %al
e0100872:	ba 84 00 00 00 	movl	$132, %edx
e0100877:	ec 	inb	%dx, %al
e0100878:	c3 	retl
e0100879:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0100880:	83 ec 0c 	subl	$12, %esp
e0100883:	e8 78 84 00 00 	calll	33912 <__asan_init>
e0100888:	e8 93 85 00 00 	calll	34195 <__asan_version_mismatch_check_v8>
e010088d:	83 c4 0c 	addl	$12, %esp
e0100890:	c3 	retl
e0100891:	cc 	int3
e0100892:	cc 	int3
e0100893:	cc 	int3
e0100894:	cc 	int3
e0100895:	cc 	int3
e0100896:	cc 	int3
e0100897:	cc 	int3
e0100898:	cc 	int3
e0100899:	cc 	int3
e010089a:	cc 	int3
e010089b:	cc 	int3
e010089c:	cc 	int3
e010089d:	cc 	int3
e010089e:	cc 	int3
e010089f:	cc 	int3
e01008a0:	55 	pushl	%ebp
e01008a1:	89 e5 	movl	%esp, %ebp
e01008a3:	53 	pushl	%ebx
e01008a4:	56 	pushl	%esi
e01008a5:	83 ec 10 	subl	$16, %esp
e01008a8:	be 06 00 00 00 	movl	$6, %esi
e01008ad:	bb c4 a7 10 e0 	movl	$3759187908, %ebx
e01008b2:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01008bc:	0f 1f 40 00 	nopl	(%eax)
e01008c0:	8d 43 fc 	leal	-4(%ebx), %eax
e01008c3:	89 c1 	movl	%eax, %ecx
e01008c5:	c1 e9 03 	shrl	$3, %ecx
e01008c8:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e01008cf:	84 c9 	testb	%cl, %cl
e01008d1:	75 31 	jne	49 <mon_help+0x64>
e01008d3:	8b 43 fc 	movl	-4(%ebx), %eax
e01008d6:	89 d9 	movl	%ebx, %ecx
e01008d8:	c1 e9 03 	shrl	$3, %ecx
e01008db:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e01008e2:	84 c9 	testb	%cl, %cl
e01008e4:	75 2c 	jne	44 <mon_help+0x72>
e01008e6:	8b 0b 	movl	(%ebx), %ecx
e01008e8:	89 4c 24 08 	movl	%ecx, 8(%esp)
e01008ec:	89 44 24 04 	movl	%eax, 4(%esp)
e01008f0:	c7 04 24 80 a7 10 e0 	movl	$3759187840, (%esp)
e01008f7:	e8 44 36 00 00 	calll	13892 <cprintf>
e01008fc:	83 c3 0c 	addl	$12, %ebx
e01008ff:	4e 	decl	%esi
e0100900:	75 be 	jne	-66 <mon_help+0x20>
e0100902:	eb 22 	jmp	34 <mon_help+0x86>
e0100904:	89 c2 	movl	%eax, %edx
e0100906:	80 e2 07 	andb	$7, %dl
e0100909:	80 c2 03 	addb	$3, %dl
e010090c:	38 ca 	cmpb	%cl, %dl
e010090e:	7c c3 	jl	-61 <mon_help+0x33>
e0100910:	eb 1d 	jmp	29 <mon_help+0x8f>
e0100912:	89 da 	movl	%ebx, %edx
e0100914:	80 e2 07 	andb	$7, %dl
e0100917:	80 c2 03 	addb	$3, %dl
e010091a:	38 ca 	cmpb	%cl, %dl
e010091c:	7c c8 	jl	-56 <mon_help+0x46>
e010091e:	89 1c 24 	movl	%ebx, (%esp)
e0100921:	e8 6a 7e 00 00 	calll	32362 <__asan_report_load4>
e0100926:	31 c0 	xorl	%eax, %eax
e0100928:	83 c4 10 	addl	$16, %esp
e010092b:	5e 	popl	%esi
e010092c:	5b 	popl	%ebx
e010092d:	5d 	popl	%ebp
e010092e:	c3 	retl
e010092f:	89 04 24 	movl	%eax, (%esp)
e0100932:	e8 59 7e 00 00 	calll	32345 <__asan_report_load4>
e0100937:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0100940:	55 	pushl	%ebp
e0100941:	89 e5 	movl	%esp, %ebp
e0100943:	83 ec 08 	subl	$8, %esp
e0100946:	83 ec 0c 	subl	$12, %esp
e0100949:	68 40 a8 10 e0 	pushl	$3759188032
e010094e:	e8 ed 35 00 00 	calll	13805 <cprintf>
e0100953:	83 c4 08 	addl	$8, %esp
e0100956:	68 0c 00 10 00 	pushl	$1048588
e010095b:	68 80 a8 10 e0 	pushl	$3759188096
e0100960:	e8 db 35 00 00 	calll	13787 <cprintf>
e0100965:	83 c4 0c 	addl	$12, %esp
e0100968:	8d 05 0c 00 10 00 	leal	1048588, %eax
e010096e:	50 	pushl	%eax
e010096f:	68 0c 00 10 e0 	pushl	$3759144972
e0100974:	68 e0 a8 10 e0 	pushl	$3759188192
e0100979:	e8 c2 35 00 00 	calll	13762 <cprintf>
e010097e:	83 c4 0c 	addl	$12, %esp
e0100981:	8d 05 cc 9f 10 00 	leal	1089484, %eax
e0100987:	50 	pushl	%eax
e0100988:	68 cc 9f 10 e0 	pushl	$3759185868
e010098d:	68 40 a9 10 e0 	pushl	$3759188288
e0100992:	e8 a9 35 00 00 	calll	13737 <cprintf>
e0100997:	83 c4 0c 	addl	$12, %esp
e010099a:	8d 05 2c 1b 12 00 	leal	1186604, %eax
e01009a0:	50 	pushl	%eax
e01009a1:	68 2c 1b 12 e0 	pushl	$3759282988
e01009a6:	68 a0 a9 10 e0 	pushl	$3759188384
e01009ab:	e8 90 35 00 00 	calll	13712 <cprintf>
e01009b0:	83 c4 0c 	addl	$12, %esp
e01009b3:	8d 05 00 40 12 00 	leal	1196032, %eax
e01009b9:	50 	pushl	%eax
e01009ba:	68 00 40 12 e0 	pushl	$3759292416
e01009bf:	68 00 aa 10 e0 	pushl	$3759188480
e01009c4:	e8 77 35 00 00 	calll	13687 <cprintf>
e01009c9:	83 c4 10 	addl	$16, %esp
e01009cc:	b8 0c 00 10 e0 	movl	$3759144972, %eax
e01009d1:	b9 00 40 12 e0 	movl	$3759292416, %ecx
e01009d6:	29 c1 	subl	%eax, %ecx
e01009d8:	81 c1 ff 03 00 00 	addl	$1023, %ecx
e01009de:	89 c8 	movl	%ecx, %eax
e01009e0:	25 ff 03 00 00 	andl	$1023, %eax
e01009e5:	29 c1 	subl	%eax, %ecx
e01009e7:	c1 e9 0a 	shrl	$10, %ecx
e01009ea:	83 ec 08 	subl	$8, %esp
e01009ed:	51 	pushl	%ecx
e01009ee:	68 60 aa 10 e0 	pushl	$3759188576
e01009f3:	e8 48 35 00 00 	calll	13640 <cprintf>
e01009f8:	83 c4 10 	addl	$16, %esp
e01009fb:	31 c0 	xorl	%eax, %eax
e01009fd:	83 c4 08 	addl	$8, %esp
e0100a00:	5d 	popl	%ebp
e0100a01:	c3 	retl
e0100a02:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100a0c:	0f 1f 40 00 	nopl	(%eax)
e0100a10:	55 	pushl	%ebp
e0100a11:	89 e5 	movl	%esp, %ebp
e0100a13:	53 	pushl	%ebx
e0100a14:	57 	pushl	%edi
e0100a15:	56 	pushl	%esi
e0100a16:	83 e4 e0 	andl	$-32, %esp
e0100a19:	81 ec e0 00 00 00 	subl	$224, %esp
e0100a1f:	c7 44 24 60 b3 8a b5 41 	movl	$1102416563, 96(%esp)
e0100a27:	c7 44 24 64 65 a4 10 e0 	movl	$3759187045, 100(%esp)
e0100a2f:	c7 44 24 68 10 0a 10 e0 	movl	$3759147536, 104(%esp)
e0100a37:	8d 44 24 60 	leal	96(%esp), %eax
e0100a3b:	c1 e8 03 	shrl	$3, %eax
e0100a3e:	c7 80 00 00 80 de f1 f1 f8 f8 	movl	$4177064433, -562036736(%eax)
e0100a48:	c7 80 04 00 80 de f8 f3 f3 f3 	movl	$4092851192, -562036732(%eax)
e0100a52:	66 c7 80 08 00 80 de f3 f3 	movw	$62451, -562036728(%eax)
e0100a5b:	66 c7 80 02 00 80 de 00 00 	movw	$0, -562036734(%eax)
e0100a64:	89 44 24 54 	movl	%eax, 84(%esp)
e0100a68:	c6 80 04 00 80 de 00 	movb	$0, -562036732(%eax)
e0100a6f:	89 eb 	movl	%ebp, %ebx
e0100a71:	c7 04 24 c0 aa 10 e0 	movl	$3759188672, (%esp)
e0100a78:	e8 c3 34 00 00 	calll	13507 <cprintf>
e0100a7d:	85 db 	testl	%ebx, %ebx
e0100a7f:	0f 84 5a 03 00 00 	je	858 <mon_backtrace+0x3cf>
e0100a85:	8d 44 24 70 	leal	112(%esp), %eax
e0100a89:	8d 48 04 	leal	4(%eax), %ecx
e0100a8c:	89 4c 24 4c 	movl	%ecx, 76(%esp)
e0100a90:	8d 48 0c 	leal	12(%eax), %ecx
e0100a93:	89 4c 24 48 	movl	%ecx, 72(%esp)
e0100a97:	8d 48 08 	leal	8(%eax), %ecx
e0100a9a:	89 4c 24 44 	movl	%ecx, 68(%esp)
e0100a9e:	8d 40 10 	leal	16(%eax), %eax
e0100aa1:	89 44 24 40 	movl	%eax, 64(%esp)
e0100aa5:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100aaf:	90 	nop
e0100ab0:	8d 53 04 	leal	4(%ebx), %edx
e0100ab3:	89 d7 	movl	%edx, %edi
e0100ab5:	c1 ef 03 	shrl	$3, %edi
e0100ab8:	0f b6 87 00 00 80 de 	movzbl	-562036736(%edi), %eax
e0100abf:	84 c0 	testb	%al, %al
e0100ac1:	0f 85 cf 01 00 00 	jne	463 <mon_backtrace+0x286>
e0100ac7:	89 54 24 3c 	movl	%edx, 60(%esp)
e0100acb:	8b 02 	movl	(%edx), %eax
e0100acd:	8d 4c 24 70 	leal	112(%esp), %ecx
e0100ad1:	89 4c 24 04 	movl	%ecx, 4(%esp)
e0100ad5:	89 04 24 	movl	%eax, (%esp)
e0100ad8:	e8 d3 46 00 00 	calll	18131 <debuginfo_eip>
e0100add:	0f b6 87 00 00 80 de 	movzbl	-562036736(%edi), %eax
e0100ae4:	84 c0 	testb	%al, %al
e0100ae6:	0f 85 bf 01 00 00 	jne	447 <mon_backtrace+0x29b>
e0100aec:	8b 43 04 	movl	4(%ebx), %eax
e0100aef:	89 44 24 50 	movl	%eax, 80(%esp)
e0100af3:	8d 43 08 	leal	8(%ebx), %eax
e0100af6:	89 c1 	movl	%eax, %ecx
e0100af8:	c1 e9 03 	shrl	$3, %ecx
e0100afb:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0100b02:	84 c9 	testb	%cl, %cl
e0100b04:	0f 85 b8 01 00 00 	jne	440 <mon_backtrace+0x2b2>
e0100b0a:	8b 43 08 	movl	8(%ebx), %eax
e0100b0d:	89 44 24 5c 	movl	%eax, 92(%esp)
e0100b11:	8d 43 0c 	leal	12(%ebx), %eax
e0100b14:	89 c1 	movl	%eax, %ecx
e0100b16:	c1 e9 03 	shrl	$3, %ecx
e0100b19:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0100b20:	84 c9 	testb	%cl, %cl
e0100b22:	0f 85 af 01 00 00 	jne	431 <mon_backtrace+0x2c7>
e0100b28:	8b 43 0c 	movl	12(%ebx), %eax
e0100b2b:	89 44 24 58 	movl	%eax, 88(%esp)
e0100b2f:	8d 43 10 	leal	16(%ebx), %eax
e0100b32:	89 c1 	movl	%eax, %ecx
e0100b34:	c1 e9 03 	shrl	$3, %ecx
e0100b37:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0100b3e:	84 c9 	testb	%cl, %cl
e0100b40:	0f 85 a6 01 00 00 	jne	422 <mon_backtrace+0x2dc>
e0100b46:	8b 73 10 	movl	16(%ebx), %esi
e0100b49:	8d 43 14 	leal	20(%ebx), %eax
e0100b4c:	89 c1 	movl	%eax, %ecx
e0100b4e:	c1 e9 03 	shrl	$3, %ecx
e0100b51:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0100b58:	84 c9 	testb	%cl, %cl
e0100b5a:	0f 85 a1 01 00 00 	jne	417 <mon_backtrace+0x2f1>
e0100b60:	8b 43 14 	movl	20(%ebx), %eax
e0100b63:	8d 4b 18 	leal	24(%ebx), %ecx
e0100b66:	89 ca 	movl	%ecx, %edx
e0100b68:	c1 ea 03 	shrl	$3, %edx
e0100b6b:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0100b72:	84 d2 	testb	%dl, %dl
e0100b74:	0f 85 9c 01 00 00 	jne	412 <mon_backtrace+0x306>
e0100b7a:	8b 4b 18 	movl	24(%ebx), %ecx
e0100b7d:	89 4c 24 1c 	movl	%ecx, 28(%esp)
e0100b81:	89 44 24 18 	movl	%eax, 24(%esp)
e0100b85:	89 74 24 14 	movl	%esi, 20(%esp)
e0100b89:	8b 44 24 58 	movl	88(%esp), %eax
e0100b8d:	89 44 24 10 	movl	%eax, 16(%esp)
e0100b91:	8b 44 24 5c 	movl	92(%esp), %eax
e0100b95:	89 44 24 0c 	movl	%eax, 12(%esp)
e0100b99:	8b 44 24 50 	movl	80(%esp), %eax
e0100b9d:	89 44 24 08 	movl	%eax, 8(%esp)
e0100ba1:	89 5c 24 04 	movl	%ebx, 4(%esp)
e0100ba5:	c7 04 24 00 ab 10 e0 	movl	$3759188736, (%esp)
e0100bac:	e8 8f 33 00 00 	calll	13199 <cprintf>
e0100bb1:	8d 44 24 70 	leal	112(%esp), %eax
e0100bb5:	c1 e8 03 	shrl	$3, %eax
e0100bb8:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0100bbf:	84 c0 	testb	%al, %al
e0100bc1:	0f 85 64 01 00 00 	jne	356 <mon_backtrace+0x31b>
e0100bc7:	8b 44 24 70 	movl	112(%esp), %eax
e0100bcb:	89 44 24 50 	movl	%eax, 80(%esp)
e0100bcf:	8b 44 24 4c 	movl	76(%esp), %eax
e0100bd3:	c1 e8 03 	shrl	$3, %eax
e0100bd6:	0f b6 88 00 00 80 de 	movzbl	-562036736(%eax), %ecx
e0100bdd:	84 c9 	testb	%cl, %cl
e0100bdf:	0f 85 5d 01 00 00 	jne	349 <mon_backtrace+0x332>
e0100be5:	8b 4c 24 74 	movl	116(%esp), %ecx
e0100be9:	8b 44 24 48 	movl	72(%esp), %eax
e0100bed:	c1 e8 03 	shrl	$3, %eax
e0100bf0:	0f b6 90 00 00 80 de 	movzbl	-562036736(%eax), %edx
e0100bf7:	84 d2 	testb	%dl, %dl
e0100bf9:	0f 85 58 01 00 00 	jne	344 <mon_backtrace+0x347>
e0100bff:	8b 54 24 7c 	movl	124(%esp), %edx
e0100c03:	8b 44 24 44 	movl	68(%esp), %eax
e0100c07:	c1 e8 03 	shrl	$3, %eax
e0100c0a:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0100c11:	84 c0 	testb	%al, %al
e0100c13:	0f 85 53 01 00 00 	jne	339 <mon_backtrace+0x35c>
e0100c19:	8b 74 24 78 	movl	120(%esp), %esi
e0100c1d:	0f b6 87 00 00 80 de 	movzbl	-562036736(%edi), %eax
e0100c24:	84 c0 	testb	%al, %al
e0100c26:	0f 85 5d 01 00 00 	jne	349 <mon_backtrace+0x379>
e0100c2c:	8b 44 24 3c 	movl	60(%esp), %eax
e0100c30:	8b 38 	movl	(%eax), %edi
e0100c32:	8b 44 24 40 	movl	64(%esp), %eax
e0100c36:	c1 e8 03 	shrl	$3, %eax
e0100c39:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0100c40:	84 c0 	testb	%al, %al
e0100c42:	0f 85 5e 01 00 00 	jne	350 <mon_backtrace+0x396>
e0100c48:	2b bc 24 80 00 00 00 	subl	128(%esp), %edi
e0100c4f:	89 7c 24 14 	movl	%edi, 20(%esp)
e0100c53:	89 74 24 10 	movl	%esi, 16(%esp)
e0100c57:	89 54 24 0c 	movl	%edx, 12(%esp)
e0100c5b:	89 4c 24 08 	movl	%ecx, 8(%esp)
e0100c5f:	8b 44 24 50 	movl	80(%esp), %eax
e0100c63:	89 44 24 04 	movl	%eax, 4(%esp)
e0100c67:	c7 04 24 60 ab 10 e0 	movl	$3759188832, (%esp)
e0100c6e:	e8 cd 32 00 00 	calll	13005 <cprintf>
e0100c73:	89 d8 	movl	%ebx, %eax
e0100c75:	c1 e8 03 	shrl	$3, %eax
e0100c78:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0100c7f:	84 c0 	testb	%al, %al
e0100c81:	0f 85 40 01 00 00 	jne	320 <mon_backtrace+0x3b7>
e0100c87:	8b 1b 	movl	(%ebx), %ebx
e0100c89:	85 db 	testl	%ebx, %ebx
e0100c8b:	0f 85 1f fe ff ff 	jne	-481 <mon_backtrace+0xa0>
e0100c91:	e9 49 01 00 00 	jmp	329 <mon_backtrace+0x3cf>
e0100c96:	89 d1 	movl	%edx, %ecx
e0100c98:	80 e1 07 	andb	$7, %cl
e0100c9b:	80 c1 03 	addb	$3, %cl
e0100c9e:	38 c1 	cmpb	%al, %cl
e0100ca0:	0f 8c 21 fe ff ff 	jl	-479 <mon_backtrace+0xb7>
e0100ca6:	e9 77 01 00 00 	jmp	375 <mon_backtrace+0x412>
e0100cab:	8b 4c 24 3c 	movl	60(%esp), %ecx
e0100caf:	80 e1 07 	andb	$7, %cl
e0100cb2:	80 c1 03 	addb	$3, %cl
e0100cb5:	38 c1 	cmpb	%al, %cl
e0100cb7:	0f 8c 2f fe ff ff 	jl	-465 <mon_backtrace+0xdc>
e0100cbd:	e9 68 01 00 00 	jmp	360 <mon_backtrace+0x41a>
e0100cc2:	89 c2 	movl	%eax, %edx
e0100cc4:	80 e2 07 	andb	$7, %dl
e0100cc7:	80 c2 03 	addb	$3, %dl
e0100cca:	38 ca 	cmpb	%cl, %dl
e0100ccc:	0f 8c 38 fe ff ff 	jl	-456 <mon_backtrace+0xfa>
e0100cd2:	e9 5f 01 00 00 	jmp	351 <mon_backtrace+0x426>
e0100cd7:	89 c2 	movl	%eax, %edx
e0100cd9:	80 e2 07 	andb	$7, %dl
e0100cdc:	80 c2 03 	addb	$3, %dl
e0100cdf:	38 ca 	cmpb	%cl, %dl
e0100ce1:	0f 8c 41 fe ff ff 	jl	-447 <mon_backtrace+0x118>
e0100ce7:	e9 52 01 00 00 	jmp	338 <mon_backtrace+0x42e>
e0100cec:	89 c2 	movl	%eax, %edx
e0100cee:	80 e2 07 	andb	$7, %dl
e0100cf1:	80 c2 03 	addb	$3, %dl
e0100cf4:	38 ca 	cmpb	%cl, %dl
e0100cf6:	0f 8c 4a fe ff ff 	jl	-438 <mon_backtrace+0x136>
e0100cfc:	e9 45 01 00 00 	jmp	325 <mon_backtrace+0x436>
e0100d01:	89 c2 	movl	%eax, %edx
e0100d03:	80 e2 07 	andb	$7, %dl
e0100d06:	80 c2 03 	addb	$3, %dl
e0100d09:	38 ca 	cmpb	%cl, %dl
e0100d0b:	0f 8c 4f fe ff ff 	jl	-433 <mon_backtrace+0x150>
e0100d11:	e9 38 01 00 00 	jmp	312 <mon_backtrace+0x43e>
e0100d16:	88 ce 	movb	%cl, %dh
e0100d18:	80 e6 07 	andb	$7, %dh
e0100d1b:	80 c6 03 	addb	$3, %dh
e0100d1e:	38 d6 	cmpb	%dl, %dh
e0100d20:	0f 8c 54 fe ff ff 	jl	-428 <mon_backtrace+0x16a>
e0100d26:	e9 2b 01 00 00 	jmp	299 <mon_backtrace+0x446>
e0100d2b:	8d 4c 24 70 	leal	112(%esp), %ecx
e0100d2f:	80 e1 07 	andb	$7, %cl
e0100d32:	80 c1 03 	addb	$3, %cl
e0100d35:	38 c1 	cmpb	%al, %cl
e0100d37:	0f 8c 8a fe ff ff 	jl	-374 <mon_backtrace+0x1b7>
e0100d3d:	e9 1c 01 00 00 	jmp	284 <mon_backtrace+0x44e>
e0100d42:	8b 44 24 4c 	movl	76(%esp), %eax
e0100d46:	24 07 	andb	$7, %al
e0100d48:	04 03 	addb	$3, %al
e0100d4a:	38 c8 	cmpb	%cl, %al
e0100d4c:	0f 8c 93 fe ff ff 	jl	-365 <mon_backtrace+0x1d5>
e0100d52:	e9 13 01 00 00 	jmp	275 <mon_backtrace+0x45a>
e0100d57:	8b 44 24 48 	movl	72(%esp), %eax
e0100d5b:	24 07 	andb	$7, %al
e0100d5d:	04 03 	addb	$3, %al
e0100d5f:	38 d0 	cmpb	%dl, %al
e0100d61:	0f 8c 98 fe ff ff 	jl	-360 <mon_backtrace+0x1ef>
e0100d67:	e9 0a 01 00 00 	jmp	266 <mon_backtrace+0x466>
e0100d6c:	89 ce 	movl	%ecx, %esi
e0100d6e:	8b 4c 24 44 	movl	68(%esp), %ecx
e0100d72:	88 cc 	movb	%cl, %ah
e0100d74:	89 f1 	movl	%esi, %ecx
e0100d76:	80 e4 07 	andb	$7, %ah
e0100d79:	80 c4 03 	addb	$3, %ah
e0100d7c:	38 c4 	cmpb	%al, %ah
e0100d7e:	0f 8c 95 fe ff ff 	jl	-363 <mon_backtrace+0x209>
e0100d84:	e9 f9 00 00 00 	jmp	249 <mon_backtrace+0x472>
e0100d89:	89 cf 	movl	%ecx, %edi
e0100d8b:	8b 4c 24 3c 	movl	60(%esp), %ecx
e0100d8f:	88 cc 	movb	%cl, %ah
e0100d91:	89 f9 	movl	%edi, %ecx
e0100d93:	80 e4 07 	andb	$7, %ah
e0100d96:	80 c4 03 	addb	$3, %ah
e0100d99:	38 c4 	cmpb	%al, %ah
e0100d9b:	0f 8c 8b fe ff ff 	jl	-373 <mon_backtrace+0x21c>
e0100da1:	e9 e8 00 00 00 	jmp	232 <mon_backtrace+0x47e>
e0100da6:	89 4c 24 3c 	movl	%ecx, 60(%esp)
e0100daa:	8b 4c 24 40 	movl	64(%esp), %ecx
e0100dae:	88 cc 	movb	%cl, %ah
e0100db0:	8b 4c 24 3c 	movl	60(%esp), %ecx
e0100db4:	80 e4 07 	andb	$7, %ah
e0100db7:	80 c4 03 	addb	$3, %ah
e0100dba:	38 c4 	cmpb	%al, %ah
e0100dbc:	0f 8c 86 fe ff ff 	jl	-378 <mon_backtrace+0x238>
e0100dc2:	e9 d3 00 00 00 	jmp	211 <mon_backtrace+0x48a>
e0100dc7:	89 d9 	movl	%ebx, %ecx
e0100dc9:	80 e1 07 	andb	$7, %cl
e0100dcc:	80 c1 03 	addb	$3, %cl
e0100dcf:	38 c1 	cmpb	%al, %cl
e0100dd1:	0f 8c b0 fe ff ff 	jl	-336 <mon_backtrace+0x277>
e0100dd7:	89 1c 24 	movl	%ebx, (%esp)
e0100dda:	e8 b1 79 00 00 	calll	31153 <__asan_report_load4>
e0100ddf:	8b 44 24 54 	movl	84(%esp), %eax
e0100de3:	66 c7 80 02 00 80 de f8 f8 	movw	$63736, -562036734(%eax)
e0100dec:	c6 80 04 00 80 de f8 	movb	$-8, -562036732(%eax)
e0100df3:	c7 44 24 60 0e 36 e0 45 	movl	$1172321806, 96(%esp)
e0100dfb:	c7 80 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%eax)
e0100e05:	c7 80 04 00 80 de 00 00 00 00 	movl	$0, -562036732(%eax)
e0100e0f:	66 c7 80 08 00 80 de 00 00 	movw	$0, -562036728(%eax)
e0100e18:	31 c0 	xorl	%eax, %eax
e0100e1a:	8d 65 f4 	leal	-12(%ebp), %esp
e0100e1d:	5e 	popl	%esi
e0100e1e:	5f 	popl	%edi
e0100e1f:	5b 	popl	%ebx
e0100e20:	5d 	popl	%ebp
e0100e21:	c3 	retl
e0100e22:	89 14 24 	movl	%edx, (%esp)
e0100e25:	e8 66 79 00 00 	calll	31078 <__asan_report_load4>
e0100e2a:	8b 44 24 3c 	movl	60(%esp), %eax
e0100e2e:	89 04 24 	movl	%eax, (%esp)
e0100e31:	e8 5a 79 00 00 	calll	31066 <__asan_report_load4>
e0100e36:	89 04 24 	movl	%eax, (%esp)
e0100e39:	e8 52 79 00 00 	calll	31058 <__asan_report_load4>
e0100e3e:	89 04 24 	movl	%eax, (%esp)
e0100e41:	e8 4a 79 00 00 	calll	31050 <__asan_report_load4>
e0100e46:	89 04 24 	movl	%eax, (%esp)
e0100e49:	e8 42 79 00 00 	calll	31042 <__asan_report_load4>
e0100e4e:	89 04 24 	movl	%eax, (%esp)
e0100e51:	e8 3a 79 00 00 	calll	31034 <__asan_report_load4>
e0100e56:	89 0c 24 	movl	%ecx, (%esp)
e0100e59:	e8 32 79 00 00 	calll	31026 <__asan_report_load4>
e0100e5e:	8d 44 24 70 	leal	112(%esp), %eax
e0100e62:	89 04 24 	movl	%eax, (%esp)
e0100e65:	e8 26 79 00 00 	calll	31014 <__asan_report_load4>
e0100e6a:	8b 44 24 4c 	movl	76(%esp), %eax
e0100e6e:	89 04 24 	movl	%eax, (%esp)
e0100e71:	e8 1a 79 00 00 	calll	31002 <__asan_report_load4>
e0100e76:	8b 44 24 48 	movl	72(%esp), %eax
e0100e7a:	89 04 24 	movl	%eax, (%esp)
e0100e7d:	e8 0e 79 00 00 	calll	30990 <__asan_report_load4>
e0100e82:	8b 44 24 44 	movl	68(%esp), %eax
e0100e86:	89 04 24 	movl	%eax, (%esp)
e0100e89:	e8 02 79 00 00 	calll	30978 <__asan_report_load4>
e0100e8e:	8b 44 24 3c 	movl	60(%esp), %eax
e0100e92:	89 04 24 	movl	%eax, (%esp)
e0100e95:	e8 f6 78 00 00 	calll	30966 <__asan_report_load4>
e0100e9a:	8b 44 24 40 	movl	64(%esp), %eax
e0100e9e:	89 04 24 	movl	%eax, (%esp)
e0100ea1:	e8 ea 78 00 00 	calll	30954 <__asan_report_load4>
e0100ea6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100eb0:	55 	pushl	%ebp
e0100eb1:	89 e5 	movl	%esp, %ebp
e0100eb3:	83 ec 08 	subl	$8, %esp
e0100eb6:	e8 c5 73 00 00 	calll	29637 <timer_start>
e0100ebb:	31 c0 	xorl	%eax, %eax
e0100ebd:	83 c4 08 	addl	$8, %esp
e0100ec0:	5d 	popl	%ebp
e0100ec1:	c3 	retl
e0100ec2:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100ecc:	0f 1f 40 00 	nopl	(%eax)
e0100ed0:	55 	pushl	%ebp
e0100ed1:	89 e5 	movl	%esp, %ebp
e0100ed3:	83 ec 08 	subl	$8, %esp
e0100ed6:	e8 c5 73 00 00 	calll	29637 <timer_stop>
e0100edb:	31 c0 	xorl	%eax, %eax
e0100edd:	83 c4 08 	addl	$8, %esp
e0100ee0:	5d 	popl	%ebp
e0100ee1:	c3 	retl
e0100ee2:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100eec:	0f 1f 40 00 	nopl	(%eax)
e0100ef0:	55 	pushl	%ebp
e0100ef1:	89 e5 	movl	%esp, %ebp
e0100ef3:	53 	pushl	%ebx
e0100ef4:	57 	pushl	%edi
e0100ef5:	56 	pushl	%esi
e0100ef6:	83 ec 1c 	subl	$28, %esp
e0100ef9:	b8 b4 2f 12 e0 	movl	$3759288244, %eax
e0100efe:	c1 e8 03 	shrl	$3, %eax
e0100f01:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0100f07:	84 c0 	testb	%al, %al
e0100f09:	0f 85 61 01 00 00 	jne	353 <mon_pplist+0x180>
e0100f0f:	83 3d b4 2f 12 e0 00 	cmpl	$0, -535679052
e0100f16:	0f 84 4a 01 00 00 	je	330 <mon_pplist+0x176>
e0100f1c:	bb 01 00 00 00 	movl	$1, %ebx
e0100f21:	bf bc 2f 12 e0 	movl	$3759288252, %edi
e0100f26:	c1 ef 03 	shrl	$3, %edi
e0100f29:	be b4 2f 12 e0 	movl	$3759288244, %esi
e0100f2e:	c1 ee 03 	shrl	$3, %esi
e0100f31:	89 7d ec 	movl	%edi, -20(%ebp)
e0100f34:	89 75 e8 	movl	%esi, -24(%ebp)
e0100f37:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0100f40:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0100f46:	84 c0 	testb	%al, %al
e0100f48:	0f 85 be 00 00 00 	jne	190 <mon_pplist+0x11c>
e0100f4e:	a1 bc 2f 12 e0 	movl	3759288252, %eax
e0100f53:	8d 4c d8 f8 	leal	-8(%eax,%ebx,8), %ecx
e0100f57:	e8 64 01 00 00 	calll	356 <is_page_free>
e0100f5c:	89 45 f0 	movl	%eax, -16(%ebp)
e0100f5f:	89 5c 24 04 	movl	%ebx, 4(%esp)
e0100f63:	c7 04 24 a0 ab 10 e0 	movl	$3759188896, (%esp)
e0100f6a:	e8 d1 2f 00 00 	calll	12241 <cprintf>
e0100f6f:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e0100f75:	84 c0 	testb	%al, %al
e0100f77:	0f 85 a4 00 00 00 	jne	164 <mon_pplist+0x131>
e0100f7d:	8b 35 b4 2f 12 e0 	movl	-535679052, %esi
e0100f83:	39 f3 	cmpl	%esi, %ebx
e0100f85:	73 50 	jae	80 <mon_pplist+0xe7>
e0100f87:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0100f8d:	84 c0 	testb	%al, %al
e0100f8f:	0f 85 b2 00 00 00 	jne	178 <mon_pplist+0x157>
e0100f95:	a1 bc 2f 12 e0 	movl	3759288252, %eax
e0100f9a:	8d 3c d8 	leal	(%eax,%ebx,8), %edi
e0100f9d:	89 f9 	movl	%edi, %ecx
e0100f9f:	e8 1c 01 00 00 	calll	284 <is_page_free>
e0100fa4:	3b 45 f0 	cmpl	-16(%ebp), %eax
e0100fa7:	75 2b 	jne	43 <mon_pplist+0xe4>
e0100fa9:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0100fb0:	89 f9 	movl	%edi, %ecx
e0100fb2:	e8 09 01 00 00 	calll	265 <is_page_free>
e0100fb7:	3b 45 f0 	cmpl	-16(%ebp), %eax
e0100fba:	75 08 	jne	8 <mon_pplist+0xd4>
e0100fbc:	43 	incl	%ebx
e0100fbd:	83 c7 08 	addl	$8, %edi
e0100fc0:	39 f3 	cmpl	%esi, %ebx
e0100fc2:	72 ec 	jb	-20 <mon_pplist+0xc0>
e0100fc4:	89 5c 24 04 	movl	%ebx, 4(%esp)
e0100fc8:	c7 04 24 e0 ab 10 e0 	movl	$3759188960, (%esp)
e0100fcf:	e8 6c 2f 00 00 	calll	12140 <cprintf>
e0100fd4:	8b 7d ec 	movl	-20(%ebp), %edi
e0100fd7:	83 7d f0 00 	cmpl	$0, -16(%ebp)
e0100fdb:	b8 60 ac 10 e0 	movl	$3759189088, %eax
e0100fe0:	b9 20 ac 10 e0 	movl	$3759189024, %ecx
e0100fe5:	0f 44 c1 	cmovel	%ecx, %eax
e0100fe8:	89 04 24 	movl	%eax, (%esp)
e0100feb:	e8 50 2f 00 00 	calll	12112 <cprintf>
e0100ff0:	8b 75 e8 	movl	-24(%ebp), %esi
e0100ff3:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e0100ff9:	84 c0 	testb	%al, %al
e0100ffb:	75 39 	jne	57 <mon_pplist+0x146>
e0100ffd:	43 	incl	%ebx
e0100ffe:	3b 1d b4 2f 12 e0 	cmpl	-535679052, %ebx
e0101004:	0f 86 36 ff ff ff 	jbe	-202 <mon_pplist+0x50>
e010100a:	eb 5a 	jmp	90 <mon_pplist+0x176>
e010100c:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e0101011:	80 e1 07 	andb	$7, %cl
e0101014:	80 c1 03 	addb	$3, %cl
e0101017:	38 c1 	cmpb	%al, %cl
e0101019:	0f 8c 2f ff ff ff 	jl	-209 <mon_pplist+0x5e>
e010101f:	eb 6e 	jmp	110 <mon_pplist+0x19f>
e0101021:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101026:	80 e1 07 	andb	$7, %cl
e0101029:	80 c1 03 	addb	$3, %cl
e010102c:	38 c1 	cmpb	%al, %cl
e010102e:	0f 8c 49 ff ff ff 	jl	-183 <mon_pplist+0x8d>
e0101034:	eb 65 	jmp	101 <mon_pplist+0x1ab>
e0101036:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e010103b:	80 e1 07 	andb	$7, %cl
e010103e:	80 c1 03 	addb	$3, %cl
e0101041:	38 c1 	cmpb	%al, %cl
e0101043:	7c b8 	jl	-72 <mon_pplist+0x10d>
e0101045:	eb 60 	jmp	96 <mon_pplist+0x1b7>
e0101047:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e010104c:	80 e1 07 	andb	$7, %cl
e010104f:	80 c1 03 	addb	$3, %cl
e0101052:	38 c1 	cmpb	%al, %cl
e0101054:	0f 8c 3b ff ff ff 	jl	-197 <mon_pplist+0xa5>
e010105a:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0101061:	e8 2a 77 00 00 	calll	30506 <__asan_report_load4>
e0101066:	31 c0 	xorl	%eax, %eax
e0101068:	83 c4 1c 	addl	$28, %esp
e010106b:	5e 	popl	%esi
e010106c:	5f 	popl	%edi
e010106d:	5b 	popl	%ebx
e010106e:	5d 	popl	%ebp
e010106f:	c3 	retl
e0101070:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101075:	80 e1 07 	andb	$7, %cl
e0101078:	80 c1 03 	addb	$3, %cl
e010107b:	38 c1 	cmpb	%al, %cl
e010107d:	0f 8c 8c fe ff ff 	jl	-372 <mon_pplist+0x1f>
e0101083:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e010108a:	e8 01 77 00 00 	calll	30465 <__asan_report_load4>
e010108f:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0101096:	e8 f5 76 00 00 	calll	30453 <__asan_report_load4>
e010109b:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e01010a2:	e8 e9 76 00 00 	calll	30441 <__asan_report_load4>
e01010a7:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e01010ae:	e8 dd 76 00 00 	calll	30429 <__asan_report_load4>
e01010b3:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01010bd:	0f 1f 00 	nopl	(%eax)
e01010c0:	55 	pushl	%ebp
e01010c1:	89 e5 	movl	%esp, %ebp
e01010c3:	83 ec 08 	subl	$8, %esp
e01010c6:	89 c8 	movl	%ecx, %eax
e01010c8:	c1 e8 03 	shrl	$3, %eax
e01010cb:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01010d1:	84 c0 	testb	%al, %al
e01010d3:	75 2b 	jne	43 <is_page_free+0x40>
e01010d5:	31 c0 	xorl	%eax, %eax
e01010d7:	83 39 00 	cmpl	$0, (%ecx)
e01010da:	75 1f 	jne	31 <is_page_free+0x3b>
e01010dc:	b8 b8 2f 12 e0 	movl	$3759288248, %eax
e01010e1:	c1 e8 03 	shrl	$3, %eax
e01010e4:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01010ea:	84 c0 	testb	%al, %al
e01010ec:	75 26 	jne	38 <is_page_free+0x54>
e01010ee:	31 c0 	xorl	%eax, %eax
e01010f0:	39 0d b8 2f 12 e0 	cmpl	%ecx, -535679048
e01010f6:	0f 95 c0 	setne	%al
e01010f9:	f7 d8 	negl	%eax
e01010fb:	83 c4 08 	addl	$8, %esp
e01010fe:	5d 	popl	%ebp
e01010ff:	c3 	retl
e0101100:	89 ca 	movl	%ecx, %edx
e0101102:	80 e2 07 	andb	$7, %dl
e0101105:	80 c2 03 	addb	$3, %dl
e0101108:	38 c2 	cmpb	%al, %dl
e010110a:	7c c9 	jl	-55 <is_page_free+0x15>
e010110c:	89 0c 24 	movl	%ecx, (%esp)
e010110f:	e8 7c 76 00 00 	calll	30332 <__asan_report_load4>
e0101114:	ba b8 2f 12 e0 	movl	$3759288248, %edx
e0101119:	80 e2 07 	andb	$7, %dl
e010111c:	80 c2 03 	addb	$3, %dl
e010111f:	38 c2 	cmpb	%al, %dl
e0101121:	7c cb 	jl	-53 <is_page_free+0x2e>
e0101123:	c7 04 24 b8 2f 12 e0 	movl	$3759288248, (%esp)
e010112a:	e8 61 76 00 00 	calll	30305 <__asan_report_load4>
e010112f:	90 	nop
e0101130:	55 	pushl	%ebp
e0101131:	89 e5 	movl	%esp, %ebp
e0101133:	56 	pushl	%esi
e0101134:	50 	pushl	%eax
e0101135:	8b 75 08 	movl	8(%ebp), %esi
e0101138:	c7 04 24 a0 ac 10 e0 	movl	$3759189152, (%esp)
e010113f:	e8 fc 2d 00 00 	calll	11772 <cprintf>
e0101144:	c7 04 24 00 ad 10 e0 	movl	$3759189248, (%esp)
e010114b:	e8 f0 2d 00 00 	calll	11760 <cprintf>
e0101150:	c7 04 24 60 ad 10 e0 	movl	$3759189344, (%esp)
e0101157:	e8 54 62 00 00 	calll	25172 <readline>
e010115c:	85 c0 	testl	%eax, %eax
e010115e:	74 f0 	je	-16 <monitor+0x20>
e0101160:	89 c1 	movl	%eax, %ecx
e0101162:	89 f2 	movl	%esi, %edx
e0101164:	e8 17 00 00 00 	calll	23 <runcmd>
e0101169:	85 c0 	testl	%eax, %eax
e010116b:	79 e3 	jns	-29 <monitor+0x20>
e010116d:	83 c4 04 	addl	$4, %esp
e0101170:	5e 	popl	%esi
e0101171:	5d 	popl	%ebp
e0101172:	c3 	retl
e0101173:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010117d:	0f 1f 00 	nopl	(%eax)
e0101180:	55 	pushl	%ebp
e0101181:	89 e5 	movl	%esp, %ebp
e0101183:	53 	pushl	%ebx
e0101184:	57 	pushl	%edi
e0101185:	56 	pushl	%esi
e0101186:	83 e4 e0 	andl	$-32, %esp
e0101189:	83 ec 60 	subl	$96, %esp
e010118c:	89 e6 	movl	%esp, %esi
e010118e:	89 56 38 	movl	%edx, 56(%esi)
e0101191:	89 4e 34 	movl	%ecx, 52(%esi)
e0101194:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e010119b:	74 0f 	je	15 <runcmd+0x2c>
e010119d:	83 ec 0c 	subl	$12, %esp
e01011a0:	6a 70 	pushl	$112
e01011a2:	e8 39 78 00 00 	calll	30777 <__asan_stack_malloc_1>
e01011a7:	83 c4 10 	addl	$16, %esp
e01011aa:	eb 02 	jmp	2 <runcmd+0x2e>
e01011ac:	31 c0 	xorl	%eax, %eax
e01011ae:	85 c0 	testl	%eax, %eax
e01011b0:	89 46 28 	movl	%eax, 40(%esi)
e01011b3:	89 c1 	movl	%eax, %ecx
e01011b5:	75 0a 	jne	10 <runcmd+0x41>
e01011b7:	89 e1 	movl	%esp, %ecx
e01011b9:	83 c1 90 	addl	$-112, %ecx
e01011bc:	83 e1 e0 	andl	$-32, %ecx
e01011bf:	89 cc 	movl	%ecx, %esp
e01011c1:	89 4e 3c 	movl	%ecx, 60(%esi)
e01011c4:	8d 59 10 	leal	16(%ecx), %ebx
e01011c7:	c7 01 b3 8a b5 41 	movl	$1102416563, (%ecx)
e01011cd:	c7 41 04 db a1 10 e0 	movl	$3759186395, 4(%ecx)
e01011d4:	c7 41 08 80 11 10 e0 	movl	$3759149440, 8(%ecx)
e01011db:	89 ca 	movl	%ecx, %edx
e01011dd:	c1 ea 03 	shrl	$3, %edx
e01011e0:	c7 82 00 00 80 de f1 f1 f8 f8 	movl	$4177064433, -562036736(%edx)
e01011ea:	c7 82 04 00 80 de f8 f8 f8 f8 	movl	$4177066232, -562036732(%edx)
e01011f4:	c7 82 08 00 80 de f8 f8 f3 f3 	movl	$4092852472, -562036728(%edx)
e01011fe:	66 c7 82 0c 00 80 de f3 f3 	movw	$62451, -562036724(%edx)
e0101207:	c7 82 02 00 80 de 00 00 00 00 	movl	$0, -562036734(%edx)
e0101211:	c7 82 06 00 80 de 00 00 00 00 	movl	$0, -562036730(%edx)
e010121b:	89 d8 	movl	%ebx, %eax
e010121d:	c1 e8 03 	shrl	$3, %eax
e0101220:	89 46 30 	movl	%eax, 48(%esi)
e0101223:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0101229:	84 c0 	testb	%al, %al
e010122b:	89 56 1c 	movl	%edx, 28(%esi)
e010122e:	0f 85 cd 03 00 00 	jne	973 <runcmd+0x481>
e0101234:	89 df 	movl	%ebx, %edi
e0101236:	c7 03 00 00 00 00 	movl	$0, (%ebx)
e010123c:	8b 5e 34 	movl	52(%esi), %ebx
e010123f:	89 d8 	movl	%ebx, %eax
e0101241:	c1 e8 03 	shrl	$3, %eax
e0101244:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010124a:	84 c0 	testb	%al, %al
e010124c:	0f 85 d2 03 00 00 	jne	978 <runcmd+0x4a4>
e0101252:	8a 03 	movb	(%ebx), %al
e0101254:	84 c0 	testb	%al, %al
e0101256:	0f 84 f0 01 00 00 	je	496 <runcmd+0x2cc>
e010125c:	89 4e 2c 	movl	%ecx, 44(%esi)
e010125f:	c7 46 24 00 00 00 00 	movl	$0, 36(%esi)
e0101266:	8b 56 34 	movl	52(%esi), %edx
e0101269:	89 fb 	movl	%edi, %ebx
e010126b:	89 7e 20 	movl	%edi, 32(%esi)
e010126e:	89 d3 	movl	%edx, %ebx
e0101270:	8d 7a 01 	leal	1(%edx), %edi
e0101273:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010127d:	0f 1f 00 	nopl	(%eax)
e0101280:	83 ec 08 	subl	$8, %esp
e0101283:	0f be c0 	movsbl	%al, %eax
e0101286:	50 	pushl	%eax
e0101287:	68 c0 b0 10 e0 	pushl	$3759190208
e010128c:	e8 0f 67 00 00 	calll	26383 <strchr>
e0101291:	83 c4 10 	addl	$16, %esp
e0101294:	85 c0 	testl	%eax, %eax
e0101296:	74 58 	je	88 <runcmd+0x170>
e0101298:	89 d8 	movl	%ebx, %eax
e010129a:	c1 e8 03 	shrl	$3, %eax
e010129d:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01012a4:	84 c0 	testb	%al, %al
e01012a6:	75 21 	jne	33 <runcmd+0x149>
e01012a8:	c6 03 00 	movb	$0, (%ebx)
e01012ab:	43 	incl	%ebx
e01012ac:	89 d8 	movl	%ebx, %eax
e01012ae:	c1 e8 03 	shrl	$3, %eax
e01012b1:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01012b8:	84 c0 	testb	%al, %al
e01012ba:	75 1b 	jne	27 <runcmd+0x157>
e01012bc:	0f b6 03 	movzbl	(%ebx), %eax
e01012bf:	47 	incl	%edi
e01012c0:	84 c0 	testb	%al, %al
e01012c2:	75 bc 	jne	-68 <runcmd+0x100>
e01012c4:	e9 4d 01 00 00 	jmp	333 <runcmd+0x296>
e01012c9:	89 d9 	movl	%ebx, %ecx
e01012cb:	80 e1 07 	andb	$7, %cl
e01012ce:	38 c1 	cmpb	%al, %cl
e01012d0:	7c d6 	jl	-42 <runcmd+0x128>
e01012d2:	e9 27 04 00 00 	jmp	1063 <runcmd+0x57e>
e01012d7:	89 d9 	movl	%ebx, %ecx
e01012d9:	80 e1 07 	andb	$7, %cl
e01012dc:	38 c1 	cmpb	%al, %cl
e01012de:	7c dc 	jl	-36 <runcmd+0x13c>
e01012e0:	e9 25 04 00 00 	jmp	1061 <runcmd+0x58a>
e01012e5:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01012ef:	90 	nop
e01012f0:	89 d8 	movl	%ebx, %eax
e01012f2:	c1 e8 03 	shrl	$3, %eax
e01012f5:	8a 88 00 00 80 de 	movb	-562036736(%eax), %cl
e01012fb:	84 c9 	testb	%cl, %cl
e01012fd:	0f 85 c5 00 00 00 	jne	197 <runcmd+0x248>
e0101303:	80 3b 00 	cmpb	$0, (%ebx)
e0101306:	0f 84 0a 01 00 00 	je	266 <runcmd+0x296>
e010130c:	8b 56 24 	movl	36(%esi), %edx
e010130f:	83 fa 0f 	cmpl	$15, %edx
e0101312:	0f 84 c7 02 00 00 	je	711 <runcmd+0x45f>
e0101318:	8b 4e 20 	movl	32(%esi), %ecx
e010131b:	8d 0c 91 	leal	(%ecx,%edx,4), %ecx
e010131e:	89 ca 	movl	%ecx, %edx
e0101320:	c1 ea 03 	shrl	$3, %edx
e0101323:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0101329:	84 d2 	testb	%dl, %dl
e010132b:	0f 85 a9 00 00 00 	jne	169 <runcmd+0x25a>
e0101331:	89 19 	movl	%ebx, (%ecx)
e0101333:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0101339:	84 c0 	testb	%al, %al
e010133b:	0f 85 ae 00 00 00 	jne	174 <runcmd+0x26f>
e0101341:	ff 46 24 	incl	36(%esi)
e0101344:	8a 03 	movb	(%ebx), %al
e0101346:	84 c0 	testb	%al, %al
e0101348:	8b 5e 20 	movl	32(%esi), %ebx
e010134b:	0f 84 1e 01 00 00 	je	286 <runcmd+0x2ef>
e0101351:	89 fa 	movl	%edi, %edx
e0101353:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010135d:	0f 1f 00 	nopl	(%eax)
e0101360:	89 d7 	movl	%edx, %edi
e0101362:	83 ec 08 	subl	$8, %esp
e0101365:	0f be c0 	movsbl	%al, %eax
e0101368:	50 	pushl	%eax
e0101369:	68 c0 b0 10 e0 	pushl	$3759190208
e010136e:	e8 2d 66 00 00 	calll	26157 <strchr>
e0101373:	83 c4 10 	addl	$16, %esp
e0101376:	85 c0 	testl	%eax, %eax
e0101378:	75 2d 	jne	45 <runcmd+0x227>
e010137a:	89 fa 	movl	%edi, %edx
e010137c:	89 f8 	movl	%edi, %eax
e010137e:	c1 e8 03 	shrl	$3, %eax
e0101381:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0101388:	84 c0 	testb	%al, %al
e010138a:	75 0d 	jne	13 <runcmd+0x219>
e010138c:	0f b6 02 	movzbl	(%edx), %eax
e010138f:	42 	incl	%edx
e0101390:	84 c0 	testb	%al, %al
e0101392:	75 cc 	jne	-52 <runcmd+0x1e0>
e0101394:	e9 d6 00 00 00 	jmp	214 <runcmd+0x2ef>
e0101399:	89 d1 	movl	%edx, %ecx
e010139b:	80 e1 07 	andb	$7, %cl
e010139e:	38 c1 	cmpb	%al, %cl
e01013a0:	7c ea 	jl	-22 <runcmd+0x20c>
e01013a2:	e9 6f 03 00 00 	jmp	879 <runcmd+0x596>
e01013a7:	89 fa 	movl	%edi, %edx
e01013a9:	4a 	decl	%edx
e01013aa:	89 d0 	movl	%edx, %eax
e01013ac:	c1 e8 03 	shrl	$3, %eax
e01013af:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01013b5:	84 c0 	testb	%al, %al
e01013b7:	75 48 	jne	72 <runcmd+0x281>
e01013b9:	8a 02 	movb	(%edx), %al
e01013bb:	84 c0 	testb	%al, %al
e01013bd:	0f 85 ab fe ff ff 	jne	-341 <runcmd+0xee>
e01013c3:	e9 a7 00 00 00 	jmp	167 <runcmd+0x2ef>
e01013c8:	89 da 	movl	%ebx, %edx
e01013ca:	80 e2 07 	andb	$7, %dl
e01013cd:	38 ca 	cmpb	%cl, %dl
e01013cf:	0f 8c 2e ff ff ff 	jl	-210 <runcmd+0x183>
e01013d5:	e9 18 03 00 00 	jmp	792 <runcmd+0x572>
e01013da:	88 ce 	movb	%cl, %dh
e01013dc:	80 e6 07 	andb	$7, %dh
e01013df:	80 c6 03 	addb	$3, %dh
e01013e2:	38 d6 	cmpb	%dl, %dh
e01013e4:	0f 8c 47 ff ff ff 	jl	-185 <runcmd+0x1b1>
e01013ea:	e9 eb 02 00 00 	jmp	747 <runcmd+0x55a>
e01013ef:	89 d9 	movl	%ebx, %ecx
e01013f1:	80 e1 07 	andb	$7, %cl
e01013f4:	38 c1 	cmpb	%al, %cl
e01013f6:	0f 8c 45 ff ff ff 	jl	-187 <runcmd+0x1c1>
e01013fc:	e9 e5 02 00 00 	jmp	741 <runcmd+0x566>
e0101401:	89 d1 	movl	%edx, %ecx
e0101403:	80 e1 07 	andb	$7, %cl
e0101406:	38 c1 	cmpb	%al, %cl
e0101408:	7c af 	jl	-81 <runcmd+0x239>
e010140a:	83 ec 0c 	subl	$12, %esp
e010140d:	52 	pushl	%edx
e010140e:	e8 dd 72 00 00 	calll	29405 <__asan_report_load1>
e0101413:	83 c4 10 	addl	$16, %esp
e0101416:	8b 5e 20 	movl	32(%esi), %ebx
e0101419:	8b 56 24 	movl	36(%esi), %edx
e010141c:	8d 04 93 	leal	(%ebx,%edx,4), %eax
e010141f:	89 c1 	movl	%eax, %ecx
e0101421:	c1 e9 03 	shrl	$3, %ecx
e0101424:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010142a:	84 c9 	testb	%cl, %cl
e010142c:	0f 85 2e 02 00 00 	jne	558 <runcmd+0x4e0>
e0101432:	c7 00 00 00 00 00 	movl	$0, (%eax)
e0101438:	85 d2 	testl	%edx, %edx
e010143a:	8b 56 1c 	movl	28(%esi), %edx
e010143d:	75 4f 	jne	79 <runcmd+0x30e>
e010143f:	31 c0 	xorl	%eax, %eax
e0101441:	8b 4e 2c 	movl	44(%esi), %ecx
e0101444:	8b 7e 28 	movl	40(%esi), %edi
e0101447:	e9 16 01 00 00 	jmp	278 <runcmd+0x3e2>
e010144c:	8b 46 30 	movl	48(%esi), %eax
e010144f:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0101455:	84 c0 	testb	%al, %al
e0101457:	89 fb 	movl	%edi, %ebx
e0101459:	0f 85 20 02 00 00 	jne	544 <runcmd+0x4ff>
e010145f:	c7 03 00 00 00 00 	movl	$0, (%ebx)
e0101465:	31 c0 	xorl	%eax, %eax
e0101467:	8b 7e 28 	movl	40(%esi), %edi
e010146a:	e9 f3 00 00 00 	jmp	243 <runcmd+0x3e2>
e010146f:	8b 46 24 	movl	36(%esi), %eax
e0101472:	8d 04 83 	leal	(%ebx,%eax,4), %eax
e0101475:	89 c1 	movl	%eax, %ecx
e0101477:	c1 e9 03 	shrl	$3, %ecx
e010147a:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101480:	84 c9 	testb	%cl, %cl
e0101482:	0f 85 36 02 00 00 	jne	566 <runcmd+0x53e>
e0101488:	c7 00 00 00 00 00 	movl	$0, (%eax)
e010148e:	8b 46 30 	movl	48(%esi), %eax
e0101491:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0101497:	84 c0 	testb	%al, %al
e0101499:	0f 85 a5 01 00 00 	jne	421 <runcmd+0x4c4>
e010149f:	8b 03 	movl	(%ebx), %eax
e01014a1:	31 ff 	xorl	%edi, %edi
e01014a3:	bb c8 a7 10 e0 	movl	$3759187912, %ebx
e01014a8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e01014b0:	8d 4b f8 	leal	-8(%ebx), %ecx
e01014b3:	89 ca 	movl	%ecx, %edx
e01014b5:	c1 ea 03 	shrl	$3, %edx
e01014b8:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e01014bf:	84 d2 	testb	%dl, %dl
e01014c1:	75 30 	jne	48 <runcmd+0x373>
e01014c3:	83 ec 08 	subl	$8, %esp
e01014c6:	ff 31 	pushl	(%ecx)
e01014c8:	50 	pushl	%eax
e01014c9:	e8 42 63 00 00 	calll	25410 <strcmp>
e01014ce:	83 c4 10 	addl	$16, %esp
e01014d1:	85 c0 	testl	%eax, %eax
e01014d3:	74 4a 	je	74 <runcmd+0x39f>
e01014d5:	8b 46 30 	movl	48(%esi), %eax
e01014d8:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01014df:	84 c0 	testb	%al, %al
e01014e1:	75 21 	jne	33 <runcmd+0x384>
e01014e3:	47 	incl	%edi
e01014e4:	8b 46 20 	movl	32(%esi), %eax
e01014e7:	8b 00 	movl	(%eax), %eax
e01014e9:	83 c3 0c 	addl	$12, %ebx
e01014ec:	83 ff 06 	cmpl	$6, %edi
e01014ef:	72 bf 	jb	-65 <runcmd+0x330>
e01014f1:	eb 53 	jmp	83 <runcmd+0x3c6>
e01014f3:	88 ce 	movb	%cl, %dh
e01014f5:	80 e6 07 	andb	$7, %dh
e01014f8:	80 c6 03 	addb	$3, %dh
e01014fb:	38 d6 	cmpb	%dl, %dh
e01014fd:	7c c4 	jl	-60 <runcmd+0x343>
e01014ff:	e9 1e 02 00 00 	jmp	542 <runcmd+0x5a2>
e0101504:	8b 4e 20 	movl	32(%esi), %ecx
e0101507:	80 e1 07 	andb	$7, %cl
e010150a:	80 c1 03 	addb	$3, %cl
e010150d:	38 c1 	cmpb	%al, %cl
e010150f:	7c d2 	jl	-46 <runcmd+0x363>
e0101511:	83 ec 0c 	subl	$12, %esp
e0101514:	ff 76 20 	pushl	32(%esi)
e0101517:	e8 74 72 00 00 	calll	29300 <__asan_report_load4>
e010151c:	83 c4 10 	addl	$16, %esp
e010151f:	89 d8 	movl	%ebx, %eax
e0101521:	c1 e8 03 	shrl	$3, %eax
e0101524:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010152a:	84 c0 	testb	%al, %al
e010152c:	8b 56 24 	movl	36(%esi), %edx
e010152f:	0f 85 6d 01 00 00 	jne	365 <runcmd+0x522>
e0101535:	83 ec 04 	subl	$4, %esp
e0101538:	ff 76 38 	pushl	56(%esi)
e010153b:	ff 76 20 	pushl	32(%esi)
e010153e:	52 	pushl	%edx
e010153f:	ff 13 	calll	*(%ebx)
e0101541:	83 c4 10 	addl	$16, %esp
e0101544:	eb 13 	jmp	19 <runcmd+0x3d9>
e0101546:	83 ec 08 	subl	$8, %esp
e0101549:	50 	pushl	%eax
e010154a:	68 40 b1 10 e0 	pushl	$3759190336
e010154f:	e8 ec 29 00 00 	calll	10732 <cprintf>
e0101554:	83 c4 10 	addl	$16, %esp
e0101557:	31 c0 	xorl	%eax, %eax
e0101559:	8b 7e 28 	movl	40(%esi), %edi
e010155c:	8b 4e 2c 	movl	44(%esi), %ecx
e010155f:	8b 56 1c 	movl	28(%esi), %edx
e0101562:	c7 82 02 00 80 de f8 f8 f8 f8 	movl	$4177066232, -562036734(%edx)
e010156c:	c7 82 06 00 80 de f8 f8 f8 f8 	movl	$4177066232, -562036730(%edx)
e0101576:	c7 01 0e 36 e0 45 	movl	$1172321806, (%ecx)
e010157c:	85 ff 	testl	%edi, %edi
e010157e:	74 30 	je	48 <runcmd+0x430>
e0101580:	c7 82 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edx)
e010158a:	c7 82 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edx)
e0101594:	c7 82 08 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036728(%edx)
e010159e:	c7 82 0c 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036724(%edx)
e01015a8:	8b 4f 7c 	movl	124(%edi), %ecx
e01015ab:	c6 01 00 	movb	$0, (%ecx)
e01015ae:	eb 27 	jmp	39 <runcmd+0x457>
e01015b0:	c7 82 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edx)
e01015ba:	c7 82 04 00 80 de 00 00 00 00 	movl	$0, -562036732(%edx)
e01015c4:	c7 82 08 00 80 de 00 00 00 00 	movl	$0, -562036728(%edx)
e01015ce:	66 c7 82 0c 00 80 de 00 00 	movw	$0, -562036724(%edx)
e01015d7:	8d 65 f4 	leal	-12(%ebp), %esp
e01015da:	5e 	popl	%esi
e01015db:	5f 	popl	%edi
e01015dc:	5b 	popl	%ebx
e01015dd:	5d 	popl	%ebp
e01015de:	c3 	retl
e01015df:	83 ec 08 	subl	$8, %esp
e01015e2:	6a 10 	pushl	$16
e01015e4:	68 00 b1 10 e0 	pushl	$3759190272
e01015e9:	e8 52 29 00 00 	calll	10578 <cprintf>
e01015ee:	83 c4 10 	addl	$16, %esp
e01015f1:	31 c0 	xorl	%eax, %eax
e01015f3:	8b 4e 2c 	movl	44(%esi), %ecx
e01015f6:	8b 56 1c 	movl	28(%esi), %edx
e01015f9:	8b 7e 28 	movl	40(%esi), %edi
e01015fc:	e9 61 ff ff ff 	jmp	-159 <runcmd+0x3e2>
e0101601:	89 ca 	movl	%ecx, %edx
e0101603:	89 d9 	movl	%ebx, %ecx
e0101605:	80 e1 07 	andb	$7, %cl
e0101608:	80 c1 03 	addb	$3, %cl
e010160b:	38 c1 	cmpb	%al, %cl
e010160d:	89 d1 	movl	%edx, %ecx
e010160f:	8b 56 1c 	movl	28(%esi), %edx
e0101612:	0f 8c 1c fc ff ff 	jl	-996 <runcmd+0xb4>
e0101618:	83 ec 0c 	subl	$12, %esp
e010161b:	53 	pushl	%ebx
e010161c:	e8 8f 71 00 00 	calll	29071 <__asan_report_store4>
e0101621:	83 c4 10 	addl	$16, %esp
e0101624:	89 ca 	movl	%ecx, %edx
e0101626:	89 d9 	movl	%ebx, %ecx
e0101628:	80 e1 07 	andb	$7, %cl
e010162b:	38 c1 	cmpb	%al, %cl
e010162d:	89 d1 	movl	%edx, %ecx
e010162f:	8b 56 1c 	movl	28(%esi), %edx
e0101632:	0f 8c 1a fc ff ff 	jl	-998 <runcmd+0xd2>
e0101638:	83 ec 0c 	subl	$12, %esp
e010163b:	53 	pushl	%ebx
e010163c:	e8 af 70 00 00 	calll	28847 <__asan_report_load1>
e0101641:	83 c4 10 	addl	$16, %esp
e0101644:	89 d9 	movl	%ebx, %ecx
e0101646:	80 e1 07 	andb	$7, %cl
e0101649:	80 c1 03 	addb	$3, %cl
e010164c:	38 c1 	cmpb	%al, %cl
e010164e:	0f 8c 4b fe ff ff 	jl	-437 <runcmd+0x31f>
e0101654:	83 ec 0c 	subl	$12, %esp
e0101657:	53 	pushl	%ebx
e0101658:	e8 33 71 00 00 	calll	28979 <__asan_report_load4>
e010165d:	83 c4 10 	addl	$16, %esp
e0101660:	89 c2 	movl	%eax, %edx
e0101662:	80 e2 07 	andb	$7, %dl
e0101665:	80 c2 03 	addb	$3, %dl
e0101668:	38 ca 	cmpb	%cl, %dl
e010166a:	8b 56 24 	movl	36(%esi), %edx
e010166d:	0f 8c bf fd ff ff 	jl	-577 <runcmd+0x2b2>
e0101673:	83 ec 0c 	subl	$12, %esp
e0101676:	50 	pushl	%eax
e0101677:	e8 34 71 00 00 	calll	28980 <__asan_report_store4>
e010167c:	83 c4 10 	addl	$16, %esp
e010167f:	89 ca 	movl	%ecx, %edx
e0101681:	89 d9 	movl	%ebx, %ecx
e0101683:	80 e1 07 	andb	$7, %cl
e0101686:	80 c1 03 	addb	$3, %cl
e0101689:	38 c1 	cmpb	%al, %cl
e010168b:	89 d1 	movl	%edx, %ecx
e010168d:	8b 56 1c 	movl	28(%esi), %edx
e0101690:	0f 8c c9 fd ff ff 	jl	-567 <runcmd+0x2df>
e0101696:	83 ec 0c 	subl	$12, %esp
e0101699:	53 	pushl	%ebx
e010169a:	e8 11 71 00 00 	calll	28945 <__asan_report_store4>
e010169f:	83 c4 10 	addl	$16, %esp
e01016a2:	89 d9 	movl	%ebx, %ecx
e01016a4:	80 e1 07 	andb	$7, %cl
e01016a7:	80 c1 03 	addb	$3, %cl
e01016aa:	38 c1 	cmpb	%al, %cl
e01016ac:	0f 8c 83 fe ff ff 	jl	-381 <runcmd+0x3b5>
e01016b2:	83 ec 0c 	subl	$12, %esp
e01016b5:	53 	pushl	%ebx
e01016b6:	e8 d5 70 00 00 	calll	28885 <__asan_report_load4>
e01016bb:	83 c4 10 	addl	$16, %esp
e01016be:	89 c2 	movl	%eax, %edx
e01016c0:	80 e2 07 	andb	$7, %dl
e01016c3:	80 c2 03 	addb	$3, %dl
e01016c6:	38 ca 	cmpb	%cl, %dl
e01016c8:	0f 8c ba fd ff ff 	jl	-582 <runcmd+0x308>
e01016ce:	83 ec 0c 	subl	$12, %esp
e01016d1:	50 	pushl	%eax
e01016d2:	e8 d9 70 00 00 	calll	28889 <__asan_report_store4>
e01016d7:	83 c4 10 	addl	$16, %esp
e01016da:	83 ec 0c 	subl	$12, %esp
e01016dd:	51 	pushl	%ecx
e01016de:	e8 cd 70 00 00 	calll	28877 <__asan_report_store4>
e01016e3:	83 c4 10 	addl	$16, %esp
e01016e6:	83 ec 0c 	subl	$12, %esp
e01016e9:	53 	pushl	%ebx
e01016ea:	e8 01 70 00 00 	calll	28673 <__asan_report_load1>
e01016ef:	83 c4 10 	addl	$16, %esp
e01016f2:	83 ec 0c 	subl	$12, %esp
e01016f5:	53 	pushl	%ebx
e01016f6:	e8 f5 6f 00 00 	calll	28661 <__asan_report_load1>
e01016fb:	83 c4 10 	addl	$16, %esp
e01016fe:	83 ec 0c 	subl	$12, %esp
e0101701:	53 	pushl	%ebx
e0101702:	e8 29 70 00 00 	calll	28713 <__asan_report_store1>
e0101707:	83 c4 10 	addl	$16, %esp
e010170a:	83 ec 0c 	subl	$12, %esp
e010170d:	53 	pushl	%ebx
e010170e:	e8 dd 6f 00 00 	calll	28637 <__asan_report_load1>
e0101713:	83 c4 10 	addl	$16, %esp
e0101716:	83 ec 0c 	subl	$12, %esp
e0101719:	52 	pushl	%edx
e010171a:	e8 d1 6f 00 00 	calll	28625 <__asan_report_load1>
e010171f:	83 c4 10 	addl	$16, %esp
e0101722:	83 ec 0c 	subl	$12, %esp
e0101725:	51 	pushl	%ecx
e0101726:	e8 65 70 00 00 	calll	28773 <__asan_report_load4>
e010172b:	83 c4 10 	addl	$16, %esp
e010172e:	66 90 	nop
e0101730:	83 ec 0c 	subl	$12, %esp
e0101733:	e8 c8 75 00 00 	calll	30152 <__asan_init>
e0101738:	e8 e3 76 00 00 	calll	30435 <__asan_version_mismatch_check_v8>
e010173d:	83 ec 08 	subl	$8, %esp
e0101740:	6a 22 	pushl	$34
e0101742:	68 a0 03 12 e0 	pushl	$3759276960
e0101747:	e8 e4 75 00 00 	calll	30180 <__asan_register_globals>
e010174c:	83 c4 1c 	addl	$28, %esp
e010174f:	c3 	retl
e0101750:	83 ec 14 	subl	$20, %esp
e0101753:	6a 22 	pushl	$34
e0101755:	68 a0 03 12 e0 	pushl	$3759276960
e010175a:	e8 21 76 00 00 	calll	30241 <__asan_unregister_globals>
e010175f:	83 c4 1c 	addl	$28, %esp
e0101762:	c3 	retl
e0101763:	cc 	int3
e0101764:	cc 	int3
e0101765:	cc 	int3
e0101766:	cc 	int3
e0101767:	cc 	int3
e0101768:	cc 	int3
e0101769:	cc 	int3
e010176a:	cc 	int3
e010176b:	cc 	int3
e010176c:	cc 	int3
e010176d:	cc 	int3
e010176e:	cc 	int3
e010176f:	cc 	int3
e0101770:	55 	pushl	%ebp
e0101771:	89 e5 	movl	%esp, %ebp
e0101773:	56 	pushl	%esi
e0101774:	83 ec 14 	subl	$20, %esp
e0101777:	e8 f4 01 00 00 	calll	500 <i386_detect_memory>
e010177c:	b9 00 10 00 00 	movl	$4096, %ecx
e0101781:	e8 ea 02 00 00 	calll	746 <boot_alloc>
e0101786:	be b0 2f 12 e0 	movl	$3759288240, %esi
e010178b:	c1 ee 03 	shrl	$3, %esi
e010178e:	8a 8e 00 00 80 de 	movb	-562036736(%esi), %cl
e0101794:	84 c9 	testb	%cl, %cl
e0101796:	0f 85 fa 00 00 00 	jne	250 <mem_init+0x126>
e010179c:	a3 b0 2f 12 e0 	movl	%eax, 3759288240
e01017a1:	89 04 24 	movl	%eax, (%esp)
e01017a4:	c7 44 24 08 00 10 00 00 	movl	$4096, 8(%esp)
e01017ac:	c7 44 24 04 00 00 00 00 	movl	$0, 4(%esp)
e01017b4:	e8 57 7b 00 00 	calll	31575 <__wrap_memset>
e01017b9:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e01017bf:	84 c0 	testb	%al, %al
e01017c1:	0f 85 ee 00 00 00 	jne	238 <mem_init+0x145>
e01017c7:	be b0 2f 12 e0 	movl	$3759288240, %esi
e01017cc:	8b 15 b0 2f 12 e0 	movl	-535679056, %edx
e01017d2:	b9 9b 00 00 00 	movl	$155, %ecx
e01017d7:	e8 54 03 00 00 	calll	852 <_paddr>
e01017dc:	c1 ee 03 	shrl	$3, %esi
e01017df:	8a 8e 00 00 80 de 	movb	-562036736(%esi), %cl
e01017e5:	84 c9 	testb	%cl, %cl
e01017e7:	0f 85 e7 00 00 00 	jne	231 <mem_init+0x164>
e01017ed:	b9 f4 0d 00 00 	movl	$3572, %ecx
e01017f2:	03 0d b0 2f 12 e0 	addl	-535679056, %ecx
e01017f8:	89 ca 	movl	%ecx, %edx
e01017fa:	c1 ea 03 	shrl	$3, %edx
e01017fd:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0101803:	84 d2 	testb	%dl, %dl
e0101805:	0f 85 e8 00 00 00 	jne	232 <mem_init+0x183>
e010180b:	83 c8 05 	orl	$5, %eax
e010180e:	89 01 	movl	%eax, (%ecx)
e0101810:	b8 b4 2f 12 e0 	movl	$3759288244, %eax
e0101815:	c1 e8 03 	shrl	$3, %eax
e0101818:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010181e:	84 c0 	testb	%al, %al
e0101820:	0f 85 e5 00 00 00 	jne	229 <mem_init+0x19b>
e0101826:	8b 0d b4 2f 12 e0 	movl	-535679052, %ecx
e010182c:	c1 e1 03 	shll	$3, %ecx
e010182f:	e8 3c 02 00 00 	calll	572 <boot_alloc>
e0101834:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e0101839:	c1 e9 03 	shrl	$3, %ecx
e010183c:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101842:	84 c9 	testb	%cl, %cl
e0101844:	0f 85 e0 00 00 00 	jne	224 <mem_init+0x1ba>
e010184a:	a3 bc 2f 12 e0 	movl	%eax, 3759288252
e010184f:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101854:	c1 e9 03 	shrl	$3, %ecx
e0101857:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010185d:	84 c9 	testb	%cl, %cl
e010185f:	0f 85 e4 00 00 00 	jne	228 <mem_init+0x1d9>
e0101865:	8b 0d b4 2f 12 e0 	movl	-535679052, %ecx
e010186b:	c1 e1 03 	shll	$3, %ecx
e010186e:	89 4c 24 08 	movl	%ecx, 8(%esp)
e0101872:	89 04 24 	movl	%eax, (%esp)
e0101875:	c7 44 24 04 00 00 00 00 	movl	$0, 4(%esp)
e010187d:	e8 8e 7a 00 00 	calll	31374 <__wrap_memset>
e0101882:	e8 e9 02 00 00 	calll	745 <page_init>
e0101887:	e8 b4 05 00 00 	calll	1460 <check_page_free_list>
e010188c:	83 c4 14 	addl	$20, %esp
e010188f:	5e 	popl	%esi
e0101890:	5d 	popl	%ebp
e0101891:	e9 8a 0c 00 00 	jmp	3210 <check_page_alloc>
e0101896:	ba b0 2f 12 e0 	movl	$3759288240, %edx
e010189b:	80 e2 07 	andb	$7, %dl
e010189e:	80 c2 03 	addb	$3, %dl
e01018a1:	38 ca 	cmpb	%cl, %dl
e01018a3:	0f 8c f3 fe ff ff 	jl	-269 <mem_init+0x2c>
e01018a9:	c7 04 24 b0 2f 12 e0 	movl	$3759288240, (%esp)
e01018b0:	e8 fb 6e 00 00 	calll	28411 <__asan_report_store4>
e01018b5:	b9 b0 2f 12 e0 	movl	$3759288240, %ecx
e01018ba:	80 e1 07 	andb	$7, %cl
e01018bd:	80 c1 03 	addb	$3, %cl
e01018c0:	38 c1 	cmpb	%al, %cl
e01018c2:	0f 8c ff fe ff ff 	jl	-257 <mem_init+0x57>
e01018c8:	c7 04 24 b0 2f 12 e0 	movl	$3759288240, (%esp)
e01018cf:	e8 bc 6e 00 00 	calll	28348 <__asan_report_load4>
e01018d4:	ba b0 2f 12 e0 	movl	$3759288240, %edx
e01018d9:	80 e2 07 	andb	$7, %dl
e01018dc:	80 c2 03 	addb	$3, %dl
e01018df:	38 ca 	cmpb	%cl, %dl
e01018e1:	0f 8c 06 ff ff ff 	jl	-250 <mem_init+0x7d>
e01018e7:	c7 04 24 b0 2f 12 e0 	movl	$3759288240, (%esp)
e01018ee:	e8 9d 6e 00 00 	calll	28317 <__asan_report_load4>
e01018f3:	88 ce 	movb	%cl, %dh
e01018f5:	80 e6 07 	andb	$7, %dh
e01018f8:	80 c6 03 	addb	$3, %dh
e01018fb:	38 d6 	cmpb	%dl, %dh
e01018fd:	0f 8c 08 ff ff ff 	jl	-248 <mem_init+0x9b>
e0101903:	89 0c 24 	movl	%ecx, (%esp)
e0101906:	e8 a5 6e 00 00 	calll	28325 <__asan_report_store4>
e010190b:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101910:	80 e1 07 	andb	$7, %cl
e0101913:	80 c1 03 	addb	$3, %cl
e0101916:	38 c1 	cmpb	%al, %cl
e0101918:	0f 8c 08 ff ff ff 	jl	-248 <mem_init+0xb6>
e010191e:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e0101925:	e8 66 6e 00 00 	calll	28262 <__asan_report_load4>
e010192a:	ba bc 2f 12 e0 	movl	$3759288252, %edx
e010192f:	80 e2 07 	andb	$7, %dl
e0101932:	80 c2 03 	addb	$3, %dl
e0101935:	38 ca 	cmpb	%cl, %dl
e0101937:	0f 8c 0d ff ff ff 	jl	-243 <mem_init+0xda>
e010193d:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0101944:	e8 67 6e 00 00 	calll	28263 <__asan_report_store4>
e0101949:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e010194e:	80 e2 07 	andb	$7, %dl
e0101951:	80 c2 03 	addb	$3, %dl
e0101954:	38 ca 	cmpb	%cl, %dl
e0101956:	0f 8c 09 ff ff ff 	jl	-247 <mem_init+0xf5>
e010195c:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e0101963:	e8 28 6e 00 00 	calll	28200 <__asan_report_load4>
e0101968:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0101970:	55 	pushl	%ebp
e0101971:	89 e5 	movl	%esp, %ebp
e0101973:	53 	pushl	%ebx
e0101974:	57 	pushl	%edi
e0101975:	56 	pushl	%esi
e0101976:	83 ec 0c 	subl	$12, %esp
e0101979:	b9 15 00 00 00 	movl	$21, %ecx
e010197e:	e8 1d 14 00 00 	calll	5149 <nvram_read>
e0101983:	89 c1 	movl	%eax, %ecx
e0101985:	c1 f9 1f 	sarl	$31, %ecx
e0101988:	c1 e9 1e 	shrl	$30, %ecx
e010198b:	01 c1 	addl	%eax, %ecx
e010198d:	c1 f9 02 	sarl	$2, %ecx
e0101990:	89 0d 60 1d 12 e0 	movl	%ecx, -535683744
e0101996:	b9 17 00 00 00 	movl	$23, %ecx
e010199b:	e8 00 14 00 00 	calll	5120 <nvram_read>
e01019a0:	89 c6 	movl	%eax, %esi
e01019a2:	89 c7 	movl	%eax, %edi
e01019a4:	c1 ff 1f 	sarl	$31, %edi
e01019a7:	c1 ef 1e 	shrl	$30, %edi
e01019aa:	01 c7 	addl	%eax, %edi
e01019ac:	c1 ff 02 	sarl	$2, %edi
e01019af:	b9 34 00 00 00 	movl	$52, %ecx
e01019b4:	e8 e7 13 00 00 	calll	5095 <nvram_read>
e01019b9:	85 c0 	testl	%eax, %eax
e01019bb:	74 15 	je	21 <i386_detect_memory+0x62>
e01019bd:	81 ff 01 10 00 00 	cmpl	$4097, %edi
e01019c3:	72 0d 	jb	13 <i386_detect_memory+0x62>
e01019c5:	89 c1 	movl	%eax, %ecx
e01019c7:	c1 e1 04 	shll	$4, %ecx
e01019ca:	81 c1 00 10 00 00 	addl	$4096, %ecx
e01019d0:	eb 16 	jmp	22 <i386_detect_memory+0x78>
e01019d2:	83 c6 03 	addl	$3, %esi
e01019d5:	83 fe 07 	cmpl	$7, %esi
e01019d8:	72 08 	jb	8 <i386_detect_memory+0x72>
e01019da:	8d 8f 00 01 00 00 	leal	256(%edi), %ecx
e01019e0:	eb 06 	jmp	6 <i386_detect_memory+0x78>
e01019e2:	8b 0d 60 1d 12 e0 	movl	-535683744, %ecx
e01019e8:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e01019ed:	c1 ea 03 	shrl	$3, %edx
e01019f0:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e01019f6:	84 d2 	testb	%dl, %dl
e01019f8:	75 48 	jne	72 <i386_detect_memory+0xd2>
e01019fa:	89 0d b4 2f 12 e0 	movl	%ecx, -535679052
e0101a00:	c1 e1 02 	shll	$2, %ecx
e0101a03:	81 e1 fc ff 3f 00 	andl	$4194300, %ecx
e0101a09:	8b 15 60 1d 12 e0 	movl	-535683744, %edx
e0101a0f:	c1 e2 02 	shll	$2, %edx
e0101a12:	81 e2 fc ff 3f 00 	andl	$4194300, %edx
e0101a18:	c1 e7 02 	shll	$2, %edi
e0101a1b:	81 e7 fc ff 3f 00 	andl	$4194300, %edi
e0101a21:	c1 e0 06 	shll	$6, %eax
e0101a24:	25 c0 ff 3f 00 	andl	$4194240, %eax
e0101a29:	83 ec 0c 	subl	$12, %esp
e0101a2c:	50 	pushl	%eax
e0101a2d:	57 	pushl	%edi
e0101a2e:	52 	pushl	%edx
e0101a2f:	51 	pushl	%ecx
e0101a30:	68 40 b4 10 e0 	pushl	$3759191104
e0101a35:	e8 06 25 00 00 	calll	9478 <cprintf>
e0101a3a:	83 c4 2c 	addl	$44, %esp
e0101a3d:	5e 	popl	%esi
e0101a3e:	5f 	popl	%edi
e0101a3f:	5b 	popl	%ebx
e0101a40:	5d 	popl	%ebp
e0101a41:	c3 	retl
e0101a42:	bb b4 2f 12 e0 	movl	$3759288244, %ebx
e0101a47:	80 e3 07 	andb	$7, %bl
e0101a4a:	80 c3 03 	addb	$3, %bl
e0101a4d:	38 d3 	cmpb	%dl, %bl
e0101a4f:	7c a9 	jl	-87 <i386_detect_memory+0x8a>
e0101a51:	83 ec 0c 	subl	$12, %esp
e0101a54:	68 b4 2f 12 e0 	pushl	$3759288244
e0101a59:	e8 52 6d 00 00 	calll	27986 <__asan_report_store4>
e0101a5e:	83 c4 10 	addl	$16, %esp
e0101a61:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0101a6b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0101a70:	55 	pushl	%ebp
e0101a71:	89 e5 	movl	%esp, %ebp
e0101a73:	57 	pushl	%edi
e0101a74:	56 	pushl	%esi
e0101a75:	89 ce 	movl	%ecx, %esi
e0101a77:	83 3d e0 1d 12 e0 00 	cmpl	$0, -535683616
e0101a7e:	75 18 	jne	24 <boot_alloc+0x28>
e0101a80:	b8 ff 4f 12 e0 	movl	$3759296511, %eax
e0101a85:	25 ff 0f 00 00 	andl	$4095, %eax
e0101a8a:	f7 d8 	negl	%eax
e0101a8c:	8d 04 05 ff 4f 12 e0 	leal	-535670785(,%eax), %eax
e0101a93:	a3 e0 1d 12 e0 	movl	%eax, 3759283680
e0101a98:	85 f6 	testl	%esi, %esi
e0101a9a:	8b 3d e0 1d 12 e0 	movl	-535683616, %edi
e0101aa0:	74 4a 	je	74 <boot_alloc+0x7c>
e0101aa2:	8d 96 ff 0f 00 00 	leal	4095(%esi), %edx
e0101aa8:	81 e2 00 f0 ff ff 	andl	$4294963200, %edx
e0101aae:	01 fa 	addl	%edi, %edx
e0101ab0:	89 15 e0 1d 12 e0 	movl	%edx, -535683616
e0101ab6:	b9 72 00 00 00 	movl	$114, %ecx
e0101abb:	e8 70 00 00 00 	calll	112 <_paddr>
e0101ac0:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101ac5:	c1 e9 03 	shrl	$3, %ecx
e0101ac8:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101ace:	84 c9 	testb	%cl, %cl
e0101ad0:	75 20 	jne	32 <boot_alloc+0x82>
e0101ad2:	8b 0d b4 2f 12 e0 	movl	-535679052, %ecx
e0101ad8:	c1 e1 0c 	shll	$12, %ecx
e0101adb:	39 c8 	cmpl	%ecx, %eax
e0101add:	77 32 	ja	50 <boot_alloc+0xa1>
e0101adf:	83 ec 08 	subl	$8, %esp
e0101ae2:	56 	pushl	%esi
e0101ae3:	57 	pushl	%edi
e0101ae4:	e8 67 7c 00 00 	calll	31847 <platform_asan_unpoison>
e0101ae9:	83 c4 10 	addl	$16, %esp
e0101aec:	89 f8 	movl	%edi, %eax
e0101aee:	5e 	popl	%esi
e0101aef:	5f 	popl	%edi
e0101af0:	5d 	popl	%ebp
e0101af1:	c3 	retl
e0101af2:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e0101af7:	80 e2 07 	andb	$7, %dl
e0101afa:	80 c2 03 	addb	$3, %dl
e0101afd:	38 ca 	cmpb	%cl, %dl
e0101aff:	7c d1 	jl	-47 <boot_alloc+0x62>
e0101b01:	83 ec 0c 	subl	$12, %esp
e0101b04:	68 b4 2f 12 e0 	pushl	$3759288244
e0101b09:	e8 82 6c 00 00 	calll	27778 <__asan_report_load4>
e0101b0e:	83 c4 10 	addl	$16, %esp
e0101b11:	e8 8a 6a 00 00 	calll	27274 <__asan_handle_no_return>
e0101b16:	83 ec 04 	subl	$4, %esp
e0101b19:	68 c0 b4 10 e0 	pushl	$3759191232
e0101b1e:	6a 73 	pushl	$115
e0101b20:	68 c0 b3 10 e0 	pushl	$3759190976
e0101b25:	e8 06 e6 ff ff 	calll	-6650 <_panic>
e0101b2a:	83 c4 04 	addl	$4, %esp
e0101b2d:	0f 1f 00 	nopl	(%eax)
e0101b30:	55 	pushl	%ebp
e0101b31:	89 e5 	movl	%esp, %ebp
e0101b33:	57 	pushl	%edi
e0101b34:	56 	pushl	%esi
e0101b35:	89 d6 	movl	%edx, %esi
e0101b37:	81 fa ff ff ff df 	cmpl	$3758096383, %edx
e0101b3d:	76 0c 	jbe	12 <_paddr+0x1b>
e0101b3f:	81 c6 00 00 00 20 	addl	$536870912, %esi
e0101b45:	89 f0 	movl	%esi, %eax
e0101b47:	5e 	popl	%esi
e0101b48:	5f 	popl	%edi
e0101b49:	5d 	popl	%ebp
e0101b4a:	c3 	retl
e0101b4b:	89 cf 	movl	%ecx, %edi
e0101b4d:	e8 4e 6a 00 00 	calll	27214 <__asan_handle_no_return>
e0101b52:	56 	pushl	%esi
e0101b53:	68 00 b5 10 e0 	pushl	$3759191296
e0101b58:	57 	pushl	%edi
e0101b59:	68 c0 b3 10 e0 	pushl	$3759190976
e0101b5e:	e8 cd e5 ff ff 	calll	-6707 <_panic>
e0101b63:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0101b6d:	0f 1f 00 	nopl	(%eax)
e0101b70:	55 	pushl	%ebp
e0101b71:	89 e5 	movl	%esp, %ebp
e0101b73:	53 	pushl	%ebx
e0101b74:	57 	pushl	%edi
e0101b75:	56 	pushl	%esi
e0101b76:	83 ec 0c 	subl	$12, %esp
e0101b79:	b8 bc 2f 12 e0 	movl	$3759288252, %eax
e0101b7e:	c1 e8 03 	shrl	$3, %eax
e0101b81:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0101b87:	84 c0 	testb	%al, %al
e0101b89:	0f 85 05 02 00 00 	jne	517 <page_init+0x224>
e0101b8f:	a1 bc 2f 12 e0 	movl	3759288252, %eax
e0101b94:	b9 b8 2f 12 e0 	movl	$3759288248, %ecx
e0101b99:	c1 e9 03 	shrl	$3, %ecx
e0101b9c:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101ba2:	84 c9 	testb	%cl, %cl
e0101ba4:	0f 85 09 02 00 00 	jne	521 <page_init+0x243>
e0101baa:	83 c0 08 	addl	$8, %eax
e0101bad:	a3 b8 2f 12 e0 	movl	%eax, 3759288248
e0101bb2:	83 3d 60 1d 12 e0 02 	cmpl	$2, -535683744
e0101bb9:	0f 82 be 00 00 00 	jb	190 <page_init+0x10d>
e0101bbf:	b8 01 00 00 00 	movl	$1, %eax
e0101bc4:	b9 08 00 00 00 	movl	$8, %ecx
e0101bc9:	8b 15 60 1d 12 e0 	movl	-535683744, %edx
e0101bcf:	89 55 ec 	movl	%edx, -20(%ebp)
e0101bd2:	be bc 2f 12 e0 	movl	$3759288252, %esi
e0101bd7:	c1 ee 03 	shrl	$3, %esi
e0101bda:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0101be0:	0f b6 96 00 00 80 de 	movzbl	-562036736(%esi), %edx
e0101be7:	84 d2 	testb	%dl, %dl
e0101be9:	75 54 	jne	84 <page_init+0xcf>
e0101beb:	8b 1d bc 2f 12 e0 	movl	-535679044, %ebx
e0101bf1:	8d 54 0b 04 	leal	4(%ebx,%ecx), %edx
e0101bf5:	89 d7 	movl	%edx, %edi
e0101bf7:	c1 ea 03 	shrl	$3, %edx
e0101bfa:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0101c01:	84 d2 	testb	%dl, %dl
e0101c03:	75 4e 	jne	78 <page_init+0xe3>
e0101c05:	66 c7 44 0b 04 00 00 	movw	$0, 4(%ebx,%ecx)
e0101c0c:	01 cb 	addl	%ecx, %ebx
e0101c0e:	8b 3d a0 1d 12 e0 	movl	-535683680, %edi
e0101c14:	89 da 	movl	%ebx, %edx
e0101c16:	c1 ea 03 	shrl	$3, %edx
e0101c19:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0101c20:	84 d2 	testb	%dl, %dl
e0101c22:	75 45 	jne	69 <page_init+0xf9>
e0101c24:	89 3b 	movl	%edi, (%ebx)
e0101c26:	8b 15 bc 2f 12 e0 	movl	-535679044, %edx
e0101c2c:	01 ca 	addl	%ecx, %edx
e0101c2e:	89 15 a0 1d 12 e0 	movl	%edx, -535683680
e0101c34:	40 	incl	%eax
e0101c35:	83 c1 08 	addl	$8, %ecx
e0101c38:	3b 45 ec 	cmpl	-20(%ebp), %eax
e0101c3b:	72 a3 	jb	-93 <page_init+0x70>
e0101c3d:	eb 3e 	jmp	62 <page_init+0x10d>
e0101c3f:	bb bc 2f 12 e0 	movl	$3759288252, %ebx
e0101c44:	80 e3 07 	andb	$7, %bl
e0101c47:	80 c3 03 	addb	$3, %bl
e0101c4a:	38 d3 	cmpb	%dl, %bl
e0101c4c:	7c 9d 	jl	-99 <page_init+0x7b>
e0101c4e:	e9 bd 01 00 00 	jmp	445 <page_init+0x2a0>
e0101c53:	88 55 f0 	movb	%dl, -16(%ebp)
e0101c56:	89 fa 	movl	%edi, %edx
e0101c58:	88 d6 	movb	%dl, %dh
e0101c5a:	80 e6 07 	andb	$7, %dh
e0101c5d:	fe c6 	incb	%dh
e0101c5f:	3a 75 f0 	cmpb	-16(%ebp), %dh
e0101c62:	7c a1 	jl	-95 <page_init+0x95>
e0101c64:	e9 b3 01 00 00 	jmp	435 <page_init+0x2ac>
e0101c69:	88 de 	movb	%bl, %dh
e0101c6b:	80 e6 07 	andb	$7, %dh
e0101c6e:	80 c6 03 	addb	$3, %dh
e0101c71:	38 d6 	cmpb	%dl, %dh
e0101c73:	7c af 	jl	-81 <page_init+0xb4>
e0101c75:	89 1c 24 	movl	%ebx, (%esp)
e0101c78:	e8 33 6b 00 00 	calll	27443 <__asan_report_store4>
e0101c7d:	31 c9 	xorl	%ecx, %ecx
e0101c7f:	e8 ec fd ff ff 	calll	-532 <boot_alloc>
e0101c84:	b9 d9 00 00 00 	movl	$217, %ecx
e0101c89:	89 c2 	movl	%eax, %edx
e0101c8b:	e8 a0 fe ff ff 	calll	-352 <_paddr>
e0101c90:	89 c6 	movl	%eax, %esi
e0101c92:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101c97:	c1 e9 03 	shrl	$3, %ecx
e0101c9a:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101ca0:	84 c9 	testb	%cl, %cl
e0101ca2:	0f 85 2a 01 00 00 	jne	298 <page_init+0x262>
e0101ca8:	c1 ee 0c 	shrl	$12, %esi
e0101cab:	3b 35 b4 2f 12 e0 	cmpl	-535679052, %esi
e0101cb1:	0f 83 d5 00 00 00 	jae	213 <page_init+0x21c>
e0101cb7:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101cbc:	c1 e9 03 	shrl	$3, %ecx
e0101cbf:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101cc5:	84 c9 	testb	%cl, %cl
e0101cc7:	0f 85 24 01 00 00 	jne	292 <page_init+0x281>
e0101ccd:	8b 0d b4 2f 12 e0 	movl	-535679052, %ecx
e0101cd3:	89 4d ec 	movl	%ecx, -20(%ebp)
e0101cd6:	8d 14 f5 00 00 00 00 	leal	(,%esi,8), %edx
e0101cdd:	b8 bc 2f 12 e0 	movl	$3759288252, %eax
e0101ce2:	c1 e8 03 	shrl	$3, %eax
e0101ce5:	89 45 f0 	movl	%eax, -16(%ebp)
e0101ce8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0101cf0:	8b 45 f0 	movl	-16(%ebp), %eax
e0101cf3:	0f b6 88 00 00 80 de 	movzbl	-562036736(%eax), %ecx
e0101cfa:	84 c9 	testb	%cl, %cl
e0101cfc:	75 54 	jne	84 <page_init+0x1e2>
e0101cfe:	8b 1d bc 2f 12 e0 	movl	-535679044, %ebx
e0101d04:	8d 4c 13 04 	leal	4(%ebx,%edx), %ecx
e0101d08:	89 cf 	movl	%ecx, %edi
e0101d0a:	c1 e9 03 	shrl	$3, %ecx
e0101d0d:	0f b6 81 00 00 80 de 	movzbl	-562036736(%ecx), %eax
e0101d14:	84 c0 	testb	%al, %al
e0101d16:	75 4e 	jne	78 <page_init+0x1f6>
e0101d18:	66 c7 44 13 04 00 00 	movw	$0, 4(%ebx,%edx)
e0101d1f:	01 d3 	addl	%edx, %ebx
e0101d21:	8b 3d a0 1d 12 e0 	movl	-535683680, %edi
e0101d27:	89 d9 	movl	%ebx, %ecx
e0101d29:	c1 e9 03 	shrl	$3, %ecx
e0101d2c:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0101d33:	84 c9 	testb	%cl, %cl
e0101d35:	75 41 	jne	65 <page_init+0x208>
e0101d37:	89 3b 	movl	%edi, (%ebx)
e0101d39:	8b 0d bc 2f 12 e0 	movl	-535679044, %ecx
e0101d3f:	01 d1 	addl	%edx, %ecx
e0101d41:	89 0d a0 1d 12 e0 	movl	%ecx, -535683680
e0101d47:	46 	incl	%esi
e0101d48:	83 c2 08 	addl	$8, %edx
e0101d4b:	3b 75 ec 	cmpl	-20(%ebp), %esi
e0101d4e:	72 a0 	jb	-96 <page_init+0x180>
e0101d50:	eb 3a 	jmp	58 <page_init+0x21c>
e0101d52:	bb bc 2f 12 e0 	movl	$3759288252, %ebx
e0101d57:	80 e3 07 	andb	$7, %bl
e0101d5a:	80 c3 03 	addb	$3, %bl
e0101d5d:	38 cb 	cmpb	%cl, %bl
e0101d5f:	7c 9d 	jl	-99 <page_init+0x18e>
e0101d61:	e9 be 00 00 00 	jmp	190 <page_init+0x2b4>
e0101d66:	89 f9 	movl	%edi, %ecx
e0101d68:	88 cd 	movb	%cl, %ch
e0101d6a:	80 e5 07 	andb	$7, %ch
e0101d6d:	fe c5 	incb	%ch
e0101d6f:	38 c5 	cmpb	%al, %ch
e0101d71:	7c a5 	jl	-91 <page_init+0x1a8>
e0101d73:	e9 b8 00 00 00 	jmp	184 <page_init+0x2c0>
e0101d78:	88 dd 	movb	%bl, %ch
e0101d7a:	80 e5 07 	andb	$7, %ch
e0101d7d:	80 c5 03 	addb	$3, %ch
e0101d80:	38 cd 	cmpb	%cl, %ch
e0101d82:	7c b3 	jl	-77 <page_init+0x1c7>
e0101d84:	89 1c 24 	movl	%ebx, (%esp)
e0101d87:	e8 24 6a 00 00 	calll	27172 <__asan_report_store4>
e0101d8c:	83 c4 0c 	addl	$12, %esp
e0101d8f:	5e 	popl	%esi
e0101d90:	5f 	popl	%edi
e0101d91:	5b 	popl	%ebx
e0101d92:	5d 	popl	%ebp
e0101d93:	c3 	retl
e0101d94:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e0101d99:	80 e1 07 	andb	$7, %cl
e0101d9c:	80 c1 03 	addb	$3, %cl
e0101d9f:	38 c1 	cmpb	%al, %cl
e0101da1:	0f 8c e8 fd ff ff 	jl	-536 <page_init+0x1f>
e0101da7:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0101dae:	e8 dd 69 00 00 	calll	27101 <__asan_report_load4>
e0101db3:	ba b8 2f 12 e0 	movl	$3759288248, %edx
e0101db8:	80 e2 07 	andb	$7, %dl
e0101dbb:	80 c2 03 	addb	$3, %dl
e0101dbe:	38 ca 	cmpb	%cl, %dl
e0101dc0:	0f 8c e4 fd ff ff 	jl	-540 <page_init+0x3a>
e0101dc6:	c7 04 24 b8 2f 12 e0 	movl	$3759288248, (%esp)
e0101dcd:	e8 de 69 00 00 	calll	27102 <__asan_report_store4>
e0101dd2:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e0101dd7:	80 e2 07 	andb	$7, %dl
e0101dda:	80 c2 03 	addb	$3, %dl
e0101ddd:	38 ca 	cmpb	%cl, %dl
e0101ddf:	0f 8c c3 fe ff ff 	jl	-317 <page_init+0x138>
e0101de5:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e0101dec:	e8 9f 69 00 00 	calll	27039 <__asan_report_load4>
e0101df1:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e0101df6:	80 e2 07 	andb	$7, %dl
e0101df9:	80 c2 03 	addb	$3, %dl
e0101dfc:	38 ca 	cmpb	%cl, %dl
e0101dfe:	0f 8c c9 fe ff ff 	jl	-311 <page_init+0x15d>
e0101e04:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e0101e0b:	e8 80 69 00 00 	calll	27008 <__asan_report_load4>
e0101e10:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0101e17:	e8 74 69 00 00 	calll	26996 <__asan_report_load4>
e0101e1c:	89 3c 24 	movl	%edi, (%esp)
e0101e1f:	e8 4c 69 00 00 	calll	26956 <__asan_report_store2>
e0101e24:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0101e2b:	e8 60 69 00 00 	calll	26976 <__asan_report_load4>
e0101e30:	89 3c 24 	movl	%edi, (%esp)
e0101e33:	e8 38 69 00 00 	calll	26936 <__asan_report_store2>
e0101e38:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0101e40:	55 	pushl	%ebp
e0101e41:	89 e5 	movl	%esp, %ebp
e0101e43:	53 	pushl	%ebx
e0101e44:	57 	pushl	%edi
e0101e45:	56 	pushl	%esi
e0101e46:	83 e4 e0 	andl	$-32, %esp
e0101e49:	83 ec 60 	subl	$96, %esp
e0101e4c:	89 e6 	movl	%esp, %esi
e0101e4e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0101e55:	74 0f 	je	15 <check_page_free_list+0x26>
e0101e57:	83 ec 0c 	subl	$12, %esp
e0101e5a:	6a 50 	pushl	$80
e0101e5c:	e8 7f 6b 00 00 	calll	27519 <__asan_stack_malloc_1>
e0101e61:	83 c4 10 	addl	$16, %esp
e0101e64:	eb 02 	jmp	2 <check_page_free_list+0x28>
e0101e66:	31 c0 	xorl	%eax, %eax
e0101e68:	85 c0 	testl	%eax, %eax
e0101e6a:	89 c3 	movl	%eax, %ebx
e0101e6c:	75 0a 	jne	10 <check_page_free_list+0x38>
e0101e6e:	89 e3 	movl	%esp, %ebx
e0101e70:	83 c3 b0 	addl	$-80, %ebx
e0101e73:	83 e3 e0 	andl	$-32, %ebx
e0101e76:	89 dc 	movl	%ebx, %esp
e0101e78:	89 5e 3c 	movl	%ebx, 60(%esi)
e0101e7b:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e0101e81:	c7 43 04 a8 a3 10 e0 	movl	$3759186856, 4(%ebx)
e0101e88:	c7 43 08 40 1e 10 e0 	movl	$3759152704, 8(%ebx)
e0101e8f:	89 d9 	movl	%ebx, %ecx
e0101e91:	c1 e9 03 	shrl	$3, %ecx
e0101e94:	c7 81 00 00 80 de f1 f1 f8 f2 	movl	$4076401137, -562036736(%ecx)
e0101e9e:	c7 81 04 00 80 de f8 f2 f8 f3 	movl	$4093178616, -562036732(%ecx)
e0101ea8:	66 c7 81 08 00 80 de f3 f3 	movw	$62451, -562036728(%ecx)
e0101eb1:	83 3d a0 1d 12 e0 00 	cmpl	$0, -535683680
e0101eb8:	0f 84 0b 06 00 00 	je	1547 <check_page_free_list+0x689>
e0101ebe:	8d 53 30 	leal	48(%ebx), %edx
e0101ec1:	c6 81 02 00 80 de 04 	movb	$4, -562036734(%ecx)
e0101ec8:	c6 81 04 00 80 de 04 	movb	$4, -562036732(%ecx)
e0101ecf:	89 4e 30 	movl	%ecx, 48(%esi)
e0101ed2:	c6 81 06 00 80 de 00 	movb	$0, -562036730(%ecx)
e0101ed9:	89 d1 	movl	%edx, %ecx
e0101edb:	c1 ea 03 	shrl	$3, %edx
e0101ede:	89 56 28 	movl	%edx, 40(%esi)
e0101ee1:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0101ee7:	84 d2 	testb	%dl, %dl
e0101ee9:	89 cf 	movl	%ecx, %edi
e0101eeb:	89 4e 1c 	movl	%ecx, 28(%esi)
e0101eee:	0f 85 b9 03 00 00 	jne	953 <check_page_free_list+0x46d>
e0101ef4:	89 46 38 	movl	%eax, 56(%esi)
e0101ef7:	8d 43 10 	leal	16(%ebx), %eax
e0101efa:	89 46 2c 	movl	%eax, 44(%esi)
e0101efd:	89 01 	movl	%eax, (%ecx)
e0101eff:	8d 51 04 	leal	4(%ecx), %edx
e0101f02:	89 d7 	movl	%edx, %edi
e0101f04:	c1 ef 03 	shrl	$3, %edi
e0101f07:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0101f0d:	84 c0 	testb	%al, %al
e0101f0f:	0f 85 b8 03 00 00 	jne	952 <check_page_free_list+0x48d>
e0101f15:	89 5e 34 	movl	%ebx, 52(%esi)
e0101f18:	8d 4b 20 	leal	32(%ebx), %ecx
e0101f1b:	89 c8 	movl	%ecx, %eax
e0101f1d:	89 4e 24 	movl	%ecx, 36(%esi)
e0101f20:	89 56 20 	movl	%edx, 32(%esi)
e0101f23:	89 0a 	movl	%ecx, (%edx)
e0101f25:	8b 1d a0 1d 12 e0 	movl	-535683680, %ebx
e0101f2b:	85 db 	testl	%ebx, %ebx
e0101f2d:	75 1b 	jne	27 <check_page_free_list+0x10a>
e0101f2f:	e9 9d 00 00 00 	jmp	157 <check_page_free_list+0x191>
e0101f34:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0101f3e:	66 90 	nop
e0101f40:	8b 1b 	movl	(%ebx), %ebx
e0101f42:	85 db 	testl	%ebx, %ebx
e0101f44:	0f 84 87 00 00 00 	je	135 <check_page_free_list+0x191>
e0101f4a:	89 d9 	movl	%ebx, %ecx
e0101f4c:	e8 ef 0e 00 00 	calll	3823 <page2pa>
e0101f51:	31 c9 	xorl	%ecx, %ecx
e0101f53:	3d ff ff 3f 00 	cmpl	$4194303, %eax
e0101f58:	0f 97 c1 	seta	%cl
e0101f5b:	8b 46 1c 	movl	28(%esi), %eax
e0101f5e:	8d 04 88 	leal	(%eax,%ecx,4), %eax
e0101f61:	89 c1 	movl	%eax, %ecx
e0101f63:	c1 e9 03 	shrl	$3, %ecx
e0101f66:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0101f6d:	84 c9 	testb	%cl, %cl
e0101f6f:	75 37 	jne	55 <check_page_free_list+0x168>
e0101f71:	8b 08 	movl	(%eax), %ecx
e0101f73:	89 ca 	movl	%ecx, %edx
e0101f75:	c1 ea 03 	shrl	$3, %edx
e0101f78:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0101f7f:	84 d2 	testb	%dl, %dl
e0101f81:	75 36 	jne	54 <check_page_free_list+0x179>
e0101f83:	89 19 	movl	%ebx, (%ecx)
e0101f85:	89 18 	movl	%ebx, (%eax)
e0101f87:	89 d8 	movl	%ebx, %eax
e0101f89:	c1 e8 03 	shrl	$3, %eax
e0101f8c:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0101f93:	84 c0 	testb	%al, %al
e0101f95:	74 a9 	je	-87 <check_page_free_list+0x100>
e0101f97:	89 d9 	movl	%ebx, %ecx
e0101f99:	80 e1 07 	andb	$7, %cl
e0101f9c:	80 c1 03 	addb	$3, %cl
e0101f9f:	38 c1 	cmpb	%al, %cl
e0101fa1:	7c 9d 	jl	-99 <check_page_free_list+0x100>
e0101fa3:	e9 40 05 00 00 	jmp	1344 <check_page_free_list+0x6a8>
e0101fa8:	89 c2 	movl	%eax, %edx
e0101faa:	80 e2 07 	andb	$7, %dl
e0101fad:	80 c2 03 	addb	$3, %dl
e0101fb0:	38 ca 	cmpb	%cl, %dl
e0101fb2:	7c bd 	jl	-67 <check_page_free_list+0x131>
e0101fb4:	e9 3b 05 00 00 	jmp	1339 <check_page_free_list+0x6b4>
e0101fb9:	88 ce 	movb	%cl, %dh
e0101fbb:	80 e6 07 	andb	$7, %dh
e0101fbe:	80 c6 03 	addb	$3, %dh
e0101fc1:	38 d6 	cmpb	%dl, %dh
e0101fc3:	7c be 	jl	-66 <check_page_free_list+0x143>
e0101fc5:	83 ec 0c 	subl	$12, %esp
e0101fc8:	51 	pushl	%ecx
e0101fc9:	e8 e2 67 00 00 	calll	26594 <__asan_report_store4>
e0101fce:	83 c4 10 	addl	$16, %esp
e0101fd1:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0101fd7:	84 c0 	testb	%al, %al
e0101fd9:	0f 85 0a 03 00 00 	jne	778 <check_page_free_list+0x4a9>
e0101fdf:	8b 46 20 	movl	32(%esi), %eax
e0101fe2:	8b 00 	movl	(%eax), %eax
e0101fe4:	89 c1 	movl	%eax, %ecx
e0101fe6:	c1 e9 03 	shrl	$3, %ecx
e0101fe9:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101fef:	84 c9 	testb	%cl, %cl
e0101ff1:	8b 7e 30 	movl	48(%esi), %edi
e0101ff4:	8b 5e 2c 	movl	44(%esi), %ebx
e0101ff7:	0f 85 0b 03 00 00 	jne	779 <check_page_free_list+0x4c8>
e0101ffd:	c7 00 00 00 00 00 	movl	$0, (%eax)
e0102003:	8b 4e 24 	movl	36(%esi), %ecx
e0102006:	89 c8 	movl	%ecx, %eax
e0102008:	c1 e8 03 	shrl	$3, %eax
e010200b:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102011:	84 c0 	testb	%al, %al
e0102013:	0f 85 0b 03 00 00 	jne	779 <check_page_free_list+0x4e4>
e0102019:	8b 01 	movl	(%ecx), %eax
e010201b:	8b 4e 28 	movl	40(%esi), %ecx
e010201e:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102024:	84 c9 	testb	%cl, %cl
e0102026:	0f 85 18 03 00 00 	jne	792 <check_page_free_list+0x504>
e010202c:	8b 4e 1c 	movl	28(%esi), %ecx
e010202f:	8b 09 	movl	(%ecx), %ecx
e0102031:	89 ca 	movl	%ecx, %edx
e0102033:	c1 ea 03 	shrl	$3, %edx
e0102036:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e010203c:	84 d2 	testb	%dl, %dl
e010203e:	0f 85 1f 03 00 00 	jne	799 <check_page_free_list+0x523>
e0102044:	89 01 	movl	%eax, (%ecx)
e0102046:	89 d8 	movl	%ebx, %eax
e0102048:	c1 e8 03 	shrl	$3, %eax
e010204b:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102051:	84 c0 	testb	%al, %al
e0102053:	0f 85 26 03 00 00 	jne	806 <check_page_free_list+0x53f>
e0102059:	8b 1b 	movl	(%ebx), %ebx
e010205b:	89 1d a0 1d 12 e0 	movl	%ebx, -535683680
e0102061:	c6 87 06 00 80 de f8 	movb	$-8, -562036730(%edi)
e0102068:	c6 87 04 00 80 de f8 	movb	$-8, -562036732(%edi)
e010206f:	c6 87 02 00 80 de f8 	movb	$-8, -562036734(%edi)
e0102076:	85 db 	testl	%ebx, %ebx
e0102078:	75 0c 	jne	12 <check_page_free_list+0x246>
e010207a:	eb 5d 	jmp	93 <check_page_free_list+0x299>
e010207c:	0f 1f 40 00 	nopl	(%eax)
e0102080:	8b 1b 	movl	(%ebx), %ebx
e0102082:	85 db 	testl	%ebx, %ebx
e0102084:	74 53 	je	83 <check_page_free_list+0x299>
e0102086:	89 d9 	movl	%ebx, %ecx
e0102088:	e8 b3 0d 00 00 	calll	3507 <page2pa>
e010208d:	3d ff ff 3f 00 	cmpl	$4194303, %eax
e0102092:	77 1d 	ja	29 <check_page_free_list+0x271>
e0102094:	89 d9 	movl	%ebx, %ecx
e0102096:	e8 25 0b 00 00 	calll	2853 <page2kva>
e010209b:	83 ec 04 	subl	$4, %esp
e010209e:	68 80 00 00 00 	pushl	$128
e01020a3:	68 97 00 00 00 	pushl	$151
e01020a8:	50 	pushl	%eax
e01020a9:	e8 32 7b 00 00 	calll	31538 <__nosan_memset>
e01020ae:	83 c4 10 	addl	$16, %esp
e01020b1:	89 d8 	movl	%ebx, %eax
e01020b3:	c1 e8 03 	shrl	$3, %eax
e01020b6:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01020bd:	84 c0 	testb	%al, %al
e01020bf:	74 bf 	je	-65 <check_page_free_list+0x240>
e01020c1:	89 d9 	movl	%ebx, %ecx
e01020c3:	80 e1 07 	andb	$7, %cl
e01020c6:	80 c1 03 	addb	$3, %cl
e01020c9:	38 c1 	cmpb	%al, %cl
e01020cb:	7c b3 	jl	-77 <check_page_free_list+0x240>
e01020cd:	83 ec 0c 	subl	$12, %esp
e01020d0:	53 	pushl	%ebx
e01020d1:	e8 ba 66 00 00 	calll	26298 <__asan_report_load4>
e01020d6:	83 c4 10 	addl	$16, %esp
e01020d9:	c7 46 1c 00 00 00 00 	movl	$0, 28(%esi)
e01020e0:	31 c9 	xorl	%ecx, %ecx
e01020e2:	e8 89 f9 ff ff 	calll	-1655 <boot_alloc>
e01020e7:	89 46 2c 	movl	%eax, 44(%esi)
e01020ea:	8b 1d a0 1d 12 e0 	movl	-535683680, %ebx
e01020f0:	85 db 	testl	%ebx, %ebx
e01020f2:	0f 84 b3 03 00 00 	je	947 <check_page_free_list+0x66b>
e01020f8:	b8 bc 2f 12 e0 	movl	$3759288252, %eax
e01020fd:	c1 e8 03 	shrl	$3, %eax
e0102100:	89 46 24 	movl	%eax, 36(%esi)
e0102103:	b8 b4 2f 12 e0 	movl	$3759288244, %eax
e0102108:	c1 e8 03 	shrl	$3, %eax
e010210b:	89 46 20 	movl	%eax, 32(%esi)
e010210e:	31 ff 	xorl	%edi, %edi
e0102110:	8b 46 24 	movl	36(%esi), %eax
e0102113:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e010211a:	84 c0 	testb	%al, %al
e010211c:	0f 85 c5 00 00 00 	jne	197 <check_page_free_list+0x3a7>
e0102122:	8b 0d bc 2f 12 e0 	movl	-535679044, %ecx
e0102128:	89 d8 	movl	%ebx, %eax
e010212a:	29 c8 	subl	%ecx, %eax
e010212c:	0f 82 c3 02 00 00 	jb	707 <check_page_free_list+0x5b5>
e0102132:	8b 56 20 	movl	32(%esi), %edx
e0102135:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e010213c:	84 d2 	testb	%dl, %dl
e010213e:	0f 85 bb 00 00 00 	jne	187 <check_page_free_list+0x3bf>
e0102144:	8b 15 b4 2f 12 e0 	movl	-535679052, %edx
e010214a:	8d 0c d1 	leal	(%ecx,%edx,8), %ecx
e010214d:	39 cb 	cmpl	%ecx, %ebx
e010214f:	0f 83 46 02 00 00 	jae	582 <check_page_free_list+0x55b>
e0102155:	a8 07 	testb	$7, %al
e0102157:	0f 85 5c 02 00 00 	jne	604 <check_page_free_list+0x579>
e010215d:	89 d9 	movl	%ebx, %ecx
e010215f:	e8 dc 0c 00 00 	calll	3292 <page2pa>
e0102164:	3d ff ef 0f 00 	cmpl	$1044479, %eax
e0102169:	7f 15 	jg	21 <check_page_free_list+0x340>
e010216b:	85 c0 	testl	%eax, %eax
e010216d:	0f 84 a0 02 00 00 	je	672 <check_page_free_list+0x5d3>
e0102173:	3d 00 00 0a 00 	cmpl	$655360, %eax
e0102178:	75 1c 	jne	28 <check_page_free_list+0x356>
e010217a:	e9 b2 02 00 00 	jmp	690 <check_page_free_list+0x5f1>
e010217f:	90 	nop
e0102180:	3d 00 f0 0f 00 	cmpl	$1044480, %eax
e0102185:	0f 84 c4 02 00 00 	je	708 <check_page_free_list+0x60f>
e010218b:	3d 00 00 10 00 	cmpl	$1048576, %eax
e0102190:	0f 84 41 02 00 00 	je	577 <check_page_free_list+0x597>
e0102196:	3d 00 00 10 00 	cmpl	$1048576, %eax
e010219b:	72 10 	jb	16 <check_page_free_list+0x36d>
e010219d:	89 d9 	movl	%ebx, %ecx
e010219f:	e8 1c 0a 00 00 	calll	2588 <page2kva>
e01021a4:	3b 46 2c 	cmpl	44(%esi), %eax
e01021a7:	0f 82 c0 02 00 00 	jb	704 <check_page_free_list+0x62d>
e01021ad:	89 d9 	movl	%ebx, %ecx
e01021af:	e8 8c 0c 00 00 	calll	3212 <page2pa>
e01021b4:	31 c9 	xorl	%ecx, %ecx
e01021b6:	3d ff ff 0f 00 	cmpl	$1048575, %eax
e01021bb:	0f 97 c2 	seta	%dl
e01021be:	3d 00 00 10 00 	cmpl	$1048576, %eax
e01021c3:	83 56 1c 00 	adcl	$0, 28(%esi)
e01021c7:	89 d8 	movl	%ebx, %eax
e01021c9:	c1 e8 03 	shrl	$3, %eax
e01021cc:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01021d3:	84 c0 	testb	%al, %al
e01021d5:	75 44 	jne	68 <check_page_free_list+0x3db>
e01021d7:	88 d1 	movb	%dl, %cl
e01021d9:	01 cf 	addl	%ecx, %edi
e01021db:	8b 1b 	movl	(%ebx), %ebx
e01021dd:	85 db 	testl	%ebx, %ebx
e01021df:	0f 85 2b ff ff ff 	jne	-213 <check_page_free_list+0x2d0>
e01021e5:	eb 4c 	jmp	76 <check_page_free_list+0x3f3>
e01021e7:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e01021ec:	80 e1 07 	andb	$7, %cl
e01021ef:	80 c1 03 	addb	$3, %cl
e01021f2:	38 c1 	cmpb	%al, %cl
e01021f4:	0f 8c 28 ff ff ff 	jl	-216 <check_page_free_list+0x2e2>
e01021fa:	e9 8c 02 00 00 	jmp	652 <check_page_free_list+0x64b>
e01021ff:	88 56 28 	movb	%dl, 40(%esi)
e0102202:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e0102207:	80 e2 07 	andb	$7, %dl
e010220a:	80 c2 03 	addb	$3, %dl
e010220d:	3a 56 28 	cmpb	40(%esi), %dl
e0102210:	0f 8c 2e ff ff ff 	jl	-210 <check_page_free_list+0x304>
e0102216:	e9 80 02 00 00 	jmp	640 <check_page_free_list+0x65b>
e010221b:	88 dc 	movb	%bl, %ah
e010221d:	80 e4 07 	andb	$7, %ah
e0102220:	80 c4 03 	addb	$3, %ah
e0102223:	38 c4 	cmpb	%al, %ah
e0102225:	7c b0 	jl	-80 <check_page_free_list+0x397>
e0102227:	83 ec 0c 	subl	$12, %esp
e010222a:	53 	pushl	%ebx
e010222b:	e8 60 65 00 00 	calll	25952 <__asan_report_load4>
e0102230:	83 c4 10 	addl	$16, %esp
e0102233:	83 7e 1c 00 	cmpl	$0, 28(%esi)
e0102237:	0f 84 6e 02 00 00 	je	622 <check_page_free_list+0x66b>
e010223d:	85 ff 	testl	%edi, %edi
e010223f:	0f 84 bb 02 00 00 	je	699 <check_page_free_list+0x6c0>
e0102245:	8b 46 34 	movl	52(%esi), %eax
e0102248:	c7 00 0e 36 e0 45 	movl	$1172321806, (%eax)
e010224e:	8b 46 38 	movl	56(%esi), %eax
e0102251:	85 c0 	testl	%eax, %eax
e0102253:	8b 4e 30 	movl	48(%esi), %ecx
e0102256:	74 30 	je	48 <check_page_free_list+0x448>
e0102258:	c7 81 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%ecx)
e0102262:	c7 81 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%ecx)
e010226c:	c7 81 08 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036728(%ecx)
e0102276:	c7 81 0c 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036724(%ecx)
e0102280:	8b 40 7c 	movl	124(%eax), %eax
e0102283:	c6 00 00 	movb	$0, (%eax)
e0102286:	eb 1d 	jmp	29 <check_page_free_list+0x465>
e0102288:	c7 81 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%ecx)
e0102292:	c7 81 04 00 80 de 00 00 00 00 	movl	$0, -562036732(%ecx)
e010229c:	66 c7 81 08 00 80 de 00 00 	movw	$0, -562036728(%ecx)
e01022a5:	8d 65 f4 	leal	-12(%ebp), %esp
e01022a8:	5e 	popl	%esi
e01022a9:	5f 	popl	%edi
e01022aa:	5b 	popl	%ebx
e01022ab:	5d 	popl	%ebp
e01022ac:	c3 	retl
e01022ad:	8b 4e 1c 	movl	28(%esi), %ecx
e01022b0:	80 e1 07 	andb	$7, %cl
e01022b3:	80 c1 03 	addb	$3, %cl
e01022b6:	38 d1 	cmpb	%dl, %cl
e01022b8:	8b 4e 1c 	movl	28(%esi), %ecx
e01022bb:	0f 8c 33 fc ff ff 	jl	-973 <check_page_free_list+0xb4>
e01022c1:	83 ec 0c 	subl	$12, %esp
e01022c4:	51 	pushl	%ecx
e01022c5:	e8 e6 64 00 00 	calll	25830 <__asan_report_store4>
e01022ca:	83 c4 10 	addl	$16, %esp
e01022cd:	89 d1 	movl	%edx, %ecx
e01022cf:	80 e1 07 	andb	$7, %cl
e01022d2:	80 c1 03 	addb	$3, %cl
e01022d5:	38 c1 	cmpb	%al, %cl
e01022d7:	0f 8c 38 fc ff ff 	jl	-968 <check_page_free_list+0xd5>
e01022dd:	83 ec 0c 	subl	$12, %esp
e01022e0:	52 	pushl	%edx
e01022e1:	e8 ca 64 00 00 	calll	25802 <__asan_report_store4>
e01022e6:	83 c4 10 	addl	$16, %esp
e01022e9:	8b 4e 20 	movl	32(%esi), %ecx
e01022ec:	80 e1 07 	andb	$7, %cl
e01022ef:	80 c1 03 	addb	$3, %cl
e01022f2:	38 c1 	cmpb	%al, %cl
e01022f4:	0f 8c e5 fc ff ff 	jl	-795 <check_page_free_list+0x19f>
e01022fa:	83 ec 0c 	subl	$12, %esp
e01022fd:	ff 76 20 	pushl	32(%esi)
e0102300:	e8 8b 64 00 00 	calll	25739 <__asan_report_load4>
e0102305:	83 c4 10 	addl	$16, %esp
e0102308:	89 c2 	movl	%eax, %edx
e010230a:	80 e2 07 	andb	$7, %dl
e010230d:	80 c2 03 	addb	$3, %dl
e0102310:	38 ca 	cmpb	%cl, %dl
e0102312:	0f 8c e5 fc ff ff 	jl	-795 <check_page_free_list+0x1bd>
e0102318:	83 ec 0c 	subl	$12, %esp
e010231b:	50 	pushl	%eax
e010231c:	e8 8f 64 00 00 	calll	25743 <__asan_report_store4>
e0102321:	83 c4 10 	addl	$16, %esp
e0102324:	8b 4e 24 	movl	36(%esi), %ecx
e0102327:	80 e1 07 	andb	$7, %cl
e010232a:	80 c1 03 	addb	$3, %cl
e010232d:	38 c1 	cmpb	%al, %cl
e010232f:	8b 4e 24 	movl	36(%esi), %ecx
e0102332:	0f 8c e1 fc ff ff 	jl	-799 <check_page_free_list+0x1d9>
e0102338:	83 ec 0c 	subl	$12, %esp
e010233b:	51 	pushl	%ecx
e010233c:	e8 4f 64 00 00 	calll	25679 <__asan_report_load4>
e0102341:	83 c4 10 	addl	$16, %esp
e0102344:	8b 56 1c 	movl	28(%esi), %edx
e0102347:	80 e2 07 	andb	$7, %dl
e010234a:	80 c2 03 	addb	$3, %dl
e010234d:	38 ca 	cmpb	%cl, %dl
e010234f:	0f 8c d7 fc ff ff 	jl	-809 <check_page_free_list+0x1ec>
e0102355:	83 ec 0c 	subl	$12, %esp
e0102358:	ff 76 1c 	pushl	28(%esi)
e010235b:	e8 30 64 00 00 	calll	25648 <__asan_report_load4>
e0102360:	83 c4 10 	addl	$16, %esp
e0102363:	88 ce 	movb	%cl, %dh
e0102365:	80 e6 07 	andb	$7, %dh
e0102368:	80 c6 03 	addb	$3, %dh
e010236b:	38 d6 	cmpb	%dl, %dh
e010236d:	0f 8c d1 fc ff ff 	jl	-815 <check_page_free_list+0x204>
e0102373:	83 ec 0c 	subl	$12, %esp
e0102376:	51 	pushl	%ecx
e0102377:	e8 34 64 00 00 	calll	25652 <__asan_report_store4>
e010237c:	83 c4 10 	addl	$16, %esp
e010237f:	89 d9 	movl	%ebx, %ecx
e0102381:	80 e1 07 	andb	$7, %cl
e0102384:	80 c1 03 	addb	$3, %cl
e0102387:	38 c1 	cmpb	%al, %cl
e0102389:	0f 8c ca fc ff ff 	jl	-822 <check_page_free_list+0x219>
e010238f:	83 ec 0c 	subl	$12, %esp
e0102392:	53 	pushl	%ebx
e0102393:	e8 f8 63 00 00 	calll	25592 <__asan_report_load4>
e0102398:	83 c4 10 	addl	$16, %esp
e010239b:	e8 00 62 00 00 	calll	25088 <__asan_handle_no_return>
e01023a0:	68 c0 b6 10 e0 	pushl	$3759191744
e01023a5:	68 40 b6 10 e0 	pushl	$3759191616
e01023aa:	68 d9 01 00 00 	pushl	$473
e01023af:	68 c0 b3 10 e0 	pushl	$3759190976
e01023b4:	e8 77 dd ff ff 	calll	-8841 <_panic>
e01023b9:	e8 e2 61 00 00 	calll	25058 <__asan_handle_no_return>
e01023be:	68 00 b7 10 e0 	pushl	$3759191808
e01023c3:	68 40 b6 10 e0 	pushl	$3759191616
e01023c8:	68 da 01 00 00 	pushl	$474
e01023cd:	68 c0 b3 10 e0 	pushl	$3759190976
e01023d2:	e8 59 dd ff ff 	calll	-8871 <_panic>
e01023d7:	e8 c4 61 00 00 	calll	25028 <__asan_handle_no_return>
e01023dc:	68 40 b8 10 e0 	pushl	$3759192128
e01023e1:	68 40 b6 10 e0 	pushl	$3759191616
e01023e6:	68 e0 01 00 00 	pushl	$480
e01023eb:	68 c0 b3 10 e0 	pushl	$3759190976
e01023f0:	e8 3b dd ff ff 	calll	-8901 <_panic>
e01023f5:	e8 a6 61 00 00 	calll	24998 <__asan_handle_no_return>
e01023fa:	68 80 b6 10 e0 	pushl	$3759191680
e01023ff:	68 40 b6 10 e0 	pushl	$3759191616
e0102404:	68 d8 01 00 00 	pushl	$472
e0102409:	68 c0 b3 10 e0 	pushl	$3759190976
e010240e:	e8 1d dd ff ff 	calll	-8931 <_panic>
e0102413:	e8 88 61 00 00 	calll	24968 <__asan_handle_no_return>
e0102418:	68 60 b7 10 e0 	pushl	$3759191904
e010241d:	68 40 b6 10 e0 	pushl	$3759191616
e0102422:	68 dd 01 00 00 	pushl	$477
e0102427:	68 c0 b3 10 e0 	pushl	$3759190976
e010242c:	e8 ff dc ff ff 	calll	-8961 <_panic>
e0102431:	e8 6a 61 00 00 	calll	24938 <__asan_handle_no_return>
e0102436:	68 a0 b7 10 e0 	pushl	$3759191968
e010243b:	68 40 b6 10 e0 	pushl	$3759191616
e0102440:	68 de 01 00 00 	pushl	$478
e0102445:	68 c0 b3 10 e0 	pushl	$3759190976
e010244a:	e8 e1 dc ff ff 	calll	-8991 <_panic>
e010244f:	e8 4c 61 00 00 	calll	24908 <__asan_handle_no_return>
e0102454:	68 e0 b7 10 e0 	pushl	$3759192032
e0102459:	68 40 b6 10 e0 	pushl	$3759191616
e010245e:	68 df 01 00 00 	pushl	$479
e0102463:	68 c0 b3 10 e0 	pushl	$3759190976
e0102468:	e8 c3 dc ff ff 	calll	-9021 <_panic>
e010246d:	e8 2e 61 00 00 	calll	24878 <__asan_handle_no_return>
e0102472:	68 80 b8 10 e0 	pushl	$3759192192
e0102477:	68 40 b6 10 e0 	pushl	$3759191616
e010247c:	68 e1 01 00 00 	pushl	$481
e0102481:	68 c0 b3 10 e0 	pushl	$3759190976
e0102486:	e8 a5 dc ff ff 	calll	-9051 <_panic>
e010248b:	83 ec 0c 	subl	$12, %esp
e010248e:	68 bc 2f 12 e0 	pushl	$3759288252
e0102493:	e8 f8 62 00 00 	calll	25336 <__asan_report_load4>
e0102498:	83 c4 10 	addl	$16, %esp
e010249b:	83 ec 0c 	subl	$12, %esp
e010249e:	68 b4 2f 12 e0 	pushl	$3759288244
e01024a3:	e8 e8 62 00 00 	calll	25320 <__asan_report_load4>
e01024a8:	83 c4 10 	addl	$16, %esp
e01024ab:	e8 f0 60 00 00 	calll	24816 <__asan_handle_no_return>
e01024b0:	68 00 b9 10 e0 	pushl	$3759192320
e01024b5:	68 40 b6 10 e0 	pushl	$3759191616
e01024ba:	68 e9 01 00 00 	pushl	$489
e01024bf:	68 c0 b3 10 e0 	pushl	$3759190976
e01024c4:	e8 67 dc ff ff 	calll	-9113 <_panic>
e01024c9:	e8 d2 60 00 00 	calll	24786 <__asan_handle_no_return>
e01024ce:	83 ec 04 	subl	$4, %esp
e01024d1:	68 e0 b5 10 e0 	pushl	$3759191520
e01024d6:	68 b7 01 00 00 	pushl	$439
e01024db:	68 c0 b3 10 e0 	pushl	$3759190976
e01024e0:	e8 4b dc ff ff 	calll	-9141 <_panic>
e01024e5:	83 c4 04 	addl	$4, %esp
e01024e8:	83 ec 0c 	subl	$12, %esp
e01024eb:	53 	pushl	%ebx
e01024ec:	e8 9f 62 00 00 	calll	25247 <__asan_report_load4>
e01024f1:	83 c4 10 	addl	$16, %esp
e01024f4:	83 ec 0c 	subl	$12, %esp
e01024f7:	50 	pushl	%eax
e01024f8:	e8 93 62 00 00 	calll	25235 <__asan_report_load4>
e01024fd:	83 c4 10 	addl	$16, %esp
e0102500:	e8 9b 60 00 00 	calll	24731 <__asan_handle_no_return>
e0102505:	68 40 b9 10 e0 	pushl	$3759192384
e010250a:	68 40 b6 10 e0 	pushl	$3759191616
e010250f:	68 ea 01 00 00 	pushl	$490
e0102514:	68 c0 b3 10 e0 	pushl	$3759190976
e0102519:	e8 12 dc ff ff 	calll	-9198 <_panic>
e010251e:	66 90 	nop
e0102520:	55 	pushl	%ebp
e0102521:	89 e5 	movl	%esp, %ebp
e0102523:	53 	pushl	%ebx
e0102524:	57 	pushl	%edi
e0102525:	56 	pushl	%esi
e0102526:	83 ec 0c 	subl	$12, %esp
e0102529:	b8 bc 2f 12 e0 	movl	$3759288252, %eax
e010252e:	c1 e8 03 	shrl	$3, %eax
e0102531:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102537:	84 c0 	testb	%al, %al
e0102539:	0f 85 dd 02 00 00 	jne	733 <check_page_alloc+0x2fc>
e010253f:	83 3d bc 2f 12 e0 00 	cmpl	$0, -535679044
e0102546:	0f 84 70 03 00 00 	je	880 <check_page_alloc+0x39c>
e010254c:	a1 a0 1d 12 e0 	movl	3759283616, %eax
e0102551:	31 ff 	xorl	%edi, %edi
e0102553:	85 c0 	testl	%eax, %eax
e0102555:	75 10 	jne	16 <check_page_alloc+0x47>
e0102557:	eb 36 	jmp	54 <check_page_alloc+0x6f>
e0102559:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0102560:	47 	incl	%edi
e0102561:	8b 00 	movl	(%eax), %eax
e0102563:	85 c0 	testl	%eax, %eax
e0102565:	74 28 	je	40 <check_page_alloc+0x6f>
e0102567:	89 c1 	movl	%eax, %ecx
e0102569:	c1 e9 03 	shrl	$3, %ecx
e010256c:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0102573:	84 c9 	testb	%cl, %cl
e0102575:	74 e9 	je	-23 <check_page_alloc+0x40>
e0102577:	89 c2 	movl	%eax, %edx
e0102579:	80 e2 07 	andb	$7, %dl
e010257c:	80 c2 03 	addb	$3, %dl
e010257f:	38 ca 	cmpb	%cl, %dl
e0102581:	7c dd 	jl	-35 <check_page_alloc+0x40>
e0102583:	83 ec 0c 	subl	$12, %esp
e0102586:	50 	pushl	%eax
e0102587:	e8 04 62 00 00 	calll	25092 <__asan_report_load4>
e010258c:	83 c4 10 	addl	$16, %esp
e010258f:	83 ec 0c 	subl	$12, %esp
e0102592:	6a 00 	pushl	$0
e0102594:	e8 27 05 00 00 	calll	1319 <page_alloc>
e0102599:	83 c4 10 	addl	$16, %esp
e010259c:	85 c0 	testl	%eax, %eax
e010259e:	0f 84 37 03 00 00 	je	823 <check_page_alloc+0x3bb>
e01025a4:	89 c6 	movl	%eax, %esi
e01025a6:	83 ec 0c 	subl	$12, %esp
e01025a9:	6a 00 	pushl	$0
e01025ab:	e8 10 05 00 00 	calll	1296 <page_alloc>
e01025b0:	83 c4 10 	addl	$16, %esp
e01025b3:	89 45 f0 	movl	%eax, -16(%ebp)
e01025b6:	85 c0 	testl	%eax, %eax
e01025b8:	0f 84 3b 03 00 00 	je	827 <check_page_alloc+0x3d9>
e01025be:	83 ec 0c 	subl	$12, %esp
e01025c1:	6a 00 	pushl	$0
e01025c3:	e8 f8 04 00 00 	calll	1272 <page_alloc>
e01025c8:	83 c4 10 	addl	$16, %esp
e01025cb:	85 c0 	testl	%eax, %eax
e01025cd:	0f 84 44 03 00 00 	je	836 <check_page_alloc+0x3f7>
e01025d3:	89 c3 	movl	%eax, %ebx
e01025d5:	8b 45 f0 	movl	-16(%ebp), %eax
e01025d8:	39 f0 	cmpl	%esi, %eax
e01025da:	0f 84 55 03 00 00 	je	853 <check_page_alloc+0x415>
e01025e0:	39 c3 	cmpl	%eax, %ebx
e01025e2:	0f 84 98 02 00 00 	je	664 <check_page_alloc+0x360>
e01025e8:	39 f3 	cmpl	%esi, %ebx
e01025ea:	0f 84 90 02 00 00 	je	656 <check_page_alloc+0x360>
e01025f0:	89 75 ec 	movl	%esi, -20(%ebp)
e01025f3:	89 f1 	movl	%esi, %ecx
e01025f5:	e8 46 08 00 00 	calll	2118 <page2pa>
e01025fa:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e01025ff:	c1 e9 03 	shrl	$3, %ecx
e0102602:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102608:	84 c9 	testb	%cl, %cl
e010260a:	0f 85 2f 02 00 00 	jne	559 <check_page_alloc+0x31f>
e0102610:	8b 35 b4 2f 12 e0 	movl	-535679052, %esi
e0102616:	c1 e6 0c 	shll	$12, %esi
e0102619:	39 f0 	cmpl	%esi, %eax
e010261b:	0f 83 32 03 00 00 	jae	818 <check_page_alloc+0x433>
e0102621:	8b 4d f0 	movl	-16(%ebp), %ecx
e0102624:	e8 17 08 00 00 	calll	2071 <page2pa>
e0102629:	39 f0 	cmpl	%esi, %eax
e010262b:	0f 83 40 03 00 00 	jae	832 <check_page_alloc+0x451>
e0102631:	89 d9 	movl	%ebx, %ecx
e0102633:	e8 08 08 00 00 	calll	2056 <page2pa>
e0102638:	39 f0 	cmpl	%esi, %eax
e010263a:	0f 83 4f 03 00 00 	jae	847 <check_page_alloc+0x46f>
e0102640:	a1 a0 1d 12 e0 	movl	3759283616, %eax
e0102645:	89 45 e8 	movl	%eax, -24(%ebp)
e0102648:	c7 05 a0 1d 12 e0 00 00 00 00 	movl	$0, -535683680
e0102652:	83 ec 0c 	subl	$12, %esp
e0102655:	6a 00 	pushl	$0
e0102657:	e8 64 04 00 00 	calll	1124 <page_alloc>
e010265c:	83 c4 10 	addl	$16, %esp
e010265f:	85 c0 	testl	%eax, %eax
e0102661:	8b 45 ec 	movl	-20(%ebp), %eax
e0102664:	0f 85 43 03 00 00 	jne	835 <check_page_alloc+0x48d>
e010266a:	83 ec 0c 	subl	$12, %esp
e010266d:	50 	pushl	%eax
e010266e:	e8 6d 05 00 00 	calll	1389 <page_free>
e0102673:	83 c4 04 	addl	$4, %esp
e0102676:	ff 75 f0 	pushl	-16(%ebp)
e0102679:	e8 62 05 00 00 	calll	1378 <page_free>
e010267e:	83 c4 04 	addl	$4, %esp
e0102681:	53 	pushl	%ebx
e0102682:	e8 59 05 00 00 	calll	1369 <page_free>
e0102687:	83 c4 04 	addl	$4, %esp
e010268a:	6a 00 	pushl	$0
e010268c:	e8 2f 04 00 00 	calll	1071 <page_alloc>
e0102691:	83 c4 10 	addl	$16, %esp
e0102694:	85 c0 	testl	%eax, %eax
e0102696:	0f 84 2f 03 00 00 	je	815 <check_page_alloc+0x4ab>
e010269c:	89 c6 	movl	%eax, %esi
e010269e:	83 ec 0c 	subl	$12, %esp
e01026a1:	6a 00 	pushl	$0
e01026a3:	e8 18 04 00 00 	calll	1048 <page_alloc>
e01026a8:	83 c4 10 	addl	$16, %esp
e01026ab:	85 c0 	testl	%eax, %eax
e01026ad:	0f 84 36 03 00 00 	je	822 <check_page_alloc+0x4c9>
e01026b3:	89 c3 	movl	%eax, %ebx
e01026b5:	83 ec 0c 	subl	$12, %esp
e01026b8:	6a 00 	pushl	$0
e01026ba:	e8 01 04 00 00 	calll	1025 <page_alloc>
e01026bf:	83 c4 10 	addl	$16, %esp
e01026c2:	85 c0 	testl	%eax, %eax
e01026c4:	0f 84 3d 03 00 00 	je	829 <check_page_alloc+0x4e7>
e01026ca:	39 f3 	cmpl	%esi, %ebx
e01026cc:	0f 84 53 03 00 00 	je	851 <check_page_alloc+0x505>
e01026d2:	39 d8 	cmpl	%ebx, %eax
e01026d4:	0f 84 c4 01 00 00 	je	452 <check_page_alloc+0x37e>
e01026da:	39 f0 	cmpl	%esi, %eax
e01026dc:	0f 84 bc 01 00 00 	je	444 <check_page_alloc+0x37e>
e01026e2:	89 45 ec 	movl	%eax, -20(%ebp)
e01026e5:	83 ec 0c 	subl	$12, %esp
e01026e8:	6a 00 	pushl	$0
e01026ea:	e8 d1 03 00 00 	calll	977 <page_alloc>
e01026ef:	83 c4 10 	addl	$16, %esp
e01026f2:	85 c0 	testl	%eax, %eax
e01026f4:	0f 85 49 03 00 00 	jne	841 <check_page_alloc+0x523>
e01026fa:	89 f1 	movl	%esi, %ecx
e01026fc:	e8 bf 04 00 00 	calll	1215 <page2kva>
e0102701:	83 ec 04 	subl	$4, %esp
e0102704:	68 00 10 00 00 	pushl	$4096
e0102709:	6a 01 	pushl	$1
e010270b:	50 	pushl	%eax
e010270c:	e8 ff 6b 00 00 	calll	27647 <__wrap_memset>
e0102711:	83 c4 04 	addl	$4, %esp
e0102714:	56 	pushl	%esi
e0102715:	e8 c6 04 00 00 	calll	1222 <page_free>
e010271a:	83 c4 04 	addl	$4, %esp
e010271d:	6a 01 	pushl	$1
e010271f:	e8 9c 03 00 00 	calll	924 <page_alloc>
e0102724:	83 c4 10 	addl	$16, %esp
e0102727:	85 c0 	testl	%eax, %eax
e0102729:	0f 84 32 03 00 00 	je	818 <check_page_alloc+0x541>
e010272f:	89 5d f0 	movl	%ebx, -16(%ebp)
e0102732:	39 c6 	cmpl	%eax, %esi
e0102734:	0f 85 45 03 00 00 	jne	837 <check_page_alloc+0x55f>
e010273a:	89 c1 	movl	%eax, %ecx
e010273c:	e8 7f 04 00 00 	calll	1151 <page2kva>
e0102741:	31 c9 	xorl	%ecx, %ecx
e0102743:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010274d:	0f 1f 00 	nopl	(%eax)
e0102750:	8d 14 08 	leal	(%eax,%ecx), %edx
e0102753:	89 d3 	movl	%edx, %ebx
e0102755:	c1 eb 03 	shrl	$3, %ebx
e0102758:	0f b6 9b 00 00 80 de 	movzbl	-562036736(%ebx), %ebx
e010275f:	84 db 	testb	%bl, %bl
e0102761:	75 14 	jne	20 <check_page_alloc+0x257>
e0102763:	80 3a 00 	cmpb	$0, (%edx)
e0102766:	0f 85 f6 00 00 00 	jne	246 <check_page_alloc+0x342>
e010276c:	41 	incl	%ecx
e010276d:	81 f9 ff 0f 00 00 	cmpl	$4095, %ecx
e0102773:	76 db 	jbe	-37 <check_page_alloc+0x230>
e0102775:	eb 15 	jmp	21 <check_page_alloc+0x26c>
e0102777:	88 d7 	movb	%dl, %bh
e0102779:	80 e7 07 	andb	$7, %bh
e010277c:	38 df 	cmpb	%bl, %bh
e010277e:	7c e3 	jl	-29 <check_page_alloc+0x243>
e0102780:	83 ec 0c 	subl	$12, %esp
e0102783:	52 	pushl	%edx
e0102784:	e8 67 5f 00 00 	calll	24423 <__asan_report_load1>
e0102789:	83 c4 10 	addl	$16, %esp
e010278c:	8b 45 e8 	movl	-24(%ebp), %eax
e010278f:	a3 a0 1d 12 e0 	movl	%eax, 3759283616
e0102794:	83 ec 0c 	subl	$12, %esp
e0102797:	56 	pushl	%esi
e0102798:	e8 43 04 00 00 	calll	1091 <page_free>
e010279d:	83 c4 04 	addl	$4, %esp
e01027a0:	ff 75 f0 	pushl	-16(%ebp)
e01027a3:	e8 38 04 00 00 	calll	1080 <page_free>
e01027a8:	83 c4 04 	addl	$4, %esp
e01027ab:	ff 75 ec 	pushl	-20(%ebp)
e01027ae:	e8 2d 04 00 00 	calll	1069 <page_free>
e01027b3:	83 c4 10 	addl	$16, %esp
e01027b6:	a1 a0 1d 12 e0 	movl	3759283616, %eax
e01027bb:	85 c0 	testl	%eax, %eax
e01027bd:	75 18 	jne	24 <check_page_alloc+0x2b7>
e01027bf:	eb 3e 	jmp	62 <check_page_alloc+0x2df>
e01027c1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01027cb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e01027d0:	4f 	decl	%edi
e01027d1:	8b 00 	movl	(%eax), %eax
e01027d3:	85 c0 	testl	%eax, %eax
e01027d5:	74 28 	je	40 <check_page_alloc+0x2df>
e01027d7:	89 c1 	movl	%eax, %ecx
e01027d9:	c1 e9 03 	shrl	$3, %ecx
e01027dc:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e01027e3:	84 c9 	testb	%cl, %cl
e01027e5:	74 e9 	je	-23 <check_page_alloc+0x2b0>
e01027e7:	89 c2 	movl	%eax, %edx
e01027e9:	80 e2 07 	andb	$7, %dl
e01027ec:	80 c2 03 	addb	$3, %dl
e01027ef:	38 ca 	cmpb	%cl, %dl
e01027f1:	7c dd 	jl	-35 <check_page_alloc+0x2b0>
e01027f3:	83 ec 0c 	subl	$12, %esp
e01027f6:	50 	pushl	%eax
e01027f7:	e8 94 5f 00 00 	calll	24468 <__asan_report_load4>
e01027fc:	83 c4 10 	addl	$16, %esp
e01027ff:	85 ff 	testl	%edi, %edi
e0102801:	0f 85 96 02 00 00 	jne	662 <check_page_alloc+0x57d>
e0102807:	83 ec 0c 	subl	$12, %esp
e010280a:	68 00 bd 10 e0 	pushl	$3759193344
e010280f:	e8 2c 17 00 00 	calll	5932 <cprintf>
e0102814:	83 c4 1c 	addl	$28, %esp
e0102817:	5e 	popl	%esi
e0102818:	5f 	popl	%edi
e0102819:	5b 	popl	%ebx
e010281a:	5d 	popl	%ebp
e010281b:	c3 	retl
e010281c:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e0102821:	80 e1 07 	andb	$7, %cl
e0102824:	80 c1 03 	addb	$3, %cl
e0102827:	38 c1 	cmpb	%al, %cl
e0102829:	0f 8c 10 fd ff ff 	jl	-752 <check_page_alloc+0x1f>
e010282f:	83 ec 0c 	subl	$12, %esp
e0102832:	68 bc 2f 12 e0 	pushl	$3759288252
e0102837:	e8 54 5f 00 00 	calll	24404 <__asan_report_load4>
e010283c:	83 c4 10 	addl	$16, %esp
e010283f:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e0102844:	80 e2 07 	andb	$7, %dl
e0102847:	80 c2 03 	addb	$3, %dl
e010284a:	38 ca 	cmpb	%cl, %dl
e010284c:	0f 8c be fd ff ff 	jl	-578 <check_page_alloc+0xf0>
e0102852:	83 ec 0c 	subl	$12, %esp
e0102855:	68 b4 2f 12 e0 	pushl	$3759288244
e010285a:	e8 31 5f 00 00 	calll	24369 <__asan_report_load4>
e010285f:	83 c4 10 	addl	$16, %esp
e0102862:	e8 39 5d 00 00 	calll	23865 <__asan_handle_no_return>
e0102867:	68 80 bc 10 e0 	pushl	$3759193216
e010286c:	68 40 b6 10 e0 	pushl	$3759191616
e0102871:	68 29 02 00 00 	pushl	$553
e0102876:	68 c0 b3 10 e0 	pushl	$3759190976
e010287b:	e8 b0 d8 ff ff 	calll	-10064 <_panic>
e0102880:	e8 1b 5d 00 00 	calll	23835 <__asan_handle_no_return>
e0102885:	68 c0 ba 10 e0 	pushl	$3759192768
e010288a:	68 40 b6 10 e0 	pushl	$3759191616
e010288f:	68 09 02 00 00 	pushl	$521
e0102894:	68 c0 b3 10 e0 	pushl	$3759190976
e0102899:	e8 92 d8 ff ff 	calll	-10094 <_panic>
e010289e:	e8 fd 5c 00 00 	calll	23805 <__asan_handle_no_return>
e01028a3:	68 c0 ba 10 e0 	pushl	$3759192768
e01028a8:	68 40 b6 10 e0 	pushl	$3759191616
e01028ad:	68 1f 02 00 00 	pushl	$543
e01028b2:	68 c0 b3 10 e0 	pushl	$3759190976
e01028b7:	e8 74 d8 ff ff 	calll	-10124 <_panic>
e01028bc:	e8 df 5c 00 00 	calll	23775 <__asan_handle_no_return>
e01028c1:	83 ec 04 	subl	$4, %esp
e01028c4:	68 80 b9 10 e0 	pushl	$3759192448
e01028c9:	68 fb 01 00 00 	pushl	$507
e01028ce:	68 c0 b3 10 e0 	pushl	$3759190976
e01028d3:	e8 58 d8 ff ff 	calll	-10152 <_panic>
e01028d8:	83 c4 04 	addl	$4, %esp
e01028db:	e8 c0 5c 00 00 	calll	23744 <__asan_handle_no_return>
e01028e0:	68 c0 b9 10 e0 	pushl	$3759192512
e01028e5:	68 40 b6 10 e0 	pushl	$3759191616
e01028ea:	68 03 02 00 00 	pushl	$515
e01028ef:	68 c0 b3 10 e0 	pushl	$3759190976
e01028f4:	e8 37 d8 ff ff 	calll	-10185 <_panic>
e01028f9:	e8 a2 5c 00 00 	calll	23714 <__asan_handle_no_return>
e01028fe:	68 00 ba 10 e0 	pushl	$3759192576
e0102903:	68 40 b6 10 e0 	pushl	$3759191616
e0102908:	68 04 02 00 00 	pushl	$516
e010290d:	68 c0 b3 10 e0 	pushl	$3759190976
e0102912:	e8 19 d8 ff ff 	calll	-10215 <_panic>
e0102917:	e8 84 5c 00 00 	calll	23684 <__asan_handle_no_return>
e010291c:	68 40 ba 10 e0 	pushl	$3759192640
e0102921:	68 40 b6 10 e0 	pushl	$3759191616
e0102926:	68 05 02 00 00 	pushl	$517
e010292b:	68 c0 b3 10 e0 	pushl	$3759190976
e0102930:	e8 fb d7 ff ff 	calll	-10245 <_panic>
e0102935:	e8 66 5c 00 00 	calll	23654 <__asan_handle_no_return>
e010293a:	68 80 ba 10 e0 	pushl	$3759192704
e010293f:	68 40 b6 10 e0 	pushl	$3759191616
e0102944:	68 08 02 00 00 	pushl	$520
e0102949:	68 c0 b3 10 e0 	pushl	$3759190976
e010294e:	e8 dd d7 ff ff 	calll	-10275 <_panic>
e0102953:	e8 48 5c 00 00 	calll	23624 <__asan_handle_no_return>
e0102958:	68 00 bb 10 e0 	pushl	$3759192832
e010295d:	68 40 b6 10 e0 	pushl	$3759191616
e0102962:	68 0a 02 00 00 	pushl	$522
e0102967:	68 c0 b3 10 e0 	pushl	$3759190976
e010296c:	e8 bf d7 ff ff 	calll	-10305 <_panic>
e0102971:	e8 2a 5c 00 00 	calll	23594 <__asan_handle_no_return>
e0102976:	68 40 bb 10 e0 	pushl	$3759192896
e010297b:	68 40 b6 10 e0 	pushl	$3759191616
e0102980:	68 0b 02 00 00 	pushl	$523
e0102985:	68 c0 b3 10 e0 	pushl	$3759190976
e010298a:	e8 a1 d7 ff ff 	calll	-10335 <_panic>
e010298f:	e8 0c 5c 00 00 	calll	23564 <__asan_handle_no_return>
e0102994:	68 80 bb 10 e0 	pushl	$3759192960
e0102999:	68 40 b6 10 e0 	pushl	$3759191616
e010299e:	68 0c 02 00 00 	pushl	$524
e01029a3:	68 c0 b3 10 e0 	pushl	$3759190976
e01029a8:	e8 83 d7 ff ff 	calll	-10365 <_panic>
e01029ad:	e8 ee 5b 00 00 	calll	23534 <__asan_handle_no_return>
e01029b2:	68 c0 bb 10 e0 	pushl	$3759193024
e01029b7:	68 40 b6 10 e0 	pushl	$3759191616
e01029bc:	68 13 02 00 00 	pushl	$531
e01029c1:	68 c0 b3 10 e0 	pushl	$3759190976
e01029c6:	e8 65 d7 ff ff 	calll	-10395 <_panic>
e01029cb:	e8 d0 5b 00 00 	calll	23504 <__asan_handle_no_return>
e01029d0:	68 c0 b9 10 e0 	pushl	$3759192512
e01029d5:	68 40 b6 10 e0 	pushl	$3759191616
e01029da:	68 1a 02 00 00 	pushl	$538
e01029df:	68 c0 b3 10 e0 	pushl	$3759190976
e01029e4:	e8 47 d7 ff ff 	calll	-10425 <_panic>
e01029e9:	e8 b2 5b 00 00 	calll	23474 <__asan_handle_no_return>
e01029ee:	68 00 ba 10 e0 	pushl	$3759192576
e01029f3:	68 40 b6 10 e0 	pushl	$3759191616
e01029f8:	68 1b 02 00 00 	pushl	$539
e01029fd:	68 c0 b3 10 e0 	pushl	$3759190976
e0102a02:	e8 29 d7 ff ff 	calll	-10455 <_panic>
e0102a07:	e8 94 5b 00 00 	calll	23444 <__asan_handle_no_return>
e0102a0c:	68 40 ba 10 e0 	pushl	$3759192640
e0102a11:	68 40 b6 10 e0 	pushl	$3759191616
e0102a16:	68 1c 02 00 00 	pushl	$540
e0102a1b:	68 c0 b3 10 e0 	pushl	$3759190976
e0102a20:	e8 0b d7 ff ff 	calll	-10485 <_panic>
e0102a25:	e8 76 5b 00 00 	calll	23414 <__asan_handle_no_return>
e0102a2a:	68 80 ba 10 e0 	pushl	$3759192704
e0102a2f:	68 40 b6 10 e0 	pushl	$3759191616
e0102a34:	68 1e 02 00 00 	pushl	$542
e0102a39:	68 c0 b3 10 e0 	pushl	$3759190976
e0102a3e:	e8 ed d6 ff ff 	calll	-10515 <_panic>
e0102a43:	e8 58 5b 00 00 	calll	23384 <__asan_handle_no_return>
e0102a48:	68 c0 bb 10 e0 	pushl	$3759193024
e0102a4d:	68 40 b6 10 e0 	pushl	$3759191616
e0102a52:	68 20 02 00 00 	pushl	$544
e0102a57:	68 c0 b3 10 e0 	pushl	$3759190976
e0102a5c:	e8 cf d6 ff ff 	calll	-10545 <_panic>
e0102a61:	e8 3a 5b 00 00 	calll	23354 <__asan_handle_no_return>
e0102a66:	68 00 bc 10 e0 	pushl	$3759193088
e0102a6b:	68 40 b6 10 e0 	pushl	$3759191616
e0102a70:	68 25 02 00 00 	pushl	$549
e0102a75:	68 c0 b3 10 e0 	pushl	$3759190976
e0102a7a:	e8 b1 d6 ff ff 	calll	-10575 <_panic>
e0102a7f:	e8 1c 5b 00 00 	calll	23324 <__asan_handle_no_return>
e0102a84:	68 40 bc 10 e0 	pushl	$3759193152
e0102a89:	68 40 b6 10 e0 	pushl	$3759191616
e0102a8e:	68 26 02 00 00 	pushl	$550
e0102a93:	68 c0 b3 10 e0 	pushl	$3759190976
e0102a98:	e8 93 d6 ff ff 	calll	-10605 <_panic>
e0102a9d:	e8 fe 5a 00 00 	calll	23294 <__asan_handle_no_return>
e0102aa2:	68 c0 bc 10 e0 	pushl	$3759193280
e0102aa7:	68 40 b6 10 e0 	pushl	$3759191616
e0102aac:	68 36 02 00 00 	pushl	$566
e0102ab1:	68 c0 b3 10 e0 	pushl	$3759190976
e0102ab6:	e8 75 d6 ff ff 	calll	-10635 <_panic>
e0102abb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0102ac0:	55 	pushl	%ebp
e0102ac1:	89 e5 	movl	%esp, %ebp
e0102ac3:	53 	pushl	%ebx
e0102ac4:	83 ec 14 	subl	$20, %esp
e0102ac7:	8b 1d a0 1d 12 e0 	movl	-535683680, %ebx
e0102acd:	85 db 	testl	%ebx, %ebx
e0102acf:	0f 84 8c 00 00 00 	je	140 <page_alloc+0xa1>
e0102ad5:	89 d8 	movl	%ebx, %eax
e0102ad7:	c1 e8 03 	shrl	$3, %eax
e0102ada:	8a 88 00 00 80 de 	movb	-562036736(%eax), %cl
e0102ae0:	84 c9 	testb	%cl, %cl
e0102ae2:	0f 85 81 00 00 00 	jne	129 <page_alloc+0xa9>
e0102ae8:	8b 0b 	movl	(%ebx), %ecx
e0102aea:	89 0d a0 1d 12 e0 	movl	%ecx, -535683680
e0102af0:	85 c9 	testl	%ecx, %ecx
e0102af2:	75 20 	jne	32 <page_alloc+0x54>
e0102af4:	b9 b8 2f 12 e0 	movl	$3759288248, %ecx
e0102af9:	c1 e9 03 	shrl	$3, %ecx
e0102afc:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102b02:	84 c9 	testb	%cl, %cl
e0102b04:	0f 85 8b 00 00 00 	jne	139 <page_alloc+0xd5>
e0102b0a:	c7 05 b8 2f 12 e0 00 00 00 00 	movl	$0, -535679048
e0102b14:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102b1a:	84 c0 	testb	%al, %al
e0102b1c:	75 63 	jne	99 <page_alloc+0xc1>
e0102b1e:	8b 45 08 	movl	8(%ebp), %eax
e0102b21:	c7 03 00 00 00 00 	movl	$0, (%ebx)
e0102b27:	a8 01 	testb	$1, %al
e0102b29:	74 1f 	je	31 <page_alloc+0x8a>
e0102b2b:	89 d9 	movl	%ebx, %ecx
e0102b2d:	e8 8e 00 00 00 	calll	142 <page2kva>
e0102b32:	89 04 24 	movl	%eax, (%esp)
e0102b35:	c7 44 24 08 00 10 00 00 	movl	$4096, 8(%esp)
e0102b3d:	c7 44 24 04 00 00 00 00 	movl	$0, 4(%esp)
e0102b45:	e8 c6 67 00 00 	calll	26566 <__wrap_memset>
e0102b4a:	89 d9 	movl	%ebx, %ecx
e0102b4c:	e8 6f 00 00 00 	calll	111 <page2kva>
e0102b51:	89 04 24 	movl	%eax, (%esp)
e0102b54:	c7 44 24 04 00 10 00 00 	movl	$4096, 4(%esp)
e0102b5c:	e8 ef 6b 00 00 	calll	27631 <platform_asan_unpoison>
e0102b61:	89 d8 	movl	%ebx, %eax
e0102b63:	83 c4 14 	addl	$20, %esp
e0102b66:	5b 	popl	%ebx
e0102b67:	5d 	popl	%ebp
e0102b68:	c3 	retl
e0102b69:	89 da 	movl	%ebx, %edx
e0102b6b:	80 e2 07 	andb	$7, %dl
e0102b6e:	80 c2 03 	addb	$3, %dl
e0102b71:	38 ca 	cmpb	%cl, %dl
e0102b73:	0f 8c 6f ff ff ff 	jl	-145 <page_alloc+0x28>
e0102b79:	89 1c 24 	movl	%ebx, (%esp)
e0102b7c:	e8 0f 5c 00 00 	calll	23567 <__asan_report_load4>
e0102b81:	89 d9 	movl	%ebx, %ecx
e0102b83:	80 e1 07 	andb	$7, %cl
e0102b86:	80 c1 03 	addb	$3, %cl
e0102b89:	38 c1 	cmpb	%al, %cl
e0102b8b:	7c 91 	jl	-111 <page_alloc+0x5e>
e0102b8d:	89 1c 24 	movl	%ebx, (%esp)
e0102b90:	e8 1b 5c 00 00 	calll	23579 <__asan_report_store4>
e0102b95:	ba b8 2f 12 e0 	movl	$3759288248, %edx
e0102b9a:	80 e2 07 	andb	$7, %dl
e0102b9d:	80 c2 03 	addb	$3, %dl
e0102ba0:	38 ca 	cmpb	%cl, %dl
e0102ba2:	0f 8c 62 ff ff ff 	jl	-158 <page_alloc+0x4a>
e0102ba8:	c7 04 24 b8 2f 12 e0 	movl	$3759288248, (%esp)
e0102baf:	e8 fc 5b 00 00 	calll	23548 <__asan_report_store4>
e0102bb4:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102bbe:	66 90 	nop
e0102bc0:	55 	pushl	%ebp
e0102bc1:	89 e5 	movl	%esp, %ebp
e0102bc3:	83 ec 08 	subl	$8, %esp
e0102bc6:	e8 75 02 00 00 	calll	629 <page2pa>
e0102bcb:	89 c1 	movl	%eax, %ecx
e0102bcd:	83 c4 08 	addl	$8, %esp
e0102bd0:	5d 	popl	%ebp
e0102bd1:	e9 fa 01 00 00 	jmp	506 <_kaddr>
e0102bd6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102be0:	55 	pushl	%ebp
e0102be1:	89 e5 	movl	%esp, %ebp
e0102be3:	83 ec 18 	subl	$24, %esp
e0102be6:	8b 45 08 	movl	8(%ebp), %eax
e0102be9:	8d 48 04 	leal	4(%eax), %ecx
e0102bec:	89 ca 	movl	%ecx, %edx
e0102bee:	c1 ea 03 	shrl	$3, %edx
e0102bf1:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0102bf7:	84 d2 	testb	%dl, %dl
e0102bf9:	75 70 	jne	112 <page_free+0x8b>
e0102bfb:	66 83 39 00 	cmpw	$0, (%ecx)
e0102bff:	0f 85 d7 00 00 00 	jne	215 <page_free+0xfc>
e0102c05:	89 c1 	movl	%eax, %ecx
e0102c07:	c1 e9 03 	shrl	$3, %ecx
e0102c0a:	8a 91 00 00 80 de 	movb	-562036736(%ecx), %dl
e0102c10:	84 d2 	testb	%dl, %dl
e0102c12:	75 6a 	jne	106 <page_free+0x9e>
e0102c14:	83 38 00 	cmpl	$0, (%eax)
e0102c17:	0f 85 bf 00 00 00 	jne	191 <page_free+0xfc>
e0102c1d:	8b 15 a0 1d 12 e0 	movl	-535683680, %edx
e0102c23:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102c29:	84 c9 	testb	%cl, %cl
e0102c2b:	75 65 	jne	101 <page_free+0xb2>
e0102c2d:	89 10 	movl	%edx, (%eax)
e0102c2f:	a3 a0 1d 12 e0 	movl	%eax, 3759283616
e0102c34:	b9 b8 2f 12 e0 	movl	$3759288248, %ecx
e0102c39:	c1 e9 03 	shrl	$3, %ecx
e0102c3c:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102c42:	84 c9 	testb	%cl, %cl
e0102c44:	75 60 	jne	96 <page_free+0xc6>
e0102c46:	83 3d b8 2f 12 e0 00 	cmpl	$0, -535679048
e0102c4d:	75 17 	jne	23 <page_free+0x86>
e0102c4f:	b9 b8 2f 12 e0 	movl	$3759288248, %ecx
e0102c54:	c1 e9 03 	shrl	$3, %ecx
e0102c57:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102c5d:	84 c9 	testb	%cl, %cl
e0102c5f:	75 60 	jne	96 <page_free+0xe1>
e0102c61:	a3 b8 2f 12 e0 	movl	%eax, 3759288248
e0102c66:	83 c4 18 	addl	$24, %esp
e0102c69:	5d 	popl	%ebp
e0102c6a:	c3 	retl
e0102c6b:	88 ce 	movb	%cl, %dh
e0102c6d:	80 e6 07 	andb	$7, %dh
e0102c70:	fe c6 	incb	%dh
e0102c72:	38 d6 	cmpb	%dl, %dh
e0102c74:	7c 85 	jl	-123 <page_free+0x1b>
e0102c76:	89 0c 24 	movl	%ecx, (%esp)
e0102c79:	e8 d2 5a 00 00 	calll	23250 <__asan_report_load2>
e0102c7e:	88 c6 	movb	%al, %dh
e0102c80:	80 e6 07 	andb	$7, %dh
e0102c83:	80 c6 03 	addb	$3, %dh
e0102c86:	38 d6 	cmpb	%dl, %dh
e0102c88:	7c 8a 	jl	-118 <page_free+0x34>
e0102c8a:	89 04 24 	movl	%eax, (%esp)
e0102c8d:	e8 fe 5a 00 00 	calll	23294 <__asan_report_load4>
e0102c92:	88 c5 	movb	%al, %ch
e0102c94:	80 e5 07 	andb	$7, %ch
e0102c97:	80 c5 03 	addb	$3, %ch
e0102c9a:	38 cd 	cmpb	%cl, %ch
e0102c9c:	7c 8f 	jl	-113 <page_free+0x4d>
e0102c9e:	89 04 24 	movl	%eax, (%esp)
e0102ca1:	e8 0a 5b 00 00 	calll	23306 <__asan_report_store4>
e0102ca6:	ba b8 2f 12 e0 	movl	$3759288248, %edx
e0102cab:	80 e2 07 	andb	$7, %dl
e0102cae:	80 c2 03 	addb	$3, %dl
e0102cb1:	38 ca 	cmpb	%cl, %dl
e0102cb3:	7c 91 	jl	-111 <page_free+0x66>
e0102cb5:	c7 04 24 b8 2f 12 e0 	movl	$3759288248, (%esp)
e0102cbc:	e8 cf 5a 00 00 	calll	23247 <__asan_report_load4>
e0102cc1:	ba b8 2f 12 e0 	movl	$3759288248, %edx
e0102cc6:	80 e2 07 	andb	$7, %dl
e0102cc9:	80 c2 03 	addb	$3, %dl
e0102ccc:	38 ca 	cmpb	%cl, %dl
e0102cce:	7c 91 	jl	-111 <page_free+0x81>
e0102cd0:	c7 04 24 b8 2f 12 e0 	movl	$3759288248, (%esp)
e0102cd7:	e8 d4 5a 00 00 	calll	23252 <__asan_report_store4>
e0102cdc:	e8 bf 58 00 00 	calll	22719 <__asan_handle_no_return>
e0102ce1:	c7 44 24 08 00 b4 10 e0 	movl	$3759191040, 8(%esp)
e0102ce9:	c7 44 24 04 0e 01 00 00 	movl	$270, 4(%esp)
e0102cf1:	c7 04 24 c0 b3 10 e0 	movl	$3759190976, (%esp)
e0102cf8:	e8 33 d4 ff ff 	calll	-11213 <_panic>
e0102cfd:	83 ec 0c 	subl	$12, %esp
e0102d00:	55 	pushl	%ebp
e0102d01:	89 e5 	movl	%esp, %ebp
e0102d03:	83 ec 08 	subl	$8, %esp
e0102d06:	8b 45 08 	movl	8(%ebp), %eax
e0102d09:	83 c0 04 	addl	$4, %eax
e0102d0c:	89 c1 	movl	%eax, %ecx
e0102d0e:	c1 e9 03 	shrl	$3, %ecx
e0102d11:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102d17:	84 c9 	testb	%cl, %cl
e0102d19:	75 13 	jne	19 <page_decref+0x2e>
e0102d1b:	66 ff 08 	decw	(%eax)
e0102d1e:	74 05 	je	5 <page_decref+0x25>
e0102d20:	83 c4 08 	addl	$8, %esp
e0102d23:	5d 	popl	%ebp
e0102d24:	c3 	retl
e0102d25:	83 c4 08 	addl	$8, %esp
e0102d28:	5d 	popl	%ebp
e0102d29:	e9 b2 fe ff ff 	jmp	-334 <page_free>
e0102d2e:	89 c2 	movl	%eax, %edx
e0102d30:	80 e2 07 	andb	$7, %dl
e0102d33:	fe c2 	incb	%dl
e0102d35:	38 ca 	cmpb	%cl, %dl
e0102d37:	7c e2 	jl	-30 <page_decref+0x1b>
e0102d39:	89 04 24 	movl	%eax, (%esp)
e0102d3c:	e8 0f 5a 00 00 	calll	23055 <__asan_report_load2>
e0102d41:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102d4b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0102d50:	31 c0 	xorl	%eax, %eax
e0102d52:	c3 	retl
e0102d53:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102d5d:	0f 1f 00 	nopl	(%eax)
e0102d60:	31 c0 	xorl	%eax, %eax
e0102d62:	c3 	retl
e0102d63:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102d6d:	0f 1f 00 	nopl	(%eax)
e0102d70:	31 c0 	xorl	%eax, %eax
e0102d72:	c3 	retl
e0102d73:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102d7d:	0f 1f 00 	nopl	(%eax)
e0102d80:	c3 	retl
e0102d81:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102d8b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0102d90:	8b 44 24 08 	movl	8(%esp), %eax
e0102d94:	0f 01 38 	invlpg	(%eax)
e0102d97:	c3 	retl
e0102d98:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0102da0:	55 	pushl	%ebp
e0102da1:	89 e5 	movl	%esp, %ebp
e0102da3:	57 	pushl	%edi
e0102da4:	56 	pushl	%esi
e0102da5:	83 ec 10 	subl	$16, %esp
e0102da8:	89 ce 	movl	%ecx, %esi
e0102daa:	89 0c 24 	movl	%ecx, (%esp)
e0102dad:	e8 4e 0e 00 00 	calll	3662 <mc146818_read>
e0102db2:	89 c7 	movl	%eax, %edi
e0102db4:	46 	incl	%esi
e0102db5:	89 34 24 	movl	%esi, (%esp)
e0102db8:	e8 43 0e 00 00 	calll	3651 <mc146818_read>
e0102dbd:	c1 e0 08 	shll	$8, %eax
e0102dc0:	09 f8 	orl	%edi, %eax
e0102dc2:	83 c4 10 	addl	$16, %esp
e0102dc5:	5e 	popl	%esi
e0102dc6:	5f 	popl	%edi
e0102dc7:	5d 	popl	%ebp
e0102dc8:	c3 	retl
e0102dc9:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0102dd0:	55 	pushl	%ebp
e0102dd1:	89 e5 	movl	%esp, %ebp
e0102dd3:	56 	pushl	%esi
e0102dd4:	50 	pushl	%eax
e0102dd5:	89 ce 	movl	%ecx, %esi
e0102dd7:	b8 b4 2f 12 e0 	movl	$3759288244, %eax
e0102ddc:	c1 e8 03 	shrl	$3, %eax
e0102ddf:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102de5:	84 c0 	testb	%al, %al
e0102de7:	75 1b 	jne	27 <_kaddr+0x34>
e0102de9:	89 f0 	movl	%esi, %eax
e0102deb:	c1 e8 0c 	shrl	$12, %eax
e0102dee:	3b 05 b4 2f 12 e0 	cmpl	-535679052, %eax
e0102df4:	73 2d 	jae	45 <_kaddr+0x53>
e0102df6:	81 c6 00 00 00 e0 	addl	$3758096384, %esi
e0102dfc:	89 f0 	movl	%esi, %eax
e0102dfe:	83 c4 04 	addl	$4, %esp
e0102e01:	5e 	popl	%esi
e0102e02:	5d 	popl	%ebp
e0102e03:	c3 	retl
e0102e04:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0102e09:	80 e1 07 	andb	$7, %cl
e0102e0c:	80 c1 03 	addb	$3, %cl
e0102e0f:	38 c1 	cmpb	%al, %cl
e0102e11:	7c d6 	jl	-42 <_kaddr+0x19>
e0102e13:	83 ec 0c 	subl	$12, %esp
e0102e16:	68 b4 2f 12 e0 	pushl	$3759288244
e0102e1b:	e8 70 59 00 00 	calll	22896 <__asan_report_load4>
e0102e20:	83 c4 10 	addl	$16, %esp
e0102e23:	e8 78 57 00 00 	calll	22392 <__asan_handle_no_return>
e0102e28:	56 	pushl	%esi
e0102e29:	68 a0 b5 10 e0 	pushl	$3759191456
e0102e2e:	6a 53 	pushl	$83
e0102e30:	68 60 b5 10 e0 	pushl	$3759191392
e0102e35:	e8 f6 d2 ff ff 	calll	-11530 <_panic>
e0102e3a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0102e40:	55 	pushl	%ebp
e0102e41:	89 e5 	movl	%esp, %ebp
e0102e43:	83 ec 08 	subl	$8, %esp
e0102e46:	89 c8 	movl	%ecx, %eax
e0102e48:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e0102e4d:	c1 e9 03 	shrl	$3, %ecx
e0102e50:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102e56:	84 c9 	testb	%cl, %cl
e0102e58:	75 0e 	jne	14 <page2pa+0x28>
e0102e5a:	2b 05 bc 2f 12 e0 	subl	-535679044, %eax
e0102e60:	c1 e0 09 	shll	$9, %eax
e0102e63:	83 c4 08 	addl	$8, %esp
e0102e66:	5d 	popl	%ebp
e0102e67:	c3 	retl
e0102e68:	ba bc 2f 12 e0 	movl	$3759288252, %edx
e0102e6d:	80 e2 07 	andb	$7, %dl
e0102e70:	80 c2 03 	addb	$3, %dl
e0102e73:	38 ca 	cmpb	%cl, %dl
e0102e75:	7c e3 	jl	-29 <page2pa+0x1a>
e0102e77:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0102e7e:	e8 0d 59 00 00 	calll	22797 <__asan_report_load4>
e0102e83:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102e8d:	0f 1f 00 	nopl	(%eax)
e0102e90:	83 ec 0c 	subl	$12, %esp
e0102e93:	e8 68 5e 00 00 	calll	24168 <__asan_init>
e0102e98:	e8 83 5f 00 00 	calll	24451 <__asan_version_mismatch_check_v8>
e0102e9d:	83 ec 08 	subl	$8, %esp
e0102ea0:	6a 25 	pushl	$37
e0102ea2:	68 e0 07 12 e0 	pushl	$3759278048
e0102ea7:	e8 84 5e 00 00 	calll	24196 <__asan_register_globals>
e0102eac:	83 c4 1c 	addl	$28, %esp
e0102eaf:	c3 	retl
e0102eb0:	83 ec 14 	subl	$20, %esp
e0102eb3:	6a 25 	pushl	$37
e0102eb5:	68 e0 07 12 e0 	pushl	$3759278048
e0102eba:	e8 c1 5e 00 00 	calll	24257 <__asan_unregister_globals>
e0102ebf:	83 c4 1c 	addl	$28, %esp
e0102ec2:	c3 	retl
e0102ec3:	cc 	int3
e0102ec4:	cc 	int3
e0102ec5:	cc 	int3
e0102ec6:	cc 	int3
e0102ec7:	cc 	int3
e0102ec8:	cc 	int3
e0102ec9:	cc 	int3
e0102eca:	cc 	int3
e0102ecb:	cc 	int3
e0102ecc:	cc 	int3
e0102ecd:	cc 	int3
e0102ece:	cc 	int3
e0102ecf:	cc 	int3
e0102ed0:	55 	pushl	%ebp
e0102ed1:	89 e5 	movl	%esp, %ebp
e0102ed3:	53 	pushl	%ebx
e0102ed4:	57 	pushl	%edi
e0102ed5:	56 	pushl	%esi
e0102ed6:	83 ec 0c 	subl	$12, %esp
e0102ed9:	8b 5d 0c 	movl	12(%ebp), %ebx
e0102edc:	8b 4d 08 	movl	8(%ebp), %ecx
e0102edf:	85 c9 	testl	%ecx, %ecx
e0102ee1:	0f 84 d5 00 00 00 	je	213 <envid2env+0xec>
e0102ee7:	89 df 	movl	%ebx, %edi
e0102ee9:	8b 15 80 0c 12 e0 	movl	-535688064, %edx
e0102eef:	89 c8 	movl	%ecx, %eax
e0102ef1:	83 e0 1f 	andl	$31, %eax
e0102ef4:	6b f0 5c 	imull	$92, %eax, %esi
e0102ef7:	8d 5c 32 54 	leal	84(%edx,%esi), %ebx
e0102efb:	89 d8 	movl	%ebx, %eax
e0102efd:	c1 e8 03 	shrl	$3, %eax
e0102f00:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102f06:	84 c0 	testb	%al, %al
e0102f08:	0f 85 f4 00 00 00 	jne	244 <envid2env+0x132>
e0102f0e:	83 3b 00 	cmpl	$0, (%ebx)
e0102f11:	0f 84 87 00 00 00 	je	135 <envid2env+0xce>
e0102f17:	8d 5c 32 48 	leal	72(%edx,%esi), %ebx
e0102f1b:	89 d8 	movl	%ebx, %eax
e0102f1d:	c1 e8 03 	shrl	$3, %eax
e0102f20:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102f26:	84 c0 	testb	%al, %al
e0102f28:	0f 85 00 01 00 00 	jne	256 <envid2env+0x15e>
e0102f2e:	39 0b 	cmpl	%ecx, (%ebx)
e0102f30:	75 6c 	jne	108 <envid2env+0xce>
e0102f32:	8a 45 10 	movb	16(%ebp), %al
e0102f35:	8d 0c 32 	leal	(%edx,%esi), %ecx
e0102f38:	84 c0 	testb	%al, %al
e0102f3a:	74 3d 	je	61 <envid2env+0xa9>
e0102f3c:	8b 1d 20 1e 12 e0 	movl	-535683552, %ebx
e0102f42:	39 d9 	cmpl	%ebx, %ecx
e0102f44:	74 33 	je	51 <envid2env+0xa9>
e0102f46:	8d 54 32 4c 	leal	76(%edx,%esi), %edx
e0102f4a:	89 d0 	movl	%edx, %eax
e0102f4c:	c1 e8 03 	shrl	$3, %eax
e0102f4f:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102f55:	84 c0 	testb	%al, %al
e0102f57:	0f 85 fb 00 00 00 	jne	251 <envid2env+0x188>
e0102f5d:	8b 12 	movl	(%edx), %edx
e0102f5f:	83 c3 48 	addl	$72, %ebx
e0102f62:	89 d8 	movl	%ebx, %eax
e0102f64:	c1 e8 03 	shrl	$3, %eax
e0102f67:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102f6d:	84 c0 	testb	%al, %al
e0102f6f:	0f 85 fb 00 00 00 	jne	251 <envid2env+0x1a0>
e0102f75:	3b 13 	cmpl	(%ebx), %edx
e0102f77:	75 64 	jne	100 <envid2env+0x10d>
e0102f79:	89 fb 	movl	%edi, %ebx
e0102f7b:	89 f8 	movl	%edi, %eax
e0102f7d:	c1 e8 03 	shrl	$3, %eax
e0102f80:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102f86:	84 c0 	testb	%al, %al
e0102f88:	74 47 	je	71 <envid2env+0x101>
e0102f8a:	89 da 	movl	%ebx, %edx
e0102f8c:	80 e2 07 	andb	$7, %dl
e0102f8f:	80 c2 03 	addb	$3, %dl
e0102f92:	38 c2 	cmpb	%al, %dl
e0102f94:	7c 3b 	jl	59 <envid2env+0x101>
e0102f96:	89 1c 24 	movl	%ebx, (%esp)
e0102f99:	e8 12 58 00 00 	calll	22546 <__asan_report_store4>
e0102f9e:	89 fa 	movl	%edi, %edx
e0102fa0:	89 f8 	movl	%edi, %eax
e0102fa2:	c1 e8 03 	shrl	$3, %eax
e0102fa5:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102fab:	84 c0 	testb	%al, %al
e0102fad:	75 6b 	jne	107 <envid2env+0x14a>
e0102faf:	c7 02 00 00 00 00 	movl	$0, (%edx)
e0102fb5:	b8 fe ff ff ff 	movl	$4294967294, %eax
e0102fba:	eb 19 	jmp	25 <envid2env+0x105>
e0102fbc:	8b 0d 20 1e 12 e0 	movl	-535683552, %ecx
e0102fc2:	89 d8 	movl	%ebx, %eax
e0102fc4:	c1 e8 03 	shrl	$3, %eax
e0102fc7:	8a 90 00 00 80 de 	movb	-562036736(%eax), %dl
e0102fcd:	84 d2 	testb	%dl, %dl
e0102fcf:	75 75 	jne	117 <envid2env+0x176>
e0102fd1:	89 0b 	movl	%ecx, (%ebx)
e0102fd3:	31 c0 	xorl	%eax, %eax
e0102fd5:	83 c4 0c 	addl	$12, %esp
e0102fd8:	5e 	popl	%esi
e0102fd9:	5f 	popl	%edi
e0102fda:	5b 	popl	%ebx
e0102fdb:	5d 	popl	%ebp
e0102fdc:	c3 	retl
e0102fdd:	89 fa 	movl	%edi, %edx
e0102fdf:	89 f8 	movl	%edi, %eax
e0102fe1:	c1 e8 03 	shrl	$3, %eax
e0102fe4:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102fea:	84 c0 	testb	%al, %al
e0102fec:	74 c1 	je	-63 <envid2env+0xdf>
e0102fee:	89 d1 	movl	%edx, %ecx
e0102ff0:	80 e1 07 	andb	$7, %cl
e0102ff3:	80 c1 03 	addb	$3, %cl
e0102ff6:	38 c1 	cmpb	%al, %cl
e0102ff8:	7c b5 	jl	-75 <envid2env+0xdf>
e0102ffa:	89 14 24 	movl	%edx, (%esp)
e0102ffd:	e8 ae 57 00 00 	calll	22446 <__asan_report_store4>
e0103002:	88 dc 	movb	%bl, %ah
e0103004:	80 e4 07 	andb	$7, %ah
e0103007:	80 c4 03 	addb	$3, %ah
e010300a:	38 c4 	cmpb	%al, %ah
e010300c:	0f 8c fc fe ff ff 	jl	-260 <envid2env+0x3e>
e0103012:	89 1c 24 	movl	%ebx, (%esp)
e0103015:	e8 76 57 00 00 	calll	22390 <__asan_report_load4>
e010301a:	89 d1 	movl	%edx, %ecx
e010301c:	80 e1 07 	andb	$7, %cl
e010301f:	80 c1 03 	addb	$3, %cl
e0103022:	38 c1 	cmpb	%al, %cl
e0103024:	7c 89 	jl	-119 <envid2env+0xdf>
e0103026:	89 14 24 	movl	%edx, (%esp)
e0103029:	e8 82 57 00 00 	calll	22402 <__asan_report_store4>
e010302e:	88 dc 	movb	%bl, %ah
e0103030:	80 e4 07 	andb	$7, %ah
e0103033:	80 c4 03 	addb	$3, %ah
e0103036:	38 c4 	cmpb	%al, %ah
e0103038:	0f 8c f0 fe ff ff 	jl	-272 <envid2env+0x5e>
e010303e:	89 1c 24 	movl	%ebx, (%esp)
e0103041:	e8 4a 57 00 00 	calll	22346 <__asan_report_load4>
e0103046:	89 d8 	movl	%ebx, %eax
e0103048:	24 07 	andb	$7, %al
e010304a:	04 03 	addb	$3, %al
e010304c:	38 d0 	cmpb	%dl, %al
e010304e:	7c 81 	jl	-127 <envid2env+0x101>
e0103050:	89 1c 24 	movl	%ebx, (%esp)
e0103053:	e8 58 57 00 00 	calll	22360 <__asan_report_store4>
e0103058:	88 d4 	movb	%dl, %ah
e010305a:	80 e4 07 	andb	$7, %ah
e010305d:	80 c4 03 	addb	$3, %ah
e0103060:	38 c4 	cmpb	%al, %ah
e0103062:	0f 8c f5 fe ff ff 	jl	-267 <envid2env+0x8d>
e0103068:	89 14 24 	movl	%edx, (%esp)
e010306b:	e8 20 57 00 00 	calll	22304 <__asan_report_load4>
e0103070:	88 dc 	movb	%bl, %ah
e0103072:	80 e4 07 	andb	$7, %ah
e0103075:	80 c4 03 	addb	$3, %ah
e0103078:	38 c4 	cmpb	%al, %ah
e010307a:	0f 8c f5 fe ff ff 	jl	-267 <envid2env+0xa5>
e0103080:	89 1c 24 	movl	%ebx, (%esp)
e0103083:	e8 08 57 00 00 	calll	22280 <__asan_report_load4>
e0103088:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0103090:	55 	pushl	%ebp
e0103091:	89 e5 	movl	%esp, %ebp
e0103093:	53 	pushl	%ebx
e0103094:	56 	pushl	%esi
e0103095:	83 ec 10 	subl	$16, %esp
e0103098:	c7 05 60 1e 12 e0 00 00 00 00 	movl	$0, -535683488
e01030a2:	b8 24 0b 00 00 	movl	$2852, %eax
e01030a7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e01030b0:	8b 0d 80 0c 12 e0 	movl	-535688064, %ecx
e01030b6:	8d 54 01 54 	leal	84(%ecx,%eax), %edx
e01030ba:	89 d6 	movl	%edx, %esi
e01030bc:	c1 ee 03 	shrl	$3, %esi
e01030bf:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e01030c6:	84 db 	testb	%bl, %bl
e01030c8:	75 58 	jne	88 <env_init+0x92>
e01030ca:	c7 44 01 54 00 00 00 00 	movl	$0, 84(%ecx,%eax)
e01030d2:	8d 54 01 48 	leal	72(%ecx,%eax), %edx
e01030d6:	89 d6 	movl	%edx, %esi
e01030d8:	c1 ee 03 	shrl	$3, %esi
e01030db:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e01030e2:	84 db 	testb	%bl, %bl
e01030e4:	75 4a 	jne	74 <env_init+0xa0>
e01030e6:	c7 44 01 48 00 00 00 00 	movl	$0, 72(%ecx,%eax)
e01030ee:	8b 15 60 1e 12 e0 	movl	-535683488, %edx
e01030f4:	8d 4c 01 44 	leal	68(%ecx,%eax), %ecx
e01030f8:	89 ce 	movl	%ecx, %esi
e01030fa:	c1 ee 03 	shrl	$3, %esi
e01030fd:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e0103104:	84 db 	testb	%bl, %bl
e0103106:	75 36 	jne	54 <env_init+0xae>
e0103108:	89 11 	movl	%edx, (%ecx)
e010310a:	8b 0d 80 0c 12 e0 	movl	-535688064, %ecx
e0103110:	01 c1 	addl	%eax, %ecx
e0103112:	89 0d 60 1e 12 e0 	movl	%ecx, -535683488
e0103118:	83 c0 a4 	addl	$-92, %eax
e010311b:	83 f8 a4 	cmpl	$-92, %eax
e010311e:	75 90 	jne	-112 <env_init+0x20>
e0103120:	eb 30 	jmp	48 <env_init+0xc2>
e0103122:	88 d7 	movb	%dl, %bh
e0103124:	80 e7 07 	andb	$7, %bh
e0103127:	80 c7 03 	addb	$3, %bh
e010312a:	38 df 	cmpb	%bl, %bh
e010312c:	7c 9c 	jl	-100 <env_init+0x3a>
e010312e:	eb 2a 	jmp	42 <env_init+0xca>
e0103130:	88 d7 	movb	%dl, %bh
e0103132:	80 e7 07 	andb	$7, %bh
e0103135:	80 c7 03 	addb	$3, %bh
e0103138:	38 df 	cmpb	%bl, %bh
e010313a:	7c aa 	jl	-86 <env_init+0x56>
e010313c:	eb 24 	jmp	36 <env_init+0xd2>
e010313e:	88 cf 	movb	%cl, %bh
e0103140:	80 e7 07 	andb	$7, %bh
e0103143:	80 c7 03 	addb	$3, %bh
e0103146:	38 df 	cmpb	%bl, %bh
e0103148:	7c be 	jl	-66 <env_init+0x78>
e010314a:	89 0c 24 	movl	%ecx, (%esp)
e010314d:	e8 5e 56 00 00 	calll	22110 <__asan_report_store4>
e0103152:	83 c4 10 	addl	$16, %esp
e0103155:	5e 	popl	%esi
e0103156:	5b 	popl	%ebx
e0103157:	5d 	popl	%ebp
e0103158:	eb 16 	jmp	22 <env_init_percpu>
e010315a:	89 14 24 	movl	%edx, (%esp)
e010315d:	e8 4e 56 00 00 	calll	22094 <__asan_report_store4>
e0103162:	89 14 24 	movl	%edx, (%esp)
e0103165:	e8 46 56 00 00 	calll	22086 <__asan_report_store4>
e010316a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0103170:	55 	pushl	%ebp
e0103171:	89 e5 	movl	%esp, %ebp
e0103173:	83 ec 08 	subl	$8, %esp
e0103176:	e8 35 00 00 00 	calll	53 <lgdt>
e010317b:	b8 23 00 00 00 	movl	$35, %eax
e0103180:	8e e8 	movl	%eax, %gs
e0103182:	b8 23 00 00 00 	movl	$35, %eax
e0103187:	8e e0 	movl	%eax, %fs
e0103189:	b8 10 00 00 00 	movl	$16, %eax
e010318e:	8e c0 	movl	%eax, %es
e0103190:	b8 10 00 00 00 	movl	$16, %eax
e0103195:	8e d8 	movl	%eax, %ds
e0103197:	b8 10 00 00 00 	movl	$16, %eax
e010319c:	8e d0 	movl	%eax, %ss
e010319e:	ea a5 31 10 e0 08 00 	ljmpl	$8, $3759157669
e01031a5:	31 c0 	xorl	%eax, %eax
e01031a7:	0f 00 d0 	lldtw	%ax
e01031aa:	83 c4 08 	addl	$8, %esp
e01031ad:	5d 	popl	%ebp
e01031ae:	c3 	retl
e01031af:	90 	nop
e01031b0:	b8 20 0d 12 e0 	movl	$3759279392, %eax
e01031b5:	0f 01 10 	lgdtl	(%eax)
e01031b8:	c3 	retl
e01031b9:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e01031c0:	55 	pushl	%ebp
e01031c1:	89 e5 	movl	%esp, %ebp
e01031c3:	53 	pushl	%ebx
e01031c4:	57 	pushl	%edi
e01031c5:	56 	pushl	%esi
e01031c6:	83 ec 0c 	subl	$12, %esp
e01031c9:	8b 3d 60 1e 12 e0 	movl	-535683488, %edi
e01031cf:	85 ff 	testl	%edi, %edi
e01031d1:	0f 84 1f 01 00 00 	je	287 <env_alloc+0x136>
e01031d7:	8d 5f 48 	leal	72(%edi), %ebx
e01031da:	89 de 	movl	%ebx, %esi
e01031dc:	c1 ee 03 	shrl	$3, %esi
e01031df:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e01031e5:	84 c0 	testb	%al, %al
e01031e7:	0f 85 40 01 00 00 	jne	320 <env_alloc+0x16d>
e01031ed:	b8 00 10 00 00 	movl	$4096, %eax
e01031f2:	8b 4f 48 	movl	72(%edi), %ecx
e01031f5:	01 c1 	addl	%eax, %ecx
e01031f7:	83 e1 e0 	andl	$-32, %ecx
e01031fa:	85 c9 	testl	%ecx, %ecx
e01031fc:	0f 4e c8 	cmovlel	%eax, %ecx
e01031ff:	89 f8 	movl	%edi, %eax
e0103201:	2b 05 80 0c 12 e0 	subl	-535688064, %eax
e0103207:	c1 f8 02 	sarl	$2, %eax
e010320a:	69 c0 a7 37 bd e9 	imull	$3921491879, %eax, %eax
e0103210:	09 c8 	orl	%ecx, %eax
e0103212:	89 47 48 	movl	%eax, 72(%edi)
e0103215:	8d 47 4c 	leal	76(%edi), %eax
e0103218:	89 c1 	movl	%eax, %ecx
e010321a:	c1 e9 03 	shrl	$3, %ecx
e010321d:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0103223:	84 c9 	testb	%cl, %cl
e0103225:	0f 85 1a 01 00 00 	jne	282 <env_alloc+0x185>
e010322b:	8b 45 0c 	movl	12(%ebp), %eax
e010322e:	89 47 4c 	movl	%eax, 76(%edi)
e0103231:	8d 47 54 	leal	84(%edi), %eax
e0103234:	89 c1 	movl	%eax, %ecx
e0103236:	c1 e9 03 	shrl	$3, %ecx
e0103239:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010323f:	84 c9 	testb	%cl, %cl
e0103241:	0f 85 16 01 00 00 	jne	278 <env_alloc+0x19d>
e0103247:	c7 47 54 02 00 00 00 	movl	$2, 84(%edi)
e010324e:	8d 47 58 	leal	88(%edi), %eax
e0103251:	89 c1 	movl	%eax, %ecx
e0103253:	c1 e9 03 	shrl	$3, %ecx
e0103256:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010325c:	84 c9 	testb	%cl, %cl
e010325e:	0f 85 11 01 00 00 	jne	273 <env_alloc+0x1b5>
e0103264:	c7 47 58 00 00 00 00 	movl	$0, 88(%edi)
e010326b:	89 3c 24 	movl	%edi, (%esp)
e010326e:	c7 44 24 08 44 00 00 00 	movl	$68, 8(%esp)
e0103276:	c7 44 24 04 00 00 00 00 	movl	$0, 4(%esp)
e010327e:	e8 8d 60 00 00 	calll	24717 <__wrap_memset>
e0103283:	8d 47 38 	leal	56(%edi), %eax
e0103286:	89 c1 	movl	%eax, %ecx
e0103288:	c1 e9 03 	shrl	$3, %ecx
e010328b:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0103291:	84 c9 	testb	%cl, %cl
e0103293:	0f 85 f4 00 00 00 	jne	244 <env_alloc+0x1cd>
e0103299:	80 4f 39 02 	orb	$2, 57(%edi)
e010329d:	8d 4f 44 	leal	68(%edi), %ecx
e01032a0:	89 c8 	movl	%ecx, %eax
e01032a2:	c1 e8 03 	shrl	$3, %eax
e01032a5:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01032ab:	84 c0 	testb	%al, %al
e01032ad:	0f 85 f2 00 00 00 	jne	242 <env_alloc+0x1e5>
e01032b3:	8b 45 08 	movl	8(%ebp), %eax
e01032b6:	8b 09 	movl	(%ecx), %ecx
e01032b8:	89 0d 60 1e 12 e0 	movl	%ecx, -535683488
e01032be:	89 c1 	movl	%eax, %ecx
e01032c0:	c1 e9 03 	shrl	$3, %ecx
e01032c3:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01032c9:	84 c9 	testb	%cl, %cl
e01032cb:	0f 85 ec 00 00 00 	jne	236 <env_alloc+0x1fd>
e01032d1:	89 38 	movl	%edi, (%eax)
e01032d3:	a1 20 1e 12 e0 	movl	3759283744, %eax
e01032d8:	85 c0 	testl	%eax, %eax
e01032da:	74 21 	je	33 <env_alloc+0x13d>
e01032dc:	83 c0 48 	addl	$72, %eax
e01032df:	89 c1 	movl	%eax, %ecx
e01032e1:	c1 e9 03 	shrl	$3, %ecx
e01032e4:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01032ea:	84 c9 	testb	%cl, %cl
e01032ec:	0f 85 fb 00 00 00 	jne	251 <env_alloc+0x22d>
e01032f2:	8b 00 	movl	(%eax), %eax
e01032f4:	eb 09 	jmp	9 <env_alloc+0x13f>
e01032f6:	b8 fb ff ff ff 	movl	$4294967291, %eax
e01032fb:	eb 28 	jmp	40 <env_alloc+0x165>
e01032fd:	31 c0 	xorl	%eax, %eax
e01032ff:	8a 8e 00 00 80 de 	movb	-562036736(%esi), %cl
e0103305:	84 c9 	testb	%cl, %cl
e0103307:	0f 85 c8 00 00 00 	jne	200 <env_alloc+0x215>
e010330d:	8b 0b 	movl	(%ebx), %ecx
e010330f:	89 4c 24 08 	movl	%ecx, 8(%esp)
e0103313:	89 44 24 04 	movl	%eax, 4(%esp)
e0103317:	c7 04 24 a0 bf 10 e0 	movl	$3759194016, (%esp)
e010331e:	e8 1d 0c 00 00 	calll	3101 <cprintf>
e0103323:	31 c0 	xorl	%eax, %eax
e0103325:	83 c4 0c 	addl	$12, %esp
e0103328:	5e 	popl	%esi
e0103329:	5f 	popl	%edi
e010332a:	5b 	popl	%ebx
e010332b:	5d 	popl	%ebp
e010332c:	c3 	retl
e010332d:	89 d9 	movl	%ebx, %ecx
e010332f:	80 e1 07 	andb	$7, %cl
e0103332:	80 c1 03 	addb	$3, %cl
e0103335:	38 c1 	cmpb	%al, %cl
e0103337:	0f 8c b0 fe ff ff 	jl	-336 <env_alloc+0x2d>
e010333d:	89 1c 24 	movl	%ebx, (%esp)
e0103340:	e8 4b 54 00 00 	calll	21579 <__asan_report_load4>
e0103345:	89 c2 	movl	%eax, %edx
e0103347:	80 e2 07 	andb	$7, %dl
e010334a:	80 c2 03 	addb	$3, %dl
e010334d:	38 ca 	cmpb	%cl, %dl
e010334f:	0f 8c d6 fe ff ff 	jl	-298 <env_alloc+0x6b>
e0103355:	89 04 24 	movl	%eax, (%esp)
e0103358:	e8 53 54 00 00 	calll	21587 <__asan_report_store4>
e010335d:	89 c2 	movl	%eax, %edx
e010335f:	80 e2 07 	andb	$7, %dl
e0103362:	80 c2 03 	addb	$3, %dl
e0103365:	38 ca 	cmpb	%cl, %dl
e0103367:	0f 8c da fe ff ff 	jl	-294 <env_alloc+0x87>
e010336d:	89 04 24 	movl	%eax, (%esp)
e0103370:	e8 3b 54 00 00 	calll	21563 <__asan_report_store4>
e0103375:	89 c2 	movl	%eax, %edx
e0103377:	80 e2 07 	andb	$7, %dl
e010337a:	80 c2 03 	addb	$3, %dl
e010337d:	38 ca 	cmpb	%cl, %dl
e010337f:	0f 8c df fe ff ff 	jl	-289 <env_alloc+0xa4>
e0103385:	89 04 24 	movl	%eax, (%esp)
e0103388:	e8 23 54 00 00 	calll	21539 <__asan_report_store4>
e010338d:	89 c2 	movl	%eax, %edx
e010338f:	80 e2 07 	andb	$7, %dl
e0103392:	80 c2 03 	addb	$3, %dl
e0103395:	38 ca 	cmpb	%cl, %dl
e0103397:	0f 8c fc fe ff ff 	jl	-260 <env_alloc+0xd9>
e010339d:	89 04 24 	movl	%eax, (%esp)
e01033a0:	e8 eb 53 00 00 	calll	21483 <__asan_report_load4>
e01033a5:	89 ca 	movl	%ecx, %edx
e01033a7:	80 e2 07 	andb	$7, %dl
e01033aa:	80 c2 03 	addb	$3, %dl
e01033ad:	38 c2 	cmpb	%al, %dl
e01033af:	0f 8c fe fe ff ff 	jl	-258 <env_alloc+0xf3>
e01033b5:	89 0c 24 	movl	%ecx, (%esp)
e01033b8:	e8 d3 53 00 00 	calll	21459 <__asan_report_load4>
e01033bd:	89 c2 	movl	%eax, %edx
e01033bf:	80 e2 07 	andb	$7, %dl
e01033c2:	80 c2 03 	addb	$3, %dl
e01033c5:	38 ca 	cmpb	%cl, %dl
e01033c7:	0f 8c 04 ff ff ff 	jl	-252 <env_alloc+0x111>
e01033cd:	89 04 24 	movl	%eax, (%esp)
e01033d0:	e8 db 53 00 00 	calll	21467 <__asan_report_store4>
e01033d5:	89 da 	movl	%ebx, %edx
e01033d7:	80 e2 07 	andb	$7, %dl
e01033da:	80 c2 03 	addb	$3, %dl
e01033dd:	38 ca 	cmpb	%cl, %dl
e01033df:	0f 8c 28 ff ff ff 	jl	-216 <env_alloc+0x14d>
e01033e5:	89 1c 24 	movl	%ebx, (%esp)
e01033e8:	e8 a3 53 00 00 	calll	21411 <__asan_report_load4>
e01033ed:	89 c2 	movl	%eax, %edx
e01033ef:	80 e2 07 	andb	$7, %dl
e01033f2:	80 c2 03 	addb	$3, %dl
e01033f5:	38 ca 	cmpb	%cl, %dl
e01033f7:	0f 8c f5 fe ff ff 	jl	-267 <env_alloc+0x132>
e01033fd:	89 04 24 	movl	%eax, (%esp)
e0103400:	e8 8b 53 00 00 	calll	21387 <__asan_report_load4>
e0103405:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010340f:	90 	nop
e0103410:	55 	pushl	%ebp
e0103411:	89 e5 	movl	%esp, %ebp
e0103413:	53 	pushl	%ebx
e0103414:	57 	pushl	%edi
e0103415:	56 	pushl	%esi
e0103416:	83 e4 e0 	andl	$-32, %esp
e0103419:	83 ec 40 	subl	$64, %esp
e010341c:	89 e6 	movl	%esp, %esi
e010341e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0103425:	74 11 	je	17 <env_create+0x28>
e0103427:	83 ec 0c 	subl	$12, %esp
e010342a:	6a 20 	pushl	$32
e010342c:	e8 5f 55 00 00 	calll	21855 <__asan_stack_malloc_0>
e0103431:	83 c4 10 	addl	$16, %esp
e0103434:	89 c7 	movl	%eax, %edi
e0103436:	eb 02 	jmp	2 <env_create+0x2a>
e0103438:	31 ff 	xorl	%edi, %edi
e010343a:	85 ff 	testl	%edi, %edi
e010343c:	89 7e 18 	movl	%edi, 24(%esi)
e010343f:	75 0a 	jne	10 <env_create+0x3b>
e0103441:	89 e7 	movl	%esp, %edi
e0103443:	83 c7 e0 	addl	$-32, %edi
e0103446:	83 e7 e0 	andl	$-32, %edi
e0103449:	89 fc 	movl	%edi, %esp
e010344b:	89 7e 1c 	movl	%edi, 28(%esi)
e010344e:	8d 57 10 	leal	16(%edi), %edx
e0103451:	c7 07 b3 8a b5 41 	movl	$1102416563, (%edi)
e0103457:	c7 47 04 ee a4 10 e0 	movl	$3759187182, 4(%edi)
e010345e:	c7 47 08 10 34 10 e0 	movl	$3759158288, 8(%edi)
e0103465:	89 f8 	movl	%edi, %eax
e0103467:	c1 e8 03 	shrl	$3, %eax
e010346a:	c7 80 00 00 80 de f1 f1 f8 f3 	movl	$4093178353, -562036736(%eax)
e0103474:	89 46 14 	movl	%eax, 20(%esi)
e0103477:	c6 80 02 00 80 de 04 	movb	$4, -562036734(%eax)
e010347e:	89 d3 	movl	%edx, %ebx
e0103480:	c1 eb 03 	shrl	$3, %ebx
e0103483:	8a 83 00 00 80 de 	movb	-562036736(%ebx), %al
e0103489:	84 c0 	testb	%al, %al
e010348b:	0f 85 9c 00 00 00 	jne	156 <env_create+0x11d>
e0103491:	c7 02 00 00 00 00 	movl	$0, (%edx)
e0103497:	83 ec 08 	subl	$8, %esp
e010349a:	6a 00 	pushl	$0
e010349c:	89 56 10 	movl	%edx, 16(%esi)
e010349f:	52 	pushl	%edx
e01034a0:	e8 1b fd ff ff 	calll	-741 <env_alloc>
e01034a5:	83 c4 10 	addl	$16, %esp
e01034a8:	85 c0 	testl	%eax, %eax
e01034aa:	0f 85 d4 00 00 00 	jne	212 <env_create+0x174>
e01034b0:	8a 83 00 00 80 de 	movb	-562036736(%ebx), %al
e01034b6:	84 c0 	testb	%al, %al
e01034b8:	0f 85 8b 00 00 00 	jne	139 <env_create+0x139>
e01034be:	8b 55 08 	movl	8(%ebp), %edx
e01034c1:	8b 46 10 	movl	16(%esi), %eax
e01034c4:	8b 18 	movl	(%eax), %ebx
e01034c6:	89 d9 	movl	%ebx, %ecx
e01034c8:	e8 d3 00 00 00 	calll	211 <load_icode>
e01034cd:	83 c3 50 	addl	$80, %ebx
e01034d0:	89 d8 	movl	%ebx, %eax
e01034d2:	c1 e8 03 	shrl	$3, %eax
e01034d5:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01034db:	84 c0 	testb	%al, %al
e01034dd:	0f 85 85 00 00 00 	jne	133 <env_create+0x158>
e01034e3:	8b 45 10 	movl	16(%ebp), %eax
e01034e6:	89 03 	movl	%eax, (%ebx)
e01034e8:	8b 4e 14 	movl	20(%esi), %ecx
e01034eb:	c6 81 02 00 80 de f8 	movb	$-8, -562036734(%ecx)
e01034f2:	c7 07 0e 36 e0 45 	movl	$1172321806, (%edi)
e01034f8:	8b 46 18 	movl	24(%esi), %eax
e01034fb:	85 c0 	testl	%eax, %eax
e01034fd:	74 1c 	je	28 <env_create+0x10b>
e01034ff:	c7 81 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%ecx)
e0103509:	c7 81 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%ecx)
e0103513:	8b 40 3c 	movl	60(%eax), %eax
e0103516:	c6 00 00 	movb	$0, (%eax)
e0103519:	eb 0a 	jmp	10 <env_create+0x115>
e010351b:	c7 81 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%ecx)
e0103525:	8d 65 f4 	leal	-12(%ebp), %esp
e0103528:	5e 	popl	%esi
e0103529:	5f 	popl	%edi
e010352a:	5b 	popl	%ebx
e010352b:	5d 	popl	%ebp
e010352c:	c3 	retl
e010352d:	89 d1 	movl	%edx, %ecx
e010352f:	80 e1 07 	andb	$7, %cl
e0103532:	80 c1 03 	addb	$3, %cl
e0103535:	38 c1 	cmpb	%al, %cl
e0103537:	0f 8c 54 ff ff ff 	jl	-172 <env_create+0x81>
e010353d:	83 ec 0c 	subl	$12, %esp
e0103540:	52 	pushl	%edx
e0103541:	e8 6a 52 00 00 	calll	21098 <__asan_report_store4>
e0103546:	83 c4 10 	addl	$16, %esp
e0103549:	8b 4e 10 	movl	16(%esi), %ecx
e010354c:	80 e1 07 	andb	$7, %cl
e010354f:	80 c1 03 	addb	$3, %cl
e0103552:	38 c1 	cmpb	%al, %cl
e0103554:	0f 8c 64 ff ff ff 	jl	-156 <env_create+0xae>
e010355a:	83 ec 0c 	subl	$12, %esp
e010355d:	ff 76 10 	pushl	16(%esi)
e0103560:	e8 2b 52 00 00 	calll	21035 <__asan_report_load4>
e0103565:	83 c4 10 	addl	$16, %esp
e0103568:	89 d9 	movl	%ebx, %ecx
e010356a:	80 e1 07 	andb	$7, %cl
e010356d:	80 c1 03 	addb	$3, %cl
e0103570:	38 c1 	cmpb	%al, %cl
e0103572:	0f 8c 6b ff ff ff 	jl	-149 <env_create+0xd3>
e0103578:	83 ec 0c 	subl	$12, %esp
e010357b:	53 	pushl	%ebx
e010357c:	e8 2f 52 00 00 	calll	21039 <__asan_report_store4>
e0103581:	83 c4 10 	addl	$16, %esp
e0103584:	89 c7 	movl	%eax, %edi
e0103586:	e8 15 50 00 00 	calll	20501 <__asan_handle_no_return>
e010358b:	57 	pushl	%edi
e010358c:	68 20 c0 10 e0 	pushl	$3759194144
e0103591:	68 57 01 00 00 	pushl	$343
e0103596:	68 e0 bf 10 e0 	pushl	$3759194080
e010359b:	e8 90 cb ff ff 	calll	-13424 <_panic>
e01035a0:	55 	pushl	%ebp
e01035a1:	89 e5 	movl	%esp, %ebp
e01035a3:	53 	pushl	%ebx
e01035a4:	57 	pushl	%edi
e01035a5:	56 	pushl	%esi
e01035a6:	83 ec 2c 	subl	$44, %esp
e01035a9:	89 d0 	movl	%edx, %eax
e01035ab:	c1 e8 03 	shrl	$3, %eax
e01035ae:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01035b4:	84 c0 	testb	%al, %al
e01035b6:	0f 85 66 02 00 00 	jne	614 <load_icode+0x282>
e01035bc:	81 3a 7f 45 4c 46 	cmpl	$1179403647, (%edx)
e01035c2:	0f 85 ed 02 00 00 	jne	749 <load_icode+0x315>
e01035c8:	89 4d dc 	movl	%ecx, -36(%ebp)
e01035cb:	8d 42 1c 	leal	28(%edx), %eax
e01035ce:	89 c1 	movl	%eax, %ecx
e01035d0:	c1 e9 03 	shrl	$3, %ecx
e01035d3:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01035d9:	84 c9 	testb	%cl, %cl
e01035db:	0f 85 59 02 00 00 	jne	601 <load_icode+0x29a>
e01035e1:	8b 5a 1c 	movl	28(%edx), %ebx
e01035e4:	01 d3 	addl	%edx, %ebx
e01035e6:	89 55 e0 	movl	%edx, -32(%ebp)
e01035e9:	8d 42 2c 	leal	44(%edx), %eax
e01035ec:	89 c1 	movl	%eax, %ecx
e01035ee:	c1 e9 03 	shrl	$3, %ecx
e01035f1:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01035f7:	84 c9 	testb	%cl, %cl
e01035f9:	0f 85 53 02 00 00 	jne	595 <load_icode+0x2b2>
e01035ff:	0f b7 10 	movzwl	(%eax), %edx
e0103602:	c1 e2 05 	shll	$5, %edx
e0103605:	01 da 	addl	%ebx, %edx
e0103607:	39 da 	cmpl	%ebx, %edx
e0103609:	0f 86 dd 01 00 00 	jbe	477 <load_icode+0x24c>
e010360f:	89 55 d8 	movl	%edx, -40(%ebp)
e0103612:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010361c:	0f 1f 40 00 	nopl	(%eax)
e0103620:	89 d8 	movl	%ebx, %eax
e0103622:	c1 e8 03 	shrl	$3, %eax
e0103625:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e010362c:	84 c0 	testb	%al, %al
e010362e:	0f 85 ff 00 00 00 	jne	255 <load_icode+0x193>
e0103634:	83 3b 01 	cmpl	$1, (%ebx)
e0103637:	0f 85 e6 00 00 00 	jne	230 <load_icode+0x183>
e010363d:	8d 43 10 	leal	16(%ebx), %eax
e0103640:	89 45 ec 	movl	%eax, -20(%ebp)
e0103643:	89 c7 	movl	%eax, %edi
e0103645:	c1 ef 03 	shrl	$3, %edi
e0103648:	0f b6 87 00 00 80 de 	movzbl	-562036736(%edi), %eax
e010364f:	84 c0 	testb	%al, %al
e0103651:	0f 85 f1 00 00 00 	jne	241 <load_icode+0x1a8>
e0103657:	8b 43 10 	movl	16(%ebx), %eax
e010365a:	8d 73 14 	leal	20(%ebx), %esi
e010365d:	89 75 f0 	movl	%esi, -16(%ebp)
e0103660:	c1 ee 03 	shrl	$3, %esi
e0103663:	89 75 e8 	movl	%esi, -24(%ebp)
e0103666:	0f b6 8e 00 00 80 de 	movzbl	-562036736(%esi), %ecx
e010366d:	84 c9 	testb	%cl, %cl
e010366f:	0f 85 e9 00 00 00 	jne	233 <load_icode+0x1be>
e0103675:	89 7d d4 	movl	%edi, -44(%ebp)
e0103678:	3b 43 14 	cmpl	20(%ebx), %eax
e010367b:	0f 87 10 02 00 00 	ja	528 <load_icode+0x2f1>
e0103681:	89 c6 	movl	%eax, %esi
e0103683:	8d 53 08 	leal	8(%ebx), %edx
e0103686:	89 d7 	movl	%edx, %edi
e0103688:	c1 ef 03 	shrl	$3, %edi
e010368b:	0f b6 8f 00 00 80 de 	movzbl	-562036736(%edi), %ecx
e0103692:	84 c9 	testb	%cl, %cl
e0103694:	0f 85 dc 00 00 00 	jne	220 <load_icode+0x1d6>
e010369a:	89 55 e4 	movl	%edx, -28(%ebp)
e010369d:	8b 4b 08 	movl	8(%ebx), %ecx
e01036a0:	8d 53 04 	leal	4(%ebx), %edx
e01036a3:	89 d0 	movl	%edx, %eax
e01036a5:	c1 e8 03 	shrl	$3, %eax
e01036a8:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01036af:	84 c0 	testb	%al, %al
e01036b1:	0f 85 d2 00 00 00 	jne	210 <load_icode+0x1e9>
e01036b7:	8b 02 	movl	(%edx), %eax
e01036b9:	03 45 e0 	addl	-32(%ebp), %eax
e01036bc:	89 74 24 08 	movl	%esi, 8(%esp)
e01036c0:	89 44 24 04 	movl	%eax, 4(%esp)
e01036c4:	89 0c 24 	movl	%ecx, (%esp)
e01036c7:	e8 64 5c 00 00 	calll	23652 <__wrap_memmove>
e01036cc:	0f b6 87 00 00 80 de 	movzbl	-562036736(%edi), %eax
e01036d3:	84 c0 	testb	%al, %al
e01036d5:	0f 85 c3 00 00 00 	jne	195 <load_icode+0x1fe>
e01036db:	8b 43 08 	movl	8(%ebx), %eax
e01036de:	8b 4d d4 	movl	-44(%ebp), %ecx
e01036e1:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e01036e8:	84 c9 	testb	%cl, %cl
e01036ea:	0f 85 c4 00 00 00 	jne	196 <load_icode+0x214>
e01036f0:	8b 4b 10 	movl	16(%ebx), %ecx
e01036f3:	8b 55 e8 	movl	-24(%ebp), %edx
e01036f6:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e01036fd:	84 d2 	testb	%dl, %dl
e01036ff:	0f 85 c5 00 00 00 	jne	197 <load_icode+0x22a>
e0103705:	01 c8 	addl	%ecx, %eax
e0103707:	8b 53 14 	movl	20(%ebx), %edx
e010370a:	29 ca 	subl	%ecx, %edx
e010370c:	89 54 24 08 	movl	%edx, 8(%esp)
e0103710:	89 04 24 	movl	%eax, (%esp)
e0103713:	c7 44 24 04 00 00 00 00 	movl	$0, 4(%esp)
e010371b:	e8 f0 5b 00 00 	calll	23536 <__wrap_memset>
e0103720:	8b 55 d8 	movl	-40(%ebp), %edx
e0103723:	83 c3 20 	addl	$32, %ebx
e0103726:	39 d3 	cmpl	%edx, %ebx
e0103728:	0f 82 f2 fe ff ff 	jb	-270 <load_icode+0x80>
e010372e:	e9 b9 00 00 00 	jmp	185 <load_icode+0x24c>
e0103733:	89 d9 	movl	%ebx, %ecx
e0103735:	80 e1 07 	andb	$7, %cl
e0103738:	80 c1 03 	addb	$3, %cl
e010373b:	38 c1 	cmpb	%al, %cl
e010373d:	0f 8c f1 fe ff ff 	jl	-271 <load_icode+0x94>
e0103743:	e9 84 01 00 00 	jmp	388 <load_icode+0x32c>
e0103748:	8b 4d ec 	movl	-20(%ebp), %ecx
e010374b:	80 e1 07 	andb	$7, %cl
e010374e:	80 c1 03 	addb	$3, %cl
e0103751:	38 c1 	cmpb	%al, %cl
e0103753:	0f 8c fe fe ff ff 	jl	-258 <load_icode+0xb7>
e0103759:	e9 76 01 00 00 	jmp	374 <load_icode+0x334>
e010375e:	89 c6 	movl	%eax, %esi
e0103760:	8b 45 f0 	movl	-16(%ebp), %eax
e0103763:	24 07 	andb	$7, %al
e0103765:	04 03 	addb	$3, %al
e0103767:	38 c8 	cmpb	%cl, %al
e0103769:	89 f0 	movl	%esi, %eax
e010376b:	0f 8c 04 ff ff ff 	jl	-252 <load_icode+0xd5>
e0103771:	e9 69 01 00 00 	jmp	361 <load_icode+0x33f>
e0103776:	89 d0 	movl	%edx, %eax
e0103778:	24 07 	andb	$7, %al
e010377a:	04 03 	addb	$3, %al
e010377c:	38 c8 	cmpb	%cl, %al
e010377e:	0f 8c 16 ff ff ff 	jl	-234 <load_icode+0xfa>
e0103784:	e9 61 01 00 00 	jmp	353 <load_icode+0x34a>
e0103789:	88 d4 	movb	%dl, %ah
e010378b:	80 e4 07 	andb	$7, %ah
e010378e:	80 c4 03 	addb	$3, %ah
e0103791:	38 c4 	cmpb	%al, %ah
e0103793:	0f 8c 1e ff ff ff 	jl	-226 <load_icode+0x117>
e0103799:	e9 54 01 00 00 	jmp	340 <load_icode+0x352>
e010379e:	8b 4d e4 	movl	-28(%ebp), %ecx
e01037a1:	80 e1 07 	andb	$7, %cl
e01037a4:	80 c1 03 	addb	$3, %cl
e01037a7:	38 c1 	cmpb	%al, %cl
e01037a9:	0f 8c 2c ff ff ff 	jl	-212 <load_icode+0x13b>
e01037af:	e9 46 01 00 00 	jmp	326 <load_icode+0x35a>
e01037b4:	8b 55 ec 	movl	-20(%ebp), %edx
e01037b7:	80 e2 07 	andb	$7, %dl
e01037ba:	80 c2 03 	addb	$3, %dl
e01037bd:	38 ca 	cmpb	%cl, %dl
e01037bf:	0f 8c 2b ff ff ff 	jl	-213 <load_icode+0x150>
e01037c5:	e9 3b 01 00 00 	jmp	315 <load_icode+0x365>
e01037ca:	88 55 e8 	movb	%dl, -24(%ebp)
e01037cd:	8b 55 f0 	movl	-16(%ebp), %edx
e01037d0:	88 d6 	movb	%dl, %dh
e01037d2:	80 e6 07 	andb	$7, %dh
e01037d5:	80 c6 03 	addb	$3, %dh
e01037d8:	3a 75 e8 	cmpb	-24(%ebp), %dh
e01037db:	0f 8c 24 ff ff ff 	jl	-220 <load_icode+0x165>
e01037e1:	8b 45 f0 	movl	-16(%ebp), %eax
e01037e4:	89 04 24 	movl	%eax, (%esp)
e01037e7:	e8 a4 4f 00 00 	calll	20388 <__asan_report_load4>
e01037ec:	8b 55 e0 	movl	-32(%ebp), %edx
e01037ef:	83 c2 18 	addl	$24, %edx
e01037f2:	89 d0 	movl	%edx, %eax
e01037f4:	c1 e8 03 	shrl	$3, %eax
e01037f7:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01037fd:	84 c0 	testb	%al, %al
e01037ff:	75 68 	jne	104 <load_icode+0x2c9>
e0103801:	8b 02 	movl	(%edx), %eax
e0103803:	8b 5d dc 	movl	-36(%ebp), %ebx
e0103806:	83 c3 30 	addl	$48, %ebx
e0103809:	89 d9 	movl	%ebx, %ecx
e010380b:	c1 e9 03 	shrl	$3, %ecx
e010380e:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0103814:	84 c9 	testb	%cl, %cl
e0103816:	75 65 	jne	101 <load_icode+0x2dd>
e0103818:	89 03 	movl	%eax, (%ebx)
e010381a:	83 c4 2c 	addl	$44, %esp
e010381d:	5e 	popl	%esi
e010381e:	5f 	popl	%edi
e010381f:	5b 	popl	%ebx
e0103820:	5d 	popl	%ebp
e0103821:	c3 	retl
e0103822:	88 d4 	movb	%dl, %ah
e0103824:	80 e4 07 	andb	$7, %ah
e0103827:	80 c4 03 	addb	$3, %ah
e010382a:	38 c4 	cmpb	%al, %ah
e010382c:	0f 8c 8a fd ff ff 	jl	-630 <load_icode+0x1c>
e0103832:	89 14 24 	movl	%edx, (%esp)
e0103835:	e8 56 4f 00 00 	calll	20310 <__asan_report_load4>
e010383a:	88 c5 	movb	%al, %ch
e010383c:	80 e5 07 	andb	$7, %ch
e010383f:	80 c5 03 	addb	$3, %ch
e0103842:	38 cd 	cmpb	%cl, %ch
e0103844:	0f 8c 97 fd ff ff 	jl	-617 <load_icode+0x41>
e010384a:	89 04 24 	movl	%eax, (%esp)
e010384d:	e8 3e 4f 00 00 	calll	20286 <__asan_report_load4>
e0103852:	89 c2 	movl	%eax, %edx
e0103854:	80 e2 07 	andb	$7, %dl
e0103857:	fe c2 	incb	%dl
e0103859:	38 ca 	cmpb	%cl, %dl
e010385b:	0f 8c 9e fd ff ff 	jl	-610 <load_icode+0x5f>
e0103861:	89 04 24 	movl	%eax, (%esp)
e0103864:	e8 e7 4e 00 00 	calll	20199 <__asan_report_load2>
e0103869:	89 d1 	movl	%edx, %ecx
e010386b:	80 e1 07 	andb	$7, %cl
e010386e:	80 c1 03 	addb	$3, %cl
e0103871:	38 c1 	cmpb	%al, %cl
e0103873:	7c 8c 	jl	-116 <load_icode+0x261>
e0103875:	89 14 24 	movl	%edx, (%esp)
e0103878:	e8 13 4f 00 00 	calll	20243 <__asan_report_load4>
e010387d:	89 da 	movl	%ebx, %edx
e010387f:	80 e2 07 	andb	$7, %dl
e0103882:	80 c2 03 	addb	$3, %dl
e0103885:	38 ca 	cmpb	%cl, %dl
e0103887:	7c 8f 	jl	-113 <load_icode+0x278>
e0103889:	89 1c 24 	movl	%ebx, (%esp)
e010388c:	e8 1f 4f 00 00 	calll	20255 <__asan_report_store4>
e0103891:	e8 0a 4d 00 00 	calll	19722 <__asan_handle_no_return>
e0103896:	c7 44 24 08 80 c1 10 e0 	movl	$3759194496, 8(%esp)
e010389e:	c7 44 24 04 3d 01 00 00 	movl	$317, 4(%esp)
e01038a6:	c7 04 24 e0 bf 10 e0 	movl	$3759194080, (%esp)
e01038ad:	e8 7e c8 ff ff 	calll	-14210 <_panic>
e01038b2:	83 ec 0c 	subl	$12, %esp
e01038b5:	e8 e6 4c 00 00 	calll	19686 <__asan_handle_no_return>
e01038ba:	c7 44 24 08 40 c1 10 e0 	movl	$3759194432, 8(%esp)
e01038c2:	c7 44 24 04 36 01 00 00 	movl	$310, 4(%esp)
e01038ca:	eb da 	jmp	-38 <load_icode+0x306>
e01038cc:	89 1c 24 	movl	%ebx, (%esp)
e01038cf:	e8 bc 4e 00 00 	calll	20156 <__asan_report_load4>
e01038d4:	8b 45 ec 	movl	-20(%ebp), %eax
e01038d7:	89 04 24 	movl	%eax, (%esp)
e01038da:	e8 b1 4e 00 00 	calll	20145 <__asan_report_load4>
e01038df:	8b 45 f0 	movl	-16(%ebp), %eax
e01038e2:	89 04 24 	movl	%eax, (%esp)
e01038e5:	e8 a6 4e 00 00 	calll	20134 <__asan_report_load4>
e01038ea:	89 14 24 	movl	%edx, (%esp)
e01038ed:	e8 9e 4e 00 00 	calll	20126 <__asan_report_load4>
e01038f2:	89 14 24 	movl	%edx, (%esp)
e01038f5:	e8 96 4e 00 00 	calll	20118 <__asan_report_load4>
e01038fa:	8b 45 e4 	movl	-28(%ebp), %eax
e01038fd:	89 04 24 	movl	%eax, (%esp)
e0103900:	e8 8b 4e 00 00 	calll	20107 <__asan_report_load4>
e0103905:	8b 45 ec 	movl	-20(%ebp), %eax
e0103908:	89 04 24 	movl	%eax, (%esp)
e010390b:	e8 80 4e 00 00 	calll	20096 <__asan_report_load4>
e0103910:	55 	pushl	%ebp
e0103911:	89 e5 	movl	%esp, %ebp
e0103913:	56 	pushl	%esi
e0103914:	83 ec 14 	subl	$20, %esp
e0103917:	a1 20 1e 12 e0 	movl	3759283744, %eax
e010391c:	85 c0 	testl	%eax, %eax
e010391e:	74 1a 	je	26 <env_free+0x2a>
e0103920:	83 c0 48 	addl	$72, %eax
e0103923:	89 c1 	movl	%eax, %ecx
e0103925:	c1 e9 03 	shrl	$3, %ecx
e0103928:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010392e:	84 c9 	testb	%cl, %cl
e0103930:	0f 85 ae 00 00 00 	jne	174 <env_free+0xd4>
e0103936:	8b 00 	movl	(%eax), %eax
e0103938:	eb 02 	jmp	2 <env_free+0x2c>
e010393a:	31 c0 	xorl	%eax, %eax
e010393c:	8b 75 08 	movl	8(%ebp), %esi
e010393f:	8d 4e 48 	leal	72(%esi), %ecx
e0103942:	89 ca 	movl	%ecx, %edx
e0103944:	c1 ea 03 	shrl	$3, %edx
e0103947:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e010394d:	84 d2 	testb	%dl, %dl
e010394f:	75 57 	jne	87 <env_free+0x98>
e0103951:	8b 4e 48 	movl	72(%esi), %ecx
e0103954:	89 4c 24 08 	movl	%ecx, 8(%esp)
e0103958:	89 44 24 04 	movl	%eax, 4(%esp)
e010395c:	c7 04 24 60 c0 10 e0 	movl	$3759194208, (%esp)
e0103963:	e8 d8 05 00 00 	calll	1496 <cprintf>
e0103968:	8d 46 54 	leal	84(%esi), %eax
e010396b:	89 c1 	movl	%eax, %ecx
e010396d:	c1 e9 03 	shrl	$3, %ecx
e0103970:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0103976:	84 c9 	testb	%cl, %cl
e0103978:	75 42 	jne	66 <env_free+0xac>
e010397a:	c7 46 54 00 00 00 00 	movl	$0, 84(%esi)
e0103981:	8b 0d 60 1e 12 e0 	movl	-535683488, %ecx
e0103987:	8d 46 44 	leal	68(%esi), %eax
e010398a:	89 c2 	movl	%eax, %edx
e010398c:	c1 ea 03 	shrl	$3, %edx
e010398f:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0103995:	84 d2 	testb	%dl, %dl
e0103997:	75 37 	jne	55 <env_free+0xc0>
e0103999:	89 4e 44 	movl	%ecx, 68(%esi)
e010399c:	89 35 60 1e 12 e0 	movl	%esi, -535683488
e01039a2:	83 c4 14 	addl	$20, %esp
e01039a5:	5e 	popl	%esi
e01039a6:	5d 	popl	%ebp
e01039a7:	c3 	retl
e01039a8:	88 ce 	movb	%cl, %dh
e01039aa:	80 e6 07 	andb	$7, %dh
e01039ad:	80 c6 03 	addb	$3, %dh
e01039b0:	38 d6 	cmpb	%dl, %dh
e01039b2:	7c 9d 	jl	-99 <env_free+0x41>
e01039b4:	89 0c 24 	movl	%ecx, (%esp)
e01039b7:	e8 d4 4d 00 00 	calll	19924 <__asan_report_load4>
e01039bc:	89 c2 	movl	%eax, %edx
e01039be:	80 e2 07 	andb	$7, %dl
e01039c1:	80 c2 03 	addb	$3, %dl
e01039c4:	38 ca 	cmpb	%cl, %dl
e01039c6:	7c b2 	jl	-78 <env_free+0x6a>
e01039c8:	89 04 24 	movl	%eax, (%esp)
e01039cb:	e8 e0 4d 00 00 	calll	19936 <__asan_report_store4>
e01039d0:	88 c6 	movb	%al, %dh
e01039d2:	80 e6 07 	andb	$7, %dh
e01039d5:	80 c6 03 	addb	$3, %dh
e01039d8:	38 d6 	cmpb	%dl, %dh
e01039da:	7c bd 	jl	-67 <env_free+0x89>
e01039dc:	89 04 24 	movl	%eax, (%esp)
e01039df:	e8 cc 4d 00 00 	calll	19916 <__asan_report_store4>
e01039e4:	89 c2 	movl	%eax, %edx
e01039e6:	80 e2 07 	andb	$7, %dl
e01039e9:	80 c2 03 	addb	$3, %dl
e01039ec:	38 ca 	cmpb	%cl, %dl
e01039ee:	0f 8c 42 ff ff ff 	jl	-190 <env_free+0x26>
e01039f4:	89 04 24 	movl	%eax, (%esp)
e01039f7:	e8 94 4d 00 00 	calll	19860 <__asan_report_load4>
e01039fc:	0f 1f 40 00 	nopl	(%eax)
e0103a00:	55 	pushl	%ebp
e0103a01:	89 e5 	movl	%esp, %ebp
e0103a03:	56 	pushl	%esi
e0103a04:	50 	pushl	%eax
e0103a05:	8b 75 08 	movl	8(%ebp), %esi
e0103a08:	89 34 24 	movl	%esi, (%esp)
e0103a0b:	e8 00 ff ff ff 	calll	-256 <env_free>
e0103a10:	39 35 20 1e 12 e0 	cmpl	%esi, -535683552
e0103a16:	74 26 	je	38 <env_destroy+0x3e>
e0103a18:	c7 04 24 a0 c0 10 e0 	movl	$3759194272, (%esp)
e0103a1f:	e8 1c 05 00 00 	calll	1308 <cprintf>
e0103a24:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0103a2e:	66 90 	nop
e0103a30:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0103a37:	e8 f4 d6 ff ff 	calll	-10508 <monitor>
e0103a3c:	eb f2 	jmp	-14 <env_destroy+0x30>
e0103a3e:	e8 5d 4b 00 00 	calll	19293 <__asan_handle_no_return>
e0103a43:	e8 48 14 00 00 	calll	5192 <sched_yield>
e0103a48:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0103a50:	55 	pushl	%ebp
e0103a51:	89 e5 	movl	%esp, %ebp
e0103a53:	83 ec 08 	subl	$8, %esp
e0103a56:	e8 45 4b 00 00 	calll	19269 <__asan_handle_no_return>
e0103a5b:	83 ec 04 	subl	$4, %esp
e0103a5e:	68 00 c1 10 e0 	pushl	$3759194368
e0103a63:	68 b7 01 00 00 	pushl	$439
e0103a68:	68 e0 bf 10 e0 	pushl	$3759194080
e0103a6d:	e8 be c6 ff ff 	calll	-14658 <_panic>
e0103a72:	83 c4 04 	addl	$4, %esp
e0103a75:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0103a7f:	90 	nop
e0103a80:	55 	pushl	%ebp
e0103a81:	89 e5 	movl	%esp, %ebp
e0103a83:	53 	pushl	%ebx
e0103a84:	50 	pushl	%eax
e0103a85:	8b 45 08 	movl	8(%ebp), %eax
e0103a88:	8b 0d 20 1e 12 e0 	movl	-535683552, %ecx
e0103a8e:	39 c1 	cmpl	%eax, %ecx
e0103a90:	74 53 	je	83 <env_run+0x65>
e0103a92:	85 c9 	testl	%ecx, %ecx
e0103a94:	74 4f 	je	79 <env_run+0x65>
e0103a96:	83 c1 54 	addl	$84, %ecx
e0103a99:	89 ca 	movl	%ecx, %edx
e0103a9b:	c1 ea 03 	shrl	$3, %edx
e0103a9e:	8a 9a 00 00 80 de 	movb	-562036736(%edx), %bl
e0103aa4:	84 db 	testb	%bl, %bl
e0103aa6:	74 14 	je	20 <env_run+0x3c>
e0103aa8:	88 cf 	movb	%cl, %bh
e0103aaa:	80 e7 07 	andb	$7, %bh
e0103aad:	80 c7 03 	addb	$3, %bh
e0103ab0:	38 df 	cmpb	%bl, %bh
e0103ab2:	7c 08 	jl	8 <env_run+0x3c>
e0103ab4:	89 0c 24 	movl	%ecx, (%esp)
e0103ab7:	e8 d4 4c 00 00 	calll	19668 <__asan_report_load4>
e0103abc:	83 39 03 	cmpl	$3, (%ecx)
e0103abf:	75 24 	jne	36 <env_run+0x65>
e0103ac1:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0103ac7:	84 d2 	testb	%dl, %dl
e0103ac9:	74 14 	je	20 <env_run+0x5f>
e0103acb:	88 ce 	movb	%cl, %dh
e0103acd:	80 e6 07 	andb	$7, %dh
e0103ad0:	80 c6 03 	addb	$3, %dh
e0103ad3:	38 d6 	cmpb	%dl, %dh
e0103ad5:	7c 08 	jl	8 <env_run+0x5f>
e0103ad7:	89 0c 24 	movl	%ecx, (%esp)
e0103ada:	e8 d1 4c 00 00 	calll	19665 <__asan_report_store4>
e0103adf:	c7 01 02 00 00 00 	movl	$2, (%ecx)
e0103ae5:	a3 20 1e 12 e0 	movl	%eax, 3759283744
e0103aea:	8d 48 54 	leal	84(%eax), %ecx
e0103aed:	89 ca 	movl	%ecx, %edx
e0103aef:	c1 ea 03 	shrl	$3, %edx
e0103af2:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0103af8:	84 d2 	testb	%dl, %dl
e0103afa:	74 14 	je	20 <env_run+0x90>
e0103afc:	88 ce 	movb	%cl, %dh
e0103afe:	80 e6 07 	andb	$7, %dh
e0103b01:	80 c6 03 	addb	$3, %dh
e0103b04:	38 d6 	cmpb	%dl, %dh
e0103b06:	7c 08 	jl	8 <env_run+0x90>
e0103b08:	89 0c 24 	movl	%ecx, (%esp)
e0103b0b:	e8 a0 4c 00 00 	calll	19616 <__asan_report_store4>
e0103b10:	c7 40 54 03 00 00 00 	movl	$3, 84(%eax)
e0103b17:	83 c0 58 	addl	$88, %eax
e0103b1a:	89 c1 	movl	%eax, %ecx
e0103b1c:	c1 e9 03 	shrl	$3, %ecx
e0103b1f:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0103b25:	84 c9 	testb	%cl, %cl
e0103b27:	74 14 	je	20 <env_run+0xbd>
e0103b29:	89 c2 	movl	%eax, %edx
e0103b2b:	80 e2 07 	andb	$7, %dl
e0103b2e:	80 c2 03 	addb	$3, %dl
e0103b31:	38 ca 	cmpb	%cl, %dl
e0103b33:	7c 08 	jl	8 <env_run+0xbd>
e0103b35:	89 04 24 	movl	%eax, (%esp)
e0103b38:	e8 53 4c 00 00 	calll	19539 <__asan_report_load4>
e0103b3d:	ff 00 	incl	(%eax)
e0103b3f:	e8 5c 4a 00 00 	calll	19036 <__asan_handle_no_return>
e0103b44:	e8 07 ff ff ff 	calll	-249 <env_pop_tf>
e0103b49:	83 ec 04 	subl	$4, %esp
e0103b4c:	0f 1f 40 00 	nopl	(%eax)
e0103b50:	83 ec 0c 	subl	$12, %esp
e0103b53:	e8 a8 51 00 00 	calll	20904 <__asan_init>
e0103b58:	e8 c3 52 00 00 	calll	21187 <__asan_version_mismatch_check_v8>
e0103b5d:	83 ec 08 	subl	$8, %esp
e0103b60:	6a 0d 	pushl	$13
e0103b62:	68 60 0d 12 e0 	pushl	$3759279456
e0103b67:	e8 c4 51 00 00 	calll	20932 <__asan_register_globals>
e0103b6c:	83 c4 1c 	addl	$28, %esp
e0103b6f:	c3 	retl
e0103b70:	83 ec 14 	subl	$20, %esp
e0103b73:	6a 0d 	pushl	$13
e0103b75:	68 60 0d 12 e0 	pushl	$3759279456
e0103b7a:	e8 01 52 00 00 	calll	20993 <__asan_unregister_globals>
e0103b7f:	83 c4 1c 	addl	$28, %esp
e0103b82:	c3 	retl
e0103b83:	cc 	int3
e0103b84:	cc 	int3
e0103b85:	cc 	int3
e0103b86:	cc 	int3
e0103b87:	cc 	int3
e0103b88:	cc 	int3
e0103b89:	cc 	int3
e0103b8a:	cc 	int3
e0103b8b:	cc 	int3
e0103b8c:	cc 	int3
e0103b8d:	cc 	int3
e0103b8e:	cc 	int3
e0103b8f:	cc 	int3
e0103b90:	55 	pushl	%ebp
e0103b91:	89 e5 	movl	%esp, %ebp
e0103b93:	83 ec 08 	subl	$8, %esp
e0103b96:	e8 35 00 00 00 	calll	53 <nmi_disable>
e0103b9b:	b0 0a 	movb	$10, %al
e0103b9d:	ba 70 00 00 00 	movl	$112, %edx
e0103ba2:	ee 	outb	%al, %dx
e0103ba3:	ba 71 00 00 00 	movl	$113, %edx
e0103ba8:	ec 	inb	%dx, %al
e0103ba9:	0c 0f 	orb	$15, %al
e0103bab:	ba 71 00 00 00 	movl	$113, %edx
e0103bb0:	ee 	outb	%al, %dx
e0103bb1:	b0 0b 	movb	$11, %al
e0103bb3:	ba 70 00 00 00 	movl	$112, %edx
e0103bb8:	ee 	outb	%al, %dx
e0103bb9:	ba 71 00 00 00 	movl	$113, %edx
e0103bbe:	ec 	inb	%dx, %al
e0103bbf:	0c 40 	orb	$64, %al
e0103bc1:	ba 71 00 00 00 	movl	$113, %edx
e0103bc6:	ee 	outb	%al, %dx
e0103bc7:	83 c4 08 	addl	$8, %esp
e0103bca:	5d 	popl	%ebp
e0103bcb:	eb 13 	jmp	19 <nmi_enable>
e0103bcd:	0f 1f 00 	nopl	(%eax)
e0103bd0:	ba 70 00 00 00 	movl	$112, %edx
e0103bd5:	ec 	inb	%dx, %al
e0103bd6:	0c 80 	orb	$-128, %al
e0103bd8:	ba 70 00 00 00 	movl	$112, %edx
e0103bdd:	ee 	outb	%al, %dx
e0103bde:	c3 	retl
e0103bdf:	90 	nop
e0103be0:	ba 70 00 00 00 	movl	$112, %edx
e0103be5:	ec 	inb	%dx, %al
e0103be6:	24 7f 	andb	$127, %al
e0103be8:	ba 70 00 00 00 	movl	$112, %edx
e0103bed:	ee 	outb	%al, %dx
e0103bee:	c3 	retl
e0103bef:	90 	nop
e0103bf0:	b0 0c 	movb	$12, %al
e0103bf2:	ba 70 00 00 00 	movl	$112, %edx
e0103bf7:	ee 	outb	%al, %dx
e0103bf8:	ba 71 00 00 00 	movl	$113, %edx
e0103bfd:	ec 	inb	%dx, %al
e0103bfe:	c3 	retl
e0103bff:	90 	nop
e0103c00:	8a 44 24 04 	movb	4(%esp), %al
e0103c04:	ba 70 00 00 00 	movl	$112, %edx
e0103c09:	ee 	outb	%al, %dx
e0103c0a:	ba 71 00 00 00 	movl	$113, %edx
e0103c0f:	ec 	inb	%dx, %al
e0103c10:	0f b6 c0 	movzbl	%al, %eax
e0103c13:	c3 	retl
e0103c14:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0103c1e:	66 90 	nop
e0103c20:	8a 4c 24 08 	movb	8(%esp), %cl
e0103c24:	8a 44 24 04 	movb	4(%esp), %al
e0103c28:	ba 70 00 00 00 	movl	$112, %edx
e0103c2d:	ee 	outb	%al, %dx
e0103c2e:	89 c8 	movl	%ecx, %eax
e0103c30:	ba 71 00 00 00 	movl	$113, %edx
e0103c35:	ee 	outb	%al, %dx
e0103c36:	c3 	retl
e0103c37:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0103c40:	83 ec 0c 	subl	$12, %esp
e0103c43:	e8 b8 50 00 00 	calll	20664 <__asan_init>
e0103c48:	e8 d3 51 00 00 	calll	20947 <__asan_version_mismatch_check_v8>
e0103c4d:	83 c4 0c 	addl	$12, %esp
e0103c50:	c3 	retl
e0103c51:	cc 	int3
e0103c52:	cc 	int3
e0103c53:	cc 	int3
e0103c54:	cc 	int3
e0103c55:	cc 	int3
e0103c56:	cc 	int3
e0103c57:	cc 	int3
e0103c58:	cc 	int3
e0103c59:	cc 	int3
e0103c5a:	cc 	int3
e0103c5b:	cc 	int3
e0103c5c:	cc 	int3
e0103c5d:	cc 	int3
e0103c5e:	cc 	int3
e0103c5f:	cc 	int3
e0103c60:	55 	pushl	%ebp
e0103c61:	89 e5 	movl	%esp, %ebp
e0103c63:	83 ec 08 	subl	$8, %esp
e0103c66:	c6 05 a0 1e 12 e0 01 	movb	$1, -535683424
e0103c6d:	b0 ff 	movb	$-1, %al
e0103c6f:	ba 21 00 00 00 	movl	$33, %edx
e0103c74:	ee 	outb	%al, %dx
e0103c75:	b0 ff 	movb	$-1, %al
e0103c77:	ba a1 00 00 00 	movl	$161, %edx
e0103c7c:	ee 	outb	%al, %dx
e0103c7d:	b0 11 	movb	$17, %al
e0103c7f:	ba 20 00 00 00 	movl	$32, %edx
e0103c84:	ee 	outb	%al, %dx
e0103c85:	b0 20 	movb	$32, %al
e0103c87:	ba 21 00 00 00 	movl	$33, %edx
e0103c8c:	ee 	outb	%al, %dx
e0103c8d:	b0 04 	movb	$4, %al
e0103c8f:	ba 21 00 00 00 	movl	$33, %edx
e0103c94:	ee 	outb	%al, %dx
e0103c95:	b0 01 	movb	$1, %al
e0103c97:	ba 21 00 00 00 	movl	$33, %edx
e0103c9c:	ee 	outb	%al, %dx
e0103c9d:	b0 11 	movb	$17, %al
e0103c9f:	ba a0 00 00 00 	movl	$160, %edx
e0103ca4:	ee 	outb	%al, %dx
e0103ca5:	b0 28 	movb	$40, %al
e0103ca7:	ba a1 00 00 00 	movl	$161, %edx
e0103cac:	ee 	outb	%al, %dx
e0103cad:	b0 02 	movb	$2, %al
e0103caf:	ba a1 00 00 00 	movl	$161, %edx
e0103cb4:	ee 	outb	%al, %dx
e0103cb5:	b0 01 	movb	$1, %al
e0103cb7:	ba a1 00 00 00 	movl	$161, %edx
e0103cbc:	ee 	outb	%al, %dx
e0103cbd:	b0 68 	movb	$104, %al
e0103cbf:	ba 20 00 00 00 	movl	$32, %edx
e0103cc4:	ee 	outb	%al, %dx
e0103cc5:	b0 0a 	movb	$10, %al
e0103cc7:	ba 20 00 00 00 	movl	$32, %edx
e0103ccc:	ee 	outb	%al, %dx
e0103ccd:	b0 68 	movb	$104, %al
e0103ccf:	ba a0 00 00 00 	movl	$160, %edx
e0103cd4:	ee 	outb	%al, %dx
e0103cd5:	b0 0a 	movb	$10, %al
e0103cd7:	ba a0 00 00 00 	movl	$160, %edx
e0103cdc:	ee 	outb	%al, %dx
e0103cdd:	0f b7 05 00 0f 12 e0 	movzwl	-535687424, %eax
e0103ce4:	66 83 f8 ff 	cmpw	$-1, %ax
e0103ce8:	74 0b 	je	11 <pic_init+0x95>
e0103cea:	0f b7 c0 	movzwl	%ax, %eax
e0103ced:	89 04 24 	movl	%eax, (%esp)
e0103cf0:	e8 0b 00 00 00 	calll	11 <irq_setmask_8259A>
e0103cf5:	83 c4 08 	addl	$8, %esp
e0103cf8:	5d 	popl	%ebp
e0103cf9:	c3 	retl
e0103cfa:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0103d00:	55 	pushl	%ebp
e0103d01:	89 e5 	movl	%esp, %ebp
e0103d03:	57 	pushl	%edi
e0103d04:	56 	pushl	%esi
e0103d05:	83 ec 10 	subl	$16, %esp
e0103d08:	0f b7 45 08 	movzwl	8(%ebp), %eax
e0103d0c:	66 a3 00 0f 12 e0 	movw	%ax, 3759279872
e0103d12:	80 3d a0 1e 12 e0 01 	cmpb	$1, -535683424
e0103d19:	75 4c 	jne	76 <irq_setmask_8259A+0x67>
e0103d1b:	ba 21 00 00 00 	movl	$33, %edx
e0103d20:	ee 	outb	%al, %dx
e0103d21:	0f b7 f0 	movzwl	%ax, %esi
e0103d24:	88 e0 	movb	%ah, %al
e0103d26:	ba a1 00 00 00 	movl	$161, %edx
e0103d2b:	ee 	outb	%al, %dx
e0103d2c:	c7 04 24 c0 c2 10 e0 	movl	$3759194816, (%esp)
e0103d33:	e8 08 02 00 00 	calll	520 <cprintf>
e0103d38:	31 ff 	xorl	%edi, %edi
e0103d3a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0103d40:	0f a3 fe 	btl	%edi, %esi
e0103d43:	72 10 	jb	16 <irq_setmask_8259A+0x55>
e0103d45:	89 7c 24 04 	movl	%edi, 4(%esp)
e0103d49:	c7 04 24 00 c3 10 e0 	movl	$3759194880, (%esp)
e0103d50:	e8 eb 01 00 00 	calll	491 <cprintf>
e0103d55:	47 	incl	%edi
e0103d56:	83 ff 10 	cmpl	$16, %edi
e0103d59:	75 e5 	jne	-27 <irq_setmask_8259A+0x40>
e0103d5b:	c7 04 24 40 c3 10 e0 	movl	$3759194944, (%esp)
e0103d62:	e8 d9 01 00 00 	calll	473 <cprintf>
e0103d67:	83 c4 10 	addl	$16, %esp
e0103d6a:	5e 	popl	%esi
e0103d6b:	5f 	popl	%edi
e0103d6c:	5d 	popl	%ebp
e0103d6d:	c3 	retl
e0103d6e:	66 90 	nop
e0103d70:	80 7c 24 04 08 	cmpb	$8, 4(%esp)
e0103d75:	72 08 	jb	8 <pic_send_eoi+0xf>
e0103d77:	b0 20 	movb	$32, %al
e0103d79:	ba a0 00 00 00 	movl	$160, %edx
e0103d7e:	ee 	outb	%al, %dx
e0103d7f:	b0 20 	movb	$32, %al
e0103d81:	ba 20 00 00 00 	movl	$32, %edx
e0103d86:	ee 	outb	%al, %dx
e0103d87:	c3 	retl
e0103d88:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0103d90:	83 ec 0c 	subl	$12, %esp
e0103d93:	e8 68 4f 00 00 	calll	20328 <__asan_init>
e0103d98:	e8 83 50 00 00 	calll	20611 <__asan_version_mismatch_check_v8>
e0103d9d:	83 ec 08 	subl	$8, %esp
e0103da0:	6a 05 	pushl	$5
e0103da2:	68 40 0f 12 e0 	pushl	$3759279936
e0103da7:	e8 84 4f 00 00 	calll	20356 <__asan_register_globals>
e0103dac:	83 c4 1c 	addl	$28, %esp
e0103daf:	c3 	retl
e0103db0:	83 ec 14 	subl	$20, %esp
e0103db3:	6a 05 	pushl	$5
e0103db5:	68 40 0f 12 e0 	pushl	$3759279936
e0103dba:	e8 c1 4f 00 00 	calll	20417 <__asan_unregister_globals>
e0103dbf:	83 c4 1c 	addl	$28, %esp
e0103dc2:	c3 	retl
e0103dc3:	cc 	int3
e0103dc4:	cc 	int3
e0103dc5:	cc 	int3
e0103dc6:	cc 	int3
e0103dc7:	cc 	int3
e0103dc8:	cc 	int3
e0103dc9:	cc 	int3
e0103dca:	cc 	int3
e0103dcb:	cc 	int3
e0103dcc:	cc 	int3
e0103dcd:	cc 	int3
e0103dce:	cc 	int3
e0103dcf:	cc 	int3
e0103dd0:	55 	pushl	%ebp
e0103dd1:	89 e5 	movl	%esp, %ebp
e0103dd3:	53 	pushl	%ebx
e0103dd4:	57 	pushl	%edi
e0103dd5:	56 	pushl	%esi
e0103dd6:	83 e4 e0 	andl	$-32, %esp
e0103dd9:	83 ec 40 	subl	$64, %esp
e0103ddc:	89 e6 	movl	%esp, %esi
e0103dde:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0103de5:	74 0f 	je	15 <vcprintf+0x26>
e0103de7:	83 ec 0c 	subl	$12, %esp
e0103dea:	6a 20 	pushl	$32
e0103dec:	e8 9f 4b 00 00 	calll	19359 <__asan_stack_malloc_0>
e0103df1:	83 c4 10 	addl	$16, %esp
e0103df4:	eb 02 	jmp	2 <vcprintf+0x28>
e0103df6:	31 c0 	xorl	%eax, %eax
e0103df8:	85 c0 	testl	%eax, %eax
e0103dfa:	89 46 18 	movl	%eax, 24(%esi)
e0103dfd:	89 c3 	movl	%eax, %ebx
e0103dff:	75 0a 	jne	10 <vcprintf+0x3b>
e0103e01:	89 e3 	movl	%esp, %ebx
e0103e03:	83 c3 e0 	addl	$-32, %ebx
e0103e06:	83 e3 e0 	andl	$-32, %ebx
e0103e09:	89 dc 	movl	%ebx, %esp
e0103e0b:	89 5e 1c 	movl	%ebx, 28(%esi)
e0103e0e:	8d 53 10 	leal	16(%ebx), %edx
e0103e11:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e0103e17:	c7 43 04 d3 a4 10 e0 	movl	$3759187155, 4(%ebx)
e0103e1e:	c7 43 08 d0 3d 10 e0 	movl	$3759160784, 8(%ebx)
e0103e25:	89 d8 	movl	%ebx, %eax
e0103e27:	c1 e8 03 	shrl	$3, %eax
e0103e2a:	c7 80 00 00 80 de f1 f1 f8 f3 	movl	$4093178353, -562036736(%eax)
e0103e34:	89 46 14 	movl	%eax, 20(%esi)
e0103e37:	c6 80 02 00 80 de 04 	movb	$4, -562036734(%eax)
e0103e3e:	89 d7 	movl	%edx, %edi
e0103e40:	c1 ef 03 	shrl	$3, %edi
e0103e43:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0103e49:	84 c0 	testb	%al, %al
e0103e4b:	75 71 	jne	113 <vcprintf+0xee>
e0103e4d:	8b 45 0c 	movl	12(%ebp), %eax
e0103e50:	8b 4d 08 	movl	8(%ebp), %ecx
e0103e53:	c7 02 00 00 00 00 	movl	$0, (%edx)
e0103e59:	50 	pushl	%eax
e0103e5a:	51 	pushl	%ecx
e0103e5b:	89 56 10 	movl	%edx, 16(%esi)
e0103e5e:	52 	pushl	%edx
e0103e5f:	68 00 3f 10 e0 	pushl	$3759161088
e0103e64:	e8 17 25 00 00 	calll	9495 <vprintfmt>
e0103e69:	83 c4 10 	addl	$16, %esp
e0103e6c:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0103e72:	84 c0 	testb	%al, %al
e0103e74:	75 60 	jne	96 <vcprintf+0x106>
e0103e76:	8b 43 10 	movl	16(%ebx), %eax
e0103e79:	8b 56 14 	movl	20(%esi), %edx
e0103e7c:	c6 82 02 00 80 de f8 	movb	$-8, -562036734(%edx)
e0103e83:	c7 03 0e 36 e0 45 	movl	$1172321806, (%ebx)
e0103e89:	8b 4e 18 	movl	24(%esi), %ecx
e0103e8c:	85 c9 	testl	%ecx, %ecx
e0103e8e:	74 1c 	je	28 <vcprintf+0xdc>
e0103e90:	c7 82 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edx)
e0103e9a:	c7 82 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edx)
e0103ea4:	8b 49 3c 	movl	60(%ecx), %ecx
e0103ea7:	c6 01 00 	movb	$0, (%ecx)
e0103eaa:	eb 0a 	jmp	10 <vcprintf+0xe6>
e0103eac:	c7 82 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edx)
e0103eb6:	8d 65 f4 	leal	-12(%ebp), %esp
e0103eb9:	5e 	popl	%esi
e0103eba:	5f 	popl	%edi
e0103ebb:	5b 	popl	%ebx
e0103ebc:	5d 	popl	%ebp
e0103ebd:	c3 	retl
e0103ebe:	89 d1 	movl	%edx, %ecx
e0103ec0:	80 e1 07 	andb	$7, %cl
e0103ec3:	80 c1 03 	addb	$3, %cl
e0103ec6:	38 c1 	cmpb	%al, %cl
e0103ec8:	7c 83 	jl	-125 <vcprintf+0x7d>
e0103eca:	83 ec 0c 	subl	$12, %esp
e0103ecd:	52 	pushl	%edx
e0103ece:	e8 dd 48 00 00 	calll	18653 <__asan_report_store4>
e0103ed3:	83 c4 10 	addl	$16, %esp
e0103ed6:	8b 4e 10 	movl	16(%esi), %ecx
e0103ed9:	80 e1 07 	andb	$7, %cl
e0103edc:	80 c1 03 	addb	$3, %cl
e0103edf:	38 c1 	cmpb	%al, %cl
e0103ee1:	7c 93 	jl	-109 <vcprintf+0xa6>
e0103ee3:	83 ec 0c 	subl	$12, %esp
e0103ee6:	ff 76 10 	pushl	16(%esi)
e0103ee9:	e8 a2 48 00 00 	calll	18594 <__asan_report_load4>
e0103eee:	83 c4 10 	addl	$16, %esp
e0103ef1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0103efb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0103f00:	55 	pushl	%ebp
e0103f01:	89 e5 	movl	%esp, %ebp
e0103f03:	53 	pushl	%ebx
e0103f04:	50 	pushl	%eax
e0103f05:	8b 5d 0c 	movl	12(%ebp), %ebx
e0103f08:	8b 45 08 	movl	8(%ebp), %eax
e0103f0b:	89 04 24 	movl	%eax, (%esp)
e0103f0e:	e8 dd c6 ff ff 	calll	-14627 <cputchar>
e0103f13:	89 d8 	movl	%ebx, %eax
e0103f15:	c1 e8 03 	shrl	$3, %eax
e0103f18:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0103f1e:	84 c0 	testb	%al, %al
e0103f20:	75 08 	jne	8 <putch+0x2a>
e0103f22:	ff 03 	incl	(%ebx)
e0103f24:	83 c4 04 	addl	$4, %esp
e0103f27:	5b 	popl	%ebx
e0103f28:	5d 	popl	%ebp
e0103f29:	c3 	retl
e0103f2a:	89 d9 	movl	%ebx, %ecx
e0103f2c:	80 e1 07 	andb	$7, %cl
e0103f2f:	80 c1 03 	addb	$3, %cl
e0103f32:	38 c1 	cmpb	%al, %cl
e0103f34:	7c ec 	jl	-20 <putch+0x22>
e0103f36:	89 1c 24 	movl	%ebx, (%esp)
e0103f39:	e8 52 48 00 00 	calll	18514 <__asan_report_load4>
e0103f3e:	66 90 	nop
e0103f40:	55 	pushl	%ebp
e0103f41:	89 e5 	movl	%esp, %ebp
e0103f43:	53 	pushl	%ebx
e0103f44:	57 	pushl	%edi
e0103f45:	56 	pushl	%esi
e0103f46:	83 e4 e0 	andl	$-32, %esp
e0103f49:	83 ec 40 	subl	$64, %esp
e0103f4c:	89 e6 	movl	%esp, %esi
e0103f4e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0103f55:	74 0f 	je	15 <cprintf+0x26>
e0103f57:	83 ec 0c 	subl	$12, %esp
e0103f5a:	6a 20 	pushl	$32
e0103f5c:	e8 2f 4a 00 00 	calll	18991 <__asan_stack_malloc_0>
e0103f61:	83 c4 10 	addl	$16, %esp
e0103f64:	eb 02 	jmp	2 <cprintf+0x28>
e0103f66:	31 c0 	xorl	%eax, %eax
e0103f68:	85 c0 	testl	%eax, %eax
e0103f6a:	89 46 18 	movl	%eax, 24(%esi)
e0103f6d:	89 c3 	movl	%eax, %ebx
e0103f6f:	75 0a 	jne	10 <cprintf+0x3b>
e0103f71:	89 e3 	movl	%esp, %ebx
e0103f73:	83 c3 e0 	addl	$-32, %ebx
e0103f76:	83 e3 e0 	andl	$-32, %ebx
e0103f79:	89 dc 	movl	%ebx, %esp
e0103f7b:	89 5e 1c 	movl	%ebx, 28(%esi)
e0103f7e:	8d 43 10 	leal	16(%ebx), %eax
e0103f81:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e0103f87:	c7 43 04 14 a2 10 e0 	movl	$3759186452, 4(%ebx)
e0103f8e:	c7 43 08 40 3f 10 e0 	movl	$3759161152, 8(%ebx)
e0103f95:	89 df 	movl	%ebx, %edi
e0103f97:	c1 ef 03 	shrl	$3, %edi
e0103f9a:	c7 87 00 00 80 de f1 f1 f8 f3 	movl	$4093178353, -562036736(%edi)
e0103fa4:	c6 87 02 00 80 de 04 	movb	$4, -562036734(%edi)
e0103fab:	8d 4d 0c 	leal	12(%ebp), %ecx
e0103fae:	89 4b 10 	movl	%ecx, 16(%ebx)
e0103fb1:	89 c1 	movl	%eax, %ecx
e0103fb3:	c1 e9 03 	shrl	$3, %ecx
e0103fb6:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0103fbc:	84 c9 	testb	%cl, %cl
e0103fbe:	75 53 	jne	83 <cprintf+0xd3>
e0103fc0:	83 ec 08 	subl	$8, %esp
e0103fc3:	ff 73 10 	pushl	16(%ebx)
e0103fc6:	ff 75 08 	pushl	8(%ebp)
e0103fc9:	e8 02 fe ff ff 	calll	-510 <vcprintf>
e0103fce:	83 c4 10 	addl	$16, %esp
e0103fd1:	c6 87 02 00 80 de f8 	movb	$-8, -562036734(%edi)
e0103fd8:	c7 03 0e 36 e0 45 	movl	$1172321806, (%ebx)
e0103fde:	8b 4e 18 	movl	24(%esi), %ecx
e0103fe1:	85 c9 	testl	%ecx, %ecx
e0103fe3:	74 1c 	je	28 <cprintf+0xc1>
e0103fe5:	c7 87 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edi)
e0103fef:	c7 87 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edi)
e0103ff9:	8b 49 3c 	movl	60(%ecx), %ecx
e0103ffc:	c6 01 00 	movb	$0, (%ecx)
e0103fff:	eb 0a 	jmp	10 <cprintf+0xcb>
e0104001:	c7 87 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edi)
e010400b:	8d 65 f4 	leal	-12(%ebp), %esp
e010400e:	5e 	popl	%esi
e010400f:	5f 	popl	%edi
e0104010:	5b 	popl	%ebx
e0104011:	5d 	popl	%ebp
e0104012:	c3 	retl
e0104013:	89 c2 	movl	%eax, %edx
e0104015:	80 e2 07 	andb	$7, %dl
e0104018:	80 c2 03 	addb	$3, %dl
e010401b:	38 ca 	cmpb	%cl, %dl
e010401d:	7c a1 	jl	-95 <cprintf+0x80>
e010401f:	83 ec 0c 	subl	$12, %esp
e0104022:	50 	pushl	%eax
e0104023:	e8 68 47 00 00 	calll	18280 <__asan_report_load4>
e0104028:	83 c4 10 	addl	$16, %esp
e010402b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0104030:	83 ec 0c 	subl	$12, %esp
e0104033:	e8 c8 4c 00 00 	calll	19656 <__asan_init>
e0104038:	e8 e3 4d 00 00 	calll	19939 <__asan_version_mismatch_check_v8>
e010403d:	83 c4 0c 	addl	$12, %esp
e0104040:	c3 	retl
e0104041:	cc 	int3
e0104042:	cc 	int3
e0104043:	cc 	int3
e0104044:	cc 	int3
e0104045:	cc 	int3
e0104046:	cc 	int3
e0104047:	cc 	int3
e0104048:	cc 	int3
e0104049:	cc 	int3
e010404a:	cc 	int3
e010404b:	cc 	int3
e010404c:	cc 	int3
e010404d:	cc 	int3
e010404e:	cc 	int3
e010404f:	cc 	int3
e0104050:	b8 84 4e 10 e0 	movl	$3759165060, %eax
e0104055:	b9 84 4e 10 e0 	movl	$3759165060, %ecx
e010405a:	81 e1 00 00 ff ff 	andl	$4294901760, %ecx
e0104060:	81 c9 00 8e 00 00 	orl	$36352, %ecx
e0104066:	89 0d 24 20 12 e0 	movl	%ecx, -535683036
e010406c:	0f b7 c0 	movzwl	%ax, %eax
e010406f:	0d 00 00 08 00 	orl	$524288, %eax
e0104074:	a3 20 20 12 e0 	movl	%eax, 3759284256
e0104079:	b8 e0 0f 12 e0 	movl	$3759280096, %eax
e010407e:	0f 01 18 	lidtl	(%eax)
e0104081:	c3 	retl
e0104082:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010408c:	0f 1f 40 00 	nopl	(%eax)
e0104090:	55 	pushl	%ebp
e0104091:	89 e5 	movl	%esp, %ebp
e0104093:	53 	pushl	%ebx
e0104094:	57 	pushl	%edi
e0104095:	56 	pushl	%esi
e0104096:	83 ec 0c 	subl	$12, %esp
e0104099:	8b 5d 08 	movl	8(%ebp), %ebx
e010409c:	83 ec 08 	subl	$8, %esp
e010409f:	53 	pushl	%ebx
e01040a0:	68 e0 c3 10 e0 	pushl	$3759195104
e01040a5:	e8 96 fe ff ff 	calll	-362 <cprintf>
e01040aa:	83 c4 04 	addl	$4, %esp
e01040ad:	53 	pushl	%ebx
e01040ae:	e8 dd 05 00 00 	calll	1501 <print_regs>
e01040b3:	83 c4 10 	addl	$16, %esp
e01040b6:	8d 43 20 	leal	32(%ebx), %eax
e01040b9:	89 c1 	movl	%eax, %ecx
e01040bb:	c1 e9 03 	shrl	$3, %ecx
e01040be:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01040c4:	84 c9 	testb	%cl, %cl
e01040c6:	0f 85 1f 03 00 00 	jne	799 <print_trapframe+0x35b>
e01040cc:	8d 43 21 	leal	33(%ebx), %eax
e01040cf:	89 c1 	movl	%eax, %ecx
e01040d1:	c1 e9 03 	shrl	$3, %ecx
e01040d4:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01040da:	84 c9 	testb	%cl, %cl
e01040dc:	0f 85 24 03 00 00 	jne	804 <print_trapframe+0x376>
e01040e2:	0f b7 43 20 	movzwl	32(%ebx), %eax
e01040e6:	83 ec 08 	subl	$8, %esp
e01040e9:	50 	pushl	%eax
e01040ea:	68 20 c4 10 e0 	pushl	$3759195168
e01040ef:	e8 4c fe ff ff 	calll	-436 <cprintf>
e01040f4:	83 c4 10 	addl	$16, %esp
e01040f7:	8d 43 24 	leal	36(%ebx), %eax
e01040fa:	89 c1 	movl	%eax, %ecx
e01040fc:	c1 e9 03 	shrl	$3, %ecx
e01040ff:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104105:	84 c9 	testb	%cl, %cl
e0104107:	0f 85 14 03 00 00 	jne	788 <print_trapframe+0x391>
e010410d:	8d 43 25 	leal	37(%ebx), %eax
e0104110:	89 c1 	movl	%eax, %ecx
e0104112:	c1 e9 03 	shrl	$3, %ecx
e0104115:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010411b:	84 c9 	testb	%cl, %cl
e010411d:	0f 85 19 03 00 00 	jne	793 <print_trapframe+0x3ac>
e0104123:	0f b7 43 24 	movzwl	36(%ebx), %eax
e0104127:	83 ec 08 	subl	$8, %esp
e010412a:	50 	pushl	%eax
e010412b:	68 60 c4 10 e0 	pushl	$3759195232
e0104130:	e8 0b fe ff ff 	calll	-501 <cprintf>
e0104135:	83 c4 10 	addl	$16, %esp
e0104138:	8d 53 28 	leal	40(%ebx), %edx
e010413b:	89 d7 	movl	%edx, %edi
e010413d:	c1 ef 03 	shrl	$3, %edi
e0104140:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0104146:	84 c0 	testb	%al, %al
e0104148:	0f 85 09 03 00 00 	jne	777 <print_trapframe+0x3c7>
e010414e:	89 55 f0 	movl	%edx, -16(%ebp)
e0104151:	8d 43 2b 	leal	43(%ebx), %eax
e0104154:	89 c1 	movl	%eax, %ecx
e0104156:	c1 e9 03 	shrl	$3, %ecx
e0104159:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010415f:	84 c9 	testb	%cl, %cl
e0104161:	0f 85 0b 03 00 00 	jne	779 <print_trapframe+0x3e2>
e0104167:	8b 73 28 	movl	40(%ebx), %esi
e010416a:	89 f1 	movl	%esi, %ecx
e010416c:	e8 cf 08 00 00 	calll	2255 <trapname>
e0104171:	83 ec 04 	subl	$4, %esp
e0104174:	50 	pushl	%eax
e0104175:	56 	pushl	%esi
e0104176:	68 a0 c4 10 e0 	pushl	$3759195296
e010417b:	e8 c0 fd ff ff 	calll	-576 <cprintf>
e0104180:	83 c4 10 	addl	$16, %esp
e0104183:	39 1d e0 28 12 e0 	cmpl	%ebx, -535680800
e0104189:	8b 55 f0 	movl	-16(%ebp), %edx
e010418c:	75 3d 	jne	61 <print_trapframe+0x13b>
e010418e:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0104194:	84 c0 	testb	%al, %al
e0104196:	0f 85 b0 04 00 00 	jne	1200 <print_trapframe+0x5bc>
e010419c:	8d 42 03 	leal	3(%edx), %eax
e010419f:	89 c1 	movl	%eax, %ecx
e01041a1:	c1 e9 03 	shrl	$3, %ecx
e01041a4:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01041aa:	84 c9 	testb	%cl, %cl
e01041ac:	0f 85 b5 04 00 00 	jne	1205 <print_trapframe+0x5d7>
e01041b2:	83 3a 0e 	cmpl	$14, (%edx)
e01041b5:	75 14 	jne	20 <print_trapframe+0x13b>
e01041b7:	0f 20 d0 	movl	%cr2, %eax
e01041ba:	83 ec 08 	subl	$8, %esp
e01041bd:	50 	pushl	%eax
e01041be:	68 e0 c4 10 e0 	pushl	$3759195360
e01041c3:	e8 78 fd ff ff 	calll	-648 <cprintf>
e01041c8:	83 c4 10 	addl	$16, %esp
e01041cb:	8d 53 2c 	leal	44(%ebx), %edx
e01041ce:	89 d6 	movl	%edx, %esi
e01041d0:	c1 ee 03 	shrl	$3, %esi
e01041d3:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e01041d9:	84 c0 	testb	%al, %al
e01041db:	0f 85 ac 02 00 00 	jne	684 <print_trapframe+0x3fd>
e01041e1:	8d 43 2f 	leal	47(%ebx), %eax
e01041e4:	89 c1 	movl	%eax, %ecx
e01041e6:	c1 e9 03 	shrl	$3, %ecx
e01041e9:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01041ef:	84 c9 	testb	%cl, %cl
e01041f1:	89 55 ec 	movl	%edx, -20(%ebp)
e01041f4:	0f 85 ae 02 00 00 	jne	686 <print_trapframe+0x418>
e01041fa:	83 ec 08 	subl	$8, %esp
e01041fd:	ff 32 	pushl	(%edx)
e01041ff:	68 20 c5 10 e0 	pushl	$3759195424
e0104204:	e8 37 fd ff ff 	calll	-713 <cprintf>
e0104209:	83 c4 10 	addl	$16, %esp
e010420c:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0104212:	84 c0 	testb	%al, %al
e0104214:	0f 85 ac 02 00 00 	jne	684 <print_trapframe+0x436>
e010421a:	8b 55 f0 	movl	-16(%ebp), %edx
e010421d:	8d 42 03 	leal	3(%edx), %eax
e0104220:	89 c1 	movl	%eax, %ecx
e0104222:	c1 e9 03 	shrl	$3, %ecx
e0104225:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010422b:	84 c9 	testb	%cl, %cl
e010422d:	0f 85 b1 02 00 00 	jne	689 <print_trapframe+0x454>
e0104233:	83 3a 0e 	cmpl	$14, (%edx)
e0104236:	75 60 	jne	96 <print_trapframe+0x208>
e0104238:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e010423e:	84 c0 	testb	%al, %al
e0104240:	0f 85 ca 03 00 00 	jne	970 <print_trapframe+0x580>
e0104246:	8b 55 ec 	movl	-20(%ebp), %edx
e0104249:	8d 42 03 	leal	3(%edx), %eax
e010424c:	89 c1 	movl	%eax, %ecx
e010424e:	c1 e9 03 	shrl	$3, %ecx
e0104251:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104257:	84 c9 	testb	%cl, %cl
e0104259:	0f 85 cf 03 00 00 	jne	975 <print_trapframe+0x59e>
e010425f:	8b 02 	movl	(%edx), %eax
e0104261:	a8 04 	testb	$4, %al
e0104263:	b9 e0 c5 10 e0 	movl	$3759195616, %ecx
e0104268:	ba a0 c5 10 e0 	movl	$3759195552, %edx
e010426d:	0f 44 d1 	cmovel	%ecx, %edx
e0104270:	a8 02 	testb	$2, %al
e0104272:	b9 60 c6 10 e0 	movl	$3759195744, %ecx
e0104277:	be 20 c6 10 e0 	movl	$3759195680, %esi
e010427c:	0f 44 f1 	cmovel	%ecx, %esi
e010427f:	a8 01 	testb	$1, %al
e0104281:	b8 e0 c6 10 e0 	movl	$3759195872, %eax
e0104286:	b9 a0 c6 10 e0 	movl	$3759195808, %ecx
e010428b:	0f 44 c8 	cmovel	%eax, %ecx
e010428e:	51 	pushl	%ecx
e010428f:	56 	pushl	%esi
e0104290:	52 	pushl	%edx
e0104291:	68 60 c5 10 e0 	pushl	$3759195488
e0104296:	eb 08 	jmp	8 <print_trapframe+0x210>
e0104298:	83 ec 0c 	subl	$12, %esp
e010429b:	68 20 c7 10 e0 	pushl	$3759195936
e01042a0:	e8 9b fc ff ff 	calll	-869 <cprintf>
e01042a5:	83 c4 10 	addl	$16, %esp
e01042a8:	8d 43 30 	leal	48(%ebx), %eax
e01042ab:	89 c1 	movl	%eax, %ecx
e01042ad:	c1 e9 03 	shrl	$3, %ecx
e01042b0:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01042b6:	84 c9 	testb	%cl, %cl
e01042b8:	0f 85 44 02 00 00 	jne	580 <print_trapframe+0x472>
e01042be:	8d 43 33 	leal	51(%ebx), %eax
e01042c1:	89 c1 	movl	%eax, %ecx
e01042c3:	c1 e9 03 	shrl	$3, %ecx
e01042c6:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01042cc:	84 c9 	testb	%cl, %cl
e01042ce:	0f 85 49 02 00 00 	jne	585 <print_trapframe+0x48d>
e01042d4:	83 ec 08 	subl	$8, %esp
e01042d7:	ff 73 30 	pushl	48(%ebx)
e01042da:	68 60 c7 10 e0 	pushl	$3759196000
e01042df:	e8 5c fc ff ff 	calll	-932 <cprintf>
e01042e4:	83 c4 10 	addl	$16, %esp
e01042e7:	8d 43 34 	leal	52(%ebx), %eax
e01042ea:	89 c1 	movl	%eax, %ecx
e01042ec:	c1 e9 03 	shrl	$3, %ecx
e01042ef:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01042f5:	84 c9 	testb	%cl, %cl
e01042f7:	0f 85 3b 02 00 00 	jne	571 <print_trapframe+0x4a8>
e01042fd:	8d 43 35 	leal	53(%ebx), %eax
e0104300:	89 c1 	movl	%eax, %ecx
e0104302:	c1 e9 03 	shrl	$3, %ecx
e0104305:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010430b:	84 c9 	testb	%cl, %cl
e010430d:	0f 85 40 02 00 00 	jne	576 <print_trapframe+0x4c3>
e0104313:	0f b7 43 34 	movzwl	52(%ebx), %eax
e0104317:	83 ec 08 	subl	$8, %esp
e010431a:	50 	pushl	%eax
e010431b:	68 a0 c7 10 e0 	pushl	$3759196064
e0104320:	e8 1b fc ff ff 	calll	-997 <cprintf>
e0104325:	83 c4 10 	addl	$16, %esp
e0104328:	8d 43 38 	leal	56(%ebx), %eax
e010432b:	89 c1 	movl	%eax, %ecx
e010432d:	c1 e9 03 	shrl	$3, %ecx
e0104330:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104336:	84 c9 	testb	%cl, %cl
e0104338:	0f 85 30 02 00 00 	jne	560 <print_trapframe+0x4de>
e010433e:	8d 43 3b 	leal	59(%ebx), %eax
e0104341:	89 c1 	movl	%eax, %ecx
e0104343:	c1 e9 03 	shrl	$3, %ecx
e0104346:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010434c:	84 c9 	testb	%cl, %cl
e010434e:	0f 85 35 02 00 00 	jne	565 <print_trapframe+0x4f9>
e0104354:	83 ec 08 	subl	$8, %esp
e0104357:	ff 73 38 	pushl	56(%ebx)
e010435a:	68 e0 c7 10 e0 	pushl	$3759196128
e010435f:	e8 dc fb ff ff 	calll	-1060 <cprintf>
e0104364:	83 c4 10 	addl	$16, %esp
e0104367:	8d 43 3c 	leal	60(%ebx), %eax
e010436a:	89 c1 	movl	%eax, %ecx
e010436c:	c1 e9 03 	shrl	$3, %ecx
e010436f:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104375:	84 c9 	testb	%cl, %cl
e0104377:	0f 85 27 02 00 00 	jne	551 <print_trapframe+0x514>
e010437d:	8d 43 3f 	leal	63(%ebx), %eax
e0104380:	89 c1 	movl	%eax, %ecx
e0104382:	c1 e9 03 	shrl	$3, %ecx
e0104385:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010438b:	84 c9 	testb	%cl, %cl
e010438d:	0f 85 2c 02 00 00 	jne	556 <print_trapframe+0x52f>
e0104393:	83 ec 08 	subl	$8, %esp
e0104396:	ff 73 3c 	pushl	60(%ebx)
e0104399:	68 20 c8 10 e0 	pushl	$3759196192
e010439e:	e8 9d fb ff ff 	calll	-1123 <cprintf>
e01043a3:	83 c4 10 	addl	$16, %esp
e01043a6:	8d 43 40 	leal	64(%ebx), %eax
e01043a9:	89 c1 	movl	%eax, %ecx
e01043ab:	c1 e9 03 	shrl	$3, %ecx
e01043ae:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01043b4:	84 c9 	testb	%cl, %cl
e01043b6:	0f 85 1e 02 00 00 	jne	542 <print_trapframe+0x54a>
e01043bc:	83 c3 41 	addl	$65, %ebx
e01043bf:	89 d9 	movl	%ebx, %ecx
e01043c1:	c1 e9 03 	shrl	$3, %ecx
e01043c4:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01043ca:	84 c9 	testb	%cl, %cl
e01043cc:	0f 85 23 02 00 00 	jne	547 <print_trapframe+0x565>
e01043d2:	0f b7 00 	movzwl	(%eax), %eax
e01043d5:	83 ec 08 	subl	$8, %esp
e01043d8:	50 	pushl	%eax
e01043d9:	68 60 c8 10 e0 	pushl	$3759196256
e01043de:	e8 5d fb ff ff 	calll	-1187 <cprintf>
e01043e3:	83 c4 1c 	addl	$28, %esp
e01043e6:	5e 	popl	%esi
e01043e7:	5f 	popl	%edi
e01043e8:	5b 	popl	%ebx
e01043e9:	5d 	popl	%ebp
e01043ea:	c3 	retl
e01043eb:	89 c2 	movl	%eax, %edx
e01043ed:	80 e2 07 	andb	$7, %dl
e01043f0:	38 ca 	cmpb	%cl, %dl
e01043f2:	0f 8c d4 fc ff ff 	jl	-812 <print_trapframe+0x3c>
e01043f8:	83 ec 08 	subl	$8, %esp
e01043fb:	6a 02 	pushl	$2
e01043fd:	50 	pushl	%eax
e01043fe:	e8 4d 44 00 00 	calll	17485 <__asan_report_load_n>
e0104403:	83 c4 10 	addl	$16, %esp
e0104406:	89 c2 	movl	%eax, %edx
e0104408:	80 e2 07 	andb	$7, %dl
e010440b:	38 ca 	cmpb	%cl, %dl
e010440d:	0f 8c cf fc ff ff 	jl	-817 <print_trapframe+0x52>
e0104413:	83 ec 08 	subl	$8, %esp
e0104416:	6a 02 	pushl	$2
e0104418:	50 	pushl	%eax
e0104419:	e8 32 44 00 00 	calll	17458 <__asan_report_load_n>
e010441e:	83 c4 10 	addl	$16, %esp
e0104421:	89 c2 	movl	%eax, %edx
e0104423:	80 e2 07 	andb	$7, %dl
e0104426:	38 ca 	cmpb	%cl, %dl
e0104428:	0f 8c df fc ff ff 	jl	-801 <print_trapframe+0x7d>
e010442e:	83 ec 08 	subl	$8, %esp
e0104431:	6a 02 	pushl	$2
e0104433:	50 	pushl	%eax
e0104434:	e8 17 44 00 00 	calll	17431 <__asan_report_load_n>
e0104439:	83 c4 10 	addl	$16, %esp
e010443c:	89 c2 	movl	%eax, %edx
e010443e:	80 e2 07 	andb	$7, %dl
e0104441:	38 ca 	cmpb	%cl, %dl
e0104443:	0f 8c da fc ff ff 	jl	-806 <print_trapframe+0x93>
e0104449:	83 ec 08 	subl	$8, %esp
e010444c:	6a 02 	pushl	$2
e010444e:	50 	pushl	%eax
e010444f:	e8 fc 43 00 00 	calll	17404 <__asan_report_load_n>
e0104454:	83 c4 10 	addl	$16, %esp
e0104457:	89 d1 	movl	%edx, %ecx
e0104459:	80 e1 07 	andb	$7, %cl
e010445c:	38 c1 	cmpb	%al, %cl
e010445e:	0f 8c ea fc ff ff 	jl	-790 <print_trapframe+0xbe>
e0104464:	83 ec 08 	subl	$8, %esp
e0104467:	6a 04 	pushl	$4
e0104469:	52 	pushl	%edx
e010446a:	e8 e1 43 00 00 	calll	17377 <__asan_report_load_n>
e010446f:	83 c4 10 	addl	$16, %esp
e0104472:	89 c2 	movl	%eax, %edx
e0104474:	80 e2 07 	andb	$7, %dl
e0104477:	38 ca 	cmpb	%cl, %dl
e0104479:	0f 8c e8 fc ff ff 	jl	-792 <print_trapframe+0xd7>
e010447f:	83 ec 08 	subl	$8, %esp
e0104482:	6a 04 	pushl	$4
e0104484:	50 	pushl	%eax
e0104485:	e8 c6 43 00 00 	calll	17350 <__asan_report_load_n>
e010448a:	83 c4 10 	addl	$16, %esp
e010448d:	89 d1 	movl	%edx, %ecx
e010448f:	80 e1 07 	andb	$7, %cl
e0104492:	38 c1 	cmpb	%al, %cl
e0104494:	0f 8c 47 fd ff ff 	jl	-697 <print_trapframe+0x151>
e010449a:	83 ec 08 	subl	$8, %esp
e010449d:	6a 04 	pushl	$4
e010449f:	52 	pushl	%edx
e01044a0:	e8 ab 43 00 00 	calll	17323 <__asan_report_load_n>
e01044a5:	83 c4 10 	addl	$16, %esp
e01044a8:	89 c2 	movl	%eax, %edx
e01044aa:	80 e2 07 	andb	$7, %dl
e01044ad:	38 ca 	cmpb	%cl, %dl
e01044af:	8b 55 ec 	movl	-20(%ebp), %edx
e01044b2:	0f 8c 42 fd ff ff 	jl	-702 <print_trapframe+0x16a>
e01044b8:	83 ec 08 	subl	$8, %esp
e01044bb:	6a 04 	pushl	$4
e01044bd:	50 	pushl	%eax
e01044be:	e8 8d 43 00 00 	calll	17293 <__asan_report_load_n>
e01044c3:	83 c4 10 	addl	$16, %esp
e01044c6:	8b 4d f0 	movl	-16(%ebp), %ecx
e01044c9:	80 e1 07 	andb	$7, %cl
e01044cc:	38 c1 	cmpb	%al, %cl
e01044ce:	0f 8c 46 fd ff ff 	jl	-698 <print_trapframe+0x18a>
e01044d4:	83 ec 08 	subl	$8, %esp
e01044d7:	6a 04 	pushl	$4
e01044d9:	ff 75 f0 	pushl	-16(%ebp)
e01044dc:	e8 6f 43 00 00 	calll	17263 <__asan_report_load_n>
e01044e1:	83 c4 10 	addl	$16, %esp
e01044e4:	89 c2 	movl	%eax, %edx
e01044e6:	80 e2 07 	andb	$7, %dl
e01044e9:	38 ca 	cmpb	%cl, %dl
e01044eb:	8b 55 f0 	movl	-16(%ebp), %edx
e01044ee:	0f 8c 3f fd ff ff 	jl	-705 <print_trapframe+0x1a3>
e01044f4:	83 ec 08 	subl	$8, %esp
e01044f7:	6a 04 	pushl	$4
e01044f9:	50 	pushl	%eax
e01044fa:	e8 51 43 00 00 	calll	17233 <__asan_report_load_n>
e01044ff:	83 c4 10 	addl	$16, %esp
e0104502:	89 c2 	movl	%eax, %edx
e0104504:	80 e2 07 	andb	$7, %dl
e0104507:	38 ca 	cmpb	%cl, %dl
e0104509:	0f 8c af fd ff ff 	jl	-593 <print_trapframe+0x22e>
e010450f:	83 ec 08 	subl	$8, %esp
e0104512:	6a 04 	pushl	$4
e0104514:	50 	pushl	%eax
e0104515:	e8 36 43 00 00 	calll	17206 <__asan_report_load_n>
e010451a:	83 c4 10 	addl	$16, %esp
e010451d:	89 c2 	movl	%eax, %edx
e010451f:	80 e2 07 	andb	$7, %dl
e0104522:	38 ca 	cmpb	%cl, %dl
e0104524:	0f 8c aa fd ff ff 	jl	-598 <print_trapframe+0x244>
e010452a:	83 ec 08 	subl	$8, %esp
e010452d:	6a 04 	pushl	$4
e010452f:	50 	pushl	%eax
e0104530:	e8 1b 43 00 00 	calll	17179 <__asan_report_load_n>
e0104535:	83 c4 10 	addl	$16, %esp
e0104538:	89 c2 	movl	%eax, %edx
e010453a:	80 e2 07 	andb	$7, %dl
e010453d:	38 ca 	cmpb	%cl, %dl
e010453f:	0f 8c b8 fd ff ff 	jl	-584 <print_trapframe+0x26d>
e0104545:	83 ec 08 	subl	$8, %esp
e0104548:	6a 02 	pushl	$2
e010454a:	50 	pushl	%eax
e010454b:	e8 00 43 00 00 	calll	17152 <__asan_report_load_n>
e0104550:	83 c4 10 	addl	$16, %esp
e0104553:	89 c2 	movl	%eax, %edx
e0104555:	80 e2 07 	andb	$7, %dl
e0104558:	38 ca 	cmpb	%cl, %dl
e010455a:	0f 8c b3 fd ff ff 	jl	-589 <print_trapframe+0x283>
e0104560:	83 ec 08 	subl	$8, %esp
e0104563:	6a 02 	pushl	$2
e0104565:	50 	pushl	%eax
e0104566:	e8 e5 42 00 00 	calll	17125 <__asan_report_load_n>
e010456b:	83 c4 10 	addl	$16, %esp
e010456e:	89 c2 	movl	%eax, %edx
e0104570:	80 e2 07 	andb	$7, %dl
e0104573:	38 ca 	cmpb	%cl, %dl
e0104575:	0f 8c c3 fd ff ff 	jl	-573 <print_trapframe+0x2ae>
e010457b:	83 ec 08 	subl	$8, %esp
e010457e:	6a 04 	pushl	$4
e0104580:	50 	pushl	%eax
e0104581:	e8 ca 42 00 00 	calll	17098 <__asan_report_load_n>
e0104586:	83 c4 10 	addl	$16, %esp
e0104589:	89 c2 	movl	%eax, %edx
e010458b:	80 e2 07 	andb	$7, %dl
e010458e:	38 ca 	cmpb	%cl, %dl
e0104590:	0f 8c be fd ff ff 	jl	-578 <print_trapframe+0x2c4>
e0104596:	83 ec 08 	subl	$8, %esp
e0104599:	6a 04 	pushl	$4
e010459b:	50 	pushl	%eax
e010459c:	e8 af 42 00 00 	calll	17071 <__asan_report_load_n>
e01045a1:	83 c4 10 	addl	$16, %esp
e01045a4:	89 c2 	movl	%eax, %edx
e01045a6:	80 e2 07 	andb	$7, %dl
e01045a9:	38 ca 	cmpb	%cl, %dl
e01045ab:	0f 8c cc fd ff ff 	jl	-564 <print_trapframe+0x2ed>
e01045b1:	83 ec 08 	subl	$8, %esp
e01045b4:	6a 04 	pushl	$4
e01045b6:	50 	pushl	%eax
e01045b7:	e8 94 42 00 00 	calll	17044 <__asan_report_load_n>
e01045bc:	83 c4 10 	addl	$16, %esp
e01045bf:	89 c2 	movl	%eax, %edx
e01045c1:	80 e2 07 	andb	$7, %dl
e01045c4:	38 ca 	cmpb	%cl, %dl
e01045c6:	0f 8c c7 fd ff ff 	jl	-569 <print_trapframe+0x303>
e01045cc:	83 ec 08 	subl	$8, %esp
e01045cf:	6a 04 	pushl	$4
e01045d1:	50 	pushl	%eax
e01045d2:	e8 79 42 00 00 	calll	17017 <__asan_report_load_n>
e01045d7:	83 c4 10 	addl	$16, %esp
e01045da:	89 c2 	movl	%eax, %edx
e01045dc:	80 e2 07 	andb	$7, %dl
e01045df:	38 ca 	cmpb	%cl, %dl
e01045e1:	0f 8c d5 fd ff ff 	jl	-555 <print_trapframe+0x32c>
e01045e7:	83 ec 08 	subl	$8, %esp
e01045ea:	6a 02 	pushl	$2
e01045ec:	50 	pushl	%eax
e01045ed:	e8 5e 42 00 00 	calll	16990 <__asan_report_load_n>
e01045f2:	83 c4 10 	addl	$16, %esp
e01045f5:	89 da 	movl	%ebx, %edx
e01045f7:	80 e2 07 	andb	$7, %dl
e01045fa:	38 ca 	cmpb	%cl, %dl
e01045fc:	0f 8c d0 fd ff ff 	jl	-560 <print_trapframe+0x342>
e0104602:	83 ec 08 	subl	$8, %esp
e0104605:	6a 02 	pushl	$2
e0104607:	53 	pushl	%ebx
e0104608:	e8 43 42 00 00 	calll	16963 <__asan_report_load_n>
e010460d:	83 c4 10 	addl	$16, %esp
e0104610:	8b 4d ec 	movl	-20(%ebp), %ecx
e0104613:	80 e1 07 	andb	$7, %cl
e0104616:	38 c1 	cmpb	%al, %cl
e0104618:	0f 8c 28 fc ff ff 	jl	-984 <print_trapframe+0x1b6>
e010461e:	83 ec 08 	subl	$8, %esp
e0104621:	6a 04 	pushl	$4
e0104623:	ff 75 ec 	pushl	-20(%ebp)
e0104626:	e8 25 42 00 00 	calll	16933 <__asan_report_load_n>
e010462b:	83 c4 10 	addl	$16, %esp
e010462e:	89 c2 	movl	%eax, %edx
e0104630:	80 e2 07 	andb	$7, %dl
e0104633:	38 ca 	cmpb	%cl, %dl
e0104635:	8b 55 ec 	movl	-20(%ebp), %edx
e0104638:	0f 8c 21 fc ff ff 	jl	-991 <print_trapframe+0x1cf>
e010463e:	83 ec 08 	subl	$8, %esp
e0104641:	6a 04 	pushl	$4
e0104643:	50 	pushl	%eax
e0104644:	e8 07 42 00 00 	calll	16903 <__asan_report_load_n>
e0104649:	83 c4 10 	addl	$16, %esp
e010464c:	89 d1 	movl	%edx, %ecx
e010464e:	80 e1 07 	andb	$7, %cl
e0104651:	38 c1 	cmpb	%al, %cl
e0104653:	0f 8c 43 fb ff ff 	jl	-1213 <print_trapframe+0x10c>
e0104659:	83 ec 08 	subl	$8, %esp
e010465c:	6a 04 	pushl	$4
e010465e:	52 	pushl	%edx
e010465f:	e8 ec 41 00 00 	calll	16876 <__asan_report_load_n>
e0104664:	83 c4 10 	addl	$16, %esp
e0104667:	89 c2 	movl	%eax, %edx
e0104669:	80 e2 07 	andb	$7, %dl
e010466c:	38 ca 	cmpb	%cl, %dl
e010466e:	8b 55 f0 	movl	-16(%ebp), %edx
e0104671:	0f 8c 3b fb ff ff 	jl	-1221 <print_trapframe+0x122>
e0104677:	83 ec 08 	subl	$8, %esp
e010467a:	6a 04 	pushl	$4
e010467c:	50 	pushl	%eax
e010467d:	e8 ce 41 00 00 	calll	16846 <__asan_report_load_n>
e0104682:	83 c4 10 	addl	$16, %esp
e0104685:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010468f:	90 	nop
e0104690:	55 	pushl	%ebp
e0104691:	89 e5 	movl	%esp, %ebp
e0104693:	53 	pushl	%ebx
e0104694:	50 	pushl	%eax
e0104695:	8b 5d 08 	movl	8(%ebp), %ebx
e0104698:	89 d8 	movl	%ebx, %eax
e010469a:	c1 e8 03 	shrl	$3, %eax
e010469d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01046a3:	84 c0 	testb	%al, %al
e01046a5:	0f 85 e3 01 00 00 	jne	483 <print_regs+0x1fe>
e01046ab:	8d 43 03 	leal	3(%ebx), %eax
e01046ae:	89 c1 	movl	%eax, %ecx
e01046b0:	c1 e9 03 	shrl	$3, %ecx
e01046b3:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01046b9:	84 c9 	testb	%cl, %cl
e01046bb:	0f 85 e8 01 00 00 	jne	488 <print_regs+0x219>
e01046c1:	83 ec 08 	subl	$8, %esp
e01046c4:	ff 33 	pushl	(%ebx)
e01046c6:	68 a0 c8 10 e0 	pushl	$3759196320
e01046cb:	e8 70 f8 ff ff 	calll	-1936 <cprintf>
e01046d0:	83 c4 10 	addl	$16, %esp
e01046d3:	8d 43 04 	leal	4(%ebx), %eax
e01046d6:	89 c1 	movl	%eax, %ecx
e01046d8:	c1 e9 03 	shrl	$3, %ecx
e01046db:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01046e1:	84 c9 	testb	%cl, %cl
e01046e3:	0f 85 db 01 00 00 	jne	475 <print_regs+0x234>
e01046e9:	8d 43 07 	leal	7(%ebx), %eax
e01046ec:	89 c1 	movl	%eax, %ecx
e01046ee:	c1 e9 03 	shrl	$3, %ecx
e01046f1:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01046f7:	84 c9 	testb	%cl, %cl
e01046f9:	0f 85 e0 01 00 00 	jne	480 <print_regs+0x24f>
e01046ff:	83 ec 08 	subl	$8, %esp
e0104702:	ff 73 04 	pushl	4(%ebx)
e0104705:	68 e0 c8 10 e0 	pushl	$3759196384
e010470a:	e8 31 f8 ff ff 	calll	-1999 <cprintf>
e010470f:	83 c4 10 	addl	$16, %esp
e0104712:	8d 43 08 	leal	8(%ebx), %eax
e0104715:	89 c1 	movl	%eax, %ecx
e0104717:	c1 e9 03 	shrl	$3, %ecx
e010471a:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104720:	84 c9 	testb	%cl, %cl
e0104722:	0f 85 d2 01 00 00 	jne	466 <print_regs+0x26a>
e0104728:	8d 43 0b 	leal	11(%ebx), %eax
e010472b:	89 c1 	movl	%eax, %ecx
e010472d:	c1 e9 03 	shrl	$3, %ecx
e0104730:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104736:	84 c9 	testb	%cl, %cl
e0104738:	0f 85 d7 01 00 00 	jne	471 <print_regs+0x285>
e010473e:	83 ec 08 	subl	$8, %esp
e0104741:	ff 73 08 	pushl	8(%ebx)
e0104744:	68 20 c9 10 e0 	pushl	$3759196448
e0104749:	e8 f2 f7 ff ff 	calll	-2062 <cprintf>
e010474e:	83 c4 10 	addl	$16, %esp
e0104751:	8d 43 0c 	leal	12(%ebx), %eax
e0104754:	89 c1 	movl	%eax, %ecx
e0104756:	c1 e9 03 	shrl	$3, %ecx
e0104759:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010475f:	84 c9 	testb	%cl, %cl
e0104761:	0f 85 c9 01 00 00 	jne	457 <print_regs+0x2a0>
e0104767:	8d 43 0f 	leal	15(%ebx), %eax
e010476a:	89 c1 	movl	%eax, %ecx
e010476c:	c1 e9 03 	shrl	$3, %ecx
e010476f:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104775:	84 c9 	testb	%cl, %cl
e0104777:	0f 85 ce 01 00 00 	jne	462 <print_regs+0x2bb>
e010477d:	83 ec 08 	subl	$8, %esp
e0104780:	ff 73 0c 	pushl	12(%ebx)
e0104783:	68 60 c9 10 e0 	pushl	$3759196512
e0104788:	e8 b3 f7 ff ff 	calll	-2125 <cprintf>
e010478d:	83 c4 10 	addl	$16, %esp
e0104790:	8d 43 10 	leal	16(%ebx), %eax
e0104793:	89 c1 	movl	%eax, %ecx
e0104795:	c1 e9 03 	shrl	$3, %ecx
e0104798:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010479e:	84 c9 	testb	%cl, %cl
e01047a0:	0f 85 c0 01 00 00 	jne	448 <print_regs+0x2d6>
e01047a6:	8d 43 13 	leal	19(%ebx), %eax
e01047a9:	89 c1 	movl	%eax, %ecx
e01047ab:	c1 e9 03 	shrl	$3, %ecx
e01047ae:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01047b4:	84 c9 	testb	%cl, %cl
e01047b6:	0f 85 c5 01 00 00 	jne	453 <print_regs+0x2f1>
e01047bc:	83 ec 08 	subl	$8, %esp
e01047bf:	ff 73 10 	pushl	16(%ebx)
e01047c2:	68 a0 c9 10 e0 	pushl	$3759196576
e01047c7:	e8 74 f7 ff ff 	calll	-2188 <cprintf>
e01047cc:	83 c4 10 	addl	$16, %esp
e01047cf:	8d 43 14 	leal	20(%ebx), %eax
e01047d2:	89 c1 	movl	%eax, %ecx
e01047d4:	c1 e9 03 	shrl	$3, %ecx
e01047d7:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01047dd:	84 c9 	testb	%cl, %cl
e01047df:	0f 85 b7 01 00 00 	jne	439 <print_regs+0x30c>
e01047e5:	8d 43 17 	leal	23(%ebx), %eax
e01047e8:	89 c1 	movl	%eax, %ecx
e01047ea:	c1 e9 03 	shrl	$3, %ecx
e01047ed:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01047f3:	84 c9 	testb	%cl, %cl
e01047f5:	0f 85 bc 01 00 00 	jne	444 <print_regs+0x327>
e01047fb:	83 ec 08 	subl	$8, %esp
e01047fe:	ff 73 14 	pushl	20(%ebx)
e0104801:	68 e0 c9 10 e0 	pushl	$3759196640
e0104806:	e8 35 f7 ff ff 	calll	-2251 <cprintf>
e010480b:	83 c4 10 	addl	$16, %esp
e010480e:	8d 43 18 	leal	24(%ebx), %eax
e0104811:	89 c1 	movl	%eax, %ecx
e0104813:	c1 e9 03 	shrl	$3, %ecx
e0104816:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010481c:	84 c9 	testb	%cl, %cl
e010481e:	0f 85 ae 01 00 00 	jne	430 <print_regs+0x342>
e0104824:	8d 43 1b 	leal	27(%ebx), %eax
e0104827:	89 c1 	movl	%eax, %ecx
e0104829:	c1 e9 03 	shrl	$3, %ecx
e010482c:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104832:	84 c9 	testb	%cl, %cl
e0104834:	0f 85 b3 01 00 00 	jne	435 <print_regs+0x35d>
e010483a:	83 ec 08 	subl	$8, %esp
e010483d:	ff 73 18 	pushl	24(%ebx)
e0104840:	68 20 ca 10 e0 	pushl	$3759196704
e0104845:	e8 f6 f6 ff ff 	calll	-2314 <cprintf>
e010484a:	83 c4 10 	addl	$16, %esp
e010484d:	8d 43 1c 	leal	28(%ebx), %eax
e0104850:	89 c1 	movl	%eax, %ecx
e0104852:	c1 e9 03 	shrl	$3, %ecx
e0104855:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010485b:	84 c9 	testb	%cl, %cl
e010485d:	0f 85 a5 01 00 00 	jne	421 <print_regs+0x378>
e0104863:	83 c3 1f 	addl	$31, %ebx
e0104866:	89 d9 	movl	%ebx, %ecx
e0104868:	c1 e9 03 	shrl	$3, %ecx
e010486b:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104871:	84 c9 	testb	%cl, %cl
e0104873:	0f 85 aa 01 00 00 	jne	426 <print_regs+0x393>
e0104879:	83 ec 08 	subl	$8, %esp
e010487c:	ff 30 	pushl	(%eax)
e010487e:	68 60 ca 10 e0 	pushl	$3759196768
e0104883:	e8 b8 f6 ff ff 	calll	-2376 <cprintf>
e0104888:	83 c4 14 	addl	$20, %esp
e010488b:	5b 	popl	%ebx
e010488c:	5d 	popl	%ebp
e010488d:	c3 	retl
e010488e:	89 d9 	movl	%ebx, %ecx
e0104890:	80 e1 07 	andb	$7, %cl
e0104893:	38 c1 	cmpb	%al, %cl
e0104895:	0f 8c 10 fe ff ff 	jl	-496 <print_regs+0x1b>
e010489b:	83 ec 08 	subl	$8, %esp
e010489e:	6a 04 	pushl	$4
e01048a0:	53 	pushl	%ebx
e01048a1:	e8 aa 3f 00 00 	calll	16298 <__asan_report_load_n>
e01048a6:	83 c4 10 	addl	$16, %esp
e01048a9:	89 c2 	movl	%eax, %edx
e01048ab:	80 e2 07 	andb	$7, %dl
e01048ae:	38 ca 	cmpb	%cl, %dl
e01048b0:	0f 8c 0b fe ff ff 	jl	-501 <print_regs+0x31>
e01048b6:	83 ec 08 	subl	$8, %esp
e01048b9:	6a 04 	pushl	$4
e01048bb:	50 	pushl	%eax
e01048bc:	e8 8f 3f 00 00 	calll	16271 <__asan_report_load_n>
e01048c1:	83 c4 10 	addl	$16, %esp
e01048c4:	89 c2 	movl	%eax, %edx
e01048c6:	80 e2 07 	andb	$7, %dl
e01048c9:	38 ca 	cmpb	%cl, %dl
e01048cb:	0f 8c 18 fe ff ff 	jl	-488 <print_regs+0x59>
e01048d1:	83 ec 08 	subl	$8, %esp
e01048d4:	6a 04 	pushl	$4
e01048d6:	50 	pushl	%eax
e01048d7:	e8 74 3f 00 00 	calll	16244 <__asan_report_load_n>
e01048dc:	83 c4 10 	addl	$16, %esp
e01048df:	89 c2 	movl	%eax, %edx
e01048e1:	80 e2 07 	andb	$7, %dl
e01048e4:	38 ca 	cmpb	%cl, %dl
e01048e6:	0f 8c 13 fe ff ff 	jl	-493 <print_regs+0x6f>
e01048ec:	83 ec 08 	subl	$8, %esp
e01048ef:	6a 04 	pushl	$4
e01048f1:	50 	pushl	%eax
e01048f2:	e8 59 3f 00 00 	calll	16217 <__asan_report_load_n>
e01048f7:	83 c4 10 	addl	$16, %esp
e01048fa:	89 c2 	movl	%eax, %edx
e01048fc:	80 e2 07 	andb	$7, %dl
e01048ff:	38 ca 	cmpb	%cl, %dl
e0104901:	0f 8c 21 fe ff ff 	jl	-479 <print_regs+0x98>
e0104907:	83 ec 08 	subl	$8, %esp
e010490a:	6a 04 	pushl	$4
e010490c:	50 	pushl	%eax
e010490d:	e8 3e 3f 00 00 	calll	16190 <__asan_report_load_n>
e0104912:	83 c4 10 	addl	$16, %esp
e0104915:	89 c2 	movl	%eax, %edx
e0104917:	80 e2 07 	andb	$7, %dl
e010491a:	38 ca 	cmpb	%cl, %dl
e010491c:	0f 8c 1c fe ff ff 	jl	-484 <print_regs+0xae>
e0104922:	83 ec 08 	subl	$8, %esp
e0104925:	6a 04 	pushl	$4
e0104927:	50 	pushl	%eax
e0104928:	e8 23 3f 00 00 	calll	16163 <__asan_report_load_n>
e010492d:	83 c4 10 	addl	$16, %esp
e0104930:	89 c2 	movl	%eax, %edx
e0104932:	80 e2 07 	andb	$7, %dl
e0104935:	38 ca 	cmpb	%cl, %dl
e0104937:	0f 8c 2a fe ff ff 	jl	-470 <print_regs+0xd7>
e010493d:	83 ec 08 	subl	$8, %esp
e0104940:	6a 04 	pushl	$4
e0104942:	50 	pushl	%eax
e0104943:	e8 08 3f 00 00 	calll	16136 <__asan_report_load_n>
e0104948:	83 c4 10 	addl	$16, %esp
e010494b:	89 c2 	movl	%eax, %edx
e010494d:	80 e2 07 	andb	$7, %dl
e0104950:	38 ca 	cmpb	%cl, %dl
e0104952:	0f 8c 25 fe ff ff 	jl	-475 <print_regs+0xed>
e0104958:	83 ec 08 	subl	$8, %esp
e010495b:	6a 04 	pushl	$4
e010495d:	50 	pushl	%eax
e010495e:	e8 ed 3e 00 00 	calll	16109 <__asan_report_load_n>
e0104963:	83 c4 10 	addl	$16, %esp
e0104966:	89 c2 	movl	%eax, %edx
e0104968:	80 e2 07 	andb	$7, %dl
e010496b:	38 ca 	cmpb	%cl, %dl
e010496d:	0f 8c 33 fe ff ff 	jl	-461 <print_regs+0x116>
e0104973:	83 ec 08 	subl	$8, %esp
e0104976:	6a 04 	pushl	$4
e0104978:	50 	pushl	%eax
e0104979:	e8 d2 3e 00 00 	calll	16082 <__asan_report_load_n>
e010497e:	83 c4 10 	addl	$16, %esp
e0104981:	89 c2 	movl	%eax, %edx
e0104983:	80 e2 07 	andb	$7, %dl
e0104986:	38 ca 	cmpb	%cl, %dl
e0104988:	0f 8c 2e fe ff ff 	jl	-466 <print_regs+0x12c>
e010498e:	83 ec 08 	subl	$8, %esp
e0104991:	6a 04 	pushl	$4
e0104993:	50 	pushl	%eax
e0104994:	e8 b7 3e 00 00 	calll	16055 <__asan_report_load_n>
e0104999:	83 c4 10 	addl	$16, %esp
e010499c:	89 c2 	movl	%eax, %edx
e010499e:	80 e2 07 	andb	$7, %dl
e01049a1:	38 ca 	cmpb	%cl, %dl
e01049a3:	0f 8c 3c fe ff ff 	jl	-452 <print_regs+0x155>
e01049a9:	83 ec 08 	subl	$8, %esp
e01049ac:	6a 04 	pushl	$4
e01049ae:	50 	pushl	%eax
e01049af:	e8 9c 3e 00 00 	calll	16028 <__asan_report_load_n>
e01049b4:	83 c4 10 	addl	$16, %esp
e01049b7:	89 c2 	movl	%eax, %edx
e01049b9:	80 e2 07 	andb	$7, %dl
e01049bc:	38 ca 	cmpb	%cl, %dl
e01049be:	0f 8c 37 fe ff ff 	jl	-457 <print_regs+0x16b>
e01049c4:	83 ec 08 	subl	$8, %esp
e01049c7:	6a 04 	pushl	$4
e01049c9:	50 	pushl	%eax
e01049ca:	e8 81 3e 00 00 	calll	16001 <__asan_report_load_n>
e01049cf:	83 c4 10 	addl	$16, %esp
e01049d2:	89 c2 	movl	%eax, %edx
e01049d4:	80 e2 07 	andb	$7, %dl
e01049d7:	38 ca 	cmpb	%cl, %dl
e01049d9:	0f 8c 45 fe ff ff 	jl	-443 <print_regs+0x194>
e01049df:	83 ec 08 	subl	$8, %esp
e01049e2:	6a 04 	pushl	$4
e01049e4:	50 	pushl	%eax
e01049e5:	e8 66 3e 00 00 	calll	15974 <__asan_report_load_n>
e01049ea:	83 c4 10 	addl	$16, %esp
e01049ed:	89 c2 	movl	%eax, %edx
e01049ef:	80 e2 07 	andb	$7, %dl
e01049f2:	38 ca 	cmpb	%cl, %dl
e01049f4:	0f 8c 40 fe ff ff 	jl	-448 <print_regs+0x1aa>
e01049fa:	83 ec 08 	subl	$8, %esp
e01049fd:	6a 04 	pushl	$4
e01049ff:	50 	pushl	%eax
e0104a00:	e8 4b 3e 00 00 	calll	15947 <__asan_report_load_n>
e0104a05:	83 c4 10 	addl	$16, %esp
e0104a08:	89 c2 	movl	%eax, %edx
e0104a0a:	80 e2 07 	andb	$7, %dl
e0104a0d:	38 ca 	cmpb	%cl, %dl
e0104a0f:	0f 8c 4e fe ff ff 	jl	-434 <print_regs+0x1d3>
e0104a15:	83 ec 08 	subl	$8, %esp
e0104a18:	6a 04 	pushl	$4
e0104a1a:	50 	pushl	%eax
e0104a1b:	e8 30 3e 00 00 	calll	15920 <__asan_report_load_n>
e0104a20:	83 c4 10 	addl	$16, %esp
e0104a23:	89 da 	movl	%ebx, %edx
e0104a25:	80 e2 07 	andb	$7, %dl
e0104a28:	38 ca 	cmpb	%cl, %dl
e0104a2a:	0f 8c 49 fe ff ff 	jl	-439 <print_regs+0x1e9>
e0104a30:	83 ec 08 	subl	$8, %esp
e0104a33:	6a 04 	pushl	$4
e0104a35:	53 	pushl	%ebx
e0104a36:	e8 15 3e 00 00 	calll	15893 <__asan_report_load_n>
e0104a3b:	83 c4 10 	addl	$16, %esp
e0104a3e:	66 90 	nop
e0104a40:	55 	pushl	%ebp
e0104a41:	89 e5 	movl	%esp, %ebp
e0104a43:	83 ec 08 	subl	$8, %esp
e0104a46:	83 f9 13 	cmpl	$19, %ecx
e0104a49:	77 1a 	ja	26 <trapname+0x25>
e0104a4b:	8d 04 8d a0 cb 10 e0 	leal	-535770208(,%ecx,4), %eax
e0104a52:	89 c1 	movl	%eax, %ecx
e0104a54:	c1 e9 03 	shrl	$3, %ecx
e0104a57:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104a5d:	84 c9 	testb	%cl, %cl
e0104a5f:	75 26 	jne	38 <trapname+0x47>
e0104a61:	8b 00 	movl	(%eax), %eax
e0104a63:	eb 1d 	jmp	29 <trapname+0x42>
e0104a65:	b8 20 d1 10 e0 	movl	$3759198496, %eax
e0104a6a:	83 f9 30 	cmpl	$48, %ecx
e0104a6d:	74 13 	je	19 <trapname+0x42>
e0104a6f:	83 e1 f0 	andl	$-16, %ecx
e0104a72:	83 f9 20 	cmpl	$32, %ecx
e0104a75:	b9 60 d1 10 e0 	movl	$3759198560, %ecx
e0104a7a:	b8 e0 cf 10 e0 	movl	$3759198176, %eax
e0104a7f:	0f 44 c1 	cmovel	%ecx, %eax
e0104a82:	83 c4 08 	addl	$8, %esp
e0104a85:	5d 	popl	%ebp
e0104a86:	c3 	retl
e0104a87:	89 c2 	movl	%eax, %edx
e0104a89:	80 e2 07 	andb	$7, %dl
e0104a8c:	80 c2 03 	addb	$3, %dl
e0104a8f:	38 ca 	cmpb	%cl, %dl
e0104a91:	7c ce 	jl	-50 <trapname+0x21>
e0104a93:	89 04 24 	movl	%eax, (%esp)
e0104a96:	e8 f5 3c 00 00 	calll	15605 <__asan_report_load4>
e0104a9b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0104aa0:	55 	pushl	%ebp
e0104aa1:	89 e5 	movl	%esp, %ebp
e0104aa3:	56 	pushl	%esi
e0104aa4:	83 ec 14 	subl	$20, %esp
e0104aa7:	fc 	cld
e0104aa8:	b8 ac 2f 12 e0 	movl	$3759288236, %eax
e0104aad:	c1 e8 03 	shrl	$3, %eax
e0104ab0:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0104ab6:	84 c0 	testb	%al, %al
e0104ab8:	74 1b 	je	27 <trap+0x35>
e0104aba:	b9 ac 2f 12 e0 	movl	$3759288236, %ecx
e0104abf:	80 e1 07 	andb	$7, %cl
e0104ac2:	80 c1 03 	addb	$3, %cl
e0104ac5:	38 c1 	cmpb	%al, %cl
e0104ac7:	7c 0c 	jl	12 <trap+0x35>
e0104ac9:	c7 04 24 ac 2f 12 e0 	movl	$3759288236, (%esp)
e0104ad0:	e8 bb 3c 00 00 	calll	15547 <__asan_report_load4>
e0104ad5:	83 3d ac 2f 12 e0 00 	cmpl	$0, -535679060
e0104adc:	74 01 	je	1 <trap+0x3f>
e0104ade:	f4 	hlt
e0104adf:	9c 	pushfl
e0104ae0:	58 	popl	%eax
e0104ae1:	a9 00 02 00 00 	testl	$512, %eax
e0104ae6:	75 2d 	jne	45 <trap+0x75>
e0104ae8:	b8 20 1e 12 e0 	movl	$3759283744, %eax
e0104aed:	c1 e8 03 	shrl	$3, %eax
e0104af0:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0104af6:	84 c0 	testb	%al, %al
e0104af8:	74 3a 	je	58 <trap+0x94>
e0104afa:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0104aff:	80 e1 07 	andb	$7, %cl
e0104b02:	80 c1 03 	addb	$3, %cl
e0104b05:	38 c1 	cmpb	%al, %cl
e0104b07:	7c 2b 	jl	43 <trap+0x94>
e0104b09:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0104b10:	e8 7b 3c 00 00 	calll	15483 <__asan_report_load4>
e0104b15:	e8 86 3a 00 00 	calll	14982 <__asan_handle_no_return>
e0104b1a:	c7 44 24 0c 20 cb 10 e0 	movl	$3759196960, 12(%esp)
e0104b22:	c7 44 24 08 e0 ca 10 e0 	movl	$3759196896, 8(%esp)
e0104b2a:	c7 44 24 04 a7 00 00 00 	movl	$167, 4(%esp)
e0104b32:	eb 26 	jmp	38 <trap+0xba>
e0104b34:	a1 20 1e 12 e0 	movl	3759283744, %eax
e0104b39:	85 c0 	testl	%eax, %eax
e0104b3b:	75 2c 	jne	44 <trap+0xc9>
e0104b3d:	e8 5e 3a 00 00 	calll	14942 <__asan_handle_no_return>
e0104b42:	c7 44 24 0c 60 cb 10 e0 	movl	$3759197024, 12(%esp)
e0104b4a:	c7 44 24 08 e0 ca 10 e0 	movl	$3759196896, 8(%esp)
e0104b52:	c7 44 24 04 ad 00 00 00 	movl	$173, 4(%esp)
e0104b5a:	c7 04 24 a0 ca 10 e0 	movl	$3759196832, (%esp)
e0104b61:	e8 ca b5 ff ff 	calll	-18998 <_panic>
e0104b66:	83 ec 10 	subl	$16, %esp
e0104b69:	8d 48 54 	leal	84(%eax), %ecx
e0104b6c:	89 ca 	movl	%ecx, %edx
e0104b6e:	c1 ea 03 	shrl	$3, %edx
e0104b71:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0104b77:	84 d2 	testb	%dl, %dl
e0104b79:	74 14 	je	20 <trap+0xef>
e0104b7b:	88 ce 	movb	%cl, %dh
e0104b7d:	80 e6 07 	andb	$7, %dh
e0104b80:	80 c6 03 	addb	$3, %dh
e0104b83:	38 d6 	cmpb	%dl, %dh
e0104b85:	7c 08 	jl	8 <trap+0xef>
e0104b87:	89 0c 24 	movl	%ecx, (%esp)
e0104b8a:	e8 01 3c 00 00 	calll	15361 <__asan_report_load4>
e0104b8f:	83 39 01 	cmpl	$1, (%ecx)
e0104b92:	75 35 	jne	53 <trap+0x129>
e0104b94:	89 04 24 	movl	%eax, (%esp)
e0104b97:	e8 74 ed ff ff 	calll	-4748 <env_free>
e0104b9c:	b8 20 1e 12 e0 	movl	$3759283744, %eax
e0104ba1:	c1 e8 03 	shrl	$3, %eax
e0104ba4:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0104baa:	84 c0 	testb	%al, %al
e0104bac:	74 5f 	je	95 <trap+0x16d>
e0104bae:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0104bb3:	80 e1 07 	andb	$7, %cl
e0104bb6:	80 c1 03 	addb	$3, %cl
e0104bb9:	38 c1 	cmpb	%al, %cl
e0104bbb:	7c 50 	jl	80 <trap+0x16d>
e0104bbd:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0104bc4:	e8 e7 3b 00 00 	calll	15335 <__asan_report_store4>
e0104bc9:	8b 4d 08 	movl	8(%ebp), %ecx
e0104bcc:	89 4c 24 04 	movl	%ecx, 4(%esp)
e0104bd0:	89 04 24 	movl	%eax, (%esp)
e0104bd3:	c7 44 24 08 44 00 00 00 	movl	$68, 8(%esp)
e0104bdb:	e8 00 47 00 00 	calll	18176 <__wrap_memcpy>
e0104be0:	be 20 1e 12 e0 	movl	$3759283744, %esi
e0104be5:	c1 ee 03 	shrl	$3, %esi
e0104be8:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e0104bee:	84 c0 	testb	%al, %al
e0104bf0:	74 2f 	je	47 <trap+0x181>
e0104bf2:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0104bf7:	80 e1 07 	andb	$7, %cl
e0104bfa:	80 c1 03 	addb	$3, %cl
e0104bfd:	38 c1 	cmpb	%al, %cl
e0104bff:	7c 20 	jl	32 <trap+0x181>
e0104c01:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0104c08:	e8 83 3b 00 00 	calll	15235 <__asan_report_load4>
e0104c0d:	c7 05 20 1e 12 e0 00 00 00 00 	movl	$0, -535683552
e0104c17:	e8 84 39 00 00 	calll	14724 <__asan_handle_no_return>
e0104c1c:	e8 6f 02 00 00 	calll	623 <sched_yield>
e0104c21:	8b 0d 20 1e 12 e0 	movl	-535683552, %ecx
e0104c27:	89 0d e0 28 12 e0 	movl	%ecx, -535680800
e0104c2d:	e8 7e 00 00 00 	calll	126 <trap_dispatch>
e0104c32:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e0104c38:	84 c0 	testb	%al, %al
e0104c3a:	74 1b 	je	27 <trap+0x1b7>
e0104c3c:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0104c41:	80 e1 07 	andb	$7, %cl
e0104c44:	80 c1 03 	addb	$3, %cl
e0104c47:	38 c1 	cmpb	%al, %cl
e0104c49:	7c 0c 	jl	12 <trap+0x1b7>
e0104c4b:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0104c52:	e8 39 3b 00 00 	calll	15161 <__asan_report_load4>
e0104c57:	8b 35 20 1e 12 e0 	movl	-535683552, %esi
e0104c5d:	85 f6 	testl	%esi, %esi
e0104c5f:	74 3b 	je	59 <trap+0x1fc>
e0104c61:	8d 46 54 	leal	84(%esi), %eax
e0104c64:	89 c1 	movl	%eax, %ecx
e0104c66:	c1 e9 03 	shrl	$3, %ecx
e0104c69:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104c6f:	84 c9 	testb	%cl, %cl
e0104c71:	74 14 	je	20 <trap+0x1e7>
e0104c73:	89 c2 	movl	%eax, %edx
e0104c75:	80 e2 07 	andb	$7, %dl
e0104c78:	80 c2 03 	addb	$3, %dl
e0104c7b:	38 ca 	cmpb	%cl, %dl
e0104c7d:	7c 08 	jl	8 <trap+0x1e7>
e0104c7f:	89 04 24 	movl	%eax, (%esp)
e0104c82:	e8 09 3b 00 00 	calll	15113 <__asan_report_load4>
e0104c87:	83 38 03 	cmpl	$3, (%eax)
e0104c8a:	75 10 	jne	16 <trap+0x1fc>
e0104c8c:	e8 0f 39 00 00 	calll	14607 <__asan_handle_no_return>
e0104c91:	89 34 24 	movl	%esi, (%esp)
e0104c94:	e8 e7 ed ff ff 	calll	-4633 <env_run>
e0104c99:	83 ec 04 	subl	$4, %esp
e0104c9c:	e8 ff 38 00 00 	calll	14591 <__asan_handle_no_return>
e0104ca1:	e8 ea 01 00 00 	calll	490 <sched_yield>
e0104ca6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0104cb0:	55 	pushl	%ebp
e0104cb1:	89 e5 	movl	%esp, %ebp
e0104cb3:	53 	pushl	%ebx
e0104cb4:	83 ec 14 	subl	$20, %esp
e0104cb7:	89 cb 	movl	%ecx, %ebx
e0104cb9:	8d 41 28 	leal	40(%ecx), %eax
e0104cbc:	89 c1 	movl	%eax, %ecx
e0104cbe:	c1 e9 03 	shrl	$3, %ecx
e0104cc1:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104cc7:	84 c9 	testb	%cl, %cl
e0104cc9:	0f 85 a3 00 00 00 	jne	163 <trap_dispatch+0xc2>
e0104ccf:	8d 4b 2b 	leal	43(%ebx), %ecx
e0104cd2:	89 ca 	movl	%ecx, %edx
e0104cd4:	c1 ea 03 	shrl	$3, %edx
e0104cd7:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0104cdd:	84 d2 	testb	%dl, %dl
e0104cdf:	0f 85 aa 00 00 00 	jne	170 <trap_dispatch+0xdf>
e0104ce5:	8b 00 	movl	(%eax), %eax
e0104ce7:	83 f8 27 	cmpl	$39, %eax
e0104cea:	74 6c 	je	108 <trap_dispatch+0xa8>
e0104cec:	83 f8 28 	cmpl	$40, %eax
e0104cef:	0f 84 10 01 00 00 	je	272 <trap_dispatch+0x155>
e0104cf5:	89 1c 24 	movl	%ebx, (%esp)
e0104cf8:	e8 93 f3 ff ff 	calll	-3181 <print_trapframe>
e0104cfd:	8d 43 34 	leal	52(%ebx), %eax
e0104d00:	89 c1 	movl	%eax, %ecx
e0104d02:	c1 e9 03 	shrl	$3, %ecx
e0104d05:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104d0b:	84 c9 	testb	%cl, %cl
e0104d0d:	0f 85 99 00 00 00 	jne	153 <trap_dispatch+0xfc>
e0104d13:	83 c3 35 	addl	$53, %ebx
e0104d16:	89 d9 	movl	%ebx, %ecx
e0104d18:	c1 e9 03 	shrl	$3, %ecx
e0104d1b:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104d21:	84 c9 	testb	%cl, %cl
e0104d23:	0f 85 a0 00 00 00 	jne	160 <trap_dispatch+0x119>
e0104d29:	66 83 38 08 	cmpw	$8, (%eax)
e0104d2d:	0f 84 ec 00 00 00 	je	236 <trap_dispatch+0x16f>
e0104d33:	b8 20 1e 12 e0 	movl	$3759283744, %eax
e0104d38:	c1 e8 03 	shrl	$3, %eax
e0104d3b:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0104d41:	84 c0 	testb	%al, %al
e0104d43:	0f 85 9d 00 00 00 	jne	157 <trap_dispatch+0x136>
e0104d49:	a1 20 1e 12 e0 	movl	3759283744, %eax
e0104d4e:	89 04 24 	movl	%eax, (%esp)
e0104d51:	e8 aa ec ff ff 	calll	-4950 <env_destroy>
e0104d56:	eb 14 	jmp	20 <trap_dispatch+0xbc>
e0104d58:	c7 04 24 a0 d1 10 e0 	movl	$3759198624, (%esp)
e0104d5f:	e8 dc f1 ff ff 	calll	-3620 <cprintf>
e0104d64:	89 1c 24 	movl	%ebx, (%esp)
e0104d67:	e8 24 f3 ff ff 	calll	-3292 <print_trapframe>
e0104d6c:	83 c4 14 	addl	$20, %esp
e0104d6f:	5b 	popl	%ebx
e0104d70:	5d 	popl	%ebp
e0104d71:	c3 	retl
e0104d72:	89 c2 	movl	%eax, %edx
e0104d74:	80 e2 07 	andb	$7, %dl
e0104d77:	38 ca 	cmpb	%cl, %dl
e0104d79:	0f 8c 50 ff ff ff 	jl	-176 <trap_dispatch+0x1f>
e0104d7f:	89 04 24 	movl	%eax, (%esp)
e0104d82:	c7 44 24 04 04 00 00 00 	movl	$4, 4(%esp)
e0104d8a:	e8 c1 3a 00 00 	calll	15041 <__asan_report_load_n>
e0104d8f:	88 ce 	movb	%cl, %dh
e0104d91:	80 e6 07 	andb	$7, %dh
e0104d94:	38 d6 	cmpb	%dl, %dh
e0104d96:	0f 8c 49 ff ff ff 	jl	-183 <trap_dispatch+0x35>
e0104d9c:	89 0c 24 	movl	%ecx, (%esp)
e0104d9f:	c7 44 24 04 04 00 00 00 	movl	$4, 4(%esp)
e0104da7:	e8 a4 3a 00 00 	calll	15012 <__asan_report_load_n>
e0104dac:	89 c2 	movl	%eax, %edx
e0104dae:	80 e2 07 	andb	$7, %dl
e0104db1:	38 ca 	cmpb	%cl, %dl
e0104db3:	0f 8c 5a ff ff ff 	jl	-166 <trap_dispatch+0x63>
e0104db9:	89 04 24 	movl	%eax, (%esp)
e0104dbc:	c7 44 24 04 02 00 00 00 	movl	$2, 4(%esp)
e0104dc4:	e8 87 3a 00 00 	calll	14983 <__asan_report_load_n>
e0104dc9:	89 da 	movl	%ebx, %edx
e0104dcb:	80 e2 07 	andb	$7, %dl
e0104dce:	38 ca 	cmpb	%cl, %dl
e0104dd0:	0f 8c 53 ff ff ff 	jl	-173 <trap_dispatch+0x79>
e0104dd6:	89 1c 24 	movl	%ebx, (%esp)
e0104dd9:	c7 44 24 04 02 00 00 00 	movl	$2, 4(%esp)
e0104de1:	e8 6a 3a 00 00 	calll	14954 <__asan_report_load_n>
e0104de6:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0104deb:	80 e1 07 	andb	$7, %cl
e0104dee:	80 c1 03 	addb	$3, %cl
e0104df1:	38 c1 	cmpb	%al, %cl
e0104df3:	0f 8c 50 ff ff ff 	jl	-176 <trap_dispatch+0x99>
e0104df9:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0104e00:	e8 8b 39 00 00 	calll	14731 <__asan_report_load4>
e0104e05:	e8 e6 ed ff ff 	calll	-4634 <rtc_check_status>
e0104e0a:	0f b6 c0 	movzbl	%al, %eax
e0104e0d:	89 04 24 	movl	%eax, (%esp)
e0104e10:	e8 5b ef ff ff 	calll	-4261 <pic_send_eoi>
e0104e15:	e8 86 37 00 00 	calll	14214 <__asan_handle_no_return>
e0104e1a:	e8 71 00 00 00 	calll	113 <sched_yield>
e0104e1f:	e8 7c 37 00 00 	calll	14204 <__asan_handle_no_return>
e0104e24:	c7 44 24 08 e0 d1 10 e0 	movl	$3759198688, 8(%esp)
e0104e2c:	c7 44 24 04 92 00 00 00 	movl	$146, 4(%esp)
e0104e34:	c7 04 24 a0 ca 10 e0 	movl	$3759196832, (%esp)
e0104e3b:	e8 f0 b2 ff ff 	calll	-19728 <_panic>
e0104e40:	83 ec 0c 	subl	$12, %esp
e0104e43:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0104e4d:	0f 1f 00 	nopl	(%eax)
e0104e50:	83 ec 0c 	subl	$12, %esp
e0104e53:	e8 a8 3e 00 00 	calll	16040 <__asan_init>
e0104e58:	e8 c3 3f 00 00 	calll	16323 <__asan_version_mismatch_check_v8>
e0104e5d:	83 ec 08 	subl	$8, %esp
e0104e60:	6a 3b 	pushl	$59
e0104e62:	68 20 10 12 e0 	pushl	$3759280160
e0104e67:	e8 c4 3e 00 00 	calll	16068 <__asan_register_globals>
e0104e6c:	83 c4 1c 	addl	$28, %esp
e0104e6f:	c3 	retl
e0104e70:	83 ec 14 	subl	$20, %esp
e0104e73:	6a 3b 	pushl	$59
e0104e75:	68 20 10 12 e0 	pushl	$3759280160
e0104e7a:	e8 01 3f 00 00 	calll	16129 <__asan_unregister_globals>
e0104e7f:	83 c4 1c 	addl	$28, %esp
e0104e82:	c3 	retl
e0104e83:	cc 	int3
e0104e84:	eb fe 	jmp	-2 <clock_thdlr>
e0104e86:	cc 	int3
e0104e87:	cc 	int3
e0104e88:	cc 	int3
e0104e89:	cc 	int3
e0104e8a:	cc 	int3
e0104e8b:	cc 	int3
e0104e8c:	cc 	int3
e0104e8d:	cc 	int3
e0104e8e:	cc 	int3
e0104e8f:	cc 	int3
e0104e90:	55 	pushl	%ebp
e0104e91:	89 e5 	movl	%esp, %ebp
e0104e93:	53 	pushl	%ebx
e0104e94:	57 	pushl	%edi
e0104e95:	56 	pushl	%esi
e0104e96:	83 ec 0c 	subl	$12, %esp
e0104e99:	b8 20 1e 12 e0 	movl	$3759283744, %eax
e0104e9e:	c1 e8 03 	shrl	$3, %eax
e0104ea1:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0104ea7:	84 c0 	testb	%al, %al
e0104ea9:	0f 85 cd 00 00 00 	jne	205 <sched_yield+0xec>
e0104eaf:	8b 35 20 1e 12 e0 	movl	-535683552, %esi
e0104eb5:	85 f6 	testl	%esi, %esi
e0104eb7:	0f 84 3b 01 00 00 	je	315 <sched_yield+0x168>
e0104ebd:	8d 46 48 	leal	72(%esi), %eax
e0104ec0:	89 c1 	movl	%eax, %ecx
e0104ec2:	c1 e9 03 	shrl	$3, %ecx
e0104ec5:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104ecb:	84 c9 	testb	%cl, %cl
e0104ecd:	0f 85 c8 00 00 00 	jne	200 <sched_yield+0x10b>
e0104ed3:	89 75 f0 	movl	%esi, -16(%ebp)
e0104ed6:	8b 00 	movl	(%eax), %eax
e0104ed8:	b9 80 0c 12 e0 	movl	$3759279232, %ecx
e0104edd:	c1 e9 03 	shrl	$3, %ecx
e0104ee0:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104ee6:	84 c9 	testb	%cl, %cl
e0104ee8:	0f 85 c5 00 00 00 	jne	197 <sched_yield+0x123>
e0104eee:	83 e0 1f 	andl	$31, %eax
e0104ef1:	b9 01 00 00 00 	movl	$1, %ecx
e0104ef6:	8b 3d 80 0c 12 e0 	movl	-535688064, %edi
e0104efc:	0f 1f 40 00 	nopl	(%eax)
e0104f00:	8d 50 01 	leal	1(%eax), %edx
e0104f03:	89 d6 	movl	%edx, %esi
e0104f05:	c1 fe 1f 	sarl	$31, %esi
e0104f08:	c1 ee 1b 	shrl	$27, %esi
e0104f0b:	8d 74 30 01 	leal	1(%eax,%esi), %esi
e0104f0f:	83 e6 e0 	andl	$-32, %esi
e0104f12:	89 d0 	movl	%edx, %eax
e0104f14:	29 f0 	subl	%esi, %eax
e0104f16:	6b f0 5c 	imull	$92, %eax, %esi
e0104f19:	8d 5c 37 54 	leal	84(%edi,%esi), %ebx
e0104f1d:	89 da 	movl	%ebx, %edx
e0104f1f:	c1 ea 03 	shrl	$3, %edx
e0104f22:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0104f29:	84 d2 	testb	%dl, %dl
e0104f2b:	75 11 	jne	17 <sched_yield+0xae>
e0104f2d:	83 3b 02 	cmpl	$2, (%ebx)
e0104f30:	0f 84 b0 00 00 00 	je	176 <sched_yield+0x156>
e0104f36:	41 	incl	%ecx
e0104f37:	83 f9 1f 	cmpl	$31, %ecx
e0104f3a:	76 c4 	jbe	-60 <sched_yield+0x70>
e0104f3c:	eb 14 	jmp	20 <sched_yield+0xc2>
e0104f3e:	88 de 	movb	%bl, %dh
e0104f40:	80 e6 07 	andb	$7, %dh
e0104f43:	80 c6 03 	addb	$3, %dh
e0104f46:	38 d6 	cmpb	%dl, %dh
e0104f48:	7c e3 	jl	-29 <sched_yield+0x9d>
e0104f4a:	89 1c 24 	movl	%ebx, (%esp)
e0104f4d:	e8 3e 38 00 00 	calll	14398 <__asan_report_load4>
e0104f52:	8b 75 f0 	movl	-16(%ebp), %esi
e0104f55:	8d 46 54 	leal	84(%esi), %eax
e0104f58:	89 c1 	movl	%eax, %ecx
e0104f5a:	c1 e9 03 	shrl	$3, %ecx
e0104f5d:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104f63:	84 c9 	testb	%cl, %cl
e0104f65:	75 6b 	jne	107 <sched_yield+0x142>
e0104f67:	83 38 03 	cmpl	$3, (%eax)
e0104f6a:	0f 84 bb 00 00 00 	je	187 <sched_yield+0x19b>
e0104f70:	83 c4 0c 	addl	$12, %esp
e0104f73:	5e 	popl	%esi
e0104f74:	5f 	popl	%edi
e0104f75:	5b 	popl	%ebx
e0104f76:	5d 	popl	%ebp
e0104f77:	e9 c4 00 00 00 	jmp	196 <sched_halt>
e0104f7c:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0104f81:	80 e1 07 	andb	$7, %cl
e0104f84:	80 c1 03 	addb	$3, %cl
e0104f87:	38 c1 	cmpb	%al, %cl
e0104f89:	0f 8c 20 ff ff ff 	jl	-224 <sched_yield+0x1f>
e0104f8f:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0104f96:	e8 f5 37 00 00 	calll	14325 <__asan_report_load4>
e0104f9b:	89 c2 	movl	%eax, %edx
e0104f9d:	80 e2 07 	andb	$7, %dl
e0104fa0:	80 c2 03 	addb	$3, %dl
e0104fa3:	38 ca 	cmpb	%cl, %dl
e0104fa5:	0f 8c 28 ff ff ff 	jl	-216 <sched_yield+0x43>
e0104fab:	89 04 24 	movl	%eax, (%esp)
e0104fae:	e8 dd 37 00 00 	calll	14301 <__asan_report_load4>
e0104fb3:	ba 80 0c 12 e0 	movl	$3759279232, %edx
e0104fb8:	80 e2 07 	andb	$7, %dl
e0104fbb:	80 c2 03 	addb	$3, %dl
e0104fbe:	38 ca 	cmpb	%cl, %dl
e0104fc0:	0f 8c 28 ff ff ff 	jl	-216 <sched_yield+0x5e>
e0104fc6:	c7 04 24 80 0c 12 e0 	movl	$3759279232, (%esp)
e0104fcd:	e8 be 37 00 00 	calll	14270 <__asan_report_load4>
e0104fd2:	89 c2 	movl	%eax, %edx
e0104fd4:	80 e2 07 	andb	$7, %dl
e0104fd7:	80 c2 03 	addb	$3, %dl
e0104fda:	38 ca 	cmpb	%cl, %dl
e0104fdc:	7c 89 	jl	-119 <sched_yield+0xd7>
e0104fde:	89 04 24 	movl	%eax, (%esp)
e0104fe1:	e8 aa 37 00 00 	calll	14250 <__asan_report_load4>
e0104fe6:	01 f7 	addl	%esi, %edi
e0104fe8:	e8 b3 35 00 00 	calll	13747 <__asan_handle_no_return>
e0104fed:	89 3c 24 	movl	%edi, (%esp)
e0104ff0:	e8 8b ea ff ff 	calll	-5493 <env_run>
e0104ff5:	83 ec 04 	subl	$4, %esp
e0104ff8:	b8 80 0c 12 e0 	movl	$3759279232, %eax
e0104ffd:	c1 e8 03 	shrl	$3, %eax
e0105000:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105006:	84 c0 	testb	%al, %al
e0105008:	74 1b 	je	27 <sched_yield+0x195>
e010500a:	b9 80 0c 12 e0 	movl	$3759279232, %ecx
e010500f:	80 e1 07 	andb	$7, %cl
e0105012:	80 c1 03 	addb	$3, %cl
e0105015:	38 c1 	cmpb	%al, %cl
e0105017:	7c 0c 	jl	12 <sched_yield+0x195>
e0105019:	c7 04 24 80 0c 12 e0 	movl	$3759279232, (%esp)
e0105020:	e8 6b 37 00 00 	calll	14187 <__asan_report_load4>
e0105025:	8b 35 80 0c 12 e0 	movl	-535688064, %esi
e010502b:	e8 70 35 00 00 	calll	13680 <__asan_handle_no_return>
e0105030:	89 34 24 	movl	%esi, (%esp)
e0105033:	e8 48 ea ff ff 	calll	-5560 <env_run>
e0105038:	83 ec 04 	subl	$4, %esp
e010503b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0105040:	55 	pushl	%ebp
e0105041:	89 e5 	movl	%esp, %ebp
e0105043:	83 ec 08 	subl	$8, %esp
e0105046:	b8 80 0c 12 e0 	movl	$3759279232, %eax
e010504b:	c1 e8 03 	shrl	$3, %eax
e010504e:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105054:	84 c0 	testb	%al, %al
e0105056:	0f 85 b7 00 00 00 	jne	183 <sched_halt+0xd3>
e010505c:	a1 80 0c 12 e0 	movl	3759279232, %eax
e0105061:	83 c0 54 	addl	$84, %eax
e0105064:	31 c9 	xorl	%ecx, %ecx
e0105066:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0105070:	89 c2 	movl	%eax, %edx
e0105072:	c1 ea 03 	shrl	$3, %edx
e0105075:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e010507c:	84 d2 	testb	%dl, %dl
e010507e:	75 15 	jne	21 <sched_halt+0x55>
e0105080:	8b 10 	movl	(%eax), %edx
e0105082:	83 e2 fe 	andl	$-2, %edx
e0105085:	83 fa 02 	cmpl	$2, %edx
e0105088:	74 44 	je	68 <sched_halt+0x8e>
e010508a:	41 	incl	%ecx
e010508b:	83 c0 5c 	addl	$92, %eax
e010508e:	83 f9 20 	cmpl	$32, %ecx
e0105091:	72 dd 	jb	-35 <sched_halt+0x30>
e0105093:	eb 14 	jmp	20 <sched_halt+0x69>
e0105095:	88 c6 	movb	%al, %dh
e0105097:	80 e6 07 	andb	$7, %dh
e010509a:	80 c6 03 	addb	$3, %dh
e010509d:	38 d6 	cmpb	%dl, %dh
e010509f:	7c df 	jl	-33 <sched_halt+0x40>
e01050a1:	89 04 24 	movl	%eax, (%esp)
e01050a4:	e8 e7 36 00 00 	calll	14055 <__asan_report_load4>
e01050a9:	75 23 	jne	35 <sched_halt+0x8e>
e01050ab:	c7 04 24 e0 d5 10 e0 	movl	$3759199712, (%esp)
e01050b2:	e8 89 ee ff ff 	calll	-4471 <cprintf>
e01050b7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e01050c0:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e01050c7:	e8 64 c0 ff ff 	calll	-16284 <monitor>
e01050cc:	eb f2 	jmp	-14 <sched_halt+0x80>
e01050ce:	b8 20 1e 12 e0 	movl	$3759283744, %eax
e01050d3:	c1 e8 03 	shrl	$3, %eax
e01050d6:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01050dc:	84 c0 	testb	%al, %al
e01050de:	75 52 	jne	82 <sched_halt+0xf2>
e01050e0:	c7 05 20 1e 12 e0 00 00 00 00 	movl	$0, -535683552
e01050ea:	b8 44 3b 12 e0 	movl	$3759291204, %eax
e01050ef:	c1 e8 03 	shrl	$3, %eax
e01050f2:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01050f8:	84 c0 	testb	%al, %al
e01050fa:	75 51 	jne	81 <sched_halt+0x10d>
e01050fc:	a1 44 3b 12 e0 	movl	3759291204, %eax
e0105101:	bd 00 00 00 00 	movl	$0, %ebp
e0105106:	89 c4 	movl	%eax, %esp
e0105108:	6a 00 	pushl	$0
e010510a:	6a 00 	pushl	$0
e010510c:	fb 	sti
e010510d:	f4 	hlt
e010510e:	83 c4 08 	addl	$8, %esp
e0105111:	5d 	popl	%ebp
e0105112:	c3 	retl
e0105113:	b9 80 0c 12 e0 	movl	$3759279232, %ecx
e0105118:	80 e1 07 	andb	$7, %cl
e010511b:	80 c1 03 	addb	$3, %cl
e010511e:	38 c1 	cmpb	%al, %cl
e0105120:	0f 8c 36 ff ff ff 	jl	-202 <sched_halt+0x1c>
e0105126:	c7 04 24 80 0c 12 e0 	movl	$3759279232, (%esp)
e010512d:	e8 5e 36 00 00 	calll	13918 <__asan_report_load4>
e0105132:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0105137:	80 e1 07 	andb	$7, %cl
e010513a:	80 c1 03 	addb	$3, %cl
e010513d:	38 c1 	cmpb	%al, %cl
e010513f:	7c 9f 	jl	-97 <sched_halt+0xa0>
e0105141:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0105148:	e8 63 36 00 00 	calll	13923 <__asan_report_store4>
e010514d:	b9 44 3b 12 e0 	movl	$3759291204, %ecx
e0105152:	80 e1 07 	andb	$7, %cl
e0105155:	80 c1 03 	addb	$3, %cl
e0105158:	38 c1 	cmpb	%al, %cl
e010515a:	7c a0 	jl	-96 <sched_halt+0xbc>
e010515c:	c7 04 24 44 3b 12 e0 	movl	$3759291204, (%esp)
e0105163:	e8 28 36 00 00 	calll	13864 <__asan_report_load4>
e0105168:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0105170:	83 ec 0c 	subl	$12, %esp
e0105173:	e8 88 3b 00 00 	calll	15240 <__asan_init>
e0105178:	e8 a3 3c 00 00 	calll	15523 <__asan_version_mismatch_check_v8>
e010517d:	83 ec 08 	subl	$8, %esp
e0105180:	6a 01 	pushl	$1
e0105182:	68 80 17 12 e0 	pushl	$3759282048
e0105187:	e8 a4 3b 00 00 	calll	15268 <__asan_register_globals>
e010518c:	83 c4 1c 	addl	$28, %esp
e010518f:	c3 	retl
e0105190:	83 ec 14 	subl	$20, %esp
e0105193:	6a 01 	pushl	$1
e0105195:	68 80 17 12 e0 	pushl	$3759282048
e010519a:	e8 e1 3b 00 00 	calll	15329 <__asan_unregister_globals>
e010519f:	83 c4 1c 	addl	$28, %esp
e01051a2:	c3 	retl
e01051a3:	cc 	int3
e01051a4:	cc 	int3
e01051a5:	cc 	int3
e01051a6:	cc 	int3
e01051a7:	cc 	int3
e01051a8:	cc 	int3
e01051a9:	cc 	int3
e01051aa:	cc 	int3
e01051ab:	cc 	int3
e01051ac:	cc 	int3
e01051ad:	cc 	int3
e01051ae:	cc 	int3
e01051af:	cc 	int3
e01051b0:	55 	pushl	%ebp
e01051b1:	89 e5 	movl	%esp, %ebp
e01051b3:	53 	pushl	%ebx
e01051b4:	57 	pushl	%edi
e01051b5:	56 	pushl	%esi
e01051b6:	83 e4 e0 	andl	$-32, %esp
e01051b9:	81 ec 80 00 00 00 	subl	$128, %esp
e01051bf:	89 e6 	movl	%esp, %esi
e01051c1:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e01051c8:	74 11 	je	17 <debuginfo_eip+0x2b>
e01051ca:	83 ec 0c 	subl	$12, %esp
e01051cd:	6a 70 	pushl	$112
e01051cf:	e8 0c 38 00 00 	calll	14348 <__asan_stack_malloc_1>
e01051d4:	83 c4 10 	addl	$16, %esp
e01051d7:	89 c2 	movl	%eax, %edx
e01051d9:	eb 02 	jmp	2 <debuginfo_eip+0x2d>
e01051db:	31 d2 	xorl	%edx, %edx
e01051dd:	8b 4d 0c 	movl	12(%ebp), %ecx
e01051e0:	85 d2 	testl	%edx, %edx
e01051e2:	89 d7 	movl	%edx, %edi
e01051e4:	75 0a 	jne	10 <debuginfo_eip+0x40>
e01051e6:	89 e7 	movl	%esp, %edi
e01051e8:	83 c7 90 	addl	$-112, %edi
e01051eb:	83 e7 e0 	andl	$-32, %edi
e01051ee:	89 fc 	movl	%edi, %esp
e01051f0:	89 7e 20 	movl	%edi, 32(%esi)
e01051f3:	89 7e 5c 	movl	%edi, 92(%esi)
e01051f6:	c7 07 b3 8a b5 41 	movl	$1102416563, (%edi)
e01051fc:	c7 47 04 79 a2 10 e0 	movl	$3759186553, 4(%edi)
e0105203:	c7 47 08 b0 51 10 e0 	movl	$3759165872, 8(%edi)
e010520a:	c1 ef 03 	shrl	$3, %edi
e010520d:	c7 87 00 00 80 de f1 f1 f8 f2 	movl	$4076401137, -562036736(%edi)
e0105217:	c7 87 04 00 80 de f8 f2 f8 f2 	movl	$4076401400, -562036732(%edi)
e0105221:	c7 87 08 00 80 de f8 f2 f8 f2 	movl	$4076401400, -562036728(%edi)
e010522b:	66 c7 87 0c 00 80 de f8 f3 	movw	$62456, -562036724(%edi)
e0105234:	c6 87 02 00 80 de 04 	movb	$4, -562036734(%edi)
e010523b:	c6 87 04 00 80 de 04 	movb	$4, -562036732(%edi)
e0105242:	c6 87 06 00 80 de 04 	movb	$4, -562036730(%edi)
e0105249:	c6 87 08 00 80 de 04 	movb	$4, -562036728(%edi)
e0105250:	c6 87 0a 00 80 de 04 	movb	$4, -562036726(%edi)
e0105257:	c6 87 0c 00 80 de 04 	movb	$4, -562036724(%edi)
e010525e:	89 c8 	movl	%ecx, %eax
e0105260:	c1 e8 03 	shrl	$3, %eax
e0105263:	89 46 4c 	movl	%eax, 76(%esi)
e0105266:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010526c:	84 c0 	testb	%al, %al
e010526e:	0f 85 c1 06 00 00 	jne	1729 <debuginfo_eip+0x785>
e0105274:	c7 01 60 d6 10 e0 	movl	$3759199840, (%ecx)
e010527a:	8d 59 04 	leal	4(%ecx), %ebx
e010527d:	89 d8 	movl	%ebx, %eax
e010527f:	c1 e8 03 	shrl	$3, %eax
e0105282:	89 46 50 	movl	%eax, 80(%esi)
e0105285:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010528b:	84 c0 	testb	%al, %al
e010528d:	0f 85 c2 06 00 00 	jne	1730 <debuginfo_eip+0x7a5>
e0105293:	c7 41 04 00 00 00 00 	movl	$0, 4(%ecx)
e010529a:	8d 41 08 	leal	8(%ecx), %eax
e010529d:	89 46 10 	movl	%eax, 16(%esi)
e01052a0:	c1 e8 03 	shrl	$3, %eax
e01052a3:	89 46 44 	movl	%eax, 68(%esi)
e01052a6:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01052ac:	84 c0 	testb	%al, %al
e01052ae:	0f 85 c0 06 00 00 	jne	1728 <debuginfo_eip+0x7c4>
e01052b4:	89 5e 54 	movl	%ebx, 84(%esi)
e01052b7:	c7 41 08 60 d6 10 e0 	movl	$3759199840, 8(%ecx)
e01052be:	8d 41 0c 	leal	12(%ecx), %eax
e01052c1:	89 46 38 	movl	%eax, 56(%esi)
e01052c4:	c1 e8 03 	shrl	$3, %eax
e01052c7:	89 46 58 	movl	%eax, 88(%esi)
e01052ca:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01052d0:	84 c0 	testb	%al, %al
e01052d2:	0f 85 be 06 00 00 	jne	1726 <debuginfo_eip+0x7e6>
e01052d8:	c7 41 0c 09 00 00 00 	movl	$9, 12(%ecx)
e01052df:	8d 41 10 	leal	16(%ecx), %eax
e01052e2:	89 46 0c 	movl	%eax, 12(%esi)
e01052e5:	c1 e8 03 	shrl	$3, %eax
e01052e8:	89 46 18 	movl	%eax, 24(%esi)
e01052eb:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01052f1:	84 c0 	testb	%al, %al
e01052f3:	0f 85 bf 06 00 00 	jne	1727 <debuginfo_eip+0x808>
e01052f9:	8b 5d 08 	movl	8(%ebp), %ebx
e01052fc:	89 59 10 	movl	%ebx, 16(%ecx)
e01052ff:	8d 49 14 	leal	20(%ecx), %ecx
e0105302:	89 c8 	movl	%ecx, %eax
e0105304:	c1 e8 03 	shrl	$3, %eax
e0105307:	89 46 40 	movl	%eax, 64(%esi)
e010530a:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105310:	84 c0 	testb	%al, %al
e0105312:	0f 85 c2 06 00 00 	jne	1730 <debuginfo_eip+0x82a>
e0105318:	c7 01 00 00 00 00 	movl	$0, (%ecx)
e010531e:	89 5e 3c 	movl	%ebx, 60(%esi)
e0105321:	81 fb 00 00 80 df 	cmpl	$3749707776, %ebx
e0105327:	0f 87 fe 0a 00 00 	ja	2814 <debuginfo_eip+0xc7b>
e010532d:	b8 6d df 10 e0 	movl	$3759202157, %eax
e0105332:	3d 6d df 10 e0 	cmpl	$3759202157, %eax
e0105337:	76 1f 	jbe	31 <debuginfo_eip+0x1a8>
e0105339:	b8 6c df 10 e0 	movl	$3759202156, %eax
e010533e:	c1 e8 03 	shrl	$3, %eax
e0105341:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105347:	84 c0 	testb	%al, %al
e0105349:	0f 85 ae 06 00 00 	jne	1710 <debuginfo_eip+0x84d>
e010534f:	80 3d 6c df 10 e0 00 	cmpb	$0, -535765140
e0105356:	74 77 	je	119 <debuginfo_eip+0x21f>
e0105358:	bb ff ff ff ff 	movl	$4294967295, %ebx
e010535d:	81 c7 00 00 80 de 	addl	$3732930560, %edi
e0105363:	c6 47 0c f8 	movb	$-8, 12(%edi)
e0105367:	c6 47 0a f8 	movb	$-8, 10(%edi)
e010536b:	c6 47 08 f8 	movb	$-8, 8(%edi)
e010536f:	c6 47 06 f8 	movb	$-8, 6(%edi)
e0105373:	c6 47 04 f8 	movb	$-8, 4(%edi)
e0105377:	c6 47 02 f8 	movb	$-8, 2(%edi)
e010537b:	8b 46 20 	movl	32(%esi), %eax
e010537e:	c7 00 0e 36 e0 45 	movl	$1172321806, (%eax)
e0105384:	85 d2 	testl	%edx, %edx
e0105386:	74 23 	je	35 <debuginfo_eip+0x1fb>
e0105388:	c7 07 f5 f5 f5 f5 	movl	$4126537205, (%edi)
e010538e:	c7 47 04 f5 f5 f5 f5 	movl	$4126537205, 4(%edi)
e0105395:	c7 47 08 f5 f5 f5 f5 	movl	$4126537205, 8(%edi)
e010539c:	c7 47 0c f5 f5 f5 f5 	movl	$4126537205, 12(%edi)
e01053a3:	8b 42 7c 	movl	124(%edx), %eax
e01053a6:	c6 00 00 	movb	$0, (%eax)
e01053a9:	eb 1a 	jmp	26 <debuginfo_eip+0x215>
e01053ab:	c7 07 00 00 00 00 	movl	$0, (%edi)
e01053b1:	c7 47 04 00 00 00 00 	movl	$0, 4(%edi)
e01053b8:	c7 47 08 00 00 00 00 	movl	$0, 8(%edi)
e01053bf:	66 c7 47 0c 00 00 	movw	$0, 12(%edi)
e01053c5:	89 d8 	movl	%ebx, %eax
e01053c7:	8d 65 f4 	leal	-12(%ebp), %esp
e01053ca:	5e 	popl	%esi
e01053cb:	5f 	popl	%edi
e01053cc:	5b 	popl	%ebx
e01053cd:	5d 	popl	%ebp
e01053ce:	c3 	retl
e01053cf:	89 4e 24 	movl	%ecx, 36(%esi)
e01053d2:	8b 4e 20 	movl	32(%esi), %ecx
e01053d5:	8d 41 10 	leal	16(%ecx), %eax
e01053d8:	89 46 14 	movl	%eax, 20(%esi)
e01053db:	c1 e8 03 	shrl	$3, %eax
e01053de:	89 46 1c 	movl	%eax, 28(%esi)
e01053e1:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01053e7:	84 c0 	testb	%al, %al
e01053e9:	0f 85 34 06 00 00 	jne	1588 <debuginfo_eip+0x873>
e01053ef:	89 56 2c 	movl	%edx, 44(%esi)
e01053f2:	8d 59 20 	leal	32(%ecx), %ebx
e01053f5:	8b 46 14 	movl	20(%esi), %eax
e01053f8:	c7 00 00 00 00 00 	movl	$0, (%eax)
e01053fe:	89 d8 	movl	%ebx, %eax
e0105400:	c1 e8 03 	shrl	$3, %eax
e0105403:	89 46 28 	movl	%eax, 40(%esi)
e0105406:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010540c:	84 c0 	testb	%al, %al
e010540e:	0f 85 31 06 00 00 	jne	1585 <debuginfo_eip+0x895>
e0105414:	b9 6c df 10 e0 	movl	$3759202156, %ecx
e0105419:	b8 6c df 10 e0 	movl	$3759202156, %eax
e010541e:	29 c8 	subl	%ecx, %eax
e0105420:	b9 ab aa aa 2a 	movl	$715827883, %ecx
e0105425:	f7 e9 	imull	%ecx
e0105427:	89 d0 	movl	%edx, %eax
e0105429:	c1 e8 1f 	shrl	$31, %eax
e010542c:	d1 fa 	sarl	%edx
e010542e:	8d 44 02 ff 	leal	-1(%edx,%eax), %eax
e0105432:	89 03 	movl	%eax, (%ebx)
e0105434:	83 ec 08 	subl	$8, %esp
e0105437:	8b 4e 14 	movl	20(%esi), %ecx
e010543a:	89 5e 34 	movl	%ebx, 52(%esi)
e010543d:	89 da 	movl	%ebx, %edx
e010543f:	ff 75 08 	pushl	8(%ebp)
e0105442:	6a 64 	pushl	$100
e0105444:	e8 27 0a 00 00 	calll	2599 <stab_binsearch>
e0105449:	83 c4 10 	addl	$16, %esp
e010544c:	8b 46 1c 	movl	28(%esi), %eax
e010544f:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105455:	84 c0 	testb	%al, %al
e0105457:	0f 85 04 06 00 00 	jne	1540 <debuginfo_eip+0x8b1>
e010545d:	8b 46 14 	movl	20(%esi), %eax
e0105460:	8b 00 	movl	(%eax), %eax
e0105462:	89 46 14 	movl	%eax, 20(%esi)
e0105465:	85 c0 	testl	%eax, %eax
e0105467:	8b 56 2c 	movl	44(%esi), %edx
e010546a:	8b 4e 20 	movl	32(%esi), %ecx
e010546d:	0f 84 e5 fe ff ff 	je	-283 <debuginfo_eip+0x1a8>
e0105473:	8d 59 30 	leal	48(%ecx), %ebx
e0105476:	89 da 	movl	%ebx, %edx
e0105478:	c1 ea 03 	shrl	$3, %edx
e010547b:	8a 82 00 00 80 de 	movb	-562036736(%edx), %al
e0105481:	84 c0 	testb	%al, %al
e0105483:	0f 85 f7 05 00 00 	jne	1527 <debuginfo_eip+0x8d0>
e0105489:	89 56 30 	movl	%edx, 48(%esi)
e010548c:	8b 46 14 	movl	20(%esi), %eax
e010548f:	89 5e 48 	movl	%ebx, 72(%esi)
e0105492:	89 03 	movl	%eax, (%ebx)
e0105494:	8b 46 28 	movl	40(%esi), %eax
e0105497:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010549d:	84 c0 	testb	%al, %al
e010549f:	0f 85 fa 05 00 00 	jne	1530 <debuginfo_eip+0x8ef>
e01054a5:	8d 51 40 	leal	64(%ecx), %edx
e01054a8:	8b 46 34 	movl	52(%esi), %eax
e01054ab:	8b 00 	movl	(%eax), %eax
e01054ad:	89 d1 	movl	%edx, %ecx
e01054af:	c1 e9 03 	shrl	$3, %ecx
e01054b2:	89 4e 28 	movl	%ecx, 40(%esi)
e01054b5:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01054bb:	84 c9 	testb	%cl, %cl
e01054bd:	89 d3 	movl	%edx, %ebx
e01054bf:	89 56 1c 	movl	%edx, 28(%esi)
e01054c2:	0f 85 f9 05 00 00 	jne	1529 <debuginfo_eip+0x911>
e01054c8:	89 02 	movl	%eax, (%edx)
e01054ca:	83 ec 08 	subl	$8, %esp
e01054cd:	8b 5e 48 	movl	72(%esi), %ebx
e01054d0:	89 d9 	movl	%ebx, %ecx
e01054d2:	ff 75 08 	pushl	8(%ebp)
e01054d5:	6a 24 	pushl	$36
e01054d7:	e8 94 09 00 00 	calll	2452 <stab_binsearch>
e01054dc:	83 c4 10 	addl	$16, %esp
e01054df:	8b 46 30 	movl	48(%esi), %eax
e01054e2:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01054e8:	84 c0 	testb	%al, %al
e01054ea:	0f 85 f1 05 00 00 	jne	1521 <debuginfo_eip+0x931>
e01054f0:	8b 13 	movl	(%ebx), %edx
e01054f2:	8b 46 28 	movl	40(%esi), %eax
e01054f5:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01054fb:	84 c0 	testb	%al, %al
e01054fd:	8b 4e 20 	movl	32(%esi), %ecx
e0105500:	0f 85 f7 05 00 00 	jne	1527 <debuginfo_eip+0x94d>
e0105506:	8b 46 1c 	movl	28(%esi), %eax
e0105509:	8b 00 	movl	(%eax), %eax
e010550b:	89 46 28 	movl	%eax, 40(%esi)
e010550e:	39 c2 	cmpl	%eax, %edx
e0105510:	89 56 30 	movl	%edx, 48(%esi)
e0105513:	7e 27 	jle	39 <debuginfo_eip+0x38c>
e0105515:	8b 46 18 	movl	24(%esi), %eax
e0105518:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010551e:	84 c0 	testb	%al, %al
e0105520:	0f 85 eb 06 00 00 	jne	1771 <debuginfo_eip+0xa61>
e0105526:	8b 45 08 	movl	8(%ebp), %eax
e0105529:	8b 56 0c 	movl	12(%esi), %edx
e010552c:	89 02 	movl	%eax, (%edx)
e010552e:	8b 46 14 	movl	20(%esi), %eax
e0105531:	8b 56 34 	movl	52(%esi), %edx
e0105534:	89 56 1c 	movl	%edx, 28(%esi)
e0105537:	e9 88 00 00 00 	jmp	136 <debuginfo_eip+0x414>
e010553c:	8d 04 52 	leal	(%edx,%edx,2), %eax
e010553f:	8d 0c 85 6c df 10 e0 	leal	-535765140(,%eax,4), %ecx
e0105546:	89 ca 	movl	%ecx, %edx
e0105548:	c1 ea 03 	shrl	$3, %edx
e010554b:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0105551:	84 d2 	testb	%dl, %dl
e0105553:	0f 85 da 06 00 00 	jne	1754 <debuginfo_eip+0xa83>
e0105559:	8b 09 	movl	(%ecx), %ecx
e010555b:	bb 6d df 10 e0 	movl	$3759202157, %ebx
e0105560:	ba 6d df 10 e0 	movl	$3759202157, %edx
e0105565:	29 da 	subl	%ebx, %edx
e0105567:	39 d1 	cmpl	%edx, %ecx
e0105569:	73 1c 	jae	28 <debuginfo_eip+0x3d7>
e010556b:	8b 56 44 	movl	68(%esi), %edx
e010556e:	8a 9a 00 00 80 de 	movb	-562036736(%edx), %bl
e0105574:	84 db 	testb	%bl, %bl
e0105576:	0f 85 67 07 00 00 	jne	1895 <debuginfo_eip+0xb33>
e010557c:	8d 89 6d df 10 e0 	leal	-535765139(%ecx), %ecx
e0105582:	8b 56 10 	movl	16(%esi), %edx
e0105585:	89 0a 	movl	%ecx, (%edx)
e0105587:	8d 04 85 74 df 10 e0 	leal	-535765132(,%eax,4), %eax
e010558e:	89 c1 	movl	%eax, %ecx
e0105590:	c1 e9 03 	shrl	$3, %ecx
e0105593:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0105599:	84 c9 	testb	%cl, %cl
e010559b:	0f 85 ae 06 00 00 	jne	1710 <debuginfo_eip+0xa9f>
e01055a1:	8b 4e 18 	movl	24(%esi), %ecx
e01055a4:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01055aa:	84 c9 	testb	%cl, %cl
e01055ac:	8b 56 30 	movl	48(%esi), %edx
e01055af:	0f 85 b6 06 00 00 	jne	1718 <debuginfo_eip+0xabb>
e01055b5:	8b 00 	movl	(%eax), %eax
e01055b7:	8b 4e 0c 	movl	12(%esi), %ecx
e01055ba:	89 01 	movl	%eax, (%ecx)
e01055bc:	29 46 3c 	subl	%eax, 60(%esi)
e01055bf:	89 d0 	movl	%edx, %eax
e01055c1:	8b 4e 20 	movl	32(%esi), %ecx
e01055c4:	8b 56 10 	movl	16(%esi), %edx
e01055c7:	8d 59 50 	leal	80(%ecx), %ebx
e01055ca:	89 d9 	movl	%ebx, %ecx
e01055cc:	c1 e9 03 	shrl	$3, %ecx
e01055cf:	89 4e 18 	movl	%ecx, 24(%esi)
e01055d2:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01055d8:	84 c9 	testb	%cl, %cl
e01055da:	0f 85 3f 05 00 00 	jne	1343 <debuginfo_eip+0x96f>
e01055e0:	89 5e 0c 	movl	%ebx, 12(%esi)
e01055e3:	89 03 	movl	%eax, (%ebx)
e01055e5:	8b 5e 1c 	movl	28(%esi), %ebx
e01055e8:	89 d8 	movl	%ebx, %eax
e01055ea:	c1 e8 03 	shrl	$3, %eax
e01055ed:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01055f3:	84 c0 	testb	%al, %al
e01055f5:	0f 85 43 05 00 00 	jne	1347 <debuginfo_eip+0x98e>
e01055fb:	8b 46 20 	movl	32(%esi), %eax
e01055fe:	8d 48 60 	leal	96(%eax), %ecx
e0105601:	8b 03 	movl	(%ebx), %eax
e0105603:	89 cb 	movl	%ecx, %ebx
e0105605:	c1 e9 03 	shrl	$3, %ecx
e0105608:	89 4e 34 	movl	%ecx, 52(%esi)
e010560b:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0105611:	84 c9 	testb	%cl, %cl
e0105613:	0f 85 41 05 00 00 	jne	1345 <debuginfo_eip+0x9aa>
e0105619:	89 5e 1c 	movl	%ebx, 28(%esi)
e010561c:	89 03 	movl	%eax, (%ebx)
e010561e:	8b 5e 44 	movl	68(%esi), %ebx
e0105621:	8a 83 00 00 80 de 	movb	-562036736(%ebx), %al
e0105627:	84 c0 	testb	%al, %al
e0105629:	0f 85 4a 05 00 00 	jne	1354 <debuginfo_eip+0x9c9>
e010562f:	83 ec 08 	subl	$8, %esp
e0105632:	6a 3a 	pushl	$58
e0105634:	ff 32 	pushl	(%edx)
e0105636:	e8 e5 23 00 00 	calll	9189 <strfind>
e010563b:	83 c4 10 	addl	$16, %esp
e010563e:	8a 8b 00 00 80 de 	movb	-562036736(%ebx), %cl
e0105644:	84 c9 	testb	%cl, %cl
e0105646:	0f 85 49 05 00 00 	jne	1353 <debuginfo_eip+0x9e5>
e010564c:	8b 4e 10 	movl	16(%esi), %ecx
e010564f:	2b 01 	subl	(%ecx), %eax
e0105651:	8b 4e 58 	movl	88(%esi), %ecx
e0105654:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010565a:	84 c9 	testb	%cl, %cl
e010565c:	0f 85 52 05 00 00 	jne	1362 <debuginfo_eip+0xa04>
e0105662:	8b 4e 38 	movl	56(%esi), %ecx
e0105665:	89 01 	movl	%eax, (%ecx)
e0105667:	83 ec 08 	subl	$8, %esp
e010566a:	8b 4e 0c 	movl	12(%esi), %ecx
e010566d:	8b 5e 1c 	movl	28(%esi), %ebx
e0105670:	89 da 	movl	%ebx, %edx
e0105672:	ff 76 3c 	pushl	60(%esi)
e0105675:	6a 44 	pushl	$68
e0105677:	e8 f4 07 00 00 	calll	2036 <stab_binsearch>
e010567c:	83 c4 10 	addl	$16, %esp
e010567f:	8b 46 34 	movl	52(%esi), %eax
e0105682:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105688:	84 c0 	testb	%al, %al
e010568a:	0f 85 43 05 00 00 	jne	1347 <debuginfo_eip+0xa23>
e0105690:	8b 03 	movl	(%ebx), %eax
e0105692:	8b 4e 18 	movl	24(%esi), %ecx
e0105695:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010569b:	84 c9 	testb	%cl, %cl
e010569d:	8b 56 2c 	movl	44(%esi), %edx
e01056a0:	bb ff ff ff ff 	movl	$4294967295, %ebx
e01056a5:	0f 85 44 05 00 00 	jne	1348 <debuginfo_eip+0xa3f>
e01056ab:	8b 4e 0c 	movl	12(%esi), %ecx
e01056ae:	8b 09 	movl	(%ecx), %ecx
e01056b0:	39 c8 	cmpl	%ecx, %eax
e01056b2:	0f 8c a5 fc ff ff 	jl	-859 <debuginfo_eip+0x1ad>
e01056b8:	8d 04 49 	leal	(%ecx,%ecx,2), %eax
e01056bb:	8d 04 85 72 df 10 e0 	leal	-535765134(,%eax,4), %eax
e01056c2:	89 c1 	movl	%eax, %ecx
e01056c4:	c1 e9 03 	shrl	$3, %ecx
e01056c7:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01056cd:	84 c9 	testb	%cl, %cl
e01056cf:	0f 85 b8 05 00 00 	jne	1464 <debuginfo_eip+0xadd>
e01056d5:	8b 4e 50 	movl	80(%esi), %ecx
e01056d8:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01056de:	84 c9 	testb	%cl, %cl
e01056e0:	8b 5e 54 	movl	84(%esi), %ebx
e01056e3:	0f 85 bf 05 00 00 	jne	1471 <debuginfo_eip+0xaf8>
e01056e9:	0f b7 00 	movzwl	(%eax), %eax
e01056ec:	89 03 	movl	%eax, (%ebx)
e01056ee:	8b 46 18 	movl	24(%esi), %eax
e01056f1:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01056f7:	84 c0 	testb	%al, %al
e01056f9:	0f 85 c5 05 00 00 	jne	1477 <debuginfo_eip+0xb14>
e01056ff:	8b 5e 0c 	movl	12(%esi), %ebx
e0105702:	8b 13 	movl	(%ebx), %edx
e0105704:	3b 56 14 	cmpl	20(%esi), %edx
e0105707:	0f 8c 0f 01 00 00 	jl	271 <debuginfo_eip+0x66c>
e010570d:	8b 46 18 	movl	24(%esi), %eax
e0105710:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105716:	84 c0 	testb	%al, %al
e0105718:	0f 85 e6 05 00 00 	jne	1510 <debuginfo_eip+0xb54>
e010571e:	8b 0b 	movl	(%ebx), %ecx
e0105720:	8d 04 52 	leal	(%edx,%edx,2), %eax
e0105723:	8d 04 85 70 df 10 e0 	leal	-535765136(,%eax,4), %eax
e010572a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0105730:	89 c3 	movl	%eax, %ebx
e0105732:	c1 eb 03 	shrl	$3, %ebx
e0105735:	0f b6 9b 00 00 80 de 	movzbl	-562036736(%ebx), %ebx
e010573c:	84 db 	testb	%bl, %bl
e010573e:	75 3b 	jne	59 <debuginfo_eip+0x5cb>
e0105740:	0f b6 18 	movzbl	(%eax), %ebx
e0105743:	80 fb 64 	cmpb	$100, %bl
e0105746:	74 07 	je	7 <debuginfo_eip+0x59f>
e0105748:	80 fb 84 	cmpb	$-124, %bl
e010574b:	75 1c 	jne	28 <debuginfo_eip+0x5b9>
e010574d:	eb 5b 	jmp	91 <debuginfo_eip+0x5fa>
e010574f:	8d 58 04 	leal	4(%eax), %ebx
e0105752:	89 5e 10 	movl	%ebx, 16(%esi)
e0105755:	c1 eb 03 	shrl	$3, %ebx
e0105758:	0f b6 9b 00 00 80 de 	movzbl	-562036736(%ebx), %ebx
e010575f:	84 db 	testb	%bl, %bl
e0105761:	75 26 	jne	38 <debuginfo_eip+0x5d9>
e0105763:	83 78 04 00 	cmpl	$0, 4(%eax)
e0105767:	75 41 	jne	65 <debuginfo_eip+0x5fa>
e0105769:	83 c0 f4 	addl	$-12, %eax
e010576c:	3b 56 14 	cmpl	20(%esi), %edx
e010576f:	8d 4a ff 	leal	-1(%edx), %ecx
e0105772:	89 ca 	movl	%ecx, %edx
e0105774:	7f ba 	jg	-70 <debuginfo_eip+0x580>
e0105776:	e9 8b 00 00 00 	jmp	139 <debuginfo_eip+0x656>
e010577b:	88 c7 	movb	%al, %bh
e010577d:	80 e7 07 	andb	$7, %bh
e0105780:	38 df 	cmpb	%bl, %bh
e0105782:	7c bc 	jl	-68 <debuginfo_eip+0x590>
e0105784:	e9 be 06 00 00 	jmp	1726 <debuginfo_eip+0xc97>
e0105789:	88 5e 3c 	movb	%bl, 60(%esi)
e010578c:	8b 5e 10 	movl	16(%esi), %ebx
e010578f:	88 df 	movb	%bl, %bh
e0105791:	80 e7 07 	andb	$7, %bh
e0105794:	80 c7 03 	addb	$3, %bh
e0105797:	3a 7e 3c 	cmpb	60(%esi), %bh
e010579a:	7c c7 	jl	-57 <debuginfo_eip+0x5b3>
e010579c:	83 ec 0c 	subl	$12, %esp
e010579f:	ff 76 10 	pushl	16(%esi)
e01057a2:	e8 e9 2f 00 00 	calll	12265 <__asan_report_load4>
e01057a7:	83 c4 10 	addl	$16, %esp
e01057aa:	8b 56 18 	movl	24(%esi), %edx
e01057ad:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e01057b3:	84 d2 	testb	%dl, %dl
e01057b5:	8b 5e 0c 	movl	12(%esi), %ebx
e01057b8:	0f 85 81 05 00 00 	jne	1409 <debuginfo_eip+0xb8f>
e01057be:	89 0b 	movl	%ecx, (%ebx)
e01057c0:	83 c0 fc 	addl	$-4, %eax
e01057c3:	89 c1 	movl	%eax, %ecx
e01057c5:	c1 e9 03 	shrl	$3, %ecx
e01057c8:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01057ce:	84 c9 	testb	%cl, %cl
e01057d0:	0f 85 85 05 00 00 	jne	1413 <debuginfo_eip+0xbab>
e01057d6:	8b 00 	movl	(%eax), %eax
e01057d8:	b9 6d df 10 e0 	movl	$3759202157, %ecx
e01057dd:	ba 6d df 10 e0 	movl	$3759202157, %edx
e01057e2:	29 ca 	subl	%ecx, %edx
e01057e4:	39 d0 	cmpl	%edx, %eax
e01057e6:	73 34 	jae	52 <debuginfo_eip+0x66c>
e01057e8:	8b 4e 4c 	movl	76(%esi), %ecx
e01057eb:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01057f1:	84 c9 	testb	%cl, %cl
e01057f3:	0f 85 f4 05 00 00 	jne	1524 <debuginfo_eip+0xc3d>
e01057f9:	8d 80 6d df 10 e0 	leal	-535765139(%eax), %eax
e01057ff:	8b 4d 0c 	movl	12(%ebp), %ecx
e0105802:	89 01 	movl	%eax, (%ecx)
e0105804:	eb 16 	jmp	22 <debuginfo_eip+0x66c>
e0105806:	8b 46 18 	movl	24(%esi), %eax
e0105809:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010580f:	84 c0 	testb	%al, %al
e0105811:	0f 85 98 05 00 00 	jne	1432 <debuginfo_eip+0xbff>
e0105817:	8b 46 0c 	movl	12(%esi), %eax
e010581a:	89 08 	movl	%ecx, (%eax)
e010581c:	31 db 	xorl	%ebx, %ebx
e010581e:	8b 56 30 	movl	48(%esi), %edx
e0105821:	3b 56 28 	cmpl	40(%esi), %edx
e0105824:	0f 8d ca 00 00 00 	jge	202 <debuginfo_eip+0x744>
e010582a:	8b 46 18 	movl	24(%esi), %eax
e010582d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105833:	84 c0 	testb	%al, %al
e0105835:	0f 85 e5 04 00 00 	jne	1253 <debuginfo_eip+0xb70>
e010583b:	42 	incl	%edx
e010583c:	8b 46 0c 	movl	12(%esi), %eax
e010583f:	89 10 	movl	%edx, (%eax)
e0105841:	3b 56 28 	cmpl	40(%esi), %edx
e0105844:	0f 8d aa 00 00 00 	jge	170 <debuginfo_eip+0x744>
e010584a:	8b 46 18 	movl	24(%esi), %eax
e010584d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105853:	84 c0 	testb	%al, %al
e0105855:	0f 85 1c 05 00 00 	jne	1308 <debuginfo_eip+0xbc7>
e010585b:	8d 04 52 	leal	(%edx,%edx,2), %eax
e010585e:	8d 0c 85 70 df 10 e0 	leal	-535765136(,%eax,4), %ecx
e0105865:	89 c8 	movl	%ecx, %eax
e0105867:	c1 e8 03 	shrl	$3, %eax
e010586a:	8a 98 00 00 80 de 	movb	-562036736(%eax), %bl
e0105870:	8b 46 0c 	movl	12(%esi), %eax
e0105873:	8b 00 	movl	(%eax), %eax
e0105875:	84 db 	testb	%bl, %bl
e0105877:	0f 85 19 05 00 00 	jne	1305 <debuginfo_eip+0xbe6>
e010587d:	80 39 a0 	cmpb	$-96, (%ecx)
e0105880:	8b 5e 40 	movl	64(%esi), %ebx
e0105883:	75 77 	jne	119 <debuginfo_eip+0x74c>
e0105885:	8b 46 30 	movl	48(%esi), %eax
e0105888:	8d 04 40 	leal	(%eax,%eax,2), %eax
e010588b:	8d 0c 85 88 df 10 e0 	leal	-535765112(,%eax,4), %ecx
e0105892:	89 d0 	movl	%edx, %eax
e0105894:	89 c2 	movl	%eax, %edx
e0105896:	0f b6 83 00 00 80 de 	movzbl	-562036736(%ebx), %eax
e010589d:	84 c0 	testb	%al, %al
e010589f:	75 27 	jne	39 <debuginfo_eip+0x718>
e01058a1:	8b 46 24 	movl	36(%esi), %eax
e01058a4:	ff 00 	incl	(%eax)
e01058a6:	8d 42 01 	leal	1(%edx), %eax
e01058a9:	3b 46 28 	cmpl	40(%esi), %eax
e01058ac:	7d 66 	jge	102 <debuginfo_eip+0x764>
e01058ae:	89 ca 	movl	%ecx, %edx
e01058b0:	c1 ea 03 	shrl	$3, %edx
e01058b3:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e01058ba:	84 d2 	testb	%dl, %dl
e01058bc:	75 21 	jne	33 <debuginfo_eip+0x72f>
e01058be:	80 39 a0 	cmpb	$-96, (%ecx)
e01058c1:	8d 49 0c 	leal	12(%ecx), %ecx
e01058c4:	74 ce 	je	-50 <debuginfo_eip+0x6e4>
e01058c6:	eb 34 	jmp	52 <debuginfo_eip+0x74c>
e01058c8:	8b 5e 24 	movl	36(%esi), %ebx
e01058cb:	88 dc 	movb	%bl, %ah
e01058cd:	8b 5e 40 	movl	64(%esi), %ebx
e01058d0:	80 e4 07 	andb	$7, %ah
e01058d3:	80 c4 03 	addb	$3, %ah
e01058d6:	38 c4 	cmpb	%al, %ah
e01058d8:	7c c7 	jl	-57 <debuginfo_eip+0x6f1>
e01058da:	e9 74 05 00 00 	jmp	1396 <debuginfo_eip+0xca3>
e01058df:	88 ce 	movb	%cl, %dh
e01058e1:	80 e6 07 	andb	$7, %dh
e01058e4:	38 d6 	cmpb	%dl, %dh
e01058e6:	7c d6 	jl	-42 <debuginfo_eip+0x70e>
e01058e8:	83 ec 0c 	subl	$12, %esp
e01058eb:	51 	pushl	%ecx
e01058ec:	e8 ff 2d 00 00 	calll	11775 <__asan_report_load1>
e01058f1:	83 c4 10 	addl	$16, %esp
e01058f4:	8b 56 2c 	movl	44(%esi), %edx
e01058f7:	e9 61 fa ff ff 	jmp	-1439 <debuginfo_eip+0x1ad>
e01058fc:	8b 4e 18 	movl	24(%esi), %ecx
e01058ff:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0105905:	84 c9 	testb	%cl, %cl
e0105907:	0f 85 c1 04 00 00 	jne	1217 <debuginfo_eip+0xc1e>
e010590d:	8b 4e 0c 	movl	12(%esi), %ecx
e0105910:	89 01 	movl	%eax, (%ecx)
e0105912:	eb 17 	jmp	23 <debuginfo_eip+0x77b>
e0105914:	8b 46 18 	movl	24(%esi), %eax
e0105917:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010591d:	84 c0 	testb	%al, %al
e010591f:	0f 85 e7 04 00 00 	jne	1255 <debuginfo_eip+0xc5c>
e0105925:	42 	incl	%edx
e0105926:	8b 46 0c 	movl	12(%esi), %eax
e0105929:	89 10 	movl	%edx, (%eax)
e010592b:	8b 56 2c 	movl	44(%esi), %edx
e010592e:	31 db 	xorl	%ebx, %ebx
e0105930:	e9 28 fa ff ff 	jmp	-1496 <debuginfo_eip+0x1ad>
e0105935:	8b 4d 0c 	movl	12(%ebp), %ecx
e0105938:	80 e1 07 	andb	$7, %cl
e010593b:	80 c1 03 	addb	$3, %cl
e010593e:	38 c1 	cmpb	%al, %cl
e0105940:	8b 4d 0c 	movl	12(%ebp), %ecx
e0105943:	0f 8c 2b f9 ff ff 	jl	-1749 <debuginfo_eip+0xc4>
e0105949:	83 ec 0c 	subl	$12, %esp
e010594c:	51 	pushl	%ecx
e010594d:	e8 5e 2e 00 00 	calll	11870 <__asan_report_store4>
e0105952:	83 c4 10 	addl	$16, %esp
e0105955:	89 d9 	movl	%ebx, %ecx
e0105957:	80 e1 07 	andb	$7, %cl
e010595a:	80 c1 03 	addb	$3, %cl
e010595d:	38 c1 	cmpb	%al, %cl
e010595f:	8b 4d 0c 	movl	12(%ebp), %ecx
e0105962:	0f 8c 2b f9 ff ff 	jl	-1749 <debuginfo_eip+0xe3>
e0105968:	83 ec 0c 	subl	$12, %esp
e010596b:	53 	pushl	%ebx
e010596c:	e8 3f 2e 00 00 	calll	11839 <__asan_report_store4>
e0105971:	83 c4 10 	addl	$16, %esp
e0105974:	8b 4e 10 	movl	16(%esi), %ecx
e0105977:	80 e1 07 	andb	$7, %cl
e010597a:	80 c1 03 	addb	$3, %cl
e010597d:	38 c1 	cmpb	%al, %cl
e010597f:	8b 4d 0c 	movl	12(%ebp), %ecx
e0105982:	0f 8c 2c f9 ff ff 	jl	-1748 <debuginfo_eip+0x104>
e0105988:	83 ec 0c 	subl	$12, %esp
e010598b:	ff 76 10 	pushl	16(%esi)
e010598e:	e8 1d 2e 00 00 	calll	11805 <__asan_report_store4>
e0105993:	83 c4 10 	addl	$16, %esp
e0105996:	8b 4e 38 	movl	56(%esi), %ecx
e0105999:	80 e1 07 	andb	$7, %cl
e010599c:	80 c1 03 	addb	$3, %cl
e010599f:	38 c1 	cmpb	%al, %cl
e01059a1:	8b 4d 0c 	movl	12(%ebp), %ecx
e01059a4:	0f 8c 2e f9 ff ff 	jl	-1746 <debuginfo_eip+0x128>
e01059aa:	83 ec 0c 	subl	$12, %esp
e01059ad:	ff 76 38 	pushl	56(%esi)
e01059b0:	e8 fb 2d 00 00 	calll	11771 <__asan_report_store4>
e01059b5:	83 c4 10 	addl	$16, %esp
e01059b8:	8b 4e 0c 	movl	12(%esi), %ecx
e01059bb:	80 e1 07 	andb	$7, %cl
e01059be:	80 c1 03 	addb	$3, %cl
e01059c1:	38 c1 	cmpb	%al, %cl
e01059c3:	8b 4d 0c 	movl	12(%ebp), %ecx
e01059c6:	0f 8c 2d f9 ff ff 	jl	-1747 <debuginfo_eip+0x149>
e01059cc:	83 ec 0c 	subl	$12, %esp
e01059cf:	ff 76 0c 	pushl	12(%esi)
e01059d2:	e8 d9 2d 00 00 	calll	11737 <__asan_report_store4>
e01059d7:	83 c4 10 	addl	$16, %esp
e01059da:	89 4e 24 	movl	%ecx, 36(%esi)
e01059dd:	8b 4e 24 	movl	36(%esi), %ecx
e01059e0:	80 e1 07 	andb	$7, %cl
e01059e3:	80 c1 03 	addb	$3, %cl
e01059e6:	38 c1 	cmpb	%al, %cl
e01059e8:	8b 4e 24 	movl	36(%esi), %ecx
e01059eb:	0f 8c 27 f9 ff ff 	jl	-1753 <debuginfo_eip+0x168>
e01059f1:	83 ec 0c 	subl	$12, %esp
e01059f4:	51 	pushl	%ecx
e01059f5:	e8 b6 2d 00 00 	calll	11702 <__asan_report_store4>
e01059fa:	83 c4 10 	addl	$16, %esp
e01059fd:	89 4e 24 	movl	%ecx, 36(%esi)
e0105a00:	b9 6c df 10 e0 	movl	$3759202156, %ecx
e0105a05:	80 e1 07 	andb	$7, %cl
e0105a08:	38 c1 	cmpb	%al, %cl
e0105a0a:	8b 4e 24 	movl	36(%esi), %ecx
e0105a0d:	0f 8c 3c f9 ff ff 	jl	-1732 <debuginfo_eip+0x19f>
e0105a13:	83 ec 0c 	subl	$12, %esp
e0105a16:	68 6c df 10 e0 	pushl	$3759202156
e0105a1b:	e8 d0 2c 00 00 	calll	11472 <__asan_report_load1>
e0105a20:	83 c4 10 	addl	$16, %esp
e0105a23:	8b 4e 14 	movl	20(%esi), %ecx
e0105a26:	80 e1 07 	andb	$7, %cl
e0105a29:	80 c1 03 	addb	$3, %cl
e0105a2c:	38 c1 	cmpb	%al, %cl
e0105a2e:	8b 4e 20 	movl	32(%esi), %ecx
e0105a31:	0f 8c b8 f9 ff ff 	jl	-1608 <debuginfo_eip+0x23f>
e0105a37:	83 ec 0c 	subl	$12, %esp
e0105a3a:	ff 76 14 	pushl	20(%esi)
e0105a3d:	e8 6e 2d 00 00 	calll	11630 <__asan_report_store4>
e0105a42:	83 c4 10 	addl	$16, %esp
e0105a45:	89 d9 	movl	%ebx, %ecx
e0105a47:	80 e1 07 	andb	$7, %cl
e0105a4a:	80 c1 03 	addb	$3, %cl
e0105a4d:	38 c1 	cmpb	%al, %cl
e0105a4f:	0f 8c bf f9 ff ff 	jl	-1601 <debuginfo_eip+0x264>
e0105a55:	83 ec 0c 	subl	$12, %esp
e0105a58:	53 	pushl	%ebx
e0105a59:	e8 52 2d 00 00 	calll	11602 <__asan_report_store4>
e0105a5e:	83 c4 10 	addl	$16, %esp
e0105a61:	8b 4e 14 	movl	20(%esi), %ecx
e0105a64:	80 e1 07 	andb	$7, %cl
e0105a67:	80 c1 03 	addb	$3, %cl
e0105a6a:	38 c1 	cmpb	%al, %cl
e0105a6c:	0f 8c eb f9 ff ff 	jl	-1557 <debuginfo_eip+0x2ad>
e0105a72:	83 ec 0c 	subl	$12, %esp
e0105a75:	ff 76 14 	pushl	20(%esi)
e0105a78:	e8 13 2d 00 00 	calll	11539 <__asan_report_load4>
e0105a7d:	83 c4 10 	addl	$16, %esp
e0105a80:	89 d9 	movl	%ebx, %ecx
e0105a82:	80 e1 07 	andb	$7, %cl
e0105a85:	80 c1 03 	addb	$3, %cl
e0105a88:	38 c1 	cmpb	%al, %cl
e0105a8a:	8b 4e 20 	movl	32(%esi), %ecx
e0105a8d:	0f 8c f6 f9 ff ff 	jl	-1546 <debuginfo_eip+0x2d9>
e0105a93:	83 ec 0c 	subl	$12, %esp
e0105a96:	53 	pushl	%ebx
e0105a97:	e8 14 2d 00 00 	calll	11540 <__asan_report_store4>
e0105a9c:	83 c4 10 	addl	$16, %esp
e0105a9f:	8b 4e 34 	movl	52(%esi), %ecx
e0105aa2:	80 e1 07 	andb	$7, %cl
e0105aa5:	80 c1 03 	addb	$3, %cl
e0105aa8:	38 c1 	cmpb	%al, %cl
e0105aaa:	8b 4e 20 	movl	32(%esi), %ecx
e0105aad:	0f 8c f2 f9 ff ff 	jl	-1550 <debuginfo_eip+0x2f5>
e0105ab3:	83 ec 0c 	subl	$12, %esp
e0105ab6:	ff 76 34 	pushl	52(%esi)
e0105ab9:	e8 d2 2c 00 00 	calll	11474 <__asan_report_load4>
e0105abe:	83 c4 10 	addl	$16, %esp
e0105ac1:	8b 56 1c 	movl	28(%esi), %edx
e0105ac4:	80 e2 07 	andb	$7, %dl
e0105ac7:	80 c2 03 	addb	$3, %dl
e0105aca:	38 ca 	cmpb	%cl, %dl
e0105acc:	8b 56 1c 	movl	28(%esi), %edx
e0105acf:	0f 8c f3 f9 ff ff 	jl	-1549 <debuginfo_eip+0x318>
e0105ad5:	83 ec 0c 	subl	$12, %esp
e0105ad8:	52 	pushl	%edx
e0105ad9:	e8 d2 2c 00 00 	calll	11474 <__asan_report_store4>
e0105ade:	83 c4 10 	addl	$16, %esp
e0105ae1:	89 d9 	movl	%ebx, %ecx
e0105ae3:	80 e1 07 	andb	$7, %cl
e0105ae6:	80 c1 03 	addb	$3, %cl
e0105ae9:	38 c1 	cmpb	%al, %cl
e0105aeb:	0f 8c ff f9 ff ff 	jl	-1537 <debuginfo_eip+0x340>
e0105af1:	83 ec 0c 	subl	$12, %esp
e0105af4:	53 	pushl	%ebx
e0105af5:	e8 96 2c 00 00 	calll	11414 <__asan_report_load4>
e0105afa:	83 c4 10 	addl	$16, %esp
e0105afd:	8b 4e 1c 	movl	28(%esi), %ecx
e0105b00:	80 e1 07 	andb	$7, %cl
e0105b03:	80 c1 03 	addb	$3, %cl
e0105b06:	38 c1 	cmpb	%al, %cl
e0105b08:	8b 4e 20 	movl	32(%esi), %ecx
e0105b0b:	0f 8c f5 f9 ff ff 	jl	-1547 <debuginfo_eip+0x356>
e0105b11:	83 ec 0c 	subl	$12, %esp
e0105b14:	ff 76 1c 	pushl	28(%esi)
e0105b17:	e8 74 2c 00 00 	calll	11380 <__asan_report_load4>
e0105b1c:	83 c4 10 	addl	$16, %esp
e0105b1f:	89 da 	movl	%ebx, %edx
e0105b21:	80 e2 07 	andb	$7, %dl
e0105b24:	80 c2 03 	addb	$3, %dl
e0105b27:	38 ca 	cmpb	%cl, %dl
e0105b29:	8b 56 10 	movl	16(%esi), %edx
e0105b2c:	0f 8c ae fa ff ff 	jl	-1362 <debuginfo_eip+0x430>
e0105b32:	83 ec 0c 	subl	$12, %esp
e0105b35:	53 	pushl	%ebx
e0105b36:	e8 75 2c 00 00 	calll	11381 <__asan_report_store4>
e0105b3b:	83 c4 10 	addl	$16, %esp
e0105b3e:	89 d9 	movl	%ebx, %ecx
e0105b40:	80 e1 07 	andb	$7, %cl
e0105b43:	80 c1 03 	addb	$3, %cl
e0105b46:	38 c1 	cmpb	%al, %cl
e0105b48:	0f 8c ad fa ff ff 	jl	-1363 <debuginfo_eip+0x44b>
e0105b4e:	83 ec 0c 	subl	$12, %esp
e0105b51:	53 	pushl	%ebx
e0105b52:	e8 39 2c 00 00 	calll	11321 <__asan_report_load4>
e0105b57:	83 c4 10 	addl	$16, %esp
e0105b5a:	89 da 	movl	%ebx, %edx
e0105b5c:	80 e2 07 	andb	$7, %dl
e0105b5f:	80 c2 03 	addb	$3, %dl
e0105b62:	38 ca 	cmpb	%cl, %dl
e0105b64:	8b 56 10 	movl	16(%esi), %edx
e0105b67:	0f 8c ac fa ff ff 	jl	-1364 <debuginfo_eip+0x469>
e0105b6d:	83 ec 0c 	subl	$12, %esp
e0105b70:	53 	pushl	%ebx
e0105b71:	e8 3a 2c 00 00 	calll	11322 <__asan_report_store4>
e0105b76:	83 c4 10 	addl	$16, %esp
e0105b79:	89 d1 	movl	%edx, %ecx
e0105b7b:	80 e1 07 	andb	$7, %cl
e0105b7e:	80 c1 03 	addb	$3, %cl
e0105b81:	38 c1 	cmpb	%al, %cl
e0105b83:	0f 8c a6 fa ff ff 	jl	-1370 <debuginfo_eip+0x47f>
e0105b89:	83 ec 0c 	subl	$12, %esp
e0105b8c:	52 	pushl	%edx
e0105b8d:	e8 fe 2b 00 00 	calll	11262 <__asan_report_load4>
e0105b92:	83 c4 10 	addl	$16, %esp
e0105b95:	8b 56 10 	movl	16(%esi), %edx
e0105b98:	80 e2 07 	andb	$7, %dl
e0105b9b:	80 c2 03 	addb	$3, %dl
e0105b9e:	38 ca 	cmpb	%cl, %dl
e0105ba0:	0f 8c a6 fa ff ff 	jl	-1370 <debuginfo_eip+0x49c>
e0105ba6:	83 ec 0c 	subl	$12, %esp
e0105ba9:	ff 76 10 	pushl	16(%esi)
e0105bac:	e8 df 2b 00 00 	calll	11231 <__asan_report_load4>
e0105bb1:	83 c4 10 	addl	$16, %esp
e0105bb4:	8b 56 38 	movl	56(%esi), %edx
e0105bb7:	80 e2 07 	andb	$7, %dl
e0105bba:	80 c2 03 	addb	$3, %dl
e0105bbd:	38 ca 	cmpb	%cl, %dl
e0105bbf:	0f 8c 9d fa ff ff 	jl	-1379 <debuginfo_eip+0x4b2>
e0105bc5:	83 ec 0c 	subl	$12, %esp
e0105bc8:	ff 76 38 	pushl	56(%esi)
e0105bcb:	e8 e0 2b 00 00 	calll	11232 <__asan_report_store4>
e0105bd0:	83 c4 10 	addl	$16, %esp
e0105bd3:	89 d9 	movl	%ebx, %ecx
e0105bd5:	80 e1 07 	andb	$7, %cl
e0105bd8:	80 c1 03 	addb	$3, %cl
e0105bdb:	38 c1 	cmpb	%al, %cl
e0105bdd:	0f 8c ad fa ff ff 	jl	-1363 <debuginfo_eip+0x4e0>
e0105be3:	83 ec 0c 	subl	$12, %esp
e0105be6:	53 	pushl	%ebx
e0105be7:	e8 a4 2b 00 00 	calll	11172 <__asan_report_load4>
e0105bec:	83 c4 10 	addl	$16, %esp
e0105bef:	8b 56 0c 	movl	12(%esi), %edx
e0105bf2:	80 e2 07 	andb	$7, %dl
e0105bf5:	80 c2 03 	addb	$3, %dl
e0105bf8:	38 ca 	cmpb	%cl, %dl
e0105bfa:	8b 56 2c 	movl	44(%esi), %edx
e0105bfd:	0f 8c a8 fa ff ff 	jl	-1368 <debuginfo_eip+0x4fb>
e0105c03:	83 ec 0c 	subl	$12, %esp
e0105c06:	ff 76 0c 	pushl	12(%esi)
e0105c09:	e8 82 2b 00 00 	calll	11138 <__asan_report_load4>
e0105c0e:	83 c4 10 	addl	$16, %esp
e0105c11:	8b 4e 0c 	movl	12(%esi), %ecx
e0105c14:	80 e1 07 	andb	$7, %cl
e0105c17:	80 c1 03 	addb	$3, %cl
e0105c1a:	38 c1 	cmpb	%al, %cl
e0105c1c:	8b 4e 20 	movl	32(%esi), %ecx
e0105c1f:	0f 8c 01 f9 ff ff 	jl	-1791 <debuginfo_eip+0x376>
e0105c25:	83 ec 0c 	subl	$12, %esp
e0105c28:	ff 76 0c 	pushl	12(%esi)
e0105c2b:	e8 80 2b 00 00 	calll	11136 <__asan_report_store4>
e0105c30:	83 c4 10 	addl	$16, %esp
e0105c33:	88 ce 	movb	%cl, %dh
e0105c35:	80 e6 07 	andb	$7, %dh
e0105c38:	80 c6 03 	addb	$3, %dh
e0105c3b:	38 d6 	cmpb	%dl, %dh
e0105c3d:	0f 8c 16 f9 ff ff 	jl	-1770 <debuginfo_eip+0x3a9>
e0105c43:	83 ec 0c 	subl	$12, %esp
e0105c46:	51 	pushl	%ecx
e0105c47:	e8 44 2b 00 00 	calll	11076 <__asan_report_load4>
e0105c4c:	83 c4 10 	addl	$16, %esp
e0105c4f:	89 c2 	movl	%eax, %edx
e0105c51:	80 e2 07 	andb	$7, %dl
e0105c54:	80 c2 03 	addb	$3, %dl
e0105c57:	38 ca 	cmpb	%cl, %dl
e0105c59:	0f 8c 42 f9 ff ff 	jl	-1726 <debuginfo_eip+0x3f1>
e0105c5f:	83 ec 0c 	subl	$12, %esp
e0105c62:	50 	pushl	%eax
e0105c63:	e8 28 2b 00 00 	calll	11048 <__asan_report_load4>
e0105c68:	83 c4 10 	addl	$16, %esp
e0105c6b:	8b 56 0c 	movl	12(%esi), %edx
e0105c6e:	80 e2 07 	andb	$7, %dl
e0105c71:	80 c2 03 	addb	$3, %dl
e0105c74:	38 ca 	cmpb	%cl, %dl
e0105c76:	8b 56 30 	movl	48(%esi), %edx
e0105c79:	0f 8c 36 f9 ff ff 	jl	-1738 <debuginfo_eip+0x405>
e0105c7f:	83 ec 0c 	subl	$12, %esp
e0105c82:	ff 76 0c 	pushl	12(%esi)
e0105c85:	e8 26 2b 00 00 	calll	11046 <__asan_report_store4>
e0105c8a:	83 c4 10 	addl	$16, %esp
e0105c8d:	89 c2 	movl	%eax, %edx
e0105c8f:	80 e2 07 	andb	$7, %dl
e0105c92:	fe c2 	incb	%dl
e0105c94:	38 ca 	cmpb	%cl, %dl
e0105c96:	0f 8c 39 fa ff ff 	jl	-1479 <debuginfo_eip+0x525>
e0105c9c:	83 ec 0c 	subl	$12, %esp
e0105c9f:	50 	pushl	%eax
e0105ca0:	e8 ab 2a 00 00 	calll	10923 <__asan_report_load2>
e0105ca5:	83 c4 10 	addl	$16, %esp
e0105ca8:	89 da 	movl	%ebx, %edx
e0105caa:	80 e2 07 	andb	$7, %dl
e0105cad:	80 c2 03 	addb	$3, %dl
e0105cb0:	38 ca 	cmpb	%cl, %dl
e0105cb2:	0f 8c 31 fa ff ff 	jl	-1487 <debuginfo_eip+0x539>
e0105cb8:	83 ec 0c 	subl	$12, %esp
e0105cbb:	53 	pushl	%ebx
e0105cbc:	e8 ef 2a 00 00 	calll	10991 <__asan_report_store4>
e0105cc1:	83 c4 10 	addl	$16, %esp
e0105cc4:	8b 4e 0c 	movl	12(%esi), %ecx
e0105cc7:	80 e1 07 	andb	$7, %cl
e0105cca:	80 c1 03 	addb	$3, %cl
e0105ccd:	38 c1 	cmpb	%al, %cl
e0105ccf:	0f 8c 2a fa ff ff 	jl	-1494 <debuginfo_eip+0x54f>
e0105cd5:	83 ec 0c 	subl	$12, %esp
e0105cd8:	ff 76 0c 	pushl	12(%esi)
e0105cdb:	e8 b0 2a 00 00 	calll	10928 <__asan_report_load4>
e0105ce0:	83 c4 10 	addl	$16, %esp
e0105ce3:	8b 56 10 	movl	16(%esi), %edx
e0105ce6:	88 d6 	movb	%dl, %dh
e0105ce8:	80 e6 07 	andb	$7, %dh
e0105ceb:	80 c6 03 	addb	$3, %dh
e0105cee:	38 de 	cmpb	%bl, %dh
e0105cf0:	0f 8c 86 f8 ff ff 	jl	-1914 <debuginfo_eip+0x3cc>
e0105cf6:	83 ec 0c 	subl	$12, %esp
e0105cf9:	ff 76 10 	pushl	16(%esi)
e0105cfc:	e8 af 2a 00 00 	calll	10927 <__asan_report_store4>
e0105d01:	83 c4 10 	addl	$16, %esp
e0105d04:	89 d9 	movl	%ebx, %ecx
e0105d06:	80 e1 07 	andb	$7, %cl
e0105d09:	80 c1 03 	addb	$3, %cl
e0105d0c:	38 c1 	cmpb	%al, %cl
e0105d0e:	0f 8c 0a fa ff ff 	jl	-1526 <debuginfo_eip+0x56e>
e0105d14:	83 ec 0c 	subl	$12, %esp
e0105d17:	53 	pushl	%ebx
e0105d18:	e8 73 2a 00 00 	calll	10867 <__asan_report_load4>
e0105d1d:	83 c4 10 	addl	$16, %esp
e0105d20:	8b 4e 0c 	movl	12(%esi), %ecx
e0105d23:	80 e1 07 	andb	$7, %cl
e0105d26:	80 c1 03 	addb	$3, %cl
e0105d29:	38 c1 	cmpb	%al, %cl
e0105d2b:	0f 8c 0a fb ff ff 	jl	-1270 <debuginfo_eip+0x68b>
e0105d31:	83 ec 0c 	subl	$12, %esp
e0105d34:	ff 76 0c 	pushl	12(%esi)
e0105d37:	e8 74 2a 00 00 	calll	10868 <__asan_report_store4>
e0105d3c:	83 c4 10 	addl	$16, %esp
e0105d3f:	88 de 	movb	%bl, %dh
e0105d41:	80 e6 07 	andb	$7, %dh
e0105d44:	80 c6 03 	addb	$3, %dh
e0105d47:	38 d6 	cmpb	%dl, %dh
e0105d49:	0f 8c 6f fa ff ff 	jl	-1425 <debuginfo_eip+0x60e>
e0105d4f:	83 ec 0c 	subl	$12, %esp
e0105d52:	53 	pushl	%ebx
e0105d53:	e8 58 2a 00 00 	calll	10840 <__asan_report_store4>
e0105d58:	83 c4 10 	addl	$16, %esp
e0105d5b:	89 c2 	movl	%eax, %edx
e0105d5d:	80 e2 07 	andb	$7, %dl
e0105d60:	80 c2 03 	addb	$3, %dl
e0105d63:	38 ca 	cmpb	%cl, %dl
e0105d65:	0f 8c 6b fa ff ff 	jl	-1429 <debuginfo_eip+0x626>
e0105d6b:	83 ec 0c 	subl	$12, %esp
e0105d6e:	50 	pushl	%eax
e0105d6f:	e8 1c 2a 00 00 	calll	10780 <__asan_report_load4>
e0105d74:	83 c4 10 	addl	$16, %esp
e0105d77:	8b 4e 0c 	movl	12(%esi), %ecx
e0105d7a:	80 e1 07 	andb	$7, %cl
e0105d7d:	80 c1 03 	addb	$3, %cl
e0105d80:	38 c1 	cmpb	%al, %cl
e0105d82:	0f 8c d3 fa ff ff 	jl	-1325 <debuginfo_eip+0x6ab>
e0105d88:	83 ec 0c 	subl	$12, %esp
e0105d8b:	ff 76 0c 	pushl	12(%esi)
e0105d8e:	e8 fd 29 00 00 	calll	10749 <__asan_report_load4>
e0105d93:	83 c4 10 	addl	$16, %esp
e0105d96:	88 cf 	movb	%cl, %bh
e0105d98:	80 e7 07 	andb	$7, %bh
e0105d9b:	38 df 	cmpb	%bl, %bh
e0105d9d:	0f 8c da fa ff ff 	jl	-1318 <debuginfo_eip+0x6cd>
e0105da3:	83 ec 0c 	subl	$12, %esp
e0105da6:	51 	pushl	%ecx
e0105da7:	e8 44 29 00 00 	calll	10564 <__asan_report_load1>
e0105dac:	83 c4 10 	addl	$16, %esp
e0105daf:	8b 56 0c 	movl	12(%esi), %edx
e0105db2:	80 e2 07 	andb	$7, %dl
e0105db5:	80 c2 03 	addb	$3, %dl
e0105db8:	38 c2 	cmpb	%al, %dl
e0105dba:	0f 8c 57 fa ff ff 	jl	-1449 <debuginfo_eip+0x667>
e0105dc0:	83 ec 0c 	subl	$12, %esp
e0105dc3:	ff 76 0c 	pushl	12(%esi)
e0105dc6:	e8 e5 29 00 00 	calll	10725 <__asan_report_store4>
e0105dcb:	83 c4 10 	addl	$16, %esp
e0105dce:	8b 56 0c 	movl	12(%esi), %edx
e0105dd1:	80 e2 07 	andb	$7, %dl
e0105dd4:	80 c2 03 	addb	$3, %dl
e0105dd7:	38 ca 	cmpb	%cl, %dl
e0105dd9:	0f 8c 2e fb ff ff 	jl	-1234 <debuginfo_eip+0x75d>
e0105ddf:	83 ec 0c 	subl	$12, %esp
e0105de2:	ff 76 0c 	pushl	12(%esi)
e0105de5:	e8 c6 29 00 00 	calll	10694 <__asan_report_store4>
e0105dea:	83 c4 10 	addl	$16, %esp
e0105ded:	8b 55 0c 	movl	12(%ebp), %edx
e0105df0:	80 e2 07 	andb	$7, %dl
e0105df3:	80 c2 03 	addb	$3, %dl
e0105df6:	38 ca 	cmpb	%cl, %dl
e0105df8:	0f 8c fb f9 ff ff 	jl	-1541 <debuginfo_eip+0x649>
e0105dfe:	83 ec 0c 	subl	$12, %esp
e0105e01:	ff 75 0c 	pushl	12(%ebp)
e0105e04:	e8 a7 29 00 00 	calll	10663 <__asan_report_store4>
e0105e09:	83 c4 10 	addl	$16, %esp
e0105e0c:	8b 4e 0c 	movl	12(%esi), %ecx
e0105e0f:	80 e1 07 	andb	$7, %cl
e0105e12:	80 c1 03 	addb	$3, %cl
e0105e15:	38 c1 	cmpb	%al, %cl
e0105e17:	0f 8c 08 fb ff ff 	jl	-1272 <debuginfo_eip+0x775>
e0105e1d:	83 ec 0c 	subl	$12, %esp
e0105e20:	ff 76 0c 	pushl	12(%esi)
e0105e23:	e8 88 29 00 00 	calll	10632 <__asan_report_store4>
e0105e28:	83 c4 10 	addl	$16, %esp
e0105e2b:	e8 70 27 00 00 	calll	10096 <__asan_handle_no_return>
e0105e30:	83 ec 04 	subl	$4, %esp
e0105e33:	68 e0 d6 10 e0 	pushl	$3759199968
e0105e38:	6a 7f 	pushl	$127
e0105e3a:	68 a0 d6 10 e0 	pushl	$3759199904
e0105e3f:	e8 ec a2 ff ff 	calll	-23828 <_panic>
e0105e44:	83 c4 04 	addl	$4, %esp
e0105e47:	83 ec 0c 	subl	$12, %esp
e0105e4a:	50 	pushl	%eax
e0105e4b:	e8 a0 28 00 00 	calll	10400 <__asan_report_load1>
e0105e50:	83 c4 10 	addl	$16, %esp
e0105e53:	83 ec 0c 	subl	$12, %esp
e0105e56:	ff 76 24 	pushl	36(%esi)
e0105e59:	e8 32 29 00 00 	calll	10546 <__asan_report_load4>
e0105e5e:	83 c4 10 	addl	$16, %esp
e0105e61:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0105e6b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0105e70:	55 	pushl	%ebp
e0105e71:	89 e5 	movl	%esp, %ebp
e0105e73:	53 	pushl	%ebx
e0105e74:	57 	pushl	%edi
e0105e75:	56 	pushl	%esi
e0105e76:	83 ec 2c 	subl	$44, %esp
e0105e79:	89 cb 	movl	%ecx, %ebx
e0105e7b:	89 cf 	movl	%ecx, %edi
e0105e7d:	c1 ef 03 	shrl	$3, %edi
e0105e80:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0105e86:	84 c0 	testb	%al, %al
e0105e88:	0f 85 57 02 00 00 	jne	599 <stab_binsearch+0x275>
e0105e8e:	8b 33 	movl	(%ebx), %esi
e0105e90:	89 d0 	movl	%edx, %eax
e0105e92:	c1 e8 03 	shrl	$3, %eax
e0105e95:	89 45 e8 	movl	%eax, -24(%ebp)
e0105e98:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105e9e:	84 c0 	testb	%al, %al
e0105ea0:	0f 85 57 02 00 00 	jne	599 <stab_binsearch+0x28d>
e0105ea6:	8b 02 	movl	(%edx), %eax
e0105ea8:	39 c6 	cmpl	%eax, %esi
e0105eaa:	89 55 f0 	movl	%edx, -16(%ebp)
e0105ead:	0f 8f fc 01 00 00 	jg	508 <stab_binsearch+0x23f>
e0105eb3:	89 7d e4 	movl	%edi, -28(%ebp)
e0105eb6:	89 c7 	movl	%eax, %edi
e0105eb8:	8b 45 0c 	movl	12(%ebp), %eax
e0105ebb:	89 45 dc 	movl	%eax, -36(%ebp)
e0105ebe:	c7 45 ec 00 00 00 00 	movl	$0, -20(%ebp)
e0105ec5:	89 5d d8 	movl	%ebx, -40(%ebp)
e0105ec8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0105ed0:	89 7d e0 	movl	%edi, -32(%ebp)
e0105ed3:	8d 04 37 	leal	(%edi,%esi), %eax
e0105ed6:	89 c2 	movl	%eax, %edx
e0105ed8:	c1 ea 1f 	shrl	$31, %edx
e0105edb:	01 c2 	addl	%eax, %edx
e0105edd:	d1 fa 	sarl	%edx
e0105edf:	39 f2 	cmpl	%esi, %edx
e0105ee1:	7c 4d 	jl	77 <stab_binsearch+0xc0>
e0105ee3:	8d 04 52 	leal	(%edx,%edx,2), %eax
e0105ee6:	8d 0c 85 74 df 10 e0 	leal	-535765132(,%eax,4), %ecx
e0105eed:	89 d7 	movl	%edx, %edi
e0105eef:	90 	nop
e0105ef0:	8d 41 fc 	leal	-4(%ecx), %eax
e0105ef3:	89 c3 	movl	%eax, %ebx
e0105ef5:	c1 eb 03 	shrl	$3, %ebx
e0105ef8:	0f b6 9b 00 00 80 de 	movzbl	-562036736(%ebx), %ebx
e0105eff:	84 db 	testb	%bl, %bl
e0105f01:	75 14 	jne	20 <stab_binsearch+0xa7>
e0105f03:	0f b6 00 	movzbl	(%eax), %eax
e0105f06:	3b 45 08 	cmpl	8(%ebp), %eax
e0105f09:	74 45 	je	69 <stab_binsearch+0xe0>
e0105f0b:	83 c1 f4 	addl	$-12, %ecx
e0105f0e:	39 f7 	cmpl	%esi, %edi
e0105f10:	8d 7f ff 	leal	-1(%edi), %edi
e0105f13:	7f db 	jg	-37 <stab_binsearch+0x80>
e0105f15:	eb 19 	jmp	25 <stab_binsearch+0xc0>
e0105f17:	88 c7 	movb	%al, %bh
e0105f19:	80 e7 07 	andb	$7, %bh
e0105f1c:	38 df 	cmpb	%bl, %bh
e0105f1e:	7c e3 	jl	-29 <stab_binsearch+0x93>
e0105f20:	e9 64 02 00 00 	jmp	612 <stab_binsearch+0x319>
e0105f25:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0105f2f:	90 	nop
e0105f30:	42 	incl	%edx
e0105f31:	89 d6 	movl	%edx, %esi
e0105f33:	8b 5d d8 	movl	-40(%ebp), %ebx
e0105f36:	8b 55 f0 	movl	-16(%ebp), %edx
e0105f39:	8b 7d e0 	movl	-32(%ebp), %edi
e0105f3c:	39 fe 	cmpl	%edi, %esi
e0105f3e:	7e 90 	jle	-112 <stab_binsearch+0x60>
e0105f40:	e9 cf 00 00 00 	jmp	207 <stab_binsearch+0x1a4>
e0105f45:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0105f4f:	90 	nop
e0105f50:	89 c8 	movl	%ecx, %eax
e0105f52:	c1 e8 03 	shrl	$3, %eax
e0105f55:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105f5b:	84 c0 	testb	%al, %al
e0105f5d:	8b 5d d8 	movl	-40(%ebp), %ebx
e0105f60:	75 6b 	jne	107 <stab_binsearch+0x15d>
e0105f62:	8b 45 dc 	movl	-36(%ebp), %eax
e0105f65:	39 01 	cmpl	%eax, (%ecx)
e0105f67:	73 1b 	jae	27 <stab_binsearch+0x114>
e0105f69:	8b 45 e4 	movl	-28(%ebp), %eax
e0105f6c:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105f72:	84 c0 	testb	%al, %al
e0105f74:	75 68 	jne	104 <stab_binsearch+0x16e>
e0105f76:	89 3b 	movl	%edi, (%ebx)
e0105f78:	42 	incl	%edx
e0105f79:	c7 45 ec 01 00 00 00 	movl	$1, -20(%ebp)
e0105f80:	89 d6 	movl	%edx, %esi
e0105f82:	eb b2 	jmp	-78 <stab_binsearch+0xc6>
e0105f84:	76 24 	jbe	36 <stab_binsearch+0x13a>
e0105f86:	8b 45 e8 	movl	-24(%ebp), %eax
e0105f89:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105f8f:	84 c0 	testb	%al, %al
e0105f91:	8b 55 f0 	movl	-16(%ebp), %edx
e0105f94:	75 59 	jne	89 <stab_binsearch+0x17f>
e0105f96:	4f 	decl	%edi
e0105f97:	89 3a 	movl	%edi, (%edx)
e0105f99:	c7 45 ec 01 00 00 00 	movl	$1, -20(%ebp)
e0105fa0:	39 fe 	cmpl	%edi, %esi
e0105fa2:	0f 8e 28 ff ff ff 	jle	-216 <stab_binsearch+0x60>
e0105fa8:	eb 6a 	jmp	106 <stab_binsearch+0x1a4>
e0105faa:	8b 45 e4 	movl	-28(%ebp), %eax
e0105fad:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105fb3:	84 c0 	testb	%al, %al
e0105fb5:	8b 55 f0 	movl	-16(%ebp), %edx
e0105fb8:	75 46 	jne	70 <stab_binsearch+0x190>
e0105fba:	89 3b 	movl	%edi, (%ebx)
e0105fbc:	ff 45 dc 	incl	-36(%ebp)
e0105fbf:	c7 45 ec 01 00 00 00 	movl	$1, -20(%ebp)
e0105fc6:	89 fe 	movl	%edi, %esi
e0105fc8:	e9 6c ff ff ff 	jmp	-148 <stab_binsearch+0xc9>
e0105fcd:	88 cc 	movb	%cl, %ah
e0105fcf:	80 e4 07 	andb	$7, %ah
e0105fd2:	80 c4 03 	addb	$3, %ah
e0105fd5:	38 c4 	cmpb	%al, %ah
e0105fd7:	7c 89 	jl	-119 <stab_binsearch+0xf2>
e0105fd9:	e9 b3 01 00 00 	jmp	435 <stab_binsearch+0x321>
e0105fde:	89 d9 	movl	%ebx, %ecx
e0105fe0:	80 e1 07 	andb	$7, %cl
e0105fe3:	80 c1 03 	addb	$3, %cl
e0105fe6:	38 c1 	cmpb	%al, %cl
e0105fe8:	7c 8c 	jl	-116 <stab_binsearch+0x106>
e0105fea:	e9 aa 01 00 00 	jmp	426 <stab_binsearch+0x329>
e0105fef:	89 d1 	movl	%edx, %ecx
e0105ff1:	80 e1 07 	andb	$7, %cl
e0105ff4:	80 c1 03 	addb	$3, %cl
e0105ff7:	38 c1 	cmpb	%al, %cl
e0105ff9:	7c 9b 	jl	-101 <stab_binsearch+0x126>
e0105ffb:	e9 a1 01 00 00 	jmp	417 <stab_binsearch+0x331>
e0106000:	89 d9 	movl	%ebx, %ecx
e0106002:	80 e1 07 	andb	$7, %cl
e0106005:	80 c1 03 	addb	$3, %cl
e0106008:	38 c1 	cmpb	%al, %cl
e010600a:	7c ae 	jl	-82 <stab_binsearch+0x14a>
e010600c:	89 1c 24 	movl	%ebx, (%esp)
e010600f:	e8 9c 27 00 00 	calll	10140 <__asan_report_store4>
e0106014:	83 7d ec 00 	cmpl	$0, -20(%ebp)
e0106018:	8b 7d e4 	movl	-28(%ebp), %edi
e010601b:	0f 84 8e 00 00 00 	je	142 <stab_binsearch+0x23f>
e0106021:	8b 45 e8 	movl	-24(%ebp), %eax
e0106024:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010602a:	84 c0 	testb	%al, %al
e010602c:	0f 85 0f 01 00 00 	jne	271 <stab_binsearch+0x2d1>
e0106032:	8b 02 	movl	(%edx), %eax
e0106034:	8a 8f 00 00 80 de 	movb	-562036736(%edi), %cl
e010603a:	84 c9 	testb	%cl, %cl
e010603c:	0f 85 17 01 00 00 	jne	279 <stab_binsearch+0x2e9>
e0106042:	3b 03 	cmpl	(%ebx), %eax
e0106044:	0f 8e 83 00 00 00 	jle	131 <stab_binsearch+0x25d>
e010604a:	8d 0c 40 	leal	(%eax,%eax,2), %ecx
e010604d:	8d 0c 8d 70 df 10 e0 	leal	-535765136(,%ecx,4), %ecx
e0106054:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010605e:	66 90 	nop
e0106060:	89 ca 	movl	%ecx, %edx
e0106062:	c1 ea 03 	shrl	$3, %edx
e0106065:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e010606c:	84 d2 	testb	%dl, %dl
e010606e:	75 1d 	jne	29 <stab_binsearch+0x21d>
e0106070:	0f b6 11 	movzbl	(%ecx), %edx
e0106073:	3b 55 08 	cmpl	8(%ebp), %edx
e0106076:	74 55 	je	85 <stab_binsearch+0x25d>
e0106078:	0f b6 97 00 00 80 de 	movzbl	-562036736(%edi), %edx
e010607f:	84 d2 	testb	%dl, %dl
e0106081:	75 18 	jne	24 <stab_binsearch+0x22b>
e0106083:	48 	decl	%eax
e0106084:	83 c1 f4 	addl	$-12, %ecx
e0106087:	3b 03 	cmpl	(%ebx), %eax
e0106089:	7f d5 	jg	-43 <stab_binsearch+0x1f0>
e010608b:	eb 40 	jmp	64 <stab_binsearch+0x25d>
e010608d:	88 ce 	movb	%cl, %dh
e010608f:	80 e6 07 	andb	$7, %dh
e0106092:	38 d6 	cmpb	%dl, %dh
e0106094:	7c da 	jl	-38 <stab_binsearch+0x200>
e0106096:	e9 0e 01 00 00 	jmp	270 <stab_binsearch+0x339>
e010609b:	88 de 	movb	%bl, %dh
e010609d:	80 e6 07 	andb	$7, %dh
e01060a0:	80 c6 03 	addb	$3, %dh
e01060a3:	38 d6 	cmpb	%dl, %dh
e01060a5:	7c dc 	jl	-36 <stab_binsearch+0x213>
e01060a7:	89 1c 24 	movl	%ebx, (%esp)
e01060aa:	e8 e1 26 00 00 	calll	9953 <__asan_report_load4>
e01060af:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e01060b5:	84 c0 	testb	%al, %al
e01060b7:	75 5c 	jne	92 <stab_binsearch+0x2a5>
e01060b9:	8b 03 	movl	(%ebx), %eax
e01060bb:	8b 4d e8 	movl	-24(%ebp), %ecx
e01060be:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01060c4:	84 c9 	testb	%cl, %cl
e01060c6:	75 61 	jne	97 <stab_binsearch+0x2b9>
e01060c8:	48 	decl	%eax
e01060c9:	89 02 	movl	%eax, (%edx)
e01060cb:	eb 10 	jmp	16 <stab_binsearch+0x26d>
e01060cd:	8a 8f 00 00 80 de 	movb	-562036736(%edi), %cl
e01060d3:	84 c9 	testb	%cl, %cl
e01060d5:	0f 85 96 00 00 00 	jne	150 <stab_binsearch+0x301>
e01060db:	89 03 	movl	%eax, (%ebx)
e01060dd:	83 c4 2c 	addl	$44, %esp
e01060e0:	5e 	popl	%esi
e01060e1:	5f 	popl	%edi
e01060e2:	5b 	popl	%ebx
e01060e3:	5d 	popl	%ebp
e01060e4:	c3 	retl
e01060e5:	89 d9 	movl	%ebx, %ecx
e01060e7:	80 e1 07 	andb	$7, %cl
e01060ea:	80 c1 03 	addb	$3, %cl
e01060ed:	38 c1 	cmpb	%al, %cl
e01060ef:	0f 8c 99 fd ff ff 	jl	-615 <stab_binsearch+0x1e>
e01060f5:	89 1c 24 	movl	%ebx, (%esp)
e01060f8:	e8 93 26 00 00 	calll	9875 <__asan_report_load4>
e01060fd:	89 d1 	movl	%edx, %ecx
e01060ff:	80 e1 07 	andb	$7, %cl
e0106102:	80 c1 03 	addb	$3, %cl
e0106105:	38 c1 	cmpb	%al, %cl
e0106107:	0f 8c 99 fd ff ff 	jl	-615 <stab_binsearch+0x36>
e010610d:	89 14 24 	movl	%edx, (%esp)
e0106110:	e8 7b 26 00 00 	calll	9851 <__asan_report_load4>
e0106115:	89 d9 	movl	%ebx, %ecx
e0106117:	80 e1 07 	andb	$7, %cl
e010611a:	80 c1 03 	addb	$3, %cl
e010611d:	38 c1 	cmpb	%al, %cl
e010611f:	7c 98 	jl	-104 <stab_binsearch+0x249>
e0106121:	89 1c 24 	movl	%ebx, (%esp)
e0106124:	e8 67 26 00 00 	calll	9831 <__asan_report_load4>
e0106129:	8b 55 f0 	movl	-16(%ebp), %edx
e010612c:	80 e2 07 	andb	$7, %dl
e010612f:	80 c2 03 	addb	$3, %dl
e0106132:	38 ca 	cmpb	%cl, %dl
e0106134:	8b 55 f0 	movl	-16(%ebp), %edx
e0106137:	7c 8f 	jl	-113 <stab_binsearch+0x258>
e0106139:	89 14 24 	movl	%edx, (%esp)
e010613c:	e8 6f 26 00 00 	calll	9839 <__asan_report_store4>
e0106141:	89 d1 	movl	%edx, %ecx
e0106143:	80 e1 07 	andb	$7, %cl
e0106146:	80 c1 03 	addb	$3, %cl
e0106149:	38 c1 	cmpb	%al, %cl
e010614b:	0f 8c e1 fe ff ff 	jl	-287 <stab_binsearch+0x1c2>
e0106151:	89 14 24 	movl	%edx, (%esp)
e0106154:	e8 37 26 00 00 	calll	9783 <__asan_report_load4>
e0106159:	89 da 	movl	%ebx, %edx
e010615b:	80 e2 07 	andb	$7, %dl
e010615e:	80 c2 03 	addb	$3, %dl
e0106161:	38 ca 	cmpb	%cl, %dl
e0106163:	0f 8c d9 fe ff ff 	jl	-295 <stab_binsearch+0x1d2>
e0106169:	89 1c 24 	movl	%ebx, (%esp)
e010616c:	e8 1f 26 00 00 	calll	9759 <__asan_report_load4>
e0106171:	89 da 	movl	%ebx, %edx
e0106173:	80 e2 07 	andb	$7, %dl
e0106176:	80 c2 03 	addb	$3, %dl
e0106179:	38 ca 	cmpb	%cl, %dl
e010617b:	0f 8c 5a ff ff ff 	jl	-166 <stab_binsearch+0x26b>
e0106181:	89 1c 24 	movl	%ebx, (%esp)
e0106184:	e8 27 26 00 00 	calll	9767 <__asan_report_store4>
e0106189:	89 04 24 	movl	%eax, (%esp)
e010618c:	e8 5f 25 00 00 	calll	9567 <__asan_report_load1>
e0106191:	89 0c 24 	movl	%ecx, (%esp)
e0106194:	e8 f7 25 00 00 	calll	9719 <__asan_report_load4>
e0106199:	89 1c 24 	movl	%ebx, (%esp)
e010619c:	e8 0f 26 00 00 	calll	9743 <__asan_report_store4>
e01061a1:	89 14 24 	movl	%edx, (%esp)
e01061a4:	e8 07 26 00 00 	calll	9735 <__asan_report_store4>
e01061a9:	89 0c 24 	movl	%ecx, (%esp)
e01061ac:	e8 3f 25 00 00 	calll	9535 <__asan_report_load1>
e01061b1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01061bb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e01061c0:	55 	pushl	%ebp
e01061c1:	89 e5 	movl	%esp, %ebp
e01061c3:	53 	pushl	%ebx
e01061c4:	57 	pushl	%edi
e01061c5:	56 	pushl	%esi
e01061c6:	83 ec 0c 	subl	$12, %esp
e01061c9:	31 c0 	xorl	%eax, %eax
e01061cb:	bb 6c df 10 e0 	movl	$3759202156, %ebx
e01061d0:	81 fb 6c df 10 e0 	cmpl	$3759202156, %ebx
e01061d6:	0f 83 23 01 00 00 	jae	291 <find_function+0x13f>
e01061dc:	ba 6d df 10 e0 	movl	$3759202157, %edx
e01061e1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01061eb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e01061f0:	8d 43 04 	leal	4(%ebx), %eax
e01061f3:	89 c1 	movl	%eax, %ecx
e01061f5:	c1 e9 03 	shrl	$3, %ecx
e01061f8:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e01061ff:	84 c9 	testb	%cl, %cl
e0106201:	0f 85 94 00 00 00 	jne	148 <find_function+0xdb>
e0106207:	80 7b 04 24 	cmpb	$36, 4(%ebx)
e010620b:	75 7d 	jne	125 <find_function+0xca>
e010620d:	89 de 	movl	%ebx, %esi
e010620f:	c1 ee 03 	shrl	$3, %esi
e0106212:	0f b6 86 00 00 80 de 	movzbl	-562036736(%esi), %eax
e0106219:	84 c0 	testb	%al, %al
e010621b:	0f 85 8e 00 00 00 	jne	142 <find_function+0xef>
e0106221:	8b 03 	movl	(%ebx), %eax
e0106223:	01 d0 	addl	%edx, %eax
e0106225:	89 04 24 	movl	%eax, (%esp)
e0106228:	c7 44 24 04 3a 00 00 00 	movl	$58, 4(%esp)
e0106230:	e8 eb 17 00 00 	calll	6123 <strfind>
e0106235:	89 c7 	movl	%eax, %edi
e0106237:	0f b6 86 00 00 80 de 	movzbl	-562036736(%esi), %eax
e010623e:	84 c0 	testb	%al, %al
e0106240:	75 7f 	jne	127 <find_function+0x101>
e0106242:	b8 6d df 10 e0 	movl	$3759202157, %eax
e0106247:	29 c7 	subl	%eax, %edi
e0106249:	2b 3b 	subl	(%ebx), %edi
e010624b:	8b 45 08 	movl	8(%ebp), %eax
e010624e:	89 04 24 	movl	%eax, (%esp)
e0106251:	e8 4a 33 00 00 	calll	13130 <__wrap_strlen>
e0106256:	39 f8 	cmpl	%edi, %eax
e0106258:	ba 6d df 10 e0 	movl	$3759202157, %edx
e010625d:	75 2b 	jne	43 <find_function+0xca>
e010625f:	0f b6 86 00 00 80 de 	movzbl	-562036736(%esi), %eax
e0106266:	84 c0 	testb	%al, %al
e0106268:	75 69 	jne	105 <find_function+0x113>
e010626a:	8b 03 	movl	(%ebx), %eax
e010626c:	01 d0 	addl	%edx, %eax
e010626e:	89 7c 24 08 	movl	%edi, 8(%esp)
e0106272:	89 44 24 04 	movl	%eax, 4(%esp)
e0106276:	8b 45 08 	movl	8(%ebp), %eax
e0106279:	89 04 24 	movl	%eax, (%esp)
e010627c:	e8 5f 16 00 00 	calll	5727 <strncmp>
e0106281:	ba 6d df 10 e0 	movl	$3759202157, %edx
e0106286:	85 c0 	testl	%eax, %eax
e0106288:	74 61 	je	97 <find_function+0x12b>
e010628a:	83 c3 0c 	addl	$12, %ebx
e010628d:	81 fb 6c df 10 e0 	cmpl	$3759202156, %ebx
e0106293:	0f 82 57 ff ff ff 	jb	-169 <find_function+0x30>
e0106299:	eb 4c 	jmp	76 <find_function+0x127>
e010629b:	89 c2 	movl	%eax, %edx
e010629d:	80 e2 07 	andb	$7, %dl
e01062a0:	38 ca 	cmpb	%cl, %dl
e01062a2:	ba 6d df 10 e0 	movl	$3759202157, %edx
e01062a7:	0f 8c 5a ff ff ff 	jl	-166 <find_function+0x47>
e01062ad:	eb 6c 	jmp	108 <find_function+0x15b>
e01062af:	89 d9 	movl	%ebx, %ecx
e01062b1:	80 e1 07 	andb	$7, %cl
e01062b4:	80 c1 03 	addb	$3, %cl
e01062b7:	38 c1 	cmpb	%al, %cl
e01062b9:	0f 8c 62 ff ff ff 	jl	-158 <find_function+0x61>
e01062bf:	eb 62 	jmp	98 <find_function+0x163>
e01062c1:	89 d9 	movl	%ebx, %ecx
e01062c3:	80 e1 07 	andb	$7, %cl
e01062c6:	80 c1 03 	addb	$3, %cl
e01062c9:	38 c1 	cmpb	%al, %cl
e01062cb:	0f 8c 71 ff ff ff 	jl	-143 <find_function+0x82>
e01062d1:	eb 58 	jmp	88 <find_function+0x16b>
e01062d3:	89 d9 	movl	%ebx, %ecx
e01062d5:	80 e1 07 	andb	$7, %cl
e01062d8:	80 c1 03 	addb	$3, %cl
e01062db:	38 c1 	cmpb	%al, %cl
e01062dd:	7c 8b 	jl	-117 <find_function+0xaa>
e01062df:	89 1c 24 	movl	%ebx, (%esp)
e01062e2:	e8 a9 24 00 00 	calll	9385 <__asan_report_load4>
e01062e7:	31 c0 	xorl	%eax, %eax
e01062e9:	eb 14 	jmp	20 <find_function+0x13f>
e01062eb:	83 c3 08 	addl	$8, %ebx
e01062ee:	89 d8 	movl	%ebx, %eax
e01062f0:	c1 e8 03 	shrl	$3, %eax
e01062f3:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01062f9:	84 c0 	testb	%al, %al
e01062fb:	75 0a 	jne	10 <find_function+0x147>
e01062fd:	8b 03 	movl	(%ebx), %eax
e01062ff:	83 c4 0c 	addl	$12, %esp
e0106302:	5e 	popl	%esi
e0106303:	5f 	popl	%edi
e0106304:	5b 	popl	%ebx
e0106305:	5d 	popl	%ebp
e0106306:	c3 	retl
e0106307:	89 d9 	movl	%ebx, %ecx
e0106309:	80 e1 07 	andb	$7, %cl
e010630c:	80 c1 03 	addb	$3, %cl
e010630f:	38 c1 	cmpb	%al, %cl
e0106311:	7c ea 	jl	-22 <find_function+0x13d>
e0106313:	89 1c 24 	movl	%ebx, (%esp)
e0106316:	e8 75 24 00 00 	calll	9333 <__asan_report_load4>
e010631b:	89 04 24 	movl	%eax, (%esp)
e010631e:	e8 cd 23 00 00 	calll	9165 <__asan_report_load1>
e0106323:	89 1c 24 	movl	%ebx, (%esp)
e0106326:	e8 65 24 00 00 	calll	9317 <__asan_report_load4>
e010632b:	89 1c 24 	movl	%ebx, (%esp)
e010632e:	e8 5d 24 00 00 	calll	9309 <__asan_report_load4>
e0106333:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010633d:	0f 1f 00 	nopl	(%eax)
e0106340:	83 ec 0c 	subl	$12, %esp
e0106343:	e8 b8 29 00 00 	calll	10680 <__asan_init>
e0106348:	e8 d3 2a 00 00 	calll	10963 <__asan_version_mismatch_check_v8>
e010634d:	83 ec 08 	subl	$8, %esp
e0106350:	6a 03 	pushl	$3
e0106352:	68 a0 17 12 e0 	pushl	$3759282080
e0106357:	e8 d4 29 00 00 	calll	10708 <__asan_register_globals>
e010635c:	83 c4 1c 	addl	$28, %esp
e010635f:	c3 	retl
e0106360:	83 ec 14 	subl	$20, %esp
e0106363:	6a 03 	pushl	$3
e0106365:	68 a0 17 12 e0 	pushl	$3759282080
e010636a:	e8 11 2a 00 00 	calll	10769 <__asan_unregister_globals>
e010636f:	83 c4 1c 	addl	$28, %esp
e0106372:	c3 	retl
e0106373:	cc 	int3
e0106374:	cc 	int3
e0106375:	cc 	int3
e0106376:	cc 	int3
e0106377:	cc 	int3
e0106378:	cc 	int3
e0106379:	cc 	int3
e010637a:	cc 	int3
e010637b:	cc 	int3
e010637c:	cc 	int3
e010637d:	cc 	int3
e010637e:	cc 	int3
e010637f:	cc 	int3
e0106380:	55 	pushl	%ebp
e0106381:	89 e5 	movl	%esp, %ebp
e0106383:	53 	pushl	%ebx
e0106384:	57 	pushl	%edi
e0106385:	56 	pushl	%esi
e0106386:	83 e4 e0 	andl	$-32, %esp
e0106389:	83 ec 60 	subl	$96, %esp
e010638c:	89 e6 	movl	%esp, %esi
e010638e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0106395:	74 0f 	je	15 <vprintfmt+0x26>
e0106397:	83 ec 0c 	subl	$12, %esp
e010639a:	6a 20 	pushl	$32
e010639c:	e8 ef 25 00 00 	calll	9711 <__asan_stack_malloc_0>
e01063a1:	83 c4 10 	addl	$16, %esp
e01063a4:	eb 02 	jmp	2 <vprintfmt+0x28>
e01063a6:	31 c0 	xorl	%eax, %eax
e01063a8:	85 c0 	testl	%eax, %eax
e01063aa:	89 46 38 	movl	%eax, 56(%esi)
e01063ad:	75 0a 	jne	10 <vprintfmt+0x39>
e01063af:	89 e0 	movl	%esp, %eax
e01063b1:	83 c0 e0 	addl	$-32, %eax
e01063b4:	83 e0 e0 	andl	$-32, %eax
e01063b7:	89 c4 	movl	%eax, %esp
e01063b9:	89 46 3c 	movl	%eax, 60(%esi)
e01063bc:	8d 50 10 	leal	16(%eax), %edx
e01063bf:	c7 00 b3 8a b5 41 	movl	$1102416563, (%eax)
e01063c5:	c7 40 04 f9 a4 10 e0 	movl	$3759187193, 4(%eax)
e01063cc:	c7 40 08 80 63 10 e0 	movl	$3759170432, 8(%eax)
e01063d3:	89 46 34 	movl	%eax, 52(%esi)
e01063d6:	c1 e8 03 	shrl	$3, %eax
e01063d9:	89 46 30 	movl	%eax, 48(%esi)
e01063dc:	c7 80 00 00 80 de f1 f1 04 f3 	movl	$4077187569, -562036736(%eax)
e01063e6:	89 d0 	movl	%edx, %eax
e01063e8:	c1 e8 03 	shrl	$3, %eax
e01063eb:	89 46 28 	movl	%eax, 40(%esi)
e01063ee:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01063f4:	84 c0 	testb	%al, %al
e01063f6:	0f 85 aa 06 00 00 	jne	1706 <vprintfmt+0x726>
e01063fc:	8b 45 14 	movl	20(%ebp), %eax
e01063ff:	8b 4d 10 	movl	16(%ebp), %ecx
e0106402:	8b 7d 0c 	movl	12(%ebp), %edi
e0106405:	89 56 14 	movl	%edx, 20(%esi)
e0106408:	89 02 	movl	%eax, (%edx)
e010640a:	eb 0c 	jmp	12 <vprintfmt+0x98>
e010640c:	0f 1f 40 00 	nopl	(%eax)
e0106410:	ff 55 08 	calll	*8(%ebp)
e0106413:	89 d9 	movl	%ebx, %ecx
e0106415:	83 c4 10 	addl	$16, %esp
e0106418:	89 c8 	movl	%ecx, %eax
e010641a:	c1 e8 03 	shrl	$3, %eax
e010641d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106423:	84 c0 	testb	%al, %al
e0106425:	0f 85 46 05 00 00 	jne	1350 <vprintfmt+0x5f1>
e010642b:	0f b6 01 	movzbl	(%ecx), %eax
e010642e:	41 	incl	%ecx
e010642f:	83 f8 25 	cmpl	$37, %eax
e0106432:	74 1c 	je	28 <vprintfmt+0xd0>
e0106434:	84 c0 	testb	%al, %al
e0106436:	0f 84 26 06 00 00 	je	1574 <vprintfmt+0x6e2>
e010643c:	83 ec 08 	subl	$8, %esp
e010643f:	57 	pushl	%edi
e0106440:	50 	pushl	%eax
e0106441:	89 cb 	movl	%ecx, %ebx
e0106443:	eb cb 	jmp	-53 <vprintfmt+0x90>
e0106445:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010644f:	90 	nop
e0106450:	c6 46 24 20 	movb	$32, 36(%esi)
e0106454:	b8 ff ff ff ff 	movl	$4294967295, %eax
e0106459:	31 d2 	xorl	%edx, %edx
e010645b:	c7 46 1c ff ff ff ff 	movl	$4294967295, 28(%esi)
e0106462:	c7 46 20 00 00 00 00 	movl	$0, 32(%esi)
e0106469:	89 46 18 	movl	%eax, 24(%esi)
e010646c:	eb 18 	jmp	24 <vprintfmt+0x106>
e010646e:	66 90 	nop
e0106470:	8b 46 18 	movl	24(%esi), %eax
e0106473:	85 c0 	testl	%eax, %eax
e0106475:	0f 48 c7 	cmovsl	%edi, %eax
e0106478:	89 46 18 	movl	%eax, 24(%esi)
e010647b:	b8 ff ff ff ff 	movl	$4294967295, %eax
e0106480:	0f 48 f8 	cmovsl	%eax, %edi
e0106483:	89 7e 1c 	movl	%edi, 28(%esi)
e0106486:	8d 59 ff 	leal	-1(%ecx), %ebx
e0106489:	eb 0f 	jmp	15 <vprintfmt+0x11a>
e010648b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0106490:	8b 46 10 	movl	16(%esi), %eax
e0106493:	40 	incl	%eax
e0106494:	43 	incl	%ebx
e0106495:	88 4e 24 	movb	%cl, 36(%esi)
e0106498:	89 c1 	movl	%eax, %ecx
e010649a:	89 c8 	movl	%ecx, %eax
e010649c:	c1 e8 03 	shrl	$3, %eax
e010649f:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01064a6:	84 c0 	testb	%al, %al
e01064a8:	89 cf 	movl	%ecx, %edi
e01064aa:	89 4e 10 	movl	%ecx, 16(%esi)
e01064ad:	75 22 	jne	34 <vprintfmt+0x151>
e01064af:	0f b6 09 	movzbl	(%ecx), %ecx
e01064b2:	88 cd 	movb	%cl, %ch
e01064b4:	80 c5 dd 	addb	$-35, %ch
e01064b7:	80 fd 55 	cmpb	$85, %ch
e01064ba:	0f 87 3b 02 00 00 	ja	571 <vprintfmt+0x37b>
e01064c0:	0f b6 c1 	movzbl	%cl, %eax
e01064c3:	0f b6 fd 	movzbl	%ch, %edi
e01064c6:	ff 24 bd 60 d7 10 e0 	jmpl	*-535767200(,%edi,4)
e01064cd:	b1 30 	movb	$48, %cl
e01064cf:	eb bf 	jmp	-65 <vprintfmt+0x110>
e01064d1:	8b 4e 10 	movl	16(%esi), %ecx
e01064d4:	80 e1 07 	andb	$7, %cl
e01064d7:	38 c1 	cmpb	%al, %cl
e01064d9:	8b 4e 10 	movl	16(%esi), %ecx
e01064dc:	7c d1 	jl	-47 <vprintfmt+0x12f>
e01064de:	e9 df 05 00 00 	jmp	1503 <vprintfmt+0x742>
e01064e3:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01064ed:	0f 1f 00 	nopl	(%eax)
e01064f0:	8b 4e 10 	movl	16(%esi), %ecx
e01064f3:	41 	incl	%ecx
e01064f4:	31 ff 	xorl	%edi, %edi
e01064f6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0106500:	89 cb 	movl	%ecx, %ebx
e0106502:	c1 e9 03 	shrl	$3, %ecx
e0106505:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e010650c:	84 c9 	testb	%cl, %cl
e010650e:	75 19 	jne	25 <vprintfmt+0x1a9>
e0106510:	8d 0c bf 	leal	(%edi,%edi,4), %ecx
e0106513:	8d 7c 48 d0 	leal	-48(%eax,%ecx,2), %edi
e0106517:	0f be 03 	movsbl	(%ebx), %eax
e010651a:	89 c1 	movl	%eax, %ecx
e010651c:	80 c1 d0 	addb	$-48, %cl
e010651f:	43 	incl	%ebx
e0106520:	80 f9 09 	cmpb	$9, %cl
e0106523:	89 d9 	movl	%ebx, %ecx
e0106525:	76 d9 	jbe	-39 <vprintfmt+0x180>
e0106527:	eb 17 	jmp	23 <vprintfmt+0x1c0>
e0106529:	88 dd 	movb	%bl, %ch
e010652b:	80 e5 07 	andb	$7, %ch
e010652e:	38 cd 	cmpb	%cl, %ch
e0106530:	7c de 	jl	-34 <vprintfmt+0x190>
e0106532:	e9 97 05 00 00 	jmp	1431 <vprintfmt+0x74e>
e0106537:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0106540:	49 	decl	%ecx
e0106541:	e9 2a ff ff ff 	jmp	-214 <vprintfmt+0xf0>
e0106546:	42 	incl	%edx
e0106547:	8b 4e 10 	movl	16(%esi), %ecx
e010654a:	41 	incl	%ecx
e010654b:	8b 46 18 	movl	24(%esi), %eax
e010654e:	89 46 18 	movl	%eax, 24(%esi)
e0106551:	e9 30 ff ff ff 	jmp	-208 <vprintfmt+0x106>
e0106556:	8b 4e 18 	movl	24(%esi), %ecx
e0106559:	85 c9 	testl	%ecx, %ecx
e010655b:	b8 00 00 00 00 	movl	$0, %eax
e0106560:	0f 48 c8 	cmovsl	%eax, %ecx
e0106563:	89 4e 18 	movl	%ecx, 24(%esi)
e0106566:	8b 4e 10 	movl	16(%esi), %ecx
e0106569:	41 	incl	%ecx
e010656a:	e9 17 ff ff ff 	jmp	-233 <vprintfmt+0x106>
e010656f:	8b 46 28 	movl	40(%esi), %eax
e0106572:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106578:	84 c0 	testb	%al, %al
e010657a:	75 34 	jne	52 <vprintfmt+0x230>
e010657c:	8b 7e 14 	movl	20(%esi), %edi
e010657f:	8b 07 	movl	(%edi), %eax
e0106581:	8d 48 04 	leal	4(%eax), %ecx
e0106584:	89 0f 	movl	%ecx, (%edi)
e0106586:	89 c1 	movl	%eax, %ecx
e0106588:	c1 e9 03 	shrl	$3, %ecx
e010658b:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0106591:	84 c9 	testb	%cl, %cl
e0106593:	75 2d 	jne	45 <vprintfmt+0x242>
e0106595:	8b 4e 10 	movl	16(%esi), %ecx
e0106598:	41 	incl	%ecx
e0106599:	8b 38 	movl	(%eax), %edi
e010659b:	e9 d0 fe ff ff 	jmp	-304 <vprintfmt+0xf0>
e01065a0:	8b 4e 10 	movl	16(%esi), %ecx
e01065a3:	41 	incl	%ecx
e01065a4:	c7 46 20 01 00 00 00 	movl	$1, 32(%esi)
e01065ab:	e9 d6 fe ff ff 	jmp	-298 <vprintfmt+0x106>
e01065b0:	8b 4e 14 	movl	20(%esi), %ecx
e01065b3:	80 e1 07 	andb	$7, %cl
e01065b6:	80 c1 03 	addb	$3, %cl
e01065b9:	38 c1 	cmpb	%al, %cl
e01065bb:	7c bf 	jl	-65 <vprintfmt+0x1fc>
e01065bd:	e9 18 05 00 00 	jmp	1304 <vprintfmt+0x75a>
e01065c2:	88 c5 	movb	%al, %ch
e01065c4:	80 e5 07 	andb	$7, %ch
e01065c7:	80 c5 03 	addb	$3, %ch
e01065ca:	38 cd 	cmpb	%cl, %ch
e01065cc:	7c c7 	jl	-57 <vprintfmt+0x215>
e01065ce:	e9 15 05 00 00 	jmp	1301 <vprintfmt+0x768>
e01065d3:	8b 4e 14 	movl	20(%esi), %ecx
e01065d6:	e8 b5 07 00 00 	calll	1973 <getuint>
e01065db:	89 46 1c 	movl	%eax, 28(%esi)
e01065de:	89 56 20 	movl	%edx, 32(%esi)
e01065e1:	bf 08 00 00 00 	movl	$8, %edi
e01065e6:	e9 91 00 00 00 	jmp	145 <vprintfmt+0x2fc>
e01065eb:	8b 4e 14 	movl	20(%esi), %ecx
e01065ee:	e8 9d 07 00 00 	calll	1949 <getuint>
e01065f3:	89 46 1c 	movl	%eax, 28(%esi)
e01065f6:	89 56 20 	movl	%edx, 32(%esi)
e01065f9:	eb 57 	jmp	87 <vprintfmt+0x2d2>
e01065fb:	83 ec 08 	subl	$8, %esp
e01065fe:	8b 45 0c 	movl	12(%ebp), %eax
e0106601:	89 c7 	movl	%eax, %edi
e0106603:	50 	pushl	%eax
e0106604:	6a 30 	pushl	$48
e0106606:	8b 45 08 	movl	8(%ebp), %eax
e0106609:	89 c3 	movl	%eax, %ebx
e010660b:	ff d0 	calll	*%eax
e010660d:	83 c4 08 	addl	$8, %esp
e0106610:	57 	pushl	%edi
e0106611:	6a 78 	pushl	$120
e0106613:	ff d3 	calll	*%ebx
e0106615:	83 c4 10 	addl	$16, %esp
e0106618:	8b 46 28 	movl	40(%esi), %eax
e010661b:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106621:	84 c0 	testb	%al, %al
e0106623:	0f 85 5c 03 00 00 	jne	860 <vprintfmt+0x605>
e0106629:	8b 56 14 	movl	20(%esi), %edx
e010662c:	8b 02 	movl	(%edx), %eax
e010662e:	8d 48 04 	leal	4(%eax), %ecx
e0106631:	89 0a 	movl	%ecx, (%edx)
e0106633:	89 c1 	movl	%eax, %ecx
e0106635:	c1 e9 03 	shrl	$3, %ecx
e0106638:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010663e:	84 c9 	testb	%cl, %cl
e0106640:	0f 85 55 03 00 00 	jne	853 <vprintfmt+0x61b>
e0106646:	8b 00 	movl	(%eax), %eax
e0106648:	89 46 1c 	movl	%eax, 28(%esi)
e010664b:	c7 46 20 00 00 00 00 	movl	$0, 32(%esi)
e0106652:	bf 10 00 00 00 	movl	$16, %edi
e0106657:	eb 23 	jmp	35 <vprintfmt+0x2fc>
e0106659:	83 ec 08 	subl	$8, %esp
e010665c:	8b 7d 0c 	movl	12(%ebp), %edi
e010665f:	57 	pushl	%edi
e0106660:	50 	pushl	%eax
e0106661:	ff 55 08 	calll	*8(%ebp)
e0106664:	83 c4 10 	addl	$16, %esp
e0106667:	eb 36 	jmp	54 <vprintfmt+0x31f>
e0106669:	8b 4e 14 	movl	20(%esi), %ecx
e010666c:	e8 1f 07 00 00 	calll	1823 <getuint>
e0106671:	89 46 1c 	movl	%eax, 28(%esi)
e0106674:	89 56 20 	movl	%edx, 32(%esi)
e0106677:	bf 0a 00 00 00 	movl	$10, %edi
e010667c:	8b 5e 18 	movl	24(%esi), %ebx
e010667f:	0f b6 46 24 	movzbl	36(%esi), %eax
e0106683:	83 ec 0c 	subl	$12, %esp
e0106686:	8b 4d 08 	movl	8(%ebp), %ecx
e0106689:	8b 55 0c 	movl	12(%ebp), %edx
e010668c:	50 	pushl	%eax
e010668d:	53 	pushl	%ebx
e010668e:	57 	pushl	%edi
e010668f:	ff 76 20 	pushl	32(%esi)
e0106692:	ff 76 1c 	pushl	28(%esi)
e0106695:	89 d7 	movl	%edx, %edi
e0106697:	e8 04 08 00 00 	calll	2052 <printnum>
e010669c:	83 c4 20 	addl	$32, %esp
e010669f:	8b 4e 10 	movl	16(%esi), %ecx
e01066a2:	41 	incl	%ecx
e01066a3:	e9 70 fd ff ff 	jmp	-656 <vprintfmt+0x98>
e01066a8:	8b 46 28 	movl	40(%esi), %eax
e01066ab:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01066b1:	84 c0 	testb	%al, %al
e01066b3:	0f 85 f7 02 00 00 	jne	759 <vprintfmt+0x630>
e01066b9:	8b 56 14 	movl	20(%esi), %edx
e01066bc:	8b 02 	movl	(%edx), %eax
e01066be:	8d 48 04 	leal	4(%eax), %ecx
e01066c1:	89 0a 	movl	%ecx, (%edx)
e01066c3:	89 c1 	movl	%eax, %ecx
e01066c5:	c1 e9 03 	shrl	$3, %ecx
e01066c8:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01066ce:	84 c9 	testb	%cl, %cl
e01066d0:	8b 5e 18 	movl	24(%esi), %ebx
e01066d3:	0f 85 ed 02 00 00 	jne	749 <vprintfmt+0x646>
e01066d9:	8b 10 	movl	(%eax), %edx
e01066db:	85 d2 	testl	%edx, %edx
e01066dd:	b8 80 d9 10 e0 	movl	$3759200640, %eax
e01066e2:	0f 44 d0 	cmovel	%eax, %edx
e01066e5:	85 db 	testl	%ebx, %ebx
e01066e7:	7e 0a 	jle	10 <vprintfmt+0x373>
e01066e9:	80 7e 24 2d 	cmpb	$45, 36(%esi)
e01066ed:	0f 85 3e 01 00 00 	jne	318 <vprintfmt+0x4b1>
e01066f3:	8b 4e 10 	movl	16(%esi), %ecx
e01066f6:	e9 7d 01 00 00 	jmp	381 <vprintfmt+0x4f8>
e01066fb:	83 ec 08 	subl	$8, %esp
e01066fe:	8b 7d 0c 	movl	12(%ebp), %edi
e0106701:	57 	pushl	%edi
e0106702:	6a 25 	pushl	$37
e0106704:	ff 55 08 	calll	*8(%ebp)
e0106707:	83 c4 10 	addl	$16, %esp
e010670a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0106710:	89 d8 	movl	%ebx, %eax
e0106712:	c1 e8 03 	shrl	$3, %eax
e0106715:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e010671c:	84 c0 	testb	%al, %al
e010671e:	75 0a 	jne	10 <vprintfmt+0x3aa>
e0106720:	80 3b 25 	cmpb	$37, (%ebx)
e0106723:	8d 5b ff 	leal	-1(%ebx), %ebx
e0106726:	75 e8 	jne	-24 <vprintfmt+0x390>
e0106728:	eb 0e 	jmp	14 <vprintfmt+0x3b8>
e010672a:	89 d9 	movl	%ebx, %ecx
e010672c:	80 e1 07 	andb	$7, %cl
e010672f:	38 c1 	cmpb	%al, %cl
e0106731:	7c ed 	jl	-19 <vprintfmt+0x3a0>
e0106733:	e9 bc 03 00 00 	jmp	956 <vprintfmt+0x774>
e0106738:	83 c3 02 	addl	$2, %ebx
e010673b:	89 d9 	movl	%ebx, %ecx
e010673d:	e9 d6 fc ff ff 	jmp	-810 <vprintfmt+0x98>
e0106742:	8b 46 28 	movl	40(%esi), %eax
e0106745:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010674b:	84 c0 	testb	%al, %al
e010674d:	0f 85 9d 02 00 00 	jne	669 <vprintfmt+0x670>
e0106753:	8b 56 14 	movl	20(%esi), %edx
e0106756:	8b 02 	movl	(%edx), %eax
e0106758:	8d 48 04 	leal	4(%eax), %ecx
e010675b:	89 0a 	movl	%ecx, (%edx)
e010675d:	89 c1 	movl	%eax, %ecx
e010675f:	c1 e9 03 	shrl	$3, %ecx
e0106762:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0106768:	84 c9 	testb	%cl, %cl
e010676a:	8b 7d 0c 	movl	12(%ebp), %edi
e010676d:	0f 85 93 02 00 00 	jne	659 <vprintfmt+0x686>
e0106773:	8b 4e 10 	movl	16(%esi), %ecx
e0106776:	89 cb 	movl	%ecx, %ebx
e0106778:	43 	incl	%ebx
e0106779:	83 ec 08 	subl	$8, %esp
e010677c:	57 	pushl	%edi
e010677d:	ff 30 	pushl	(%eax)
e010677f:	e9 8c fc ff ff 	jmp	-884 <vprintfmt+0x90>
e0106784:	8b 4e 14 	movl	20(%esi), %ecx
e0106787:	e8 f4 04 00 00 	calll	1268 <getint>
e010678c:	89 c3 	movl	%eax, %ebx
e010678e:	89 d7 	movl	%edx, %edi
e0106790:	85 d2 	testl	%edx, %edx
e0106792:	78 73 	js	115 <vprintfmt+0x487>
e0106794:	89 5e 1c 	movl	%ebx, 28(%esi)
e0106797:	89 7e 20 	movl	%edi, 32(%esi)
e010679a:	e9 85 00 00 00 	jmp	133 <vprintfmt+0x4a4>
e010679f:	8b 46 28 	movl	40(%esi), %eax
e01067a2:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01067a8:	84 c0 	testb	%al, %al
e01067aa:	0f 85 6b 02 00 00 	jne	619 <vprintfmt+0x69b>
e01067b0:	8b 56 14 	movl	20(%esi), %edx
e01067b3:	8b 02 	movl	(%edx), %eax
e01067b5:	8d 48 04 	leal	4(%eax), %ecx
e01067b8:	89 0a 	movl	%ecx, (%edx)
e01067ba:	89 c1 	movl	%eax, %ecx
e01067bc:	c1 e9 03 	shrl	$3, %ecx
e01067bf:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01067c5:	84 c9 	testb	%cl, %cl
e01067c7:	0f 85 64 02 00 00 	jne	612 <vprintfmt+0x6b1>
e01067cd:	8b 4e 10 	movl	16(%esi), %ecx
e01067d0:	89 cb 	movl	%ecx, %ebx
e01067d2:	43 	incl	%ebx
e01067d3:	8b 08 	movl	(%eax), %ecx
e01067d5:	89 c8 	movl	%ecx, %eax
e01067d7:	f7 d8 	negl	%eax
e01067d9:	0f 4c c1 	cmovll	%ecx, %eax
e01067dc:	83 f8 07 	cmpl	$7, %eax
e01067df:	8b 7d 0c 	movl	12(%ebp), %edi
e01067e2:	7f 0a 	jg	10 <vprintfmt+0x46e>
e01067e4:	74 08 	je	8 <vprintfmt+0x46e>
e01067e6:	85 c0 	testl	%eax, %eax
e01067e8:	0f 85 5d 01 00 00 	jne	349 <vprintfmt+0x5cb>
e01067ee:	50 	pushl	%eax
e01067ef:	68 00 d9 10 e0 	pushl	$3759200512
e01067f4:	57 	pushl	%edi
e01067f5:	ff 75 08 	pushl	8(%ebp)
e01067f8:	e8 93 03 00 00 	calll	915 <printfmt>
e01067fd:	83 c4 10 	addl	$16, %esp
e0106800:	89 d9 	movl	%ebx, %ecx
e0106802:	e9 11 fc ff ff 	jmp	-1007 <vprintfmt+0x98>
e0106807:	83 ec 08 	subl	$8, %esp
e010680a:	ff 75 0c 	pushl	12(%ebp)
e010680d:	6a 2d 	pushl	$45
e010680f:	ff 55 08 	calll	*8(%ebp)
e0106812:	83 c4 10 	addl	$16, %esp
e0106815:	f7 db 	negl	%ebx
e0106817:	89 5e 1c 	movl	%ebx, 28(%esi)
e010681a:	b8 00 00 00 00 	movl	$0, %eax
e010681f:	19 f8 	sbbl	%edi, %eax
e0106821:	89 46 20 	movl	%eax, 32(%esi)
e0106824:	8b 5e 18 	movl	24(%esi), %ebx
e0106827:	bf 0a 00 00 00 	movl	$10, %edi
e010682c:	e9 4e fe ff ff 	jmp	-434 <vprintfmt+0x2ff>
e0106831:	83 ec 08 	subl	$8, %esp
e0106834:	ff 76 1c 	pushl	28(%esi)
e0106837:	89 56 2c 	movl	%edx, 44(%esi)
e010683a:	52 	pushl	%edx
e010683b:	e8 30 2d 00 00 	calll	11568 <__wrap_strnlen>
e0106840:	83 c4 10 	addl	$16, %esp
e0106843:	29 c3 	subl	%eax, %ebx
e0106845:	7e 2b 	jle	43 <vprintfmt+0x4f2>
e0106847:	0f b6 46 24 	movzbl	36(%esi), %eax
e010684b:	89 46 24 	movl	%eax, 36(%esi)
e010684e:	8b 7d 0c 	movl	12(%ebp), %edi
e0106851:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010685b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0106860:	83 ec 08 	subl	$8, %esp
e0106863:	57 	pushl	%edi
e0106864:	ff 76 24 	pushl	36(%esi)
e0106867:	ff 55 08 	calll	*8(%ebp)
e010686a:	83 c4 10 	addl	$16, %esp
e010686d:	4b 	decl	%ebx
e010686e:	7f f0 	jg	-16 <vprintfmt+0x4e0>
e0106870:	31 db 	xorl	%ebx, %ebx
e0106872:	8b 4e 10 	movl	16(%esi), %ecx
e0106875:	8b 56 2c 	movl	44(%esi), %edx
e0106878:	89 d0 	movl	%edx, %eax
e010687a:	c1 e8 03 	shrl	$3, %eax
e010687d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106883:	84 c0 	testb	%al, %al
e0106885:	0f 85 50 01 00 00 	jne	336 <vprintfmt+0x65b>
e010688b:	8a 02 	movb	(%edx), %al
e010688d:	84 c0 	testb	%al, %al
e010688f:	74 7e 	je	126 <vprintfmt+0x58f>
e0106891:	42 	incl	%edx
e0106892:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010689c:	0f 1f 40 00 	nopl	(%eax)
e01068a0:	89 d7 	movl	%edx, %edi
e01068a2:	8b 56 1c 	movl	28(%esi), %edx
e01068a5:	85 d2 	testl	%edx, %edx
e01068a7:	78 08 	js	8 <vprintfmt+0x531>
e01068a9:	85 d2 	testl	%edx, %edx
e01068ab:	74 62 	je	98 <vprintfmt+0x58f>
e01068ad:	4a 	decl	%edx
e01068ae:	89 56 1c 	movl	%edx, 28(%esi)
e01068b1:	0f be c0 	movsbl	%al, %eax
e01068b4:	83 7e 20 00 	cmpl	$0, 32(%esi)
e01068b8:	74 08 	je	8 <vprintfmt+0x542>
e01068ba:	3c 20 	cmpb	$32, %al
e01068bc:	7c 12 	jl	18 <vprintfmt+0x550>
e01068be:	3c 7f 	cmpb	$127, %al
e01068c0:	74 0e 	je	14 <vprintfmt+0x550>
e01068c2:	83 ec 08 	subl	$8, %esp
e01068c5:	ff 75 0c 	pushl	12(%ebp)
e01068c8:	50 	pushl	%eax
e01068c9:	eb 0d 	jmp	13 <vprintfmt+0x558>
e01068cb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e01068d0:	83 ec 08 	subl	$8, %esp
e01068d3:	ff 75 0c 	pushl	12(%ebp)
e01068d6:	6a 3f 	pushl	$63
e01068d8:	ff 55 08 	calll	*8(%ebp)
e01068db:	83 c4 10 	addl	$16, %esp
e01068de:	89 fa 	movl	%edi, %edx
e01068e0:	89 f8 	movl	%edi, %eax
e01068e2:	c1 e8 03 	shrl	$3, %eax
e01068e5:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01068ec:	84 c0 	testb	%al, %al
e01068ee:	8b 4e 10 	movl	16(%esi), %ecx
e01068f1:	75 0b 	jne	11 <vprintfmt+0x57e>
e01068f3:	4b 	decl	%ebx
e01068f4:	0f b6 02 	movzbl	(%edx), %eax
e01068f7:	42 	incl	%edx
e01068f8:	84 c0 	testb	%al, %al
e01068fa:	75 a4 	jne	-92 <vprintfmt+0x520>
e01068fc:	eb 11 	jmp	17 <vprintfmt+0x58f>
e01068fe:	89 d1 	movl	%edx, %ecx
e0106900:	80 e1 07 	andb	$7, %cl
e0106903:	38 c1 	cmpb	%al, %cl
e0106905:	8b 4e 10 	movl	16(%esi), %ecx
e0106908:	7c e9 	jl	-23 <vprintfmt+0x573>
e010690a:	e9 f1 01 00 00 	jmp	497 <vprintfmt+0x780>
e010690f:	41 	incl	%ecx
e0106910:	85 db 	testl	%ebx, %ebx
e0106912:	8b 7d 0c 	movl	12(%ebp), %edi
e0106915:	0f 8e fd fa ff ff 	jle	-1283 <vprintfmt+0x98>
e010691b:	89 4e 10 	movl	%ecx, 16(%esi)
e010691e:	89 df 	movl	%ebx, %edi
e0106920:	8b 5d 08 	movl	8(%ebp), %ebx
e0106923:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010692d:	0f 1f 00 	nopl	(%eax)
e0106930:	83 ec 08 	subl	$8, %esp
e0106933:	ff 75 0c 	pushl	12(%ebp)
e0106936:	6a 20 	pushl	$32
e0106938:	ff d3 	calll	*%ebx
e010693a:	83 c4 10 	addl	$16, %esp
e010693d:	4f 	decl	%edi
e010693e:	7f f0 	jg	-16 <vprintfmt+0x5b0>
e0106940:	8b 4e 10 	movl	16(%esi), %ecx
e0106943:	8b 7d 0c 	movl	12(%ebp), %edi
e0106946:	e9 cd fa ff ff 	jmp	-1331 <vprintfmt+0x98>
e010694b:	8d 04 85 c0 d8 10 e0 	leal	-535766848(,%eax,4), %eax
e0106952:	89 c1 	movl	%eax, %ecx
e0106954:	c1 e9 03 	shrl	$3, %ecx
e0106957:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010695d:	84 c9 	testb	%cl, %cl
e010695f:	0f 85 e1 00 00 00 	jne	225 <vprintfmt+0x6c6>
e0106965:	ff 30 	pushl	(%eax)
e0106967:	68 40 d9 10 e0 	pushl	$3759200576
e010696c:	e9 83 fe ff ff 	jmp	-381 <vprintfmt+0x474>
e0106971:	89 ca 	movl	%ecx, %edx
e0106973:	80 e1 07 	andb	$7, %cl
e0106976:	38 c1 	cmpb	%al, %cl
e0106978:	89 d1 	movl	%edx, %ecx
e010697a:	0f 8c ab fa ff ff 	jl	-1365 <vprintfmt+0xab>
e0106980:	e9 87 01 00 00 	jmp	391 <vprintfmt+0x78c>
e0106985:	8b 4e 14 	movl	20(%esi), %ecx
e0106988:	80 e1 07 	andb	$7, %cl
e010698b:	80 c1 03 	addb	$3, %cl
e010698e:	38 c1 	cmpb	%al, %cl
e0106990:	0f 8c 93 fc ff ff 	jl	-877 <vprintfmt+0x2a9>
e0106996:	e9 7d 01 00 00 	jmp	381 <vprintfmt+0x798>
e010699b:	89 c2 	movl	%eax, %edx
e010699d:	80 e2 07 	andb	$7, %dl
e01069a0:	80 c2 03 	addb	$3, %dl
e01069a3:	38 ca 	cmpb	%cl, %dl
e01069a5:	0f 8c 9b fc ff ff 	jl	-869 <vprintfmt+0x2c6>
e01069ab:	e9 76 01 00 00 	jmp	374 <vprintfmt+0x7a6>
e01069b0:	8b 4e 14 	movl	20(%esi), %ecx
e01069b3:	80 e1 07 	andb	$7, %cl
e01069b6:	80 c1 03 	addb	$3, %cl
e01069b9:	38 c1 	cmpb	%al, %cl
e01069bb:	0f 8c f8 fc ff ff 	jl	-776 <vprintfmt+0x339>
e01069c1:	e9 6c 01 00 00 	jmp	364 <vprintfmt+0x7b2>
e01069c6:	89 c2 	movl	%eax, %edx
e01069c8:	80 e2 07 	andb	$7, %dl
e01069cb:	80 c2 03 	addb	$3, %dl
e01069ce:	38 ca 	cmpb	%cl, %dl
e01069d0:	0f 8c 03 fd ff ff 	jl	-765 <vprintfmt+0x359>
e01069d6:	e9 65 01 00 00 	jmp	357 <vprintfmt+0x7c0>
e01069db:	89 d1 	movl	%edx, %ecx
e01069dd:	80 e1 07 	andb	$7, %cl
e01069e0:	38 c1 	cmpb	%al, %cl
e01069e2:	8b 4e 10 	movl	16(%esi), %ecx
e01069e5:	0f 8c a0 fe ff ff 	jl	-352 <vprintfmt+0x50b>
e01069eb:	e9 5c 01 00 00 	jmp	348 <vprintfmt+0x7cc>
e01069f0:	8b 4e 14 	movl	20(%esi), %ecx
e01069f3:	80 e1 07 	andb	$7, %cl
e01069f6:	80 c1 03 	addb	$3, %cl
e01069f9:	38 c1 	cmpb	%al, %cl
e01069fb:	0f 8c 52 fd ff ff 	jl	-686 <vprintfmt+0x3d3>
e0106a01:	e9 52 01 00 00 	jmp	338 <vprintfmt+0x7d8>
e0106a06:	89 c2 	movl	%eax, %edx
e0106a08:	80 e2 07 	andb	$7, %dl
e0106a0b:	80 c2 03 	addb	$3, %dl
e0106a0e:	38 ca 	cmpb	%cl, %dl
e0106a10:	0f 8c 5d fd ff ff 	jl	-675 <vprintfmt+0x3f3>
e0106a16:	e9 4b 01 00 00 	jmp	331 <vprintfmt+0x7e6>
e0106a1b:	8b 4e 14 	movl	20(%esi), %ecx
e0106a1e:	80 e1 07 	andb	$7, %cl
e0106a21:	80 c1 03 	addb	$3, %cl
e0106a24:	38 c1 	cmpb	%al, %cl
e0106a26:	0f 8c 84 fd ff ff 	jl	-636 <vprintfmt+0x430>
e0106a2c:	e9 41 01 00 00 	jmp	321 <vprintfmt+0x7f2>
e0106a31:	89 c2 	movl	%eax, %edx
e0106a33:	80 e2 07 	andb	$7, %dl
e0106a36:	80 c2 03 	addb	$3, %dl
e0106a39:	38 ca 	cmpb	%cl, %dl
e0106a3b:	0f 8c 8c fd ff ff 	jl	-628 <vprintfmt+0x44d>
e0106a41:	e9 3a 01 00 00 	jmp	314 <vprintfmt+0x800>
e0106a46:	89 c2 	movl	%eax, %edx
e0106a48:	80 e2 07 	andb	$7, %dl
e0106a4b:	80 c2 03 	addb	$3, %dl
e0106a4e:	38 ca 	cmpb	%cl, %dl
e0106a50:	0f 8c 0f ff ff ff 	jl	-241 <vprintfmt+0x5e5>
e0106a56:	83 ec 0c 	subl	$12, %esp
e0106a59:	50 	pushl	%eax
e0106a5a:	e8 31 1d 00 00 	calll	7473 <__asan_report_load4>
e0106a5f:	83 c4 10 	addl	$16, %esp
e0106a62:	8b 46 34 	movl	52(%esi), %eax
e0106a65:	c7 00 0e 36 e0 45 	movl	$1172321806, (%eax)
e0106a6b:	8b 46 38 	movl	56(%esi), %eax
e0106a6e:	85 c0 	testl	%eax, %eax
e0106a70:	74 1f 	je	31 <vprintfmt+0x711>
e0106a72:	8b 4e 30 	movl	48(%esi), %ecx
e0106a75:	c7 81 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%ecx)
e0106a7f:	c7 81 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%ecx)
e0106a89:	8b 40 3c 	movl	60(%eax), %eax
e0106a8c:	c6 00 00 	movb	$0, (%eax)
e0106a8f:	eb 0d 	jmp	13 <vprintfmt+0x71e>
e0106a91:	8b 46 30 	movl	48(%esi), %eax
e0106a94:	c7 80 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%eax)
e0106a9e:	8d 65 f4 	leal	-12(%ebp), %esp
e0106aa1:	5e 	popl	%esi
e0106aa2:	5f 	popl	%edi
e0106aa3:	5b 	popl	%ebx
e0106aa4:	5d 	popl	%ebp
e0106aa5:	c3 	retl
e0106aa6:	89 d1 	movl	%edx, %ecx
e0106aa8:	80 e1 07 	andb	$7, %cl
e0106aab:	80 c1 03 	addb	$3, %cl
e0106aae:	38 c1 	cmpb	%al, %cl
e0106ab0:	0f 8c 46 f9 ff ff 	jl	-1722 <vprintfmt+0x7c>
e0106ab6:	83 ec 0c 	subl	$12, %esp
e0106ab9:	52 	pushl	%edx
e0106aba:	e8 f1 1c 00 00 	calll	7409 <__asan_report_store4>
e0106abf:	83 c4 10 	addl	$16, %esp
e0106ac2:	83 ec 0c 	subl	$12, %esp
e0106ac5:	51 	pushl	%ecx
e0106ac6:	e8 25 1c 00 00 	calll	7205 <__asan_report_load1>
e0106acb:	83 c4 10 	addl	$16, %esp
e0106ace:	83 ec 0c 	subl	$12, %esp
e0106ad1:	53 	pushl	%ebx
e0106ad2:	e8 19 1c 00 00 	calll	7193 <__asan_report_load1>
e0106ad7:	83 c4 10 	addl	$16, %esp
e0106ada:	83 ec 0c 	subl	$12, %esp
e0106add:	ff 76 14 	pushl	20(%esi)
e0106ae0:	e8 ab 1c 00 00 	calll	7339 <__asan_report_load4>
e0106ae5:	83 c4 10 	addl	$16, %esp
e0106ae8:	83 ec 0c 	subl	$12, %esp
e0106aeb:	50 	pushl	%eax
e0106aec:	e8 9f 1c 00 00 	calll	7327 <__asan_report_load4>
e0106af1:	83 c4 10 	addl	$16, %esp
e0106af4:	83 ec 0c 	subl	$12, %esp
e0106af7:	53 	pushl	%ebx
e0106af8:	e8 f3 1b 00 00 	calll	7155 <__asan_report_load1>
e0106afd:	83 c4 10 	addl	$16, %esp
e0106b00:	83 ec 0c 	subl	$12, %esp
e0106b03:	52 	pushl	%edx
e0106b04:	e8 e7 1b 00 00 	calll	7143 <__asan_report_load1>
e0106b09:	83 c4 10 	addl	$16, %esp
e0106b0c:	83 ec 0c 	subl	$12, %esp
e0106b0f:	51 	pushl	%ecx
e0106b10:	e8 db 1b 00 00 	calll	7131 <__asan_report_load1>
e0106b15:	83 c4 10 	addl	$16, %esp
e0106b18:	83 ec 0c 	subl	$12, %esp
e0106b1b:	ff 76 14 	pushl	20(%esi)
e0106b1e:	e8 6d 1c 00 00 	calll	7277 <__asan_report_load4>
e0106b23:	83 c4 10 	addl	$16, %esp
e0106b26:	83 ec 0c 	subl	$12, %esp
e0106b29:	50 	pushl	%eax
e0106b2a:	e8 61 1c 00 00 	calll	7265 <__asan_report_load4>
e0106b2f:	83 c4 10 	addl	$16, %esp
e0106b32:	83 ec 0c 	subl	$12, %esp
e0106b35:	ff 76 14 	pushl	20(%esi)
e0106b38:	e8 53 1c 00 00 	calll	7251 <__asan_report_load4>
e0106b3d:	83 c4 10 	addl	$16, %esp
e0106b40:	83 ec 0c 	subl	$12, %esp
e0106b43:	50 	pushl	%eax
e0106b44:	e8 47 1c 00 00 	calll	7239 <__asan_report_load4>
e0106b49:	83 c4 10 	addl	$16, %esp
e0106b4c:	83 ec 0c 	subl	$12, %esp
e0106b4f:	52 	pushl	%edx
e0106b50:	e8 9b 1b 00 00 	calll	7067 <__asan_report_load1>
e0106b55:	83 c4 10 	addl	$16, %esp
e0106b58:	83 ec 0c 	subl	$12, %esp
e0106b5b:	ff 76 14 	pushl	20(%esi)
e0106b5e:	e8 2d 1c 00 00 	calll	7213 <__asan_report_load4>
e0106b63:	83 c4 10 	addl	$16, %esp
e0106b66:	83 ec 0c 	subl	$12, %esp
e0106b69:	50 	pushl	%eax
e0106b6a:	e8 21 1c 00 00 	calll	7201 <__asan_report_load4>
e0106b6f:	83 c4 10 	addl	$16, %esp
e0106b72:	83 ec 0c 	subl	$12, %esp
e0106b75:	ff 76 14 	pushl	20(%esi)
e0106b78:	e8 13 1c 00 00 	calll	7187 <__asan_report_load4>
e0106b7d:	83 c4 10 	addl	$16, %esp
e0106b80:	83 ec 0c 	subl	$12, %esp
e0106b83:	50 	pushl	%eax
e0106b84:	e8 07 1c 00 00 	calll	7175 <__asan_report_load4>
e0106b89:	83 c4 10 	addl	$16, %esp
e0106b8c:	0f 1f 40 00 	nopl	(%eax)
e0106b90:	55 	pushl	%ebp
e0106b91:	89 e5 	movl	%esp, %ebp
e0106b93:	53 	pushl	%ebx
e0106b94:	57 	pushl	%edi
e0106b95:	56 	pushl	%esi
e0106b96:	83 e4 e0 	andl	$-32, %esp
e0106b99:	83 ec 40 	subl	$64, %esp
e0106b9c:	89 e6 	movl	%esp, %esi
e0106b9e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0106ba5:	74 0f 	je	15 <printfmt+0x26>
e0106ba7:	83 ec 0c 	subl	$12, %esp
e0106baa:	6a 20 	pushl	$32
e0106bac:	e8 df 1d 00 00 	calll	7647 <__asan_stack_malloc_0>
e0106bb1:	83 c4 10 	addl	$16, %esp
e0106bb4:	eb 02 	jmp	2 <printfmt+0x28>
e0106bb6:	31 c0 	xorl	%eax, %eax
e0106bb8:	85 c0 	testl	%eax, %eax
e0106bba:	89 46 18 	movl	%eax, 24(%esi)
e0106bbd:	89 c3 	movl	%eax, %ebx
e0106bbf:	75 0a 	jne	10 <printfmt+0x3b>
e0106bc1:	89 e3 	movl	%esp, %ebx
e0106bc3:	83 c3 e0 	addl	$-32, %ebx
e0106bc6:	83 e3 e0 	andl	$-32, %ebx
e0106bc9:	89 dc 	movl	%ebx, %esp
e0106bcb:	89 5e 1c 	movl	%ebx, 28(%esi)
e0106bce:	8d 43 10 	leal	16(%ebx), %eax
e0106bd1:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e0106bd7:	c7 43 04 14 a2 10 e0 	movl	$3759186452, 4(%ebx)
e0106bde:	c7 43 08 90 6b 10 e0 	movl	$3759172496, 8(%ebx)
e0106be5:	89 df 	movl	%ebx, %edi
e0106be7:	c1 ef 03 	shrl	$3, %edi
e0106bea:	c7 87 00 00 80 de f1 f1 f8 f3 	movl	$4093178353, -562036736(%edi)
e0106bf4:	c6 87 02 00 80 de 04 	movb	$4, -562036734(%edi)
e0106bfb:	8d 4d 14 	leal	20(%ebp), %ecx
e0106bfe:	89 4b 10 	movl	%ecx, 16(%ebx)
e0106c01:	89 c1 	movl	%eax, %ecx
e0106c03:	c1 e9 03 	shrl	$3, %ecx
e0106c06:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0106c0c:	84 c9 	testb	%cl, %cl
e0106c0e:	75 56 	jne	86 <printfmt+0xd6>
e0106c10:	ff 73 10 	pushl	16(%ebx)
e0106c13:	ff 75 10 	pushl	16(%ebp)
e0106c16:	ff 75 0c 	pushl	12(%ebp)
e0106c19:	ff 75 08 	pushl	8(%ebp)
e0106c1c:	e8 5f f7 ff ff 	calll	-2209 <vprintfmt>
e0106c21:	83 c4 10 	addl	$16, %esp
e0106c24:	c6 87 02 00 80 de f8 	movb	$-8, -562036734(%edi)
e0106c2b:	c7 03 0e 36 e0 45 	movl	$1172321806, (%ebx)
e0106c31:	8b 46 18 	movl	24(%esi), %eax
e0106c34:	85 c0 	testl	%eax, %eax
e0106c36:	74 1c 	je	28 <printfmt+0xc4>
e0106c38:	c7 87 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edi)
e0106c42:	c7 87 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edi)
e0106c4c:	8b 40 3c 	movl	60(%eax), %eax
e0106c4f:	c6 00 00 	movb	$0, (%eax)
e0106c52:	eb 0a 	jmp	10 <printfmt+0xce>
e0106c54:	c7 87 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edi)
e0106c5e:	8d 65 f4 	leal	-12(%ebp), %esp
e0106c61:	5e 	popl	%esi
e0106c62:	5f 	popl	%edi
e0106c63:	5b 	popl	%ebx
e0106c64:	5d 	popl	%ebp
e0106c65:	c3 	retl
e0106c66:	89 c2 	movl	%eax, %edx
e0106c68:	80 e2 07 	andb	$7, %dl
e0106c6b:	80 c2 03 	addb	$3, %dl
e0106c6e:	38 ca 	cmpb	%cl, %dl
e0106c70:	7c 9e 	jl	-98 <printfmt+0x80>
e0106c72:	83 ec 0c 	subl	$12, %esp
e0106c75:	50 	pushl	%eax
e0106c76:	e8 15 1b 00 00 	calll	6933 <__asan_report_load4>
e0106c7b:	83 c4 10 	addl	$16, %esp
e0106c7e:	66 90 	nop
e0106c80:	55 	pushl	%ebp
e0106c81:	89 e5 	movl	%esp, %ebp
e0106c83:	53 	pushl	%ebx
e0106c84:	83 ec 14 	subl	$20, %esp
e0106c87:	89 c8 	movl	%ecx, %eax
e0106c89:	c1 e8 03 	shrl	$3, %eax
e0106c8c:	8a 98 00 00 80 de 	movb	-562036736(%eax), %bl
e0106c92:	84 db 	testb	%bl, %bl
e0106c94:	75 69 	jne	105 <getint+0x7f>
e0106c96:	83 fa 02 	cmpl	$2, %edx
e0106c99:	8b 11 	movl	(%ecx), %edx
e0106c9b:	7c 37 	jl	55 <getint+0x54>
e0106c9d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106ca3:	84 c0 	testb	%al, %al
e0106ca5:	75 6c 	jne	108 <getint+0x93>
e0106ca7:	8d 42 08 	leal	8(%edx), %eax
e0106caa:	89 01 	movl	%eax, (%ecx)
e0106cac:	89 d0 	movl	%edx, %eax
e0106cae:	c1 e8 03 	shrl	$3, %eax
e0106cb1:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106cb7:	84 c0 	testb	%al, %al
e0106cb9:	75 6c 	jne	108 <getint+0xa7>
e0106cbb:	8d 42 07 	leal	7(%edx), %eax
e0106cbe:	89 c1 	movl	%eax, %ecx
e0106cc0:	c1 e9 03 	shrl	$3, %ecx
e0106cc3:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0106cc9:	84 c9 	testb	%cl, %cl
e0106ccb:	75 73 	jne	115 <getint+0xc0>
e0106ccd:	8b 02 	movl	(%edx), %eax
e0106ccf:	8b 52 04 	movl	4(%edx), %edx
e0106cd2:	eb 25 	jmp	37 <getint+0x79>
e0106cd4:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106cda:	84 c0 	testb	%al, %al
e0106cdc:	75 7b 	jne	123 <getint+0xd9>
e0106cde:	8d 42 04 	leal	4(%edx), %eax
e0106ce1:	89 01 	movl	%eax, (%ecx)
e0106ce3:	89 d0 	movl	%edx, %eax
e0106ce5:	c1 e8 03 	shrl	$3, %eax
e0106ce8:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106cee:	84 c0 	testb	%al, %al
e0106cf0:	75 7f 	jne	127 <getint+0xf1>
e0106cf2:	8b 02 	movl	(%edx), %eax
e0106cf4:	89 c2 	movl	%eax, %edx
e0106cf6:	c1 fa 1f 	sarl	$31, %edx
e0106cf9:	83 c4 14 	addl	$20, %esp
e0106cfc:	5b 	popl	%ebx
e0106cfd:	5d 	popl	%ebp
e0106cfe:	c3 	retl
e0106cff:	88 cf 	movb	%cl, %bh
e0106d01:	80 e7 07 	andb	$7, %bh
e0106d04:	80 c7 03 	addb	$3, %bh
e0106d07:	38 df 	cmpb	%bl, %bh
e0106d09:	7c 8b 	jl	-117 <getint+0x16>
e0106d0b:	89 0c 24 	movl	%ecx, (%esp)
e0106d0e:	e8 7d 1a 00 00 	calll	6781 <__asan_report_load4>
e0106d13:	88 cc 	movb	%cl, %ah
e0106d15:	80 e4 07 	andb	$7, %ah
e0106d18:	80 c4 03 	addb	$3, %ah
e0106d1b:	38 c4 	cmpb	%al, %ah
e0106d1d:	7c 88 	jl	-120 <getint+0x27>
e0106d1f:	89 0c 24 	movl	%ecx, (%esp)
e0106d22:	e8 89 1a 00 00 	calll	6793 <__asan_report_store4>
e0106d27:	89 d1 	movl	%edx, %ecx
e0106d29:	80 e1 07 	andb	$7, %cl
e0106d2c:	38 c1 	cmpb	%al, %cl
e0106d2e:	7c 8b 	jl	-117 <getint+0x3b>
e0106d30:	89 14 24 	movl	%edx, (%esp)
e0106d33:	c7 44 24 04 08 00 00 00 	movl	$8, 4(%esp)
e0106d3b:	e8 10 1b 00 00 	calll	6928 <__asan_report_load_n>
e0106d40:	88 c5 	movb	%al, %ch
e0106d42:	80 e5 07 	andb	$7, %ch
e0106d45:	38 cd 	cmpb	%cl, %ch
e0106d47:	7c 84 	jl	-124 <getint+0x4d>
e0106d49:	89 04 24 	movl	%eax, (%esp)
e0106d4c:	c7 44 24 04 08 00 00 00 	movl	$8, 4(%esp)
e0106d54:	e8 f7 1a 00 00 	calll	6903 <__asan_report_load_n>
e0106d59:	88 cc 	movb	%cl, %ah
e0106d5b:	80 e4 07 	andb	$7, %ah
e0106d5e:	80 c4 03 	addb	$3, %ah
e0106d61:	38 c4 	cmpb	%al, %ah
e0106d63:	0f 8c 75 ff ff ff 	jl	-139 <getint+0x5e>
e0106d69:	89 0c 24 	movl	%ecx, (%esp)
e0106d6c:	e8 3f 1a 00 00 	calll	6719 <__asan_report_store4>
e0106d71:	89 d1 	movl	%edx, %ecx
e0106d73:	80 e1 07 	andb	$7, %cl
e0106d76:	80 c1 03 	addb	$3, %cl
e0106d79:	38 c1 	cmpb	%al, %cl
e0106d7b:	0f 8c 71 ff ff ff 	jl	-143 <getint+0x72>
e0106d81:	89 14 24 	movl	%edx, (%esp)
e0106d84:	e8 07 1a 00 00 	calll	6663 <__asan_report_load4>
e0106d89:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0106d90:	55 	pushl	%ebp
e0106d91:	89 e5 	movl	%esp, %ebp
e0106d93:	53 	pushl	%ebx
e0106d94:	83 ec 14 	subl	$20, %esp
e0106d97:	89 c8 	movl	%ecx, %eax
e0106d99:	c1 e8 03 	shrl	$3, %eax
e0106d9c:	8a 98 00 00 80 de 	movb	-562036736(%eax), %bl
e0106da2:	84 db 	testb	%bl, %bl
e0106da4:	75 66 	jne	102 <getuint+0x7c>
e0106da6:	83 fa 02 	cmpl	$2, %edx
e0106da9:	8b 11 	movl	(%ecx), %edx
e0106dab:	7c 37 	jl	55 <getuint+0x54>
e0106dad:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106db3:	84 c0 	testb	%al, %al
e0106db5:	75 69 	jne	105 <getuint+0x90>
e0106db7:	8d 42 08 	leal	8(%edx), %eax
e0106dba:	89 01 	movl	%eax, (%ecx)
e0106dbc:	89 d0 	movl	%edx, %eax
e0106dbe:	c1 e8 03 	shrl	$3, %eax
e0106dc1:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106dc7:	84 c0 	testb	%al, %al
e0106dc9:	75 69 	jne	105 <getuint+0xa4>
e0106dcb:	8d 42 07 	leal	7(%edx), %eax
e0106dce:	89 c1 	movl	%eax, %ecx
e0106dd0:	c1 e9 03 	shrl	$3, %ecx
e0106dd3:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0106dd9:	84 c9 	testb	%cl, %cl
e0106ddb:	75 70 	jne	112 <getuint+0xbd>
e0106ddd:	8b 02 	movl	(%edx), %eax
e0106ddf:	8b 52 04 	movl	4(%edx), %edx
e0106de2:	eb 22 	jmp	34 <getuint+0x76>
e0106de4:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106dea:	84 c0 	testb	%al, %al
e0106dec:	75 78 	jne	120 <getuint+0xd6>
e0106dee:	8d 42 04 	leal	4(%edx), %eax
e0106df1:	89 01 	movl	%eax, (%ecx)
e0106df3:	89 d0 	movl	%edx, %eax
e0106df5:	c1 e8 03 	shrl	$3, %eax
e0106df8:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106dfe:	84 c0 	testb	%al, %al
e0106e00:	75 7c 	jne	124 <getuint+0xee>
e0106e02:	8b 02 	movl	(%edx), %eax
e0106e04:	31 d2 	xorl	%edx, %edx
e0106e06:	83 c4 14 	addl	$20, %esp
e0106e09:	5b 	popl	%ebx
e0106e0a:	5d 	popl	%ebp
e0106e0b:	c3 	retl
e0106e0c:	88 cf 	movb	%cl, %bh
e0106e0e:	80 e7 07 	andb	$7, %bh
e0106e11:	80 c7 03 	addb	$3, %bh
e0106e14:	38 df 	cmpb	%bl, %bh
e0106e16:	7c 8e 	jl	-114 <getuint+0x16>
e0106e18:	89 0c 24 	movl	%ecx, (%esp)
e0106e1b:	e8 70 19 00 00 	calll	6512 <__asan_report_load4>
e0106e20:	88 cc 	movb	%cl, %ah
e0106e22:	80 e4 07 	andb	$7, %ah
e0106e25:	80 c4 03 	addb	$3, %ah
e0106e28:	38 c4 	cmpb	%al, %ah
e0106e2a:	7c 8b 	jl	-117 <getuint+0x27>
e0106e2c:	89 0c 24 	movl	%ecx, (%esp)
e0106e2f:	e8 7c 19 00 00 	calll	6524 <__asan_report_store4>
e0106e34:	89 d1 	movl	%edx, %ecx
e0106e36:	80 e1 07 	andb	$7, %cl
e0106e39:	38 c1 	cmpb	%al, %cl
e0106e3b:	7c 8e 	jl	-114 <getuint+0x3b>
e0106e3d:	89 14 24 	movl	%edx, (%esp)
e0106e40:	c7 44 24 04 08 00 00 00 	movl	$8, 4(%esp)
e0106e48:	e8 03 1a 00 00 	calll	6659 <__asan_report_load_n>
e0106e4d:	88 c5 	movb	%al, %ch
e0106e4f:	80 e5 07 	andb	$7, %ch
e0106e52:	38 cd 	cmpb	%cl, %ch
e0106e54:	7c 87 	jl	-121 <getuint+0x4d>
e0106e56:	89 04 24 	movl	%eax, (%esp)
e0106e59:	c7 44 24 04 08 00 00 00 	movl	$8, 4(%esp)
e0106e61:	e8 ea 19 00 00 	calll	6634 <__asan_report_load_n>
e0106e66:	88 cc 	movb	%cl, %ah
e0106e68:	80 e4 07 	andb	$7, %ah
e0106e6b:	80 c4 03 	addb	$3, %ah
e0106e6e:	38 c4 	cmpb	%al, %ah
e0106e70:	0f 8c 78 ff ff ff 	jl	-136 <getuint+0x5e>
e0106e76:	89 0c 24 	movl	%ecx, (%esp)
e0106e79:	e8 32 19 00 00 	calll	6450 <__asan_report_store4>
e0106e7e:	89 d1 	movl	%edx, %ecx
e0106e80:	80 e1 07 	andb	$7, %cl
e0106e83:	80 c1 03 	addb	$3, %cl
e0106e86:	38 c1 	cmpb	%al, %cl
e0106e88:	0f 8c 74 ff ff ff 	jl	-140 <getuint+0x72>
e0106e8e:	89 14 24 	movl	%edx, (%esp)
e0106e91:	e8 fa 18 00 00 	calll	6394 <__asan_report_load4>
e0106e96:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0106ea0:	55 	pushl	%ebp
e0106ea1:	89 e5 	movl	%esp, %ebp
e0106ea3:	53 	pushl	%ebx
e0106ea4:	57 	pushl	%edi
e0106ea5:	56 	pushl	%esi
e0106ea6:	83 ec 0c 	subl	$12, %esp
e0106ea9:	89 d7 	movl	%edx, %edi
e0106eab:	89 4d f0 	movl	%ecx, -16(%ebp)
e0106eae:	8b 55 0c 	movl	12(%ebp), %edx
e0106eb1:	8b 4d 08 	movl	8(%ebp), %ecx
e0106eb4:	8b 75 10 	movl	16(%ebp), %esi
e0106eb7:	39 f1 	cmpl	%esi, %ecx
e0106eb9:	89 d0 	movl	%edx, %eax
e0106ebb:	83 d8 00 	sbbl	$0, %eax
e0106ebe:	8b 45 18 	movl	24(%ebp), %eax
e0106ec1:	8b 5d 14 	movl	20(%ebp), %ebx
e0106ec4:	72 49 	jb	73 <printnum+0x6f>
e0106ec6:	6a 00 	pushl	$0
e0106ec8:	56 	pushl	%esi
e0106ec9:	52 	pushl	%edx
e0106eca:	51 	pushl	%ecx
e0106ecb:	89 c6 	movl	%eax, %esi
e0106ecd:	e8 fe 2d 00 00 	calll	11774 <__udivdi3>
e0106ed2:	83 c4 10 	addl	$16, %esp
e0106ed5:	89 45 ec 	movl	%eax, -20(%ebp)
e0106ed8:	89 d0 	movl	%edx, %eax
e0106eda:	4b 	decl	%ebx
e0106edb:	83 ec 0c 	subl	$12, %esp
e0106ede:	8b 4d f0 	movl	-16(%ebp), %ecx
e0106ee1:	89 fa 	movl	%edi, %edx
e0106ee3:	56 	pushl	%esi
e0106ee4:	53 	pushl	%ebx
e0106ee5:	ff 75 10 	pushl	16(%ebp)
e0106ee8:	50 	pushl	%eax
e0106ee9:	ff 75 ec 	pushl	-20(%ebp)
e0106eec:	e8 af ff ff ff 	calll	-81 <printnum>
e0106ef1:	83 c4 20 	addl	$32, %esp
e0106ef4:	eb 1c 	jmp	28 <printnum+0x72>
e0106ef6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0106f00:	83 ec 08 	subl	$8, %esp
e0106f03:	57 	pushl	%edi
e0106f04:	50 	pushl	%eax
e0106f05:	89 c6 	movl	%eax, %esi
e0106f07:	ff 55 f0 	calll	*-16(%ebp)
e0106f0a:	89 f0 	movl	%esi, %eax
e0106f0c:	83 c4 10 	addl	$16, %esp
e0106f0f:	4b 	decl	%ebx
e0106f10:	7f ee 	jg	-18 <printnum+0x60>
e0106f12:	89 fe 	movl	%edi, %esi
e0106f14:	8b 7d f0 	movl	-16(%ebp), %edi
e0106f17:	6a 00 	pushl	$0
e0106f19:	ff 75 10 	pushl	16(%ebp)
e0106f1c:	ff 75 0c 	pushl	12(%ebp)
e0106f1f:	ff 75 08 	pushl	8(%ebp)
e0106f22:	e8 79 30 00 00 	calll	12409 <__umoddi3>
e0106f27:	83 c4 10 	addl	$16, %esp
e0106f2a:	8d 80 40 db 10 e0 	leal	-535766208(%eax), %eax
e0106f30:	89 c1 	movl	%eax, %ecx
e0106f32:	c1 e9 03 	shrl	$3, %ecx
e0106f35:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0106f3b:	84 c9 	testb	%cl, %cl
e0106f3d:	75 12 	jne	18 <printnum+0xb1>
e0106f3f:	0f be 00 	movsbl	(%eax), %eax
e0106f42:	83 ec 08 	subl	$8, %esp
e0106f45:	56 	pushl	%esi
e0106f46:	50 	pushl	%eax
e0106f47:	ff d7 	calll	*%edi
e0106f49:	83 c4 1c 	addl	$28, %esp
e0106f4c:	5e 	popl	%esi
e0106f4d:	5f 	popl	%edi
e0106f4e:	5b 	popl	%ebx
e0106f4f:	5d 	popl	%ebp
e0106f50:	c3 	retl
e0106f51:	89 c2 	movl	%eax, %edx
e0106f53:	80 e2 07 	andb	$7, %dl
e0106f56:	38 ca 	cmpb	%cl, %dl
e0106f58:	7c e5 	jl	-27 <printnum+0x9f>
e0106f5a:	83 ec 0c 	subl	$12, %esp
e0106f5d:	50 	pushl	%eax
e0106f5e:	e8 8d 17 00 00 	calll	6029 <__asan_report_load1>
e0106f63:	83 c4 10 	addl	$16, %esp
e0106f66:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0106f70:	55 	pushl	%ebp
e0106f71:	89 e5 	movl	%esp, %ebp
e0106f73:	53 	pushl	%ebx
e0106f74:	57 	pushl	%edi
e0106f75:	56 	pushl	%esi
e0106f76:	83 e4 e0 	andl	$-32, %esp
e0106f79:	83 ec 40 	subl	$64, %esp
e0106f7c:	89 e6 	movl	%esp, %esi
e0106f7e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0106f85:	74 0f 	je	15 <vsnprintf+0x26>
e0106f87:	83 ec 0c 	subl	$12, %esp
e0106f8a:	6a 30 	pushl	$48
e0106f8c:	e8 ff 19 00 00 	calll	6655 <__asan_stack_malloc_0>
e0106f91:	83 c4 10 	addl	$16, %esp
e0106f94:	eb 02 	jmp	2 <vsnprintf+0x28>
e0106f96:	31 c0 	xorl	%eax, %eax
e0106f98:	85 c0 	testl	%eax, %eax
e0106f9a:	89 c3 	movl	%eax, %ebx
e0106f9c:	75 0a 	jne	10 <vsnprintf+0x38>
e0106f9e:	89 e3 	movl	%esp, %ebx
e0106fa0:	83 c3 d0 	addl	$-48, %ebx
e0106fa3:	83 e3 e0 	andl	$-32, %ebx
e0106fa6:	89 dc 	movl	%ebx, %esp
e0106fa8:	89 5e 1c 	movl	%ebx, 28(%esi)
e0106fab:	8d 4b 10 	leal	16(%ebx), %ecx
e0106fae:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e0106fb4:	c7 43 04 33 a2 10 e0 	movl	$3759186483, 4(%ebx)
e0106fbb:	c7 43 08 70 6f 10 e0 	movl	$3759173488, 8(%ebx)
e0106fc2:	89 df 	movl	%ebx, %edi
e0106fc4:	c1 ef 03 	shrl	$3, %edi
e0106fc7:	c7 87 00 00 80 de f1 f1 f8 f8 	movl	$4177064433, -562036736(%edi)
e0106fd1:	c7 87 02 00 80 de 00 04 f3 f3 	movl	$4092789760, -562036734(%edi)
e0106fdb:	89 ca 	movl	%ecx, %edx
e0106fdd:	c1 ea 03 	shrl	$3, %edx
e0106fe0:	89 56 10 	movl	%edx, 16(%esi)
e0106fe3:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0106fe9:	84 d2 	testb	%dl, %dl
e0106feb:	89 4e 08 	movl	%ecx, 8(%esi)
e0106fee:	0f 85 00 01 00 00 	jne	256 <vsnprintf+0x184>
e0106ff4:	89 7e 14 	movl	%edi, 20(%esi)
e0106ff7:	89 46 18 	movl	%eax, 24(%esi)
e0106ffa:	8b 45 08 	movl	8(%ebp), %eax
e0106ffd:	89 01 	movl	%eax, (%ecx)
e0106fff:	89 cf 	movl	%ecx, %edi
e0107001:	8d 49 04 	leal	4(%ecx), %ecx
e0107004:	89 ca 	movl	%ecx, %edx
e0107006:	c1 ea 03 	shrl	$3, %edx
e0107009:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e010700f:	84 d2 	testb	%dl, %dl
e0107011:	0f 85 fd 00 00 00 	jne	253 <vsnprintf+0x1a4>
e0107017:	8b 4d 0c 	movl	12(%ebp), %ecx
e010701a:	8d 54 08 ff 	leal	-1(%eax,%ecx), %edx
e010701e:	89 57 04 	movl	%edx, 4(%edi)
e0107021:	8d 4f 08 	leal	8(%edi), %ecx
e0107024:	89 cf 	movl	%ecx, %edi
e0107026:	c1 ef 03 	shrl	$3, %edi
e0107029:	8a 97 00 00 80 de 	movb	-562036736(%edi), %dl
e010702f:	84 d2 	testb	%dl, %dl
e0107031:	0f 85 f9 00 00 00 	jne	249 <vsnprintf+0x1c0>
e0107037:	c7 01 00 00 00 00 	movl	$0, (%ecx)
e010703d:	85 c0 	testl	%eax, %eax
e010703f:	b8 fd ff ff ff 	movl	$4294967293, %eax
e0107044:	74 5e 	je	94 <vsnprintf+0x134>
e0107046:	83 7d 0c 00 	cmpl	$0, 12(%ebp)
e010704a:	7e 58 	jle	88 <vsnprintf+0x134>
e010704c:	89 4e 0c 	movl	%ecx, 12(%esi)
e010704f:	ff 75 14 	pushl	20(%ebp)
e0107052:	ff 75 10 	pushl	16(%ebp)
e0107055:	ff 76 08 	pushl	8(%esi)
e0107058:	68 b0 71 10 e0 	pushl	$3759174064
e010705d:	e8 1e f3 ff ff 	calll	-3298 <vprintfmt>
e0107062:	83 c4 10 	addl	$16, %esp
e0107065:	8b 46 10 	movl	16(%esi), %eax
e0107068:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010706e:	84 c0 	testb	%al, %al
e0107070:	0f 85 d6 00 00 00 	jne	214 <vsnprintf+0x1dc>
e0107076:	8b 46 08 	movl	8(%esi), %eax
e0107079:	8b 00 	movl	(%eax), %eax
e010707b:	89 c1 	movl	%eax, %ecx
e010707d:	c1 e9 03 	shrl	$3, %ecx
e0107080:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0107086:	84 c9 	testb	%cl, %cl
e0107088:	8b 56 0c 	movl	12(%esi), %edx
e010708b:	0f 85 da 00 00 00 	jne	218 <vsnprintf+0x1fb>
e0107091:	c6 00 00 	movb	$0, (%eax)
e0107094:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e010709a:	84 c0 	testb	%al, %al
e010709c:	0f 85 e5 00 00 00 	jne	229 <vsnprintf+0x217>
e01070a2:	8b 02 	movl	(%edx), %eax
e01070a4:	8b 56 14 	movl	20(%esi), %edx
e01070a7:	66 c7 82 02 00 80 de f8 f8 	movw	$63736, -562036734(%edx)
e01070b0:	c7 03 0e 36 e0 45 	movl	$1172321806, (%ebx)
e01070b6:	8b 4e 18 	movl	24(%esi), %ecx
e01070b9:	85 c9 	testl	%ecx, %ecx
e01070bb:	74 1c 	je	28 <vsnprintf+0x169>
e01070bd:	c7 82 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edx)
e01070c7:	c7 82 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edx)
e01070d1:	8b 49 3c 	movl	60(%ecx), %ecx
e01070d4:	c6 01 00 	movb	$0, (%ecx)
e01070d7:	eb 13 	jmp	19 <vsnprintf+0x17c>
e01070d9:	c7 82 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edx)
e01070e3:	66 c7 82 04 00 80 de 00 00 	movw	$0, -562036732(%edx)
e01070ec:	8d 65 f4 	leal	-12(%ebp), %esp
e01070ef:	5e 	popl	%esi
e01070f0:	5f 	popl	%edi
e01070f1:	5b 	popl	%ebx
e01070f2:	5d 	popl	%ebp
e01070f3:	c3 	retl
e01070f4:	8b 4e 08 	movl	8(%esi), %ecx
e01070f7:	80 e1 07 	andb	$7, %cl
e01070fa:	80 c1 03 	addb	$3, %cl
e01070fd:	38 d1 	cmpb	%dl, %cl
e01070ff:	8b 4e 08 	movl	8(%esi), %ecx
e0107102:	0f 8c ec fe ff ff 	jl	-276 <vsnprintf+0x84>
e0107108:	83 ec 0c 	subl	$12, %esp
e010710b:	51 	pushl	%ecx
e010710c:	e8 9f 16 00 00 	calll	5791 <__asan_report_store4>
e0107111:	83 c4 10 	addl	$16, %esp
e0107114:	88 ce 	movb	%cl, %dh
e0107116:	80 e6 07 	andb	$7, %dh
e0107119:	80 c6 03 	addb	$3, %dh
e010711c:	38 d6 	cmpb	%dl, %dh
e010711e:	0f 8c f3 fe ff ff 	jl	-269 <vsnprintf+0xa7>
e0107124:	83 ec 0c 	subl	$12, %esp
e0107127:	51 	pushl	%ecx
e0107128:	e8 83 16 00 00 	calll	5763 <__asan_report_store4>
e010712d:	83 c4 10 	addl	$16, %esp
e0107130:	88 ce 	movb	%cl, %dh
e0107132:	80 e6 07 	andb	$7, %dh
e0107135:	80 c6 03 	addb	$3, %dh
e0107138:	38 d6 	cmpb	%dl, %dh
e010713a:	0f 8c f7 fe ff ff 	jl	-265 <vsnprintf+0xc7>
e0107140:	83 ec 0c 	subl	$12, %esp
e0107143:	51 	pushl	%ecx
e0107144:	e8 67 16 00 00 	calll	5735 <__asan_report_store4>
e0107149:	83 c4 10 	addl	$16, %esp
e010714c:	8b 4e 08 	movl	8(%esi), %ecx
e010714f:	80 e1 07 	andb	$7, %cl
e0107152:	80 c1 03 	addb	$3, %cl
e0107155:	38 c1 	cmpb	%al, %cl
e0107157:	0f 8c 19 ff ff ff 	jl	-231 <vsnprintf+0x106>
e010715d:	83 ec 0c 	subl	$12, %esp
e0107160:	ff 76 08 	pushl	8(%esi)
e0107163:	e8 28 16 00 00 	calll	5672 <__asan_report_load4>
e0107168:	83 c4 10 	addl	$16, %esp
e010716b:	89 c2 	movl	%eax, %edx
e010716d:	80 e2 07 	andb	$7, %dl
e0107170:	38 ca 	cmpb	%cl, %dl
e0107172:	8b 56 0c 	movl	12(%esi), %edx
e0107175:	0f 8c 16 ff ff ff 	jl	-234 <vsnprintf+0x121>
e010717b:	83 ec 0c 	subl	$12, %esp
e010717e:	50 	pushl	%eax
e010717f:	e8 ac 15 00 00 	calll	5548 <__asan_report_store1>
e0107184:	83 c4 10 	addl	$16, %esp
e0107187:	89 d1 	movl	%edx, %ecx
e0107189:	80 e1 07 	andb	$7, %cl
e010718c:	80 c1 03 	addb	$3, %cl
e010718f:	38 c1 	cmpb	%al, %cl
e0107191:	0f 8c 0b ff ff ff 	jl	-245 <vsnprintf+0x132>
e0107197:	83 ec 0c 	subl	$12, %esp
e010719a:	52 	pushl	%edx
e010719b:	e8 f0 15 00 00 	calll	5616 <__asan_report_load4>
e01071a0:	83 c4 10 	addl	$16, %esp
e01071a3:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01071ad:	0f 1f 00 	nopl	(%eax)
e01071b0:	55 	pushl	%ebp
e01071b1:	89 e5 	movl	%esp, %ebp
e01071b3:	53 	pushl	%ebx
e01071b4:	56 	pushl	%esi
e01071b5:	83 ec 10 	subl	$16, %esp
e01071b8:	8b 5d 0c 	movl	12(%ebp), %ebx
e01071bb:	8d 4b 08 	leal	8(%ebx), %ecx
e01071be:	89 c8 	movl	%ecx, %eax
e01071c0:	c1 e8 03 	shrl	$3, %eax
e01071c3:	8a 90 00 00 80 de 	movb	-562036736(%eax), %dl
e01071c9:	84 d2 	testb	%dl, %dl
e01071cb:	75 56 	jne	86 <sprintputch+0x73>
e01071cd:	ff 43 08 	incl	8(%ebx)
e01071d0:	89 da 	movl	%ebx, %edx
e01071d2:	c1 ea 03 	shrl	$3, %edx
e01071d5:	8a 8a 00 00 80 de 	movb	-562036736(%edx), %cl
e01071db:	84 c9 	testb	%cl, %cl
e01071dd:	75 56 	jne	86 <sprintputch+0x85>
e01071df:	8b 0b 	movl	(%ebx), %ecx
e01071e1:	89 de 	movl	%ebx, %esi
e01071e3:	8d 5b 04 	leal	4(%ebx), %ebx
e01071e6:	89 d8 	movl	%ebx, %eax
e01071e8:	c1 e8 03 	shrl	$3, %eax
e01071eb:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01071f1:	84 c0 	testb	%al, %al
e01071f3:	75 52 	jne	82 <sprintputch+0x97>
e01071f5:	3b 0b 	cmpl	(%ebx), %ecx
e01071f7:	73 23 	jae	35 <sprintputch+0x6c>
e01071f9:	8a 82 00 00 80 de 	movb	-562036736(%edx), %al
e01071ff:	84 c0 	testb	%al, %al
e0107201:	75 58 	jne	88 <sprintputch+0xab>
e0107203:	8d 41 01 	leal	1(%ecx), %eax
e0107206:	89 06 	movl	%eax, (%esi)
e0107208:	89 c8 	movl	%ecx, %eax
e010720a:	c1 e8 03 	shrl	$3, %eax
e010720d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0107213:	84 c0 	testb	%al, %al
e0107215:	75 58 	jne	88 <sprintputch+0xbf>
e0107217:	8b 45 08 	movl	8(%ebp), %eax
e010721a:	88 01 	movb	%al, (%ecx)
e010721c:	83 c4 10 	addl	$16, %esp
e010721f:	5e 	popl	%esi
e0107220:	5b 	popl	%ebx
e0107221:	5d 	popl	%ebp
e0107222:	c3 	retl
e0107223:	89 c8 	movl	%ecx, %eax
e0107225:	24 07 	andb	$7, %al
e0107227:	04 03 	addb	$3, %al
e0107229:	38 d0 	cmpb	%dl, %al
e010722b:	7c a0 	jl	-96 <sprintputch+0x1d>
e010722d:	89 0c 24 	movl	%ecx, (%esp)
e0107230:	e8 5b 15 00 00 	calll	5467 <__asan_report_load4>
e0107235:	89 d8 	movl	%ebx, %eax
e0107237:	24 07 	andb	$7, %al
e0107239:	04 03 	addb	$3, %al
e010723b:	38 c8 	cmpb	%cl, %al
e010723d:	7c a0 	jl	-96 <sprintputch+0x2f>
e010723f:	89 1c 24 	movl	%ebx, (%esp)
e0107242:	e8 49 15 00 00 	calll	5449 <__asan_report_load4>
e0107247:	88 dc 	movb	%bl, %ah
e0107249:	80 e4 07 	andb	$7, %ah
e010724c:	80 c4 03 	addb	$3, %ah
e010724f:	38 c4 	cmpb	%al, %ah
e0107251:	7c a2 	jl	-94 <sprintputch+0x45>
e0107253:	89 1c 24 	movl	%ebx, (%esp)
e0107256:	e8 35 15 00 00 	calll	5429 <__asan_report_load4>
e010725b:	89 f2 	movl	%esi, %edx
e010725d:	80 e2 07 	andb	$7, %dl
e0107260:	80 c2 03 	addb	$3, %dl
e0107263:	38 c2 	cmpb	%al, %dl
e0107265:	7c 9c 	jl	-100 <sprintputch+0x53>
e0107267:	89 34 24 	movl	%esi, (%esp)
e010726a:	e8 41 15 00 00 	calll	5441 <__asan_report_store4>
e010726f:	89 ca 	movl	%ecx, %edx
e0107271:	80 e2 07 	andb	$7, %dl
e0107274:	38 c2 	cmpb	%al, %dl
e0107276:	7c 9f 	jl	-97 <sprintputch+0x67>
e0107278:	89 0c 24 	movl	%ecx, (%esp)
e010727b:	e8 b0 14 00 00 	calll	5296 <__asan_report_store1>
e0107280:	55 	pushl	%ebp
e0107281:	89 e5 	movl	%esp, %ebp
e0107283:	53 	pushl	%ebx
e0107284:	57 	pushl	%edi
e0107285:	56 	pushl	%esi
e0107286:	83 e4 e0 	andl	$-32, %esp
e0107289:	83 ec 40 	subl	$64, %esp
e010728c:	89 e6 	movl	%esp, %esi
e010728e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0107295:	74 0f 	je	15 <snprintf+0x26>
e0107297:	83 ec 0c 	subl	$12, %esp
e010729a:	6a 20 	pushl	$32
e010729c:	e8 ef 16 00 00 	calll	5871 <__asan_stack_malloc_0>
e01072a1:	83 c4 10 	addl	$16, %esp
e01072a4:	eb 02 	jmp	2 <snprintf+0x28>
e01072a6:	31 c0 	xorl	%eax, %eax
e01072a8:	85 c0 	testl	%eax, %eax
e01072aa:	89 46 18 	movl	%eax, 24(%esi)
e01072ad:	89 c3 	movl	%eax, %ebx
e01072af:	75 0a 	jne	10 <snprintf+0x3b>
e01072b1:	89 e3 	movl	%esp, %ebx
e01072b3:	83 c3 e0 	addl	$-32, %ebx
e01072b6:	83 e3 e0 	andl	$-32, %ebx
e01072b9:	89 dc 	movl	%ebx, %esp
e01072bb:	89 5e 1c 	movl	%ebx, 28(%esi)
e01072be:	8d 43 10 	leal	16(%ebx), %eax
e01072c1:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e01072c7:	c7 43 04 14 a2 10 e0 	movl	$3759186452, 4(%ebx)
e01072ce:	c7 43 08 80 72 10 e0 	movl	$3759174272, 8(%ebx)
e01072d5:	89 df 	movl	%ebx, %edi
e01072d7:	c1 ef 03 	shrl	$3, %edi
e01072da:	c7 87 00 00 80 de f1 f1 f8 f3 	movl	$4093178353, -562036736(%edi)
e01072e4:	c6 87 02 00 80 de 04 	movb	$4, -562036734(%edi)
e01072eb:	8d 4d 14 	leal	20(%ebp), %ecx
e01072ee:	89 4b 10 	movl	%ecx, 16(%ebx)
e01072f1:	89 c1 	movl	%eax, %ecx
e01072f3:	c1 e9 03 	shrl	$3, %ecx
e01072f6:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01072fc:	84 c9 	testb	%cl, %cl
e01072fe:	75 56 	jne	86 <snprintf+0xd6>
e0107300:	ff 73 10 	pushl	16(%ebx)
e0107303:	ff 75 10 	pushl	16(%ebp)
e0107306:	ff 75 0c 	pushl	12(%ebp)
e0107309:	ff 75 08 	pushl	8(%ebp)
e010730c:	e8 5f fc ff ff 	calll	-929 <vsnprintf>
e0107311:	83 c4 10 	addl	$16, %esp
e0107314:	c6 87 02 00 80 de f8 	movb	$-8, -562036734(%edi)
e010731b:	c7 03 0e 36 e0 45 	movl	$1172321806, (%ebx)
e0107321:	8b 4e 18 	movl	24(%esi), %ecx
e0107324:	85 c9 	testl	%ecx, %ecx
e0107326:	74 1c 	je	28 <snprintf+0xc4>
e0107328:	c7 87 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edi)
e0107332:	c7 87 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edi)
e010733c:	8b 49 3c 	movl	60(%ecx), %ecx
e010733f:	c6 01 00 	movb	$0, (%ecx)
e0107342:	eb 0a 	jmp	10 <snprintf+0xce>
e0107344:	c7 87 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edi)
e010734e:	8d 65 f4 	leal	-12(%ebp), %esp
e0107351:	5e 	popl	%esi
e0107352:	5f 	popl	%edi
e0107353:	5b 	popl	%ebx
e0107354:	5d 	popl	%ebp
e0107355:	c3 	retl
e0107356:	89 c2 	movl	%eax, %edx
e0107358:	80 e2 07 	andb	$7, %dl
e010735b:	80 c2 03 	addb	$3, %dl
e010735e:	38 ca 	cmpb	%cl, %dl
e0107360:	7c 9e 	jl	-98 <snprintf+0x80>
e0107362:	83 ec 0c 	subl	$12, %esp
e0107365:	50 	pushl	%eax
e0107366:	e8 25 14 00 00 	calll	5157 <__asan_report_load4>
e010736b:	83 c4 10 	addl	$16, %esp
e010736e:	66 90 	nop
e0107370:	83 ec 0c 	subl	$12, %esp
e0107373:	e8 88 19 00 00 	calll	6536 <__asan_init>
e0107378:	e8 a3 1a 00 00 	calll	6819 <__asan_version_mismatch_check_v8>
e010737d:	83 ec 08 	subl	$8, %esp
e0107380:	6a 0b 	pushl	$11
e0107382:	68 00 18 12 e0 	pushl	$3759282176
e0107387:	e8 a4 19 00 00 	calll	6564 <__asan_register_globals>
e010738c:	83 c4 1c 	addl	$28, %esp
e010738f:	c3 	retl
e0107390:	83 ec 14 	subl	$20, %esp
e0107393:	6a 0b 	pushl	$11
e0107395:	68 00 18 12 e0 	pushl	$3759282176
e010739a:	e8 e1 19 00 00 	calll	6625 <__asan_unregister_globals>
e010739f:	83 c4 1c 	addl	$28, %esp
e01073a2:	c3 	retl
e01073a3:	cc 	int3
e01073a4:	cc 	int3
e01073a5:	cc 	int3
e01073a6:	cc 	int3
e01073a7:	cc 	int3
e01073a8:	cc 	int3
e01073a9:	cc 	int3
e01073aa:	cc 	int3
e01073ab:	cc 	int3
e01073ac:	cc 	int3
e01073ad:	cc 	int3
e01073ae:	cc 	int3
e01073af:	cc 	int3
e01073b0:	55 	pushl	%ebp
e01073b1:	89 e5 	movl	%esp, %ebp
e01073b3:	53 	pushl	%ebx
e01073b4:	57 	pushl	%edi
e01073b5:	56 	pushl	%esi
e01073b6:	83 ec 0c 	subl	$12, %esp
e01073b9:	8b 45 08 	movl	8(%ebp), %eax
e01073bc:	85 c0 	testl	%eax, %eax
e01073be:	74 10 	je	16 <readline+0x20>
e01073c0:	89 44 24 04 	movl	%eax, 4(%esp)
e01073c4:	c7 04 24 40 dc 10 e0 	movl	$3759201344, (%esp)
e01073cb:	e8 70 cb ff ff 	calll	-13456 <cprintf>
e01073d0:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e01073d7:	e8 64 92 ff ff 	calll	-28060 <iscons>
e01073dc:	89 c6 	movl	%eax, %esi
e01073de:	e8 3d 92 ff ff 	calll	-28099 <getchar>
e01073e3:	89 c3 	movl	%eax, %ebx
e01073e5:	85 c0 	testl	%eax, %eax
e01073e7:	0f 88 9f 00 00 00 	js	159 <readline+0xdc>
e01073ed:	31 ff 	xorl	%edi, %edi
e01073ef:	90 	nop
e01073f0:	83 fb 7f 	cmpl	$127, %ebx
e01073f3:	74 05 	je	5 <readline+0x4a>
e01073f5:	83 fb 08 	cmpl	$8, %ebx
e01073f8:	75 26 	jne	38 <readline+0x70>
e01073fa:	85 ff 	testl	%edi, %edi
e01073fc:	7e 22 	jle	34 <readline+0x70>
e01073fe:	85 f6 	testl	%esi, %esi
e0107400:	74 0c 	je	12 <readline+0x5e>
e0107402:	c7 04 24 08 00 00 00 	movl	$8, (%esp)
e0107409:	e8 e2 91 ff ff 	calll	-28190 <cputchar>
e010740e:	4f 	decl	%edi
e010740f:	eb 59 	jmp	89 <readline+0xba>
e0107411:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010741b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0107420:	81 ff fe 03 00 00 	cmpl	$1022, %edi
e0107426:	7f 38 	jg	56 <readline+0xb0>
e0107428:	83 fb 20 	cmpl	$32, %ebx
e010742b:	7c 33 	jl	51 <readline+0xb0>
e010742d:	85 f6 	testl	%esi, %esi
e010742f:	74 08 	je	8 <readline+0x89>
e0107431:	89 1c 24 	movl	%ebx, (%esp)
e0107434:	e8 b7 91 ff ff 	calll	-28233 <cputchar>
e0107439:	8d 87 20 29 12 e0 	leal	-535680736(%edi), %eax
e010743f:	89 c1 	movl	%eax, %ecx
e0107441:	c1 e9 03 	shrl	$3, %ecx
e0107444:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e010744b:	84 c9 	testb	%cl, %cl
e010744d:	75 2c 	jne	44 <readline+0xcb>
e010744f:	47 	incl	%edi
e0107450:	88 18 	movb	%bl, (%eax)
e0107452:	eb 16 	jmp	22 <readline+0xba>
e0107454:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010745e:	66 90 	nop
e0107460:	83 fb 0d 	cmpl	$13, %ebx
e0107463:	74 41 	je	65 <readline+0xf6>
e0107465:	83 fb 0a 	cmpl	$10, %ebx
e0107468:	74 3c 	je	60 <readline+0xf6>
e010746a:	e8 b1 91 ff ff 	calll	-28239 <getchar>
e010746f:	89 c3 	movl	%eax, %ebx
e0107471:	85 c0 	testl	%eax, %eax
e0107473:	0f 89 77 ff ff ff 	jns	-137 <readline+0x40>
e0107479:	eb 11 	jmp	17 <readline+0xdc>
e010747b:	89 c2 	movl	%eax, %edx
e010747d:	80 e2 07 	andb	$7, %dl
e0107480:	38 ca 	cmpb	%cl, %dl
e0107482:	7c cb 	jl	-53 <readline+0x9f>
e0107484:	89 04 24 	movl	%eax, (%esp)
e0107487:	e8 a4 12 00 00 	calll	4772 <__asan_report_store1>
e010748c:	89 5c 24 04 	movl	%ebx, 4(%esp)
e0107490:	c7 04 24 80 dc 10 e0 	movl	$3759201408, (%esp)
e0107497:	e8 a4 ca ff ff 	calll	-13660 <cprintf>
e010749c:	31 c0 	xorl	%eax, %eax
e010749e:	83 c4 0c 	addl	$12, %esp
e01074a1:	5e 	popl	%esi
e01074a2:	5f 	popl	%edi
e01074a3:	5b 	popl	%ebx
e01074a4:	5d 	popl	%ebp
e01074a5:	c3 	retl
e01074a6:	85 f6 	testl	%esi, %esi
e01074a8:	74 0c 	je	12 <readline+0x106>
e01074aa:	c7 04 24 0a 00 00 00 	movl	$10, (%esp)
e01074b1:	e8 3a 91 ff ff 	calll	-28358 <cputchar>
e01074b6:	8d 87 20 29 12 e0 	leal	-535680736(%edi), %eax
e01074bc:	89 c1 	movl	%eax, %ecx
e01074be:	c1 e9 03 	shrl	$3, %ecx
e01074c1:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01074c7:	84 c9 	testb	%cl, %cl
e01074c9:	75 0a 	jne	10 <readline+0x125>
e01074cb:	c6 00 00 	movb	$0, (%eax)
e01074ce:	b8 20 29 12 e0 	movl	$3759286560, %eax
e01074d3:	eb c9 	jmp	-55 <readline+0xee>
e01074d5:	89 c2 	movl	%eax, %edx
e01074d7:	80 e2 07 	andb	$7, %dl
e01074da:	38 ca 	cmpb	%cl, %dl
e01074dc:	7c ed 	jl	-19 <readline+0x11b>
e01074de:	89 04 24 	movl	%eax, (%esp)
e01074e1:	e8 4a 12 00 00 	calll	4682 <__asan_report_store1>
e01074e6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01074f0:	83 ec 0c 	subl	$12, %esp
e01074f3:	e8 08 18 00 00 	calll	6152 <__asan_init>
e01074f8:	e8 23 19 00 00 	calll	6435 <__asan_version_mismatch_check_v8>
e01074fd:	83 ec 08 	subl	$8, %esp
e0107500:	6a 03 	pushl	$3
e0107502:	68 60 19 12 e0 	pushl	$3759282528
e0107507:	e8 24 18 00 00 	calll	6180 <__asan_register_globals>
e010750c:	83 c4 1c 	addl	$28, %esp
e010750f:	c3 	retl
e0107510:	83 ec 14 	subl	$20, %esp
e0107513:	6a 03 	pushl	$3
e0107515:	68 60 19 12 e0 	pushl	$3759282528
e010751a:	e8 61 18 00 00 	calll	6241 <__asan_unregister_globals>
e010751f:	83 c4 1c 	addl	$28, %esp
e0107522:	c3 	retl
e0107523:	cc 	int3
e0107524:	cc 	int3
e0107525:	cc 	int3
e0107526:	cc 	int3
e0107527:	cc 	int3
e0107528:	cc 	int3
e0107529:	cc 	int3
e010752a:	cc 	int3
e010752b:	cc 	int3
e010752c:	cc 	int3
e010752d:	cc 	int3
e010752e:	cc 	int3
e010752f:	cc 	int3
e0107530:	55 	pushl	%ebp
e0107531:	89 e5 	movl	%esp, %ebp
e0107533:	53 	pushl	%ebx
e0107534:	56 	pushl	%esi
e0107535:	83 ec 10 	subl	$16, %esp
e0107538:	8b 4d 08 	movl	8(%ebp), %ecx
e010753b:	89 c8 	movl	%ecx, %eax
e010753d:	c1 e8 03 	shrl	$3, %eax
e0107540:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0107546:	84 c0 	testb	%al, %al
e0107548:	75 4b 	jne	75 <strlen+0x65>
e010754a:	80 39 00 	cmpb	$0, (%ecx)
e010754d:	74 3d 	je	61 <strlen+0x5c>
e010754f:	41 	incl	%ecx
e0107550:	31 c0 	xorl	%eax, %eax
e0107552:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010755c:	0f 1f 40 00 	nopl	(%eax)
e0107560:	8d 14 01 	leal	(%ecx,%eax), %edx
e0107563:	89 d6 	movl	%edx, %esi
e0107565:	c1 ee 03 	shrl	$3, %esi
e0107568:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e010756f:	84 db 	testb	%bl, %bl
e0107571:	75 08 	jne	8 <strlen+0x4b>
e0107573:	40 	incl	%eax
e0107574:	80 3a 00 	cmpb	$0, (%edx)
e0107577:	75 e7 	jne	-25 <strlen+0x30>
e0107579:	eb 13 	jmp	19 <strlen+0x5e>
e010757b:	88 d7 	movb	%dl, %bh
e010757d:	80 e7 07 	andb	$7, %bh
e0107580:	38 df 	cmpb	%bl, %bh
e0107582:	7c ef 	jl	-17 <strlen+0x43>
e0107584:	89 14 24 	movl	%edx, (%esp)
e0107587:	e8 64 11 00 00 	calll	4452 <__asan_report_load1>
e010758c:	31 c0 	xorl	%eax, %eax
e010758e:	83 c4 10 	addl	$16, %esp
e0107591:	5e 	popl	%esi
e0107592:	5b 	popl	%ebx
e0107593:	5d 	popl	%ebp
e0107594:	c3 	retl
e0107595:	89 ca 	movl	%ecx, %edx
e0107597:	80 e2 07 	andb	$7, %dl
e010759a:	38 c2 	cmpb	%al, %dl
e010759c:	7c ac 	jl	-84 <strlen+0x1a>
e010759e:	89 0c 24 	movl	%ecx, (%esp)
e01075a1:	e8 4a 11 00 00 	calll	4426 <__asan_report_load1>
e01075a6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01075b0:	55 	pushl	%ebp
e01075b1:	89 e5 	movl	%esp, %ebp
e01075b3:	53 	pushl	%ebx
e01075b4:	56 	pushl	%esi
e01075b5:	83 ec 10 	subl	$16, %esp
e01075b8:	8b 4d 0c 	movl	12(%ebp), %ecx
e01075bb:	85 c9 	testl	%ecx, %ecx
e01075bd:	74 41 	je	65 <strnlen+0x50>
e01075bf:	8b 75 08 	movl	8(%ebp), %esi
e01075c2:	31 c0 	xorl	%eax, %eax
e01075c4:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01075ce:	66 90 	nop
e01075d0:	8d 1c 06 	leal	(%esi,%eax), %ebx
e01075d3:	89 da 	movl	%ebx, %edx
e01075d5:	c1 ea 03 	shrl	$3, %edx
e01075d8:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e01075df:	84 d2 	testb	%dl, %dl
e01075e1:	75 0c 	jne	12 <strnlen+0x3f>
e01075e3:	80 3b 00 	cmpb	$0, (%ebx)
e01075e6:	74 1a 	je	26 <strnlen+0x52>
e01075e8:	40 	incl	%eax
e01075e9:	39 c1 	cmpl	%eax, %ecx
e01075eb:	75 e3 	jne	-29 <strnlen+0x20>
e01075ed:	eb 13 	jmp	19 <strnlen+0x52>
e01075ef:	88 de 	movb	%bl, %dh
e01075f1:	80 e6 07 	andb	$7, %dh
e01075f4:	38 d6 	cmpb	%dl, %dh
e01075f6:	7c eb 	jl	-21 <strnlen+0x33>
e01075f8:	89 1c 24 	movl	%ebx, (%esp)
e01075fb:	e8 f0 10 00 00 	calll	4336 <__asan_report_load1>
e0107600:	31 c0 	xorl	%eax, %eax
e0107602:	83 c4 10 	addl	$16, %esp
e0107605:	5e 	popl	%esi
e0107606:	5b 	popl	%ebx
e0107607:	5d 	popl	%ebp
e0107608:	c3 	retl
e0107609:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0107610:	55 	pushl	%ebp
e0107611:	89 e5 	movl	%esp, %ebp
e0107613:	53 	pushl	%ebx
e0107614:	57 	pushl	%edi
e0107615:	56 	pushl	%esi
e0107616:	83 ec 0c 	subl	$12, %esp
e0107619:	8b 4d 0c 	movl	12(%ebp), %ecx
e010761c:	8b 7d 08 	movl	8(%ebp), %edi
e010761f:	89 fa 	movl	%edi, %edx
e0107621:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010762b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0107630:	89 ce 	movl	%ecx, %esi
e0107632:	c1 ee 03 	shrl	$3, %esi
e0107635:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e010763c:	84 db 	testb	%bl, %bl
e010763e:	75 1d 	jne	29 <strcpy+0x4d>
e0107640:	0f b6 19 	movzbl	(%ecx), %ebx
e0107643:	89 d6 	movl	%edx, %esi
e0107645:	c1 ee 03 	shrl	$3, %esi
e0107648:	0f b6 86 00 00 80 de 	movzbl	-562036736(%esi), %eax
e010764f:	84 c0 	testb	%al, %al
e0107651:	75 15 	jne	21 <strcpy+0x58>
e0107653:	41 	incl	%ecx
e0107654:	88 1a 	movb	%bl, (%edx)
e0107656:	42 	incl	%edx
e0107657:	84 db 	testb	%bl, %bl
e0107659:	75 d5 	jne	-43 <strcpy+0x20>
e010765b:	eb 1c 	jmp	28 <strcpy+0x69>
e010765d:	88 cf 	movb	%cl, %bh
e010765f:	80 e7 07 	andb	$7, %bh
e0107662:	38 df 	cmpb	%bl, %bh
e0107664:	7c da 	jl	-38 <strcpy+0x30>
e0107666:	eb 1b 	jmp	27 <strcpy+0x73>
e0107668:	88 d7 	movb	%dl, %bh
e010766a:	80 e7 07 	andb	$7, %bh
e010766d:	38 c7 	cmpb	%al, %bh
e010766f:	7c e2 	jl	-30 <strcpy+0x43>
e0107671:	89 14 24 	movl	%edx, (%esp)
e0107674:	e8 b7 10 00 00 	calll	4279 <__asan_report_store1>
e0107679:	89 f8 	movl	%edi, %eax
e010767b:	83 c4 0c 	addl	$12, %esp
e010767e:	5e 	popl	%esi
e010767f:	5f 	popl	%edi
e0107680:	5b 	popl	%ebx
e0107681:	5d 	popl	%ebp
e0107682:	c3 	retl
e0107683:	89 0c 24 	movl	%ecx, (%esp)
e0107686:	e8 65 10 00 00 	calll	4197 <__asan_report_load1>
e010768b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0107690:	55 	pushl	%ebp
e0107691:	89 e5 	movl	%esp, %ebp
e0107693:	57 	pushl	%edi
e0107694:	56 	pushl	%esi
e0107695:	83 ec 10 	subl	$16, %esp
e0107698:	8b 7d 0c 	movl	12(%ebp), %edi
e010769b:	8b 75 08 	movl	8(%ebp), %esi
e010769e:	89 34 24 	movl	%esi, (%esp)
e01076a1:	e8 8a fe ff ff 	calll	-374 <strlen>
e01076a6:	01 f0 	addl	%esi, %eax
e01076a8:	89 7c 24 04 	movl	%edi, 4(%esp)
e01076ac:	89 04 24 	movl	%eax, (%esp)
e01076af:	e8 5c ff ff ff 	calll	-164 <strcpy>
e01076b4:	89 f0 	movl	%esi, %eax
e01076b6:	83 c4 10 	addl	$16, %esp
e01076b9:	5e 	popl	%esi
e01076ba:	5f 	popl	%edi
e01076bb:	5d 	popl	%ebp
e01076bc:	c3 	retl
e01076bd:	0f 1f 00 	nopl	(%eax)
e01076c0:	55 	pushl	%ebp
e01076c1:	89 e5 	movl	%esp, %ebp
e01076c3:	53 	pushl	%ebx
e01076c4:	57 	pushl	%edi
e01076c5:	56 	pushl	%esi
e01076c6:	83 ec 0c 	subl	$12, %esp
e01076c9:	8b 4d 10 	movl	16(%ebp), %ecx
e01076cc:	8b 75 08 	movl	8(%ebp), %esi
e01076cf:	85 c9 	testl	%ecx, %ecx
e01076d1:	74 62 	je	98 <strncpy+0x75>
e01076d3:	8b 55 0c 	movl	12(%ebp), %edx
e01076d6:	89 f3 	movl	%esi, %ebx
e01076d8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e01076e0:	89 d0 	movl	%edx, %eax
e01076e2:	c1 e8 03 	shrl	$3, %eax
e01076e5:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01076ec:	84 c0 	testb	%al, %al
e01076ee:	75 23 	jne	35 <strncpy+0x53>
e01076f0:	0f b6 02 	movzbl	(%edx), %eax
e01076f3:	89 df 	movl	%ebx, %edi
e01076f5:	c1 ef 03 	shrl	$3, %edi
e01076f8:	8a a7 00 00 80 de 	movb	-562036736(%edi), %ah
e01076fe:	84 e4 	testb	%ah, %ah
e0107700:	75 1c 	jne	28 <strncpy+0x5e>
e0107702:	88 03 	movb	%al, (%ebx)
e0107704:	43 	incl	%ebx
e0107705:	8d 42 01 	leal	1(%edx), %eax
e0107708:	80 3a 00 	cmpb	$0, (%edx)
e010770b:	0f 45 d0 	cmovnel	%eax, %edx
e010770e:	49 	decl	%ecx
e010770f:	75 cf 	jne	-49 <strncpy+0x20>
e0107711:	eb 22 	jmp	34 <strncpy+0x75>
e0107713:	88 d4 	movb	%dl, %ah
e0107715:	80 e4 07 	andb	$7, %ah
e0107718:	38 c4 	cmpb	%al, %ah
e010771a:	7c d4 	jl	-44 <strncpy+0x30>
e010771c:	eb 21 	jmp	33 <strncpy+0x7f>
e010771e:	88 45 f3 	movb	%al, -13(%ebp)
e0107721:	88 d8 	movb	%bl, %al
e0107723:	24 07 	andb	$7, %al
e0107725:	38 e0 	cmpb	%ah, %al
e0107727:	0f b6 45 f3 	movzbl	-13(%ebp), %eax
e010772b:	7c d5 	jl	-43 <strncpy+0x42>
e010772d:	89 1c 24 	movl	%ebx, (%esp)
e0107730:	e8 fb 0f 00 00 	calll	4091 <__asan_report_store1>
e0107735:	89 f0 	movl	%esi, %eax
e0107737:	83 c4 0c 	addl	$12, %esp
e010773a:	5e 	popl	%esi
e010773b:	5f 	popl	%edi
e010773c:	5b 	popl	%ebx
e010773d:	5d 	popl	%ebp
e010773e:	c3 	retl
e010773f:	89 14 24 	movl	%edx, (%esp)
e0107742:	e8 a9 0f 00 00 	calll	4009 <__asan_report_load1>
e0107747:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0107750:	55 	pushl	%ebp
e0107751:	89 e5 	movl	%esp, %ebp
e0107753:	53 	pushl	%ebx
e0107754:	57 	pushl	%edi
e0107755:	56 	pushl	%esi
e0107756:	83 ec 0c 	subl	$12, %esp
e0107759:	8b 7d 10 	movl	16(%ebp), %edi
e010775c:	8b 4d 08 	movl	8(%ebp), %ecx
e010775f:	85 ff 	testl	%edi, %edi
e0107761:	89 c8 	movl	%ecx, %eax
e0107763:	0f 84 7c 00 00 00 	je	124 <strlcpy+0x95>
e0107769:	83 ff 01 	cmpl	$1, %edi
e010776c:	89 c8 	movl	%ecx, %eax
e010776e:	74 5f 	je	95 <strlcpy+0x7f>
e0107770:	8b 55 0c 	movl	12(%ebp), %edx
e0107773:	be 01 00 00 00 	movl	$1, %esi
e0107778:	29 fe 	subl	%edi, %esi
e010777a:	89 c8 	movl	%ecx, %eax
e010777c:	0f 1f 40 00 	nopl	(%eax)
e0107780:	89 d7 	movl	%edx, %edi
e0107782:	c1 ef 03 	shrl	$3, %edi
e0107785:	0f b6 9f 00 00 80 de 	movzbl	-562036736(%edi), %ebx
e010778c:	84 db 	testb	%bl, %bl
e010778e:	75 1f 	jne	31 <strlcpy+0x5f>
e0107790:	0f b6 1a 	movzbl	(%edx), %ebx
e0107793:	84 db 	testb	%bl, %bl
e0107795:	74 38 	je	56 <strlcpy+0x7f>
e0107797:	89 c7 	movl	%eax, %edi
e0107799:	c1 ef 03 	shrl	$3, %edi
e010779c:	8a bf 00 00 80 de 	movb	-562036736(%edi), %bh
e01077a2:	84 ff 	testb	%bh, %bh
e01077a4:	75 14 	jne	20 <strlcpy+0x6a>
e01077a6:	42 	incl	%edx
e01077a7:	88 18 	movb	%bl, (%eax)
e01077a9:	40 	incl	%eax
e01077aa:	46 	incl	%esi
e01077ab:	75 d3 	jne	-45 <strlcpy+0x30>
e01077ad:	eb 20 	jmp	32 <strlcpy+0x7f>
e01077af:	88 d7 	movb	%dl, %bh
e01077b1:	80 e7 07 	andb	$7, %bh
e01077b4:	38 df 	cmpb	%bl, %bh
e01077b6:	7c d8 	jl	-40 <strlcpy+0x40>
e01077b8:	eb 46 	jmp	70 <strlcpy+0xb0>
e01077ba:	89 cf 	movl	%ecx, %edi
e01077bc:	89 c1 	movl	%eax, %ecx
e01077be:	80 e1 07 	andb	$7, %cl
e01077c1:	38 f9 	cmpb	%bh, %cl
e01077c3:	89 f9 	movl	%edi, %ecx
e01077c5:	7c df 	jl	-33 <strlcpy+0x56>
e01077c7:	89 04 24 	movl	%eax, (%esp)
e01077ca:	e8 61 0f 00 00 	calll	3937 <__asan_report_store1>
e01077cf:	89 ce 	movl	%ecx, %esi
e01077d1:	89 c1 	movl	%eax, %ecx
e01077d3:	c1 e9 03 	shrl	$3, %ecx
e01077d6:	8a 91 00 00 80 de 	movb	-562036736(%ecx), %dl
e01077dc:	84 d2 	testb	%dl, %dl
e01077de:	75 0f 	jne	15 <strlcpy+0x9f>
e01077e0:	c6 00 00 	movb	$0, (%eax)
e01077e3:	89 f1 	movl	%esi, %ecx
e01077e5:	29 c8 	subl	%ecx, %eax
e01077e7:	83 c4 0c 	addl	$12, %esp
e01077ea:	5e 	popl	%esi
e01077eb:	5f 	popl	%edi
e01077ec:	5b 	popl	%ebx
e01077ed:	5d 	popl	%ebp
e01077ee:	c3 	retl
e01077ef:	89 c1 	movl	%eax, %ecx
e01077f1:	80 e1 07 	andb	$7, %cl
e01077f4:	38 d1 	cmpb	%dl, %cl
e01077f6:	7c e8 	jl	-24 <strlcpy+0x90>
e01077f8:	89 04 24 	movl	%eax, (%esp)
e01077fb:	e8 30 0f 00 00 	calll	3888 <__asan_report_store1>
e0107800:	89 14 24 	movl	%edx, (%esp)
e0107803:	e8 e8 0e 00 00 	calll	3816 <__asan_report_load1>
e0107808:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0107810:	55 	pushl	%ebp
e0107811:	89 e5 	movl	%esp, %ebp
e0107813:	53 	pushl	%ebx
e0107814:	56 	pushl	%esi
e0107815:	83 ec 10 	subl	$16, %esp
e0107818:	8b 45 08 	movl	8(%ebp), %eax
e010781b:	89 c1 	movl	%eax, %ecx
e010781d:	c1 e9 03 	shrl	$3, %ecx
e0107820:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0107826:	84 c9 	testb	%cl, %cl
e0107828:	0f 85 7d 00 00 00 	jne	125 <strcmp+0x9b>
e010782e:	8b 4d 0c 	movl	12(%ebp), %ecx
e0107831:	8a 10 	movb	(%eax), %dl
e0107833:	84 d2 	testb	%dl, %dl
e0107835:	74 54 	je	84 <strcmp+0x7b>
e0107837:	40 	incl	%eax
e0107838:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0107840:	89 ce 	movl	%ecx, %esi
e0107842:	c1 ee 03 	shrl	$3, %esi
e0107845:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e010784c:	84 db 	testb	%bl, %bl
e010784e:	75 1f 	jne	31 <strcmp+0x5f>
e0107850:	3a 11 	cmpb	(%ecx), %dl
e0107852:	75 39 	jne	57 <strcmp+0x7d>
e0107854:	89 c2 	movl	%eax, %edx
e0107856:	c1 ea 03 	shrl	$3, %edx
e0107859:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0107860:	84 d2 	testb	%dl, %dl
e0107862:	75 16 	jne	22 <strcmp+0x6a>
e0107864:	41 	incl	%ecx
e0107865:	0f b6 10 	movzbl	(%eax), %edx
e0107868:	40 	incl	%eax
e0107869:	84 d2 	testb	%dl, %dl
e010786b:	75 d3 	jne	-45 <strcmp+0x30>
e010786d:	eb 1c 	jmp	28 <strcmp+0x7b>
e010786f:	88 cf 	movb	%cl, %bh
e0107871:	80 e7 07 	andb	$7, %bh
e0107874:	38 df 	cmpb	%bl, %bh
e0107876:	7c d8 	jl	-40 <strcmp+0x40>
e0107878:	eb 57 	jmp	87 <strcmp+0xc1>
e010787a:	88 c6 	movb	%al, %dh
e010787c:	80 e6 07 	andb	$7, %dh
e010787f:	38 d6 	cmpb	%dl, %dh
e0107881:	7c e1 	jl	-31 <strcmp+0x54>
e0107883:	89 04 24 	movl	%eax, (%esp)
e0107886:	e8 65 0e 00 00 	calll	3685 <__asan_report_load1>
e010788b:	31 d2 	xorl	%edx, %edx
e010788d:	89 c8 	movl	%ecx, %eax
e010788f:	c1 e8 03 	shrl	$3, %eax
e0107892:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0107898:	84 c0 	testb	%al, %al
e010789a:	75 24 	jne	36 <strcmp+0xb0>
e010789c:	0f b6 c2 	movzbl	%dl, %eax
e010789f:	0f b6 09 	movzbl	(%ecx), %ecx
e01078a2:	29 c8 	subl	%ecx, %eax
e01078a4:	83 c4 10 	addl	$16, %esp
e01078a7:	5e 	popl	%esi
e01078a8:	5b 	popl	%ebx
e01078a9:	5d 	popl	%ebp
e01078aa:	c3 	retl
e01078ab:	89 c2 	movl	%eax, %edx
e01078ad:	80 e2 07 	andb	$7, %dl
e01078b0:	38 ca 	cmpb	%cl, %dl
e01078b2:	0f 8c 76 ff ff ff 	jl	-138 <strcmp+0x1e>
e01078b8:	89 04 24 	movl	%eax, (%esp)
e01078bb:	e8 30 0e 00 00 	calll	3632 <__asan_report_load1>
e01078c0:	88 cc 	movb	%cl, %ah
e01078c2:	80 e4 07 	andb	$7, %ah
e01078c5:	38 c4 	cmpb	%al, %ah
e01078c7:	7c d3 	jl	-45 <strcmp+0x8c>
e01078c9:	89 0c 24 	movl	%ecx, (%esp)
e01078cc:	e8 1f 0e 00 00 	calll	3615 <__asan_report_load1>
e01078d1:	89 0c 24 	movl	%ecx, (%esp)
e01078d4:	e8 17 0e 00 00 	calll	3607 <__asan_report_load1>
e01078d9:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e01078e0:	55 	pushl	%ebp
e01078e1:	89 e5 	movl	%esp, %ebp
e01078e3:	53 	pushl	%ebx
e01078e4:	57 	pushl	%edi
e01078e5:	56 	pushl	%esi
e01078e6:	83 ec 0c 	subl	$12, %esp
e01078e9:	8b 75 10 	movl	16(%ebp), %esi
e01078ec:	c7 45 f0 00 00 00 00 	movl	$0, -16(%ebp)
e01078f3:	85 f6 	testl	%esi, %esi
e01078f5:	74 7c 	je	124 <strncmp+0x93>
e01078f7:	8b 4d 0c 	movl	12(%ebp), %ecx
e01078fa:	8b 5d 08 	movl	8(%ebp), %ebx
e01078fd:	0f 1f 00 	nopl	(%eax)
e0107900:	89 da 	movl	%ebx, %edx
e0107902:	c1 ea 03 	shrl	$3, %edx
e0107905:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e010790c:	84 d2 	testb	%dl, %dl
e010790e:	75 21 	jne	33 <strncmp+0x51>
e0107910:	0f b6 13 	movzbl	(%ebx), %edx
e0107913:	85 d2 	testl	%edx, %edx
e0107915:	74 43 	je	67 <strncmp+0x7a>
e0107917:	89 cf 	movl	%ecx, %edi
e0107919:	c1 ef 03 	shrl	$3, %edi
e010791c:	8a a7 00 00 80 de 	movb	-562036736(%edi), %ah
e0107922:	84 e4 	testb	%ah, %ah
e0107924:	75 16 	jne	22 <strncmp+0x5c>
e0107926:	3a 11 	cmpb	(%ecx), %dl
e0107928:	75 30 	jne	48 <strncmp+0x7a>
e010792a:	43 	incl	%ebx
e010792b:	41 	incl	%ecx
e010792c:	4e 	decl	%esi
e010792d:	75 d1 	jne	-47 <strncmp+0x20>
e010792f:	eb 42 	jmp	66 <strncmp+0x93>
e0107931:	88 de 	movb	%bl, %dh
e0107933:	80 e6 07 	andb	$7, %dh
e0107936:	38 d6 	cmpb	%dl, %dh
e0107938:	7c d6 	jl	-42 <strncmp+0x30>
e010793a:	eb 53 	jmp	83 <strncmp+0xaf>
e010793c:	88 e0 	movb	%ah, %al
e010793e:	89 d7 	movl	%edx, %edi
e0107940:	89 ca 	movl	%ecx, %edx
e0107942:	80 e2 07 	andb	$7, %dl
e0107945:	38 e2 	cmpb	%ah, %dl
e0107947:	89 fa 	movl	%edi, %edx
e0107949:	c7 45 f0 00 00 00 00 	movl	$0, -16(%ebp)
e0107950:	7c d4 	jl	-44 <strncmp+0x46>
e0107952:	89 0c 24 	movl	%ecx, (%esp)
e0107955:	e8 96 0d 00 00 	calll	3478 <__asan_report_load1>
e010795a:	89 d0 	movl	%edx, %eax
e010795c:	89 ca 	movl	%ecx, %edx
e010795e:	c1 ea 03 	shrl	$3, %edx
e0107961:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0107967:	84 d2 	testb	%dl, %dl
e0107969:	75 13 	jne	19 <strncmp+0x9e>
e010796b:	0f b6 09 	movzbl	(%ecx), %ecx
e010796e:	29 c8 	subl	%ecx, %eax
e0107970:	89 45 f0 	movl	%eax, -16(%ebp)
e0107973:	8b 45 f0 	movl	-16(%ebp), %eax
e0107976:	83 c4 0c 	addl	$12, %esp
e0107979:	5e 	popl	%esi
e010797a:	5f 	popl	%edi
e010797b:	5b 	popl	%ebx
e010797c:	5d 	popl	%ebp
e010797d:	c3 	retl
e010797e:	88 ce 	movb	%cl, %dh
e0107980:	80 e6 07 	andb	$7, %dh
e0107983:	38 d6 	cmpb	%dl, %dh
e0107985:	7c e4 	jl	-28 <strncmp+0x8b>
e0107987:	89 0c 24 	movl	%ecx, (%esp)
e010798a:	e8 61 0d 00 00 	calll	3425 <__asan_report_load1>
e010798f:	89 1c 24 	movl	%ebx, (%esp)
e0107992:	e8 59 0d 00 00 	calll	3417 <__asan_report_load1>
e0107997:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e01079a0:	55 	pushl	%ebp
e01079a1:	89 e5 	movl	%esp, %ebp
e01079a3:	53 	pushl	%ebx
e01079a4:	56 	pushl	%esi
e01079a5:	83 ec 10 	subl	$16, %esp
e01079a8:	8b 4d 08 	movl	8(%ebp), %ecx
e01079ab:	89 c8 	movl	%ecx, %eax
e01079ad:	c1 e8 03 	shrl	$3, %eax
e01079b0:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01079b6:	84 c0 	testb	%al, %al
e01079b8:	75 4d 	jne	77 <strchr+0x67>
e01079ba:	8a 31 	movb	(%ecx), %dh
e01079bc:	31 c0 	xorl	%eax, %eax
e01079be:	84 f6 	testb	%dh, %dh
e01079c0:	74 3e 	je	62 <strchr+0x60>
e01079c2:	8a 55 0c 	movb	12(%ebp), %dl
e01079c5:	41 	incl	%ecx
e01079c6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01079d0:	38 d6 	cmpb	%dl, %dh
e01079d2:	74 29 	je	41 <strchr+0x5d>
e01079d4:	89 ce 	movl	%ecx, %esi
e01079d6:	c1 ee 03 	shrl	$3, %esi
e01079d9:	8a b6 00 00 80 de 	movb	-562036736(%esi), %dh
e01079df:	84 f6 	testb	%dh, %dh
e01079e1:	75 09 	jne	9 <strchr+0x4c>
e01079e3:	8a 31 	movb	(%ecx), %dh
e01079e5:	41 	incl	%ecx
e01079e6:	84 f6 	testb	%dh, %dh
e01079e8:	75 e6 	jne	-26 <strchr+0x30>
e01079ea:	eb 14 	jmp	20 <strchr+0x60>
e01079ec:	89 cb 	movl	%ecx, %ebx
e01079ee:	80 e3 07 	andb	$7, %bl
e01079f1:	38 f3 	cmpb	%dh, %bl
e01079f3:	7c ee 	jl	-18 <strchr+0x43>
e01079f5:	89 0c 24 	movl	%ecx, (%esp)
e01079f8:	e8 f3 0c 00 00 	calll	3315 <__asan_report_load1>
e01079fd:	49 	decl	%ecx
e01079fe:	89 c8 	movl	%ecx, %eax
e0107a00:	83 c4 10 	addl	$16, %esp
e0107a03:	5e 	popl	%esi
e0107a04:	5b 	popl	%ebx
e0107a05:	5d 	popl	%ebp
e0107a06:	c3 	retl
e0107a07:	89 ca 	movl	%ecx, %edx
e0107a09:	80 e2 07 	andb	$7, %dl
e0107a0c:	38 c2 	cmpb	%al, %dl
e0107a0e:	7c aa 	jl	-86 <strchr+0x1a>
e0107a10:	89 0c 24 	movl	%ecx, (%esp)
e0107a13:	e8 d8 0c 00 00 	calll	3288 <__asan_report_load1>
e0107a18:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0107a20:	55 	pushl	%ebp
e0107a21:	89 e5 	movl	%esp, %ebp
e0107a23:	83 ec 08 	subl	$8, %esp
e0107a26:	8a 4d 0c 	movb	12(%ebp), %cl
e0107a29:	8b 45 08 	movl	8(%ebp), %eax
e0107a2c:	0f 1f 40 00 	nopl	(%eax)
e0107a30:	89 c2 	movl	%eax, %edx
e0107a32:	c1 ea 03 	shrl	$3, %edx
e0107a35:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0107a3c:	84 d2 	testb	%dl, %dl
e0107a3e:	75 0e 	jne	14 <strfind+0x2e>
e0107a40:	0f b6 10 	movzbl	(%eax), %edx
e0107a43:	40 	incl	%eax
e0107a44:	84 d2 	testb	%dl, %dl
e0107a46:	74 17 	je	23 <strfind+0x3f>
e0107a48:	38 ca 	cmpb	%cl, %dl
e0107a4a:	75 e4 	jne	-28 <strfind+0x10>
e0107a4c:	eb 11 	jmp	17 <strfind+0x3f>
e0107a4e:	88 c5 	movb	%al, %ch
e0107a50:	80 e5 07 	andb	$7, %ch
e0107a53:	38 d5 	cmpb	%dl, %ch
e0107a55:	7c e9 	jl	-23 <strfind+0x20>
e0107a57:	89 04 24 	movl	%eax, (%esp)
e0107a5a:	e8 91 0c 00 00 	calll	3217 <__asan_report_load1>
e0107a5f:	48 	decl	%eax
e0107a60:	83 c4 08 	addl	$8, %esp
e0107a63:	5d 	popl	%ebp
e0107a64:	c3 	retl
e0107a65:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0107a6f:	90 	nop
e0107a70:	57 	pushl	%edi
e0107a71:	56 	pushl	%esi
e0107a72:	8b 4c 24 14 	movl	20(%esp), %ecx
e0107a76:	8b 7c 24 0c 	movl	12(%esp), %edi
e0107a7a:	85 c9 	testl	%ecx, %ecx
e0107a7c:	74 2c 	je	44 <memset+0x3a>
e0107a7e:	8b 44 24 10 	movl	16(%esp), %eax
e0107a82:	89 fa 	movl	%edi, %edx
e0107a84:	09 ca 	orl	%ecx, %edx
e0107a86:	f6 c2 03 	testb	$3, %dl
e0107a89:	74 05 	je	5 <memset+0x20>
e0107a8b:	fc 	cld
e0107a8c:	f3 aa 	rep		stosb	%al, %es:(%edi)
e0107a8e:	eb 1a 	jmp	26 <memset+0x3a>
e0107a90:	0f b6 d0 	movzbl	%al, %edx
e0107a93:	c1 e0 18 	shll	$24, %eax
e0107a96:	89 d6 	movl	%edx, %esi
e0107a98:	09 d0 	orl	%edx, %eax
e0107a9a:	c1 e2 10 	shll	$16, %edx
e0107a9d:	c1 e6 08 	shll	$8, %esi
e0107aa0:	09 d0 	orl	%edx, %eax
e0107aa2:	09 f0 	orl	%esi, %eax
e0107aa4:	c1 e9 02 	shrl	$2, %ecx
e0107aa7:	fc 	cld
e0107aa8:	f3 ab 	rep		stosl	%eax, %es:(%edi)
e0107aaa:	89 f8 	movl	%edi, %eax
e0107aac:	5e 	popl	%esi
e0107aad:	5f 	popl	%edi
e0107aae:	c3 	retl
e0107aaf:	90 	nop
e0107ab0:	53 	pushl	%ebx
e0107ab1:	57 	pushl	%edi
e0107ab2:	56 	pushl	%esi
e0107ab3:	8b 4c 24 18 	movl	24(%esp), %ecx
e0107ab7:	8b 5c 24 14 	movl	20(%esp), %ebx
e0107abb:	8b 44 24 10 	movl	16(%esp), %eax
e0107abf:	39 c3 	cmpl	%eax, %ebx
e0107ac1:	73 22 	jae	34 <memmove+0x35>
e0107ac3:	8d 14 0b 	leal	(%ebx,%ecx), %edx
e0107ac6:	39 c2 	cmpl	%eax, %edx
e0107ac8:	76 1b 	jbe	27 <memmove+0x35>
e0107aca:	8d 3c 08 	leal	(%eax,%ecx), %edi
e0107acd:	f6 c2 03 	testb	$3, %dl
e0107ad0:	75 09 	jne	9 <memmove+0x2b>
e0107ad2:	89 fb 	movl	%edi, %ebx
e0107ad4:	09 cb 	orl	%ecx, %ebx
e0107ad6:	f6 c3 03 	testb	$3, %bl
e0107ad9:	74 2f 	je	47 <memmove+0x5a>
e0107adb:	4f 	decl	%edi
e0107adc:	4a 	decl	%edx
e0107add:	89 d6 	movl	%edx, %esi
e0107adf:	fd 	std
e0107ae0:	f3 a4 	rep		movsb	(%esi), %es:(%edi)
e0107ae2:	fc 	cld
e0107ae3:	eb 15 	jmp	21 <memmove+0x4a>
e0107ae5:	f6 c3 03 	testb	$3, %bl
e0107ae8:	75 09 	jne	9 <memmove+0x43>
e0107aea:	89 c2 	movl	%eax, %edx
e0107aec:	09 ca 	orl	%ecx, %edx
e0107aee:	f6 c2 03 	testb	$3, %dl
e0107af1:	74 0b 	je	11 <memmove+0x4e>
e0107af3:	89 c7 	movl	%eax, %edi
e0107af5:	89 de 	movl	%ebx, %esi
e0107af7:	fc 	cld
e0107af8:	f3 a4 	rep		movsb	(%esi), %es:(%edi)
e0107afa:	5e 	popl	%esi
e0107afb:	5f 	popl	%edi
e0107afc:	5b 	popl	%ebx
e0107afd:	c3 	retl
e0107afe:	c1 e9 02 	shrl	$2, %ecx
e0107b01:	89 c7 	movl	%eax, %edi
e0107b03:	89 de 	movl	%ebx, %esi
e0107b05:	fc 	cld
e0107b06:	f3 a5 	rep		movsl	(%esi), %es:(%edi)
e0107b08:	eb f0 	jmp	-16 <memmove+0x4a>
e0107b0a:	83 c7 fc 	addl	$-4, %edi
e0107b0d:	83 c2 fc 	addl	$-4, %edx
e0107b10:	c1 e9 02 	shrl	$2, %ecx
e0107b13:	89 d6 	movl	%edx, %esi
e0107b15:	fd 	std
e0107b16:	f3 a5 	rep		movsl	(%esi), %es:(%edi)
e0107b18:	fc 	cld
e0107b19:	eb df 	jmp	-33 <memmove+0x4a>
e0107b1b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0107b20:	eb 8e 	jmp	-114 <memmove>
e0107b22:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0107b2c:	0f 1f 40 00 	nopl	(%eax)
e0107b30:	55 	pushl	%ebp
e0107b31:	89 e5 	movl	%esp, %ebp
e0107b33:	53 	pushl	%ebx
e0107b34:	57 	pushl	%edi
e0107b35:	56 	pushl	%esi
e0107b36:	83 ec 0c 	subl	$12, %esp
e0107b39:	8b 75 10 	movl	16(%ebp), %esi
e0107b3c:	31 c0 	xorl	%eax, %eax
e0107b3e:	85 f6 	testl	%esi, %esi
e0107b40:	74 69 	je	105 <memcmp+0x7b>
e0107b42:	8b 55 0c 	movl	12(%ebp), %edx
e0107b45:	8b 5d 08 	movl	8(%ebp), %ebx
e0107b48:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0107b50:	89 d8 	movl	%ebx, %eax
e0107b52:	c1 e8 03 	shrl	$3, %eax
e0107b55:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0107b5c:	84 c0 	testb	%al, %al
e0107b5e:	75 25 	jne	37 <memcmp+0x55>
e0107b60:	0f b6 3b 	movzbl	(%ebx), %edi
e0107b63:	89 d0 	movl	%edx, %eax
e0107b65:	c1 e8 03 	shrl	$3, %eax
e0107b68:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0107b6f:	84 c0 	testb	%al, %al
e0107b71:	75 1d 	jne	29 <memcmp+0x60>
e0107b73:	0f b6 02 	movzbl	(%edx), %eax
e0107b76:	89 f9 	movl	%edi, %ecx
e0107b78:	38 c1 	cmpb	%al, %cl
e0107b7a:	75 25 	jne	37 <memcmp+0x71>
e0107b7c:	4e 	decl	%esi
e0107b7d:	43 	incl	%ebx
e0107b7e:	42 	incl	%edx
e0107b7f:	85 f6 	testl	%esi, %esi
e0107b81:	75 cd 	jne	-51 <memcmp+0x20>
e0107b83:	eb 24 	jmp	36 <memcmp+0x79>
e0107b85:	88 dc 	movb	%bl, %ah
e0107b87:	80 e4 07 	andb	$7, %ah
e0107b8a:	38 c4 	cmpb	%al, %ah
e0107b8c:	7c d2 	jl	-46 <memcmp+0x30>
e0107b8e:	eb 23 	jmp	35 <memcmp+0x83>
e0107b90:	88 d4 	movb	%dl, %ah
e0107b92:	80 e4 07 	andb	$7, %ah
e0107b95:	38 c4 	cmpb	%al, %ah
e0107b97:	7c da 	jl	-38 <memcmp+0x43>
e0107b99:	89 14 24 	movl	%edx, (%esp)
e0107b9c:	e8 4f 0b 00 00 	calll	2895 <__asan_report_load1>
e0107ba1:	89 fe 	movl	%edi, %esi
e0107ba3:	29 c6 	subl	%eax, %esi
e0107ba5:	89 f0 	movl	%esi, %eax
e0107ba7:	eb 02 	jmp	2 <memcmp+0x7b>
e0107ba9:	31 c0 	xorl	%eax, %eax
e0107bab:	83 c4 0c 	addl	$12, %esp
e0107bae:	5e 	popl	%esi
e0107baf:	5f 	popl	%edi
e0107bb0:	5b 	popl	%ebx
e0107bb1:	5d 	popl	%ebp
e0107bb2:	c3 	retl
e0107bb3:	89 1c 24 	movl	%ebx, (%esp)
e0107bb6:	e8 35 0b 00 00 	calll	2869 <__asan_report_load1>
e0107bbb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0107bc0:	55 	pushl	%ebp
e0107bc1:	89 e5 	movl	%esp, %ebp
e0107bc3:	53 	pushl	%ebx
e0107bc4:	56 	pushl	%esi
e0107bc5:	83 ec 10 	subl	$16, %esp
e0107bc8:	8b 45 08 	movl	8(%ebp), %eax
e0107bcb:	8b 4d 10 	movl	16(%ebp), %ecx
e0107bce:	85 c9 	testl	%ecx, %ecx
e0107bd0:	7e 3a 	jle	58 <memfind+0x4c>
e0107bd2:	8b 55 0c 	movl	12(%ebp), %edx
e0107bd5:	01 c1 	addl	%eax, %ecx
e0107bd7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0107be0:	89 c6 	movl	%eax, %esi
e0107be2:	c1 ee 03 	shrl	$3, %esi
e0107be5:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e0107bec:	84 db 	testb	%bl, %bl
e0107bee:	75 0b 	jne	11 <memfind+0x3b>
e0107bf0:	38 10 	cmpb	%dl, (%eax)
e0107bf2:	74 18 	je	24 <memfind+0x4c>
e0107bf4:	40 	incl	%eax
e0107bf5:	39 c8 	cmpl	%ecx, %eax
e0107bf7:	72 e7 	jb	-25 <memfind+0x20>
e0107bf9:	eb 11 	jmp	17 <memfind+0x4c>
e0107bfb:	88 c7 	movb	%al, %bh
e0107bfd:	80 e7 07 	andb	$7, %bh
e0107c00:	38 df 	cmpb	%bl, %bh
e0107c02:	7c ec 	jl	-20 <memfind+0x30>
e0107c04:	89 04 24 	movl	%eax, (%esp)
e0107c07:	e8 e4 0a 00 00 	calll	2788 <__asan_report_load1>
e0107c0c:	83 c4 10 	addl	$16, %esp
e0107c0f:	5e 	popl	%esi
e0107c10:	5b 	popl	%ebx
e0107c11:	5d 	popl	%ebp
e0107c12:	c3 	retl
e0107c13:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0107c1d:	0f 1f 00 	nopl	(%eax)
e0107c20:	55 	pushl	%ebp
e0107c21:	89 e5 	movl	%esp, %ebp
e0107c23:	53 	pushl	%ebx
e0107c24:	57 	pushl	%edi
e0107c25:	56 	pushl	%esi
e0107c26:	83 ec 0c 	subl	$12, %esp
e0107c29:	8b 75 10 	movl	16(%ebp), %esi
e0107c2c:	8b 45 08 	movl	8(%ebp), %eax
e0107c2f:	eb 10 	jmp	16 <strtol+0x21>
e0107c31:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0107c3b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0107c40:	40 	incl	%eax
e0107c41:	89 c1 	movl	%eax, %ecx
e0107c43:	c1 e9 03 	shrl	$3, %ecx
e0107c46:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0107c4d:	84 c9 	testb	%cl, %cl
e0107c4f:	75 15 	jne	21 <strtol+0x46>
e0107c51:	0f b6 08 	movzbl	(%eax), %ecx
e0107c54:	80 c1 f7 	addb	$-9, %cl
e0107c57:	80 f9 24 	cmpb	$36, %cl
e0107c5a:	77 1c 	ja	28 <strtol+0x58>
e0107c5c:	0f b6 c9 	movzbl	%cl, %ecx
e0107c5f:	ff 24 8d fc dc 10 e0 	jmpl	*-535765764(,%ecx,4)
e0107c66:	89 c2 	movl	%eax, %edx
e0107c68:	80 e2 07 	andb	$7, %dl
e0107c6b:	38 ca 	cmpb	%cl, %dl
e0107c6d:	7c e2 	jl	-30 <strtol+0x31>
e0107c6f:	89 04 24 	movl	%eax, (%esp)
e0107c72:	e8 79 0a 00 00 	calll	2681 <__asan_report_load1>
e0107c77:	40 	incl	%eax
e0107c78:	31 d2 	xorl	%edx, %edx
e0107c7a:	eb 06 	jmp	6 <strtol+0x62>
e0107c7c:	40 	incl	%eax
e0107c7d:	ba 01 00 00 00 	movl	$1, %edx
e0107c82:	89 f1 	movl	%esi, %ecx
e0107c84:	83 c9 10 	orl	$16, %ecx
e0107c87:	83 f9 10 	cmpl	$16, %ecx
e0107c8a:	89 55 f0 	movl	%edx, -16(%ebp)
e0107c8d:	75 3d 	jne	61 <strtol+0xac>
e0107c8f:	89 c1 	movl	%eax, %ecx
e0107c91:	c1 e9 03 	shrl	$3, %ecx
e0107c94:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0107c9a:	84 c9 	testb	%cl, %cl
e0107c9c:	0f 85 e8 00 00 00 	jne	232 <strtol+0x16a>
e0107ca2:	80 38 30 	cmpb	$48, (%eax)
e0107ca5:	75 25 	jne	37 <strtol+0xac>
e0107ca7:	8d 48 01 	leal	1(%eax), %ecx
e0107caa:	89 cf 	movl	%ecx, %edi
e0107cac:	c1 ef 03 	shrl	$3, %edi
e0107caf:	8a 9f 00 00 80 de 	movb	-562036736(%edi), %bl
e0107cb5:	84 db 	testb	%bl, %bl
e0107cb7:	0f 85 fa 00 00 00 	jne	250 <strtol+0x197>
e0107cbd:	80 39 78 	cmpb	$120, (%ecx)
e0107cc0:	75 0a 	jne	10 <strtol+0xac>
e0107cc2:	83 c0 02 	addl	$2, %eax
e0107cc5:	bf 10 00 00 00 	movl	$16, %edi
e0107cca:	eb 2e 	jmp	46 <strtol+0xda>
e0107ccc:	85 f6 	testl	%esi, %esi
e0107cce:	75 20 	jne	32 <strtol+0xd0>
e0107cd0:	89 c1 	movl	%eax, %ecx
e0107cd2:	c1 e9 03 	shrl	$3, %ecx
e0107cd5:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0107cdb:	84 c9 	testb	%cl, %cl
e0107cdd:	0f 85 e9 00 00 00 	jne	233 <strtol+0x1ac>
e0107ce3:	80 38 30 	cmpb	$48, (%eax)
e0107ce6:	75 08 	jne	8 <strtol+0xd0>
e0107ce8:	40 	incl	%eax
e0107ce9:	bf 08 00 00 00 	movl	$8, %edi
e0107cee:	eb 0a 	jmp	10 <strtol+0xda>
e0107cf0:	85 f6 	testl	%esi, %esi
e0107cf2:	bf 0a 00 00 00 	movl	$10, %edi
e0107cf7:	0f 45 fe 	cmovnel	%esi, %edi
e0107cfa:	31 f6 	xorl	%esi, %esi
e0107cfc:	eb 08 	jmp	8 <strtol+0xe6>
e0107cfe:	66 90 	nop
e0107d00:	40 	incl	%eax
e0107d01:	0f af f7 	imull	%edi, %esi
e0107d04:	01 ce 	addl	%ecx, %esi
e0107d06:	89 c1 	movl	%eax, %ecx
e0107d08:	c1 e9 03 	shrl	$3, %ecx
e0107d0b:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0107d12:	84 c9 	testb	%cl, %cl
e0107d14:	75 38 	jne	56 <strtol+0x12e>
e0107d16:	0f be 18 	movsbl	(%eax), %ebx
e0107d19:	89 da 	movl	%ebx, %edx
e0107d1b:	80 c2 d0 	addb	$-48, %dl
e0107d1e:	b9 d0 ff ff ff 	movl	$4294967248, %ecx
e0107d23:	80 fa 0a 	cmpb	$10, %dl
e0107d26:	72 1e 	jb	30 <strtol+0x126>
e0107d28:	89 da 	movl	%ebx, %edx
e0107d2a:	80 c2 9f 	addb	$-97, %dl
e0107d2d:	b9 a9 ff ff ff 	movl	$4294967209, %ecx
e0107d32:	80 fa 1a 	cmpb	$26, %dl
e0107d35:	72 0f 	jb	15 <strtol+0x126>
e0107d37:	89 da 	movl	%ebx, %edx
e0107d39:	80 c2 bf 	addb	$-65, %dl
e0107d3c:	b9 c9 ff ff ff 	movl	$4294967241, %ecx
e0107d41:	80 fa 19 	cmpb	$25, %dl
e0107d44:	77 19 	ja	25 <strtol+0x13f>
e0107d46:	01 d9 	addl	%ebx, %ecx
e0107d48:	39 f9 	cmpl	%edi, %ecx
e0107d4a:	7c b4 	jl	-76 <strtol+0xe0>
e0107d4c:	eb 11 	jmp	17 <strtol+0x13f>
e0107d4e:	88 c5 	movb	%al, %ch
e0107d50:	80 e5 07 	andb	$7, %ch
e0107d53:	38 cd 	cmpb	%cl, %ch
e0107d55:	7c bf 	jl	-65 <strtol+0xf6>
e0107d57:	89 04 24 	movl	%eax, (%esp)
e0107d5a:	e8 91 09 00 00 	calll	2449 <__asan_report_load1>
e0107d5f:	8b 55 0c 	movl	12(%ebp), %edx
e0107d62:	85 d2 	testl	%edx, %edx
e0107d64:	74 11 	je	17 <strtol+0x157>
e0107d66:	89 d1 	movl	%edx, %ecx
e0107d68:	c1 e9 03 	shrl	$3, %ecx
e0107d6b:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0107d71:	84 c9 	testb	%cl, %cl
e0107d73:	75 2a 	jne	42 <strtol+0x17f>
e0107d75:	89 02 	movl	%eax, (%edx)
e0107d77:	89 f0 	movl	%esi, %eax
e0107d79:	f7 d8 	negl	%eax
e0107d7b:	83 7d f0 00 	cmpl	$0, -16(%ebp)
e0107d7f:	0f 44 c6 	cmovel	%esi, %eax
e0107d82:	83 c4 0c 	addl	$12, %esp
e0107d85:	5e 	popl	%esi
e0107d86:	5f 	popl	%edi
e0107d87:	5b 	popl	%ebx
e0107d88:	5d 	popl	%ebp
e0107d89:	c3 	retl
e0107d8a:	88 c5 	movb	%al, %ch
e0107d8c:	80 e5 07 	andb	$7, %ch
e0107d8f:	38 cd 	cmpb	%cl, %ch
e0107d91:	0f 8c 0b ff ff ff 	jl	-245 <strtol+0x82>
e0107d97:	89 04 24 	movl	%eax, (%esp)
e0107d9a:	e8 51 09 00 00 	calll	2385 <__asan_report_load1>
e0107d9f:	8b 55 0c 	movl	12(%ebp), %edx
e0107da2:	80 e2 07 	andb	$7, %dl
e0107da5:	80 c2 03 	addb	$3, %dl
e0107da8:	38 ca 	cmpb	%cl, %dl
e0107daa:	8b 55 0c 	movl	12(%ebp), %edx
e0107dad:	7c c6 	jl	-58 <strtol+0x155>
e0107daf:	89 14 24 	movl	%edx, (%esp)
e0107db2:	e8 f9 09 00 00 	calll	2553 <__asan_report_store4>
e0107db7:	88 cf 	movb	%cl, %bh
e0107db9:	80 e7 07 	andb	$7, %bh
e0107dbc:	38 df 	cmpb	%bl, %bh
e0107dbe:	0f 8c f9 fe ff ff 	jl	-263 <strtol+0x9d>
e0107dc4:	89 0c 24 	movl	%ecx, (%esp)
e0107dc7:	e8 24 09 00 00 	calll	2340 <__asan_report_load1>
e0107dcc:	88 c5 	movb	%al, %ch
e0107dce:	80 e5 07 	andb	$7, %ch
e0107dd1:	38 cd 	cmpb	%cl, %ch
e0107dd3:	0f 8c 0a ff ff ff 	jl	-246 <strtol+0xc3>
e0107dd9:	89 04 24 	movl	%eax, (%esp)
e0107ddc:	e8 0f 09 00 00 	calll	2319 <__asan_report_load1>
e0107de1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0107deb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0107df0:	83 ec 0c 	subl	$12, %esp
e0107df3:	e8 08 0f 00 00 	calll	3848 <__asan_init>
e0107df8:	e8 23 10 00 00 	calll	4131 <__asan_version_mismatch_check_v8>
e0107dfd:	83 c4 0c 	addl	$12, %esp
e0107e00:	c3 	retl
e0107e01:	cc 	int3
e0107e02:	cc 	int3
e0107e03:	cc 	int3
e0107e04:	cc 	int3
e0107e05:	cc 	int3
e0107e06:	cc 	int3
e0107e07:	cc 	int3
e0107e08:	cc 	int3
e0107e09:	cc 	int3
e0107e0a:	cc 	int3
e0107e0b:	cc 	int3
e0107e0c:	cc 	int3
e0107e0d:	cc 	int3
e0107e0e:	cc 	int3
e0107e0f:	cc 	int3
e0107e10:	55 	pushl	%ebp
e0107e11:	89 e5 	movl	%esp, %ebp
e0107e13:	57 	pushl	%edi
e0107e14:	56 	pushl	%esi
e0107e15:	83 ec 10 	subl	$16, %esp
e0107e18:	31 f6 	xorl	%esi, %esi
e0107e1a:	bf a8 3b 12 e0 	movl	$3759291304, %edi
e0107e1f:	c1 ef 03 	shrl	$3, %edi
e0107e22:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0107e2c:	0f 1f 40 00 	nopl	(%eax)
e0107e30:	e8 eb 00 00 00 	calll	235 <quick_pit_calibrate>
e0107e35:	0f b6 8f 00 00 80 de 	movzbl	-562036736(%edi), %ecx
e0107e3c:	84 c9 	testb	%cl, %cl
e0107e3e:	75 11 	jne	17 <tsc_calibrate+0x41>
e0107e40:	a3 a8 3b 12 e0 	movl	%eax, 3759291304
e0107e45:	85 c0 	testl	%eax, %eax
e0107e47:	75 4d 	jne	77 <tsc_calibrate+0x86>
e0107e49:	46 	incl	%esi
e0107e4a:	83 fe 64 	cmpl	$100, %esi
e0107e4d:	72 e1 	jb	-31 <tsc_calibrate+0x20>
e0107e4f:	eb 1b 	jmp	27 <tsc_calibrate+0x5c>
e0107e51:	ba a8 3b 12 e0 	movl	$3759291304, %edx
e0107e56:	80 e2 07 	andb	$7, %dl
e0107e59:	80 c2 03 	addb	$3, %dl
e0107e5c:	38 ca 	cmpb	%cl, %dl
e0107e5e:	7c e0 	jl	-32 <tsc_calibrate+0x30>
e0107e60:	c7 04 24 a8 3b 12 e0 	movl	$3759291304, (%esp)
e0107e67:	e8 44 09 00 00 	calll	2372 <__asan_report_store4>
e0107e6c:	75 28 	jne	40 <tsc_calibrate+0x86>
e0107e6e:	b8 a8 3b 12 e0 	movl	$3759291304, %eax
e0107e73:	c1 e8 03 	shrl	$3, %eax
e0107e76:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0107e7c:	84 c0 	testb	%al, %al
e0107e7e:	75 78 	jne	120 <tsc_calibrate+0xe8>
e0107e80:	c7 05 a8 3b 12 e0 a0 25 26 00 	movl	$2500000, -535675992
e0107e8a:	c7 04 24 a0 dd 10 e0 	movl	$3759201696, (%esp)
e0107e91:	e8 aa c0 ff ff 	calll	-16214 <cprintf>
e0107e96:	b8 a8 3b 12 e0 	movl	$3759291304, %eax
e0107e9b:	c1 e8 03 	shrl	$3, %eax
e0107e9e:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0107ea4:	84 c0 	testb	%al, %al
e0107ea6:	75 35 	jne	53 <tsc_calibrate+0xcd>
e0107ea8:	8b 0d a8 3b 12 e0 	movl	-535675992, %ecx
e0107eae:	ba d3 4d 62 10 	movl	$274877907, %edx
e0107eb3:	89 c8 	movl	%ecx, %eax
e0107eb5:	f7 e2 	mull	%edx
e0107eb7:	c1 ea 06 	shrl	$6, %edx
e0107eba:	69 c2 e8 03 00 00 	imull	$1000, %edx, %eax
e0107ec0:	29 c1 	subl	%eax, %ecx
e0107ec2:	89 54 24 04 	movl	%edx, 4(%esp)
e0107ec6:	89 4c 24 08 	movl	%ecx, 8(%esp)
e0107eca:	c7 04 24 00 de 10 e0 	movl	$3759201792, (%esp)
e0107ed1:	e8 6a c0 ff ff 	calll	-16278 <cprintf>
e0107ed6:	83 c4 10 	addl	$16, %esp
e0107ed9:	5e 	popl	%esi
e0107eda:	5f 	popl	%edi
e0107edb:	5d 	popl	%ebp
e0107edc:	c3 	retl
e0107edd:	b9 a8 3b 12 e0 	movl	$3759291304, %ecx
e0107ee2:	80 e1 07 	andb	$7, %cl
e0107ee5:	80 c1 03 	addb	$3, %cl
e0107ee8:	38 c1 	cmpb	%al, %cl
e0107eea:	7c bc 	jl	-68 <tsc_calibrate+0x98>
e0107eec:	c7 04 24 a8 3b 12 e0 	movl	$3759291304, (%esp)
e0107ef3:	e8 98 08 00 00 	calll	2200 <__asan_report_load4>
e0107ef8:	b9 a8 3b 12 e0 	movl	$3759291304, %ecx
e0107efd:	80 e1 07 	andb	$7, %cl
e0107f00:	80 c1 03 	addb	$3, %cl
e0107f03:	38 c1 	cmpb	%al, %cl
e0107f05:	0f 8c 75 ff ff ff 	jl	-139 <tsc_calibrate+0x70>
e0107f0b:	c7 04 24 a8 3b 12 e0 	movl	$3759291304, (%esp)
e0107f12:	e8 99 08 00 00 	calll	2201 <__asan_report_store4>
e0107f17:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0107f20:	55 	pushl	%ebp
e0107f21:	89 e5 	movl	%esp, %ebp
e0107f23:	53 	pushl	%ebx
e0107f24:	57 	pushl	%edi
e0107f25:	56 	pushl	%esi
e0107f26:	83 e4 e0 	andl	$-32, %esp
e0107f29:	81 ec e0 00 00 00 	subl	$224, %esp
e0107f2f:	8d 74 24 50 	leal	80(%esp), %esi
e0107f33:	8d bc 24 90 00 00 00 	leal	144(%esp), %edi
e0107f3a:	c7 44 24 40 b3 8a b5 41 	movl	$1102416563, 64(%esp)
e0107f42:	c7 44 24 44 3f a2 10 e0 	movl	$3759186495, 68(%esp)
e0107f4a:	c7 44 24 48 20 7f 10 e0 	movl	$3759177504, 72(%esp)
e0107f52:	8d 44 24 40 	leal	64(%esp), %eax
e0107f56:	c1 e8 03 	shrl	$3, %eax
e0107f59:	c7 80 00 00 80 de f1 f1 f8 f2 	movl	$4076401137, -562036736(%eax)
e0107f63:	c7 80 04 00 80 de f2 f2 f8 f2 	movl	$4076401394, -562036732(%eax)
e0107f6d:	c7 80 08 00 80 de f2 f2 f8 f2 	movl	$4076401394, -562036728(%eax)
e0107f77:	66 c7 80 0c 00 80 de f8 f3 	movw	$62456, -562036724(%eax)
e0107f80:	c6 80 02 00 80 de 00 	movb	$0, -562036734(%eax)
e0107f87:	c6 80 06 00 80 de 00 	movb	$0, -562036730(%eax)
e0107f8e:	c6 80 0a 00 80 de 04 	movb	$4, -562036726(%eax)
e0107f95:	89 44 24 34 	movl	%eax, 52(%esp)
e0107f99:	c6 80 0c 00 80 de 04 	movb	$4, -562036724(%eax)
e0107fa0:	ba 61 00 00 00 	movl	$97, %edx
e0107fa5:	ec 	inb	%dx, %al
e0107fa6:	24 fc 	andb	$-4, %al
e0107fa8:	0c 01 	orb	$1, %al
e0107faa:	ba 61 00 00 00 	movl	$97, %edx
e0107faf:	ee 	outb	%al, %dx
e0107fb0:	b0 b0 	movb	$-80, %al
e0107fb2:	ba 43 00 00 00 	movl	$67, %edx
e0107fb7:	ee 	outb	%al, %dx
e0107fb8:	b0 ff 	movb	$-1, %al
e0107fba:	ba 42 00 00 00 	movl	$66, %edx
e0107fbf:	ee 	outb	%al, %dx
e0107fc0:	b0 ff 	movb	$-1, %al
e0107fc2:	ba 42 00 00 00 	movl	$66, %edx
e0107fc7:	ee 	outb	%al, %dx
e0107fc8:	31 db 	xorl	%ebx, %ebx
e0107fca:	31 c9 	xorl	%ecx, %ecx
e0107fcc:	e8 5f 03 00 00 	calll	863 <pit_verify_msb>
e0107fd1:	89 3c 24 	movl	%edi, (%esp)
e0107fd4:	b9 ff 00 00 00 	movl	$255, %ecx
e0107fd9:	89 f2 	movl	%esi, %edx
e0107fdb:	e8 70 03 00 00 	calll	880 <pit_expect_msb>
e0107fe0:	85 c0 	testl	%eax, %eax
e0107fe2:	0f 84 c2 01 00 00 	je	450 <quick_pit_calibrate+0x28a>
e0107fe8:	8d 74 24 70 	leal	112(%esp), %esi
e0107fec:	bf 01 00 00 00 	movl	$1, %edi
e0107ff1:	b0 fd 	movb	$-3, %al
e0107ff3:	bb 00 e8 03 00 	movl	$256000, %ebx
e0107ff8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0108000:	88 44 24 23 	movb	%al, 35(%esp)
e0108004:	fe c0 	incb	%al
e0108006:	8d 8c 24 a0 00 00 00 	leal	160(%esp), %ecx
e010800d:	89 0c 24 	movl	%ecx, (%esp)
e0108010:	0f b6 c8 	movzbl	%al, %ecx
e0108013:	89 f2 	movl	%esi, %edx
e0108015:	e8 36 03 00 00 	calll	822 <pit_expect_msb>
e010801a:	85 c0 	testl	%eax, %eax
e010801c:	0f 84 fa 00 00 00 	je	250 <quick_pit_calibrate+0x1fc>
e0108022:	89 7c 24 24 	movl	%edi, 36(%esp)
e0108026:	8d 44 24 50 	leal	80(%esp), %eax
e010802a:	c1 e8 03 	shrl	$3, %eax
e010802d:	80 b8 00 00 80 de 00 	cmpb	$0, -562036736(%eax)
e0108034:	0f 85 c9 01 00 00 	jne	457 <quick_pit_calibrate+0x2e3>
e010803a:	89 f7 	movl	%esi, %edi
e010803c:	c1 ef 03 	shrl	$3, %edi
e010803f:	80 bf 00 00 80 de 00 	cmpb	$0, -562036736(%edi)
e0108046:	0f 85 c3 01 00 00 	jne	451 <quick_pit_calibrate+0x2ef>
e010804c:	8b 54 24 70 	movl	112(%esp), %edx
e0108050:	8b 74 24 74 	movl	116(%esp), %esi
e0108054:	2b 54 24 50 	subl	80(%esp), %edx
e0108058:	1b 74 24 54 	sbbl	84(%esp), %esi
e010805c:	89 54 24 70 	movl	%edx, 112(%esp)
e0108060:	89 74 24 74 	movl	%esi, 116(%esp)
e0108064:	8d 84 24 90 00 00 00 	leal	144(%esp), %eax
e010806b:	c1 e8 03 	shrl	$3, %eax
e010806e:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0108075:	84 c0 	testb	%al, %al
e0108077:	75 6d 	jne	109 <quick_pit_calibrate+0x1c6>
e0108079:	89 7c 24 38 	movl	%edi, 56(%esp)
e010807d:	89 5c 24 28 	movl	%ebx, 40(%esp)
e0108081:	8b 9c 24 90 00 00 00 	movl	144(%esp), %ebx
e0108088:	8d 84 24 a0 00 00 00 	leal	160(%esp), %eax
e010808f:	c1 e8 03 	shrl	$3, %eax
e0108092:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0108099:	84 c0 	testb	%al, %al
e010809b:	75 5f 	jne	95 <quick_pit_calibrate+0x1dc>
e010809d:	8b bc 24 a0 00 00 00 	movl	160(%esp), %edi
e01080a4:	8d 04 1f 	leal	(%edi,%ebx), %eax
e01080a7:	89 f1 	movl	%esi, %ecx
e01080a9:	0f a4 d1 15 	shldl	$21, %edx, %ecx
e01080ad:	89 54 24 3c 	movl	%edx, 60(%esp)
e01080b1:	89 f2 	movl	%esi, %edx
e01080b3:	c1 ea 0b 	shrl	$11, %edx
e01080b6:	39 c8 	cmpl	%ecx, %eax
e01080b8:	b8 00 00 00 00 	movl	$0, %eax
e01080bd:	19 d0 	sbbl	%edx, %eax
e01080bf:	72 62 	jb	98 <quick_pit_calibrate+0x203>
e01080c1:	8b 7c 24 24 	movl	36(%esp), %edi
e01080c5:	47 	incl	%edi
e01080c6:	0f b6 44 24 23 	movzbl	35(%esp), %eax
e01080cb:	fe c8 	decb	%al
e01080cd:	8b 5c 24 28 	movl	40(%esp), %ebx
e01080d1:	81 c3 00 e8 03 00 	addl	$256000, %ebx
e01080d7:	83 ff 75 	cmpl	$117, %edi
e01080da:	8d 74 24 70 	leal	112(%esp), %esi
e01080de:	0f 82 1c ff ff ff 	jb	-228 <quick_pit_calibrate+0xe0>
e01080e4:	eb 36 	jmp	54 <quick_pit_calibrate+0x1fc>
e01080e6:	8d 8c 24 90 00 00 00 	leal	144(%esp), %ecx
e01080ed:	80 e1 07 	andb	$7, %cl
e01080f0:	80 c1 03 	addb	$3, %cl
e01080f3:	38 c1 	cmpb	%al, %cl
e01080f5:	7c 82 	jl	-126 <quick_pit_calibrate+0x159>
e01080f7:	e9 1b 01 00 00 	jmp	283 <quick_pit_calibrate+0x2f7>
e01080fc:	8d 8c 24 a0 00 00 00 	leal	160(%esp), %ecx
e0108103:	80 e1 07 	andb	$7, %cl
e0108106:	80 c1 03 	addb	$3, %cl
e0108109:	38 c1 	cmpb	%al, %cl
e010810b:	7c 90 	jl	-112 <quick_pit_calibrate+0x17d>
e010810d:	8d 84 24 a0 00 00 00 	leal	160(%esp), %eax
e0108114:	89 04 24 	movl	%eax, (%esp)
e0108117:	e8 74 06 00 00 	calll	1652 <__asan_report_load4>
e010811c:	31 db 	xorl	%ebx, %ebx
e010811e:	e9 87 00 00 00 	jmp	135 <quick_pit_calibrate+0x28a>
e0108123:	89 7c 24 2c 	movl	%edi, 44(%esp)
e0108127:	89 5c 24 30 	movl	%ebx, 48(%esp)
e010812b:	89 74 24 24 	movl	%esi, 36(%esp)
e010812f:	0f b6 4c 24 23 	movzbl	35(%esp), %ecx
e0108134:	e8 f7 01 00 00 	calll	503 <pit_verify_msb>
e0108139:	85 c0 	testl	%eax, %eax
e010813b:	bb 00 00 00 00 	movl	$0, %ebx
e0108140:	74 68 	je	104 <quick_pit_calibrate+0x28a>
e0108142:	8b 44 24 2c 	movl	44(%esp), %eax
e0108146:	2b 44 24 30 	subl	48(%esp), %eax
e010814a:	89 c2 	movl	%eax, %edx
e010814c:	c1 ea 1f 	shrl	$31, %edx
e010814f:	01 c2 	addl	%eax, %edx
e0108151:	89 d1 	movl	%edx, %ecx
e0108153:	d1 f9 	sarl	%ecx
e0108155:	c1 fa 1f 	sarl	$31, %edx
e0108158:	8b 44 24 3c 	movl	60(%esp), %eax
e010815c:	01 c8 	addl	%ecx, %eax
e010815e:	8b 4c 24 24 	movl	36(%esp), %ecx
e0108162:	11 d1 	adcl	%edx, %ecx
e0108164:	69 c9 de 34 12 00 	imull	$1193182, %ecx, %ecx
e010816a:	ba de 34 12 00 	movl	$1193182, %edx
e010816f:	f7 e2 	mull	%edx
e0108171:	01 ca 	addl	%ecx, %edx
e0108173:	8b 4c 24 28 	movl	40(%esp), %ecx
e0108177:	89 4c 24 08 	movl	%ecx, 8(%esp)
e010817b:	89 04 24 	movl	%eax, (%esp)
e010817e:	89 54 24 04 	movl	%edx, 4(%esp)
e0108182:	c7 44 24 0c 00 00 00 00 	movl	$0, 12(%esp)
e010818a:	e8 41 1b 00 00 	calll	6977 <__udivdi3>
e010818f:	8b 4c 24 38 	movl	56(%esp), %ecx
e0108193:	80 b9 00 00 80 de 00 	cmpb	$0, -562036736(%ecx)
e010819a:	0f 85 86 00 00 00 	jne	134 <quick_pit_calibrate+0x306>
e01081a0:	89 44 24 70 	movl	%eax, 112(%esp)
e01081a4:	89 54 24 74 	movl	%edx, 116(%esp)
e01081a8:	89 c3 	movl	%eax, %ebx
e01081aa:	8b 44 24 34 	movl	52(%esp), %eax
e01081ae:	c6 80 0c 00 80 de f8 	movb	$-8, -562036724(%eax)
e01081b5:	c6 80 0a 00 80 de f8 	movb	$-8, -562036726(%eax)
e01081bc:	c6 80 06 00 80 de f8 	movb	$-8, -562036730(%eax)
e01081c3:	c6 80 02 00 80 de f8 	movb	$-8, -562036734(%eax)
e01081ca:	c7 44 24 40 0e 36 e0 45 	movl	$1172321806, 64(%esp)
e01081d2:	c7 80 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%eax)
e01081dc:	c7 80 04 00 80 de 00 00 00 00 	movl	$0, -562036732(%eax)
e01081e6:	c7 80 08 00 80 de 00 00 00 00 	movl	$0, -562036728(%eax)
e01081f0:	66 c7 80 0c 00 80 de 00 00 	movw	$0, -562036724(%eax)
e01081f9:	89 d8 	movl	%ebx, %eax
e01081fb:	8d 65 f4 	leal	-12(%ebp), %esp
e01081fe:	5e 	popl	%esi
e01081ff:	5f 	popl	%edi
e0108200:	5b 	popl	%ebx
e0108201:	5d 	popl	%ebp
e0108202:	c3 	retl
e0108203:	8d 44 24 50 	leal	80(%esp), %eax
e0108207:	89 04 24 	movl	%eax, (%esp)
e010820a:	e8 c1 05 00 00 	calll	1473 <__asan_report_load8>
e010820f:	89 34 24 	movl	%esi, (%esp)
e0108212:	e8 b9 05 00 00 	calll	1465 <__asan_report_load8>
e0108217:	8d 84 24 90 00 00 00 	leal	144(%esp), %eax
e010821e:	89 04 24 	movl	%eax, (%esp)
e0108221:	e8 6a 05 00 00 	calll	1386 <__asan_report_load4>
e0108226:	8d 44 24 70 	leal	112(%esp), %eax
e010822a:	89 04 24 	movl	%eax, (%esp)
e010822d:	e8 be 05 00 00 	calll	1470 <__asan_report_store8>
e0108232:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010823c:	0f 1f 40 00 	nopl	(%eax)
e0108240:	55 	pushl	%ebp
e0108241:	89 e5 	movl	%esp, %ebp
e0108243:	83 ec 08 	subl	$8, %esp
e0108246:	83 ec 08 	subl	$8, %esp
e0108249:	ff 75 08 	pushl	8(%ebp)
e010824c:	68 60 de 10 e0 	pushl	$3759201888
e0108251:	e8 ea bc ff ff 	calll	-17174 <cprintf>
e0108256:	83 c4 18 	addl	$24, %esp
e0108259:	5d 	popl	%ebp
e010825a:	c3 	retl
e010825b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108260:	55 	pushl	%ebp
e0108261:	89 e5 	movl	%esp, %ebp
e0108263:	83 ec 08 	subl	$8, %esp
e0108266:	c7 04 24 a0 de 10 e0 	movl	$3759201952, (%esp)
e010826d:	e8 ce bc ff ff 	calll	-17202 <cprintf>
e0108272:	83 c4 08 	addl	$8, %esp
e0108275:	5d 	popl	%ebp
e0108276:	c3 	retl
e0108277:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0108280:	c6 05 20 2e 12 e0 01 	movb	$1, -535679456
e0108287:	0f 31 	rdtsc
e0108289:	89 15 64 2e 12 e0 	movl	%edx, -535679388
e010828f:	a3 60 2e 12 e0 	movl	%eax, 3759287904
e0108294:	c3 	retl
e0108295:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010829f:	90 	nop
e01082a0:	55 	pushl	%ebp
e01082a1:	89 e5 	movl	%esp, %ebp
e01082a3:	53 	pushl	%ebx
e01082a4:	50 	pushl	%eax
e01082a5:	80 3d 20 2e 12 e0 00 	cmpb	$0, -535679456
e01082ac:	74 59 	je	89 <timer_stop+0x67>
e01082ae:	0f 31 	rdtsc
e01082b0:	2b 05 60 2e 12 e0 	subl	-535679392, %eax
e01082b6:	1b 15 64 2e 12 e0 	sbbl	-535679388, %edx
e01082bc:	b9 a8 3b 12 e0 	movl	$3759291304, %ecx
e01082c1:	c1 e9 03 	shrl	$3, %ecx
e01082c4:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01082ca:	84 c9 	testb	%cl, %cl
e01082cc:	75 43 	jne	67 <timer_stop+0x71>
e01082ce:	6a 00 	pushl	$0
e01082d0:	ff 35 a8 3b 12 e0 	pushl	-535675992
e01082d6:	52 	pushl	%edx
e01082d7:	50 	pushl	%eax
e01082d8:	e8 f3 19 00 00 	calll	6643 <__udivdi3>
e01082dd:	83 c4 10 	addl	$16, %esp
e01082e0:	6a 00 	pushl	$0
e01082e2:	68 e8 03 00 00 	pushl	$1000
e01082e7:	52 	pushl	%edx
e01082e8:	50 	pushl	%eax
e01082e9:	e8 e2 19 00 00 	calll	6626 <__udivdi3>
e01082ee:	83 c4 04 	addl	$4, %esp
e01082f1:	50 	pushl	%eax
e01082f2:	e8 49 ff ff ff 	calll	-183 <print_time>
e01082f7:	83 c4 10 	addl	$16, %esp
e01082fa:	c6 05 20 2e 12 e0 00 	movb	$0, -535679456
e0108301:	83 c4 04 	addl	$4, %esp
e0108304:	5b 	popl	%ebx
e0108305:	5d 	popl	%ebp
e0108306:	c3 	retl
e0108307:	83 c4 04 	addl	$4, %esp
e010830a:	5b 	popl	%ebx
e010830b:	5d 	popl	%ebp
e010830c:	e9 4f ff ff ff 	jmp	-177 <print_timer_error>
e0108311:	bb a8 3b 12 e0 	movl	$3759291304, %ebx
e0108316:	80 e3 07 	andb	$7, %bl
e0108319:	80 c3 03 	addb	$3, %bl
e010831c:	38 cb 	cmpb	%cl, %bl
e010831e:	7c ae 	jl	-82 <timer_stop+0x2e>
e0108320:	83 ec 0c 	subl	$12, %esp
e0108323:	68 a8 3b 12 e0 	pushl	$3759291304
e0108328:	e8 63 04 00 00 	calll	1123 <__asan_report_load4>
e010832d:	83 c4 10 	addl	$16, %esp
e0108330:	ba 42 00 00 00 	movl	$66, %edx
e0108335:	ec 	inb	%dx, %al
e0108336:	ba 42 00 00 00 	movl	$66, %edx
e010833b:	ec 	inb	%dx, %al
e010833c:	31 d2 	xorl	%edx, %edx
e010833e:	38 c8 	cmpb	%cl, %al
e0108340:	0f 94 c2 	sete	%dl
e0108343:	89 d0 	movl	%edx, %eax
e0108345:	c3 	retl
e0108346:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108350:	55 	pushl	%ebp
e0108351:	89 e5 	movl	%esp, %ebp
e0108353:	53 	pushl	%ebx
e0108354:	57 	pushl	%edi
e0108355:	56 	pushl	%esi
e0108356:	83 ec 1c 	subl	$28, %esp
e0108359:	89 55 f0 	movl	%edx, -16(%ebp)
e010835c:	89 cb 	movl	%ecx, %ebx
e010835e:	e8 cd ff ff ff 	calll	-51 <pit_verify_msb>
e0108363:	85 c0 	testl	%eax, %eax
e0108365:	74 3a 	je	58 <pit_expect_msb+0x51>
e0108367:	b9 01 00 00 00 	movl	$1, %ecx
e010836c:	0f b6 c3 	movzbl	%bl, %eax
e010836f:	89 45 ec 	movl	%eax, -20(%ebp)
e0108372:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010837c:	0f 1f 40 00 	nopl	(%eax)
e0108380:	89 cb 	movl	%ecx, %ebx
e0108382:	0f 31 	rdtsc
e0108384:	89 c6 	movl	%eax, %esi
e0108386:	89 d7 	movl	%edx, %edi
e0108388:	81 f9 50 c3 00 00 	cmpl	$50000, %ecx
e010838e:	73 17 	jae	23 <pit_expect_msb+0x57>
e0108390:	8b 4d ec 	movl	-20(%ebp), %ecx
e0108393:	e8 98 ff ff ff 	calll	-104 <pit_verify_msb>
e0108398:	8d 4b 01 	leal	1(%ebx), %ecx
e010839b:	85 c0 	testl	%eax, %eax
e010839d:	75 e1 	jne	-31 <pit_expect_msb+0x30>
e010839f:	eb 06 	jmp	6 <pit_expect_msb+0x57>
e01083a1:	31 db 	xorl	%ebx, %ebx
e01083a3:	31 f6 	xorl	%esi, %esi
e01083a5:	31 ff 	xorl	%edi, %edi
e01083a7:	0f 31 	rdtsc
e01083a9:	8b 55 08 	movl	8(%ebp), %edx
e01083ac:	89 d1 	movl	%edx, %ecx
e01083ae:	c1 e9 03 	shrl	$3, %ecx
e01083b1:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01083b7:	84 c9 	testb	%cl, %cl
e01083b9:	75 3d 	jne	61 <pit_expect_msb+0xa8>
e01083bb:	29 f0 	subl	%esi, %eax
e01083bd:	89 02 	movl	%eax, (%edx)
e01083bf:	8b 55 f0 	movl	-16(%ebp), %edx
e01083c2:	89 d0 	movl	%edx, %eax
e01083c4:	c1 e8 03 	shrl	$3, %eax
e01083c7:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01083cd:	84 c0 	testb	%al, %al
e01083cf:	75 3f 	jne	63 <pit_expect_msb+0xc0>
e01083d1:	8d 42 07 	leal	7(%edx), %eax
e01083d4:	89 c1 	movl	%eax, %ecx
e01083d6:	c1 e9 03 	shrl	$3, %ecx
e01083d9:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01083df:	84 c9 	testb	%cl, %cl
e01083e1:	75 46 	jne	70 <pit_expect_msb+0xd9>
e01083e3:	89 32 	movl	%esi, (%edx)
e01083e5:	89 7a 04 	movl	%edi, 4(%edx)
e01083e8:	31 c0 	xorl	%eax, %eax
e01083ea:	83 fb 05 	cmpl	$5, %ebx
e01083ed:	0f 97 c0 	seta	%al
e01083f0:	83 c4 1c 	addl	$28, %esp
e01083f3:	5e 	popl	%esi
e01083f4:	5f 	popl	%edi
e01083f5:	5b 	popl	%ebx
e01083f6:	5d 	popl	%ebp
e01083f7:	c3 	retl
e01083f8:	8b 55 08 	movl	8(%ebp), %edx
e01083fb:	80 e2 07 	andb	$7, %dl
e01083fe:	80 c2 03 	addb	$3, %dl
e0108401:	38 ca 	cmpb	%cl, %dl
e0108403:	8b 55 08 	movl	8(%ebp), %edx
e0108406:	7c b3 	jl	-77 <pit_expect_msb+0x6b>
e0108408:	89 14 24 	movl	%edx, (%esp)
e010840b:	e8 a0 03 00 00 	calll	928 <__asan_report_store4>
e0108410:	89 d1 	movl	%edx, %ecx
e0108412:	80 e1 07 	andb	$7, %cl
e0108415:	38 c1 	cmpb	%al, %cl
e0108417:	7c b8 	jl	-72 <pit_expect_msb+0x81>
e0108419:	89 14 24 	movl	%edx, (%esp)
e010841c:	c7 44 24 04 08 00 00 00 	movl	$8, 4(%esp)
e0108424:	e8 47 04 00 00 	calll	1095 <__asan_report_store_n>
e0108429:	89 c2 	movl	%eax, %edx
e010842b:	80 e2 07 	andb	$7, %dl
e010842e:	38 ca 	cmpb	%cl, %dl
e0108430:	8b 55 f0 	movl	-16(%ebp), %edx
e0108433:	7c ae 	jl	-82 <pit_expect_msb+0x93>
e0108435:	89 04 24 	movl	%eax, (%esp)
e0108438:	c7 44 24 04 08 00 00 00 	movl	$8, 4(%esp)
e0108440:	e8 2b 04 00 00 	calll	1067 <__asan_report_store_n>
e0108445:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010844f:	90 	nop
e0108450:	83 ec 0c 	subl	$12, %esp
e0108453:	e8 a8 08 00 00 	calll	2216 <__asan_init>
e0108458:	e8 c3 09 00 00 	calll	2499 <__asan_version_mismatch_check_v8>
e010845d:	83 ec 08 	subl	$8, %esp
e0108460:	6a 06 	pushl	$6
e0108462:	68 c0 19 12 e0 	pushl	$3759282624
e0108467:	e8 c4 08 00 00 	calll	2244 <__asan_register_globals>
e010846c:	83 c4 1c 	addl	$28, %esp
e010846f:	c3 	retl
e0108470:	83 ec 14 	subl	$20, %esp
e0108473:	6a 06 	pushl	$6
e0108475:	68 c0 19 12 e0 	pushl	$3759282624
e010847a:	e8 01 09 00 00 	calll	2305 <__asan_unregister_globals>
e010847f:	83 c4 1c 	addl	$28, %esp
e0108482:	c3 	retl
e0108483:	cc 	int3
e0108484:	cc 	int3
e0108485:	cc 	int3
e0108486:	cc 	int3
e0108487:	cc 	int3
e0108488:	cc 	int3
e0108489:	cc 	int3
e010848a:	cc 	int3
e010848b:	cc 	int3
e010848c:	cc 	int3
e010848d:	cc 	int3
e010848e:	cc 	int3
e010848f:	cc 	int3
e0108490:	55 	pushl	%ebp
e0108491:	89 e5 	movl	%esp, %ebp
e0108493:	83 ec 08 	subl	$8, %esp
e0108496:	8b 45 08 	movl	8(%ebp), %eax
e0108499:	89 c1 	movl	%eax, %ecx
e010849b:	c1 e9 03 	shrl	$3, %ecx
e010849e:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01084a4:	84 c9 	testb	%cl, %cl
e01084a6:	75 0b 	jne	11 <__spin_initlock+0x23>
e01084a8:	c7 00 00 00 00 00 	movl	$0, (%eax)
e01084ae:	83 c4 08 	addl	$8, %esp
e01084b1:	5d 	popl	%ebp
e01084b2:	c3 	retl
e01084b3:	89 c2 	movl	%eax, %edx
e01084b5:	80 e2 07 	andb	$7, %dl
e01084b8:	80 c2 03 	addb	$3, %dl
e01084bb:	38 ca 	cmpb	%cl, %dl
e01084bd:	7c e9 	jl	-23 <__spin_initlock+0x18>
e01084bf:	89 04 24 	movl	%eax, (%esp)
e01084c2:	e8 e9 02 00 00 	calll	745 <__asan_report_store4>
e01084c7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e01084d0:	55 	pushl	%ebp
e01084d1:	89 e5 	movl	%esp, %ebp
e01084d3:	56 	pushl	%esi
e01084d4:	50 	pushl	%eax
e01084d5:	8b 75 08 	movl	8(%ebp), %esi
e01084d8:	eb 08 	jmp	8 <spin_lock+0x12>
e01084da:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e01084e0:	f3 90 	pause
e01084e2:	89 f1 	movl	%esi, %ecx
e01084e4:	ba 01 00 00 00 	movl	$1, %edx
e01084e9:	e8 12 00 00 00 	calll	18 <xchg>
e01084ee:	85 c0 	testl	%eax, %eax
e01084f0:	75 ee 	jne	-18 <spin_lock+0x10>
e01084f2:	83 c4 04 	addl	$4, %esp
e01084f5:	5e 	popl	%esi
e01084f6:	5d 	popl	%ebp
e01084f7:	c3 	retl
e01084f8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0108500:	89 d0 	movl	%edx, %eax
e0108502:	f0 	lock
e0108503:	87 01 	xchgl	%eax, (%ecx)
e0108505:	c3 	retl
e0108506:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108510:	8b 4c 24 04 	movl	4(%esp), %ecx
e0108514:	31 d2 	xorl	%edx, %edx
e0108516:	eb e8 	jmp	-24 <xchg>
e0108518:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0108520:	83 ec 0c 	subl	$12, %esp
e0108523:	e8 d8 07 00 00 	calll	2008 <__asan_init>
e0108528:	e8 f3 08 00 00 	calll	2291 <__asan_version_mismatch_check_v8>
e010852d:	83 ec 08 	subl	$8, %esp
e0108530:	6a 01 	pushl	$1
e0108532:	68 80 1a 12 e0 	pushl	$3759282816
e0108537:	e8 f4 07 00 00 	calll	2036 <__asan_register_globals>
e010853c:	83 c4 1c 	addl	$28, %esp
e010853f:	c3 	retl
e0108540:	83 ec 14 	subl	$20, %esp
e0108543:	6a 01 	pushl	$1
e0108545:	68 80 1a 12 e0 	pushl	$3759282816
e010854a:	e8 31 08 00 00 	calll	2097 <__asan_unregister_globals>
e010854f:	83 c4 1c 	addl	$28, %esp
e0108552:	c3 	retl
e0108553:	cc 	int3
e0108554:	cc 	int3
e0108555:	cc 	int3
e0108556:	cc 	int3
e0108557:	cc 	int3
e0108558:	cc 	int3
e0108559:	cc 	int3
e010855a:	cc 	int3
e010855b:	cc 	int3
e010855c:	cc 	int3
e010855d:	cc 	int3
e010855e:	cc 	int3
e010855f:	cc 	int3
e0108560:	55 	pushl	%ebp
e0108561:	89 e5 	movl	%esp, %ebp
e0108563:	83 ec 08 	subl	$8, %esp
e0108566:	b9 0a a5 10 e0 	movl	$3759187210, %ecx
e010856b:	e8 00 00 00 00 	calll	0 <asan_internal_unsupported>
e0108570:	55 	pushl	%ebp
e0108571:	89 e5 	movl	%esp, %ebp
e0108573:	83 ec 08 	subl	$8, %esp
e0108576:	6a 00 	pushl	$0
e0108578:	6a 00 	pushl	$0
e010857a:	6a 00 	pushl	$0
e010857c:	51 	pushl	%ecx
e010857d:	e8 ee 11 00 00 	calll	4590 <platform_asan_fatal>
e0108582:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010858c:	0f 1f 40 00 	nopl	(%eax)
e0108590:	55 	pushl	%ebp
e0108591:	89 e5 	movl	%esp, %ebp
e0108593:	83 ec 08 	subl	$8, %esp
e0108596:	b9 bc a1 10 e0 	movl	$3759186364, %ecx
e010859b:	e8 d0 ff ff ff 	calll	-48 <asan_internal_unsupported>
e01085a0:	e9 0b 0d 00 00 	jmp	3339 <asan_internal_fakestack_unpoison>
e01085a5:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01085af:	90 	nop
e01085b0:	55 	pushl	%ebp
e01085b1:	89 e5 	movl	%esp, %ebp
e01085b3:	83 ec 08 	subl	$8, %esp
e01085b6:	83 ec 04 	subl	$4, %esp
e01085b9:	6a 01 	pushl	$1
e01085bb:	6a 01 	pushl	$1
e01085bd:	ff 75 08 	pushl	8(%ebp)
e01085c0:	e8 5b 0a 00 00 	calll	2651 <asan_internal_check_range>
e01085c5:	83 c4 18 	addl	$24, %esp
e01085c8:	5d 	popl	%ebp
e01085c9:	c3 	retl
e01085ca:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e01085d0:	55 	pushl	%ebp
e01085d1:	89 e5 	movl	%esp, %ebp
e01085d3:	83 ec 08 	subl	$8, %esp
e01085d6:	83 ec 04 	subl	$4, %esp
e01085d9:	6a 01 	pushl	$1
e01085db:	6a 02 	pushl	$2
e01085dd:	ff 75 08 	pushl	8(%ebp)
e01085e0:	e8 3b 0a 00 00 	calll	2619 <asan_internal_check_range>
e01085e5:	83 c4 18 	addl	$24, %esp
e01085e8:	5d 	popl	%ebp
e01085e9:	c3 	retl
e01085ea:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e01085f0:	55 	pushl	%ebp
e01085f1:	89 e5 	movl	%esp, %ebp
e01085f3:	83 ec 08 	subl	$8, %esp
e01085f6:	83 ec 04 	subl	$4, %esp
e01085f9:	6a 01 	pushl	$1
e01085fb:	6a 04 	pushl	$4
e01085fd:	ff 75 08 	pushl	8(%ebp)
e0108600:	e8 1b 0a 00 00 	calll	2587 <asan_internal_check_range>
e0108605:	83 c4 18 	addl	$24, %esp
e0108608:	5d 	popl	%ebp
e0108609:	c3 	retl
e010860a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0108610:	55 	pushl	%ebp
e0108611:	89 e5 	movl	%esp, %ebp
e0108613:	83 ec 08 	subl	$8, %esp
e0108616:	83 ec 04 	subl	$4, %esp
e0108619:	6a 01 	pushl	$1
e010861b:	6a 08 	pushl	$8
e010861d:	ff 75 08 	pushl	8(%ebp)
e0108620:	e8 fb 09 00 00 	calll	2555 <asan_internal_check_range>
e0108625:	83 c4 18 	addl	$24, %esp
e0108628:	5d 	popl	%ebp
e0108629:	c3 	retl
e010862a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0108630:	55 	pushl	%ebp
e0108631:	89 e5 	movl	%esp, %ebp
e0108633:	83 ec 08 	subl	$8, %esp
e0108636:	83 ec 04 	subl	$4, %esp
e0108639:	6a 01 	pushl	$1
e010863b:	6a 10 	pushl	$16
e010863d:	ff 75 08 	pushl	8(%ebp)
e0108640:	e8 db 09 00 00 	calll	2523 <asan_internal_check_range>
e0108645:	83 c4 18 	addl	$24, %esp
e0108648:	5d 	popl	%ebp
e0108649:	c3 	retl
e010864a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0108650:	55 	pushl	%ebp
e0108651:	89 e5 	movl	%esp, %ebp
e0108653:	83 ec 08 	subl	$8, %esp
e0108656:	83 ec 04 	subl	$4, %esp
e0108659:	6a 02 	pushl	$2
e010865b:	6a 01 	pushl	$1
e010865d:	ff 75 08 	pushl	8(%ebp)
e0108660:	e8 bb 09 00 00 	calll	2491 <asan_internal_check_range>
e0108665:	83 c4 18 	addl	$24, %esp
e0108668:	5d 	popl	%ebp
e0108669:	c3 	retl
e010866a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0108670:	55 	pushl	%ebp
e0108671:	89 e5 	movl	%esp, %ebp
e0108673:	83 ec 08 	subl	$8, %esp
e0108676:	83 ec 04 	subl	$4, %esp
e0108679:	6a 02 	pushl	$2
e010867b:	6a 02 	pushl	$2
e010867d:	ff 75 08 	pushl	8(%ebp)
e0108680:	e8 9b 09 00 00 	calll	2459 <asan_internal_check_range>
e0108685:	83 c4 18 	addl	$24, %esp
e0108688:	5d 	popl	%ebp
e0108689:	c3 	retl
e010868a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0108690:	55 	pushl	%ebp
e0108691:	89 e5 	movl	%esp, %ebp
e0108693:	83 ec 08 	subl	$8, %esp
e0108696:	83 ec 04 	subl	$4, %esp
e0108699:	6a 02 	pushl	$2
e010869b:	6a 04 	pushl	$4
e010869d:	ff 75 08 	pushl	8(%ebp)
e01086a0:	e8 7b 09 00 00 	calll	2427 <asan_internal_check_range>
e01086a5:	83 c4 18 	addl	$24, %esp
e01086a8:	5d 	popl	%ebp
e01086a9:	c3 	retl
e01086aa:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e01086b0:	55 	pushl	%ebp
e01086b1:	89 e5 	movl	%esp, %ebp
e01086b3:	83 ec 08 	subl	$8, %esp
e01086b6:	83 ec 04 	subl	$4, %esp
e01086b9:	6a 02 	pushl	$2
e01086bb:	6a 08 	pushl	$8
e01086bd:	ff 75 08 	pushl	8(%ebp)
e01086c0:	e8 5b 09 00 00 	calll	2395 <asan_internal_check_range>
e01086c5:	83 c4 18 	addl	$24, %esp
e01086c8:	5d 	popl	%ebp
e01086c9:	c3 	retl
e01086ca:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e01086d0:	55 	pushl	%ebp
e01086d1:	89 e5 	movl	%esp, %ebp
e01086d3:	83 ec 08 	subl	$8, %esp
e01086d6:	83 ec 04 	subl	$4, %esp
e01086d9:	6a 02 	pushl	$2
e01086db:	6a 10 	pushl	$16
e01086dd:	ff 75 08 	pushl	8(%ebp)
e01086e0:	e8 3b 09 00 00 	calll	2363 <asan_internal_check_range>
e01086e5:	83 c4 18 	addl	$24, %esp
e01086e8:	5d 	popl	%ebp
e01086e9:	c3 	retl
e01086ea:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e01086f0:	55 	pushl	%ebp
e01086f1:	89 e5 	movl	%esp, %ebp
e01086f3:	83 ec 08 	subl	$8, %esp
e01086f6:	8b 4d 08 	movl	8(%ebp), %ecx
e01086f9:	c7 04 24 01 00 00 00 	movl	$1, (%esp)
e0108700:	ba 01 00 00 00 	movl	$1, %edx
e0108705:	e8 06 00 00 00 	calll	6 <asan_internal_invalid_access>
e010870a:	83 ec 04 	subl	$4, %esp
e010870d:	0f 1f 00 	nopl	(%eax)
e0108710:	55 	pushl	%ebp
e0108711:	89 e5 	movl	%esp, %ebp
e0108713:	83 ec 08 	subl	$8, %esp
e0108716:	ff 75 08 	pushl	8(%ebp)
e0108719:	52 	pushl	%edx
e010871a:	51 	pushl	%ecx
e010871b:	68 42 a3 10 e0 	pushl	$3759186754
e0108720:	e8 4b 10 00 00 	calll	4171 <platform_asan_fatal>
e0108725:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010872f:	90 	nop
e0108730:	55 	pushl	%ebp
e0108731:	89 e5 	movl	%esp, %ebp
e0108733:	83 ec 08 	subl	$8, %esp
e0108736:	8b 4d 08 	movl	8(%ebp), %ecx
e0108739:	c7 04 24 02 00 00 00 	movl	$2, (%esp)
e0108740:	ba 01 00 00 00 	movl	$1, %edx
e0108745:	e8 c6 ff ff ff 	calll	-58 <asan_internal_invalid_access>
e010874a:	83 ec 04 	subl	$4, %esp
e010874d:	0f 1f 00 	nopl	(%eax)
e0108750:	55 	pushl	%ebp
e0108751:	89 e5 	movl	%esp, %ebp
e0108753:	83 ec 08 	subl	$8, %esp
e0108756:	8b 4d 08 	movl	8(%ebp), %ecx
e0108759:	c7 04 24 01 00 00 00 	movl	$1, (%esp)
e0108760:	ba 02 00 00 00 	movl	$2, %edx
e0108765:	e8 a6 ff ff ff 	calll	-90 <asan_internal_invalid_access>
e010876a:	83 ec 04 	subl	$4, %esp
e010876d:	0f 1f 00 	nopl	(%eax)
e0108770:	55 	pushl	%ebp
e0108771:	89 e5 	movl	%esp, %ebp
e0108773:	83 ec 08 	subl	$8, %esp
e0108776:	8b 4d 08 	movl	8(%ebp), %ecx
e0108779:	c7 04 24 02 00 00 00 	movl	$2, (%esp)
e0108780:	ba 02 00 00 00 	movl	$2, %edx
e0108785:	e8 86 ff ff ff 	calll	-122 <asan_internal_invalid_access>
e010878a:	83 ec 04 	subl	$4, %esp
e010878d:	0f 1f 00 	nopl	(%eax)
e0108790:	55 	pushl	%ebp
e0108791:	89 e5 	movl	%esp, %ebp
e0108793:	83 ec 08 	subl	$8, %esp
e0108796:	8b 4d 08 	movl	8(%ebp), %ecx
e0108799:	c7 04 24 01 00 00 00 	movl	$1, (%esp)
e01087a0:	ba 04 00 00 00 	movl	$4, %edx
e01087a5:	e8 66 ff ff ff 	calll	-154 <asan_internal_invalid_access>
e01087aa:	83 ec 04 	subl	$4, %esp
e01087ad:	0f 1f 00 	nopl	(%eax)
e01087b0:	55 	pushl	%ebp
e01087b1:	89 e5 	movl	%esp, %ebp
e01087b3:	83 ec 08 	subl	$8, %esp
e01087b6:	8b 4d 08 	movl	8(%ebp), %ecx
e01087b9:	c7 04 24 02 00 00 00 	movl	$2, (%esp)
e01087c0:	ba 04 00 00 00 	movl	$4, %edx
e01087c5:	e8 46 ff ff ff 	calll	-186 <asan_internal_invalid_access>
e01087ca:	83 ec 04 	subl	$4, %esp
e01087cd:	0f 1f 00 	nopl	(%eax)
e01087d0:	55 	pushl	%ebp
e01087d1:	89 e5 	movl	%esp, %ebp
e01087d3:	83 ec 08 	subl	$8, %esp
e01087d6:	8b 4d 08 	movl	8(%ebp), %ecx
e01087d9:	c7 04 24 01 00 00 00 	movl	$1, (%esp)
e01087e0:	ba 08 00 00 00 	movl	$8, %edx
e01087e5:	e8 26 ff ff ff 	calll	-218 <asan_internal_invalid_access>
e01087ea:	83 ec 04 	subl	$4, %esp
e01087ed:	0f 1f 00 	nopl	(%eax)
e01087f0:	55 	pushl	%ebp
e01087f1:	89 e5 	movl	%esp, %ebp
e01087f3:	83 ec 08 	subl	$8, %esp
e01087f6:	8b 4d 08 	movl	8(%ebp), %ecx
e01087f9:	c7 04 24 02 00 00 00 	movl	$2, (%esp)
e0108800:	ba 08 00 00 00 	movl	$8, %edx
e0108805:	e8 06 ff ff ff 	calll	-250 <asan_internal_invalid_access>
e010880a:	83 ec 04 	subl	$4, %esp
e010880d:	0f 1f 00 	nopl	(%eax)
e0108810:	55 	pushl	%ebp
e0108811:	89 e5 	movl	%esp, %ebp
e0108813:	83 ec 08 	subl	$8, %esp
e0108816:	8b 4d 08 	movl	8(%ebp), %ecx
e0108819:	c7 04 24 01 00 00 00 	movl	$1, (%esp)
e0108820:	ba 10 00 00 00 	movl	$16, %edx
e0108825:	e8 e6 fe ff ff 	calll	-282 <asan_internal_invalid_access>
e010882a:	83 ec 04 	subl	$4, %esp
e010882d:	0f 1f 00 	nopl	(%eax)
e0108830:	55 	pushl	%ebp
e0108831:	89 e5 	movl	%esp, %ebp
e0108833:	83 ec 08 	subl	$8, %esp
e0108836:	8b 4d 08 	movl	8(%ebp), %ecx
e0108839:	c7 04 24 02 00 00 00 	movl	$2, (%esp)
e0108840:	ba 10 00 00 00 	movl	$16, %edx
e0108845:	e8 c6 fe ff ff 	calll	-314 <asan_internal_invalid_access>
e010884a:	83 ec 04 	subl	$4, %esp
e010884d:	0f 1f 00 	nopl	(%eax)
e0108850:	55 	pushl	%ebp
e0108851:	89 e5 	movl	%esp, %ebp
e0108853:	83 ec 08 	subl	$8, %esp
e0108856:	8b 4d 08 	movl	8(%ebp), %ecx
e0108859:	8b 55 0c 	movl	12(%ebp), %edx
e010885c:	c7 04 24 01 00 00 00 	movl	$1, (%esp)
e0108863:	e8 a8 fe ff ff 	calll	-344 <asan_internal_invalid_access>
e0108868:	83 ec 04 	subl	$4, %esp
e010886b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108870:	55 	pushl	%ebp
e0108871:	89 e5 	movl	%esp, %ebp
e0108873:	83 ec 08 	subl	$8, %esp
e0108876:	8b 4d 08 	movl	8(%ebp), %ecx
e0108879:	8b 55 0c 	movl	12(%ebp), %edx
e010887c:	c7 04 24 02 00 00 00 	movl	$2, (%esp)
e0108883:	e8 88 fe ff ff 	calll	-376 <asan_internal_invalid_access>
e0108888:	83 ec 04 	subl	$4, %esp
e010888b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108890:	55 	pushl	%ebp
e0108891:	89 e5 	movl	%esp, %ebp
e0108893:	83 ec 08 	subl	$8, %esp
e0108896:	83 ec 04 	subl	$4, %esp
e0108899:	6a 01 	pushl	$1
e010889b:	ff 75 0c 	pushl	12(%ebp)
e010889e:	ff 75 08 	pushl	8(%ebp)
e01088a1:	e8 7a 07 00 00 	calll	1914 <asan_internal_check_range>
e01088a6:	83 c4 18 	addl	$24, %esp
e01088a9:	5d 	popl	%ebp
e01088aa:	c3 	retl
e01088ab:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e01088b0:	55 	pushl	%ebp
e01088b1:	89 e5 	movl	%esp, %ebp
e01088b3:	83 ec 08 	subl	$8, %esp
e01088b6:	83 ec 04 	subl	$4, %esp
e01088b9:	6a 02 	pushl	$2
e01088bb:	ff 75 0c 	pushl	12(%ebp)
e01088be:	ff 75 08 	pushl	8(%ebp)
e01088c1:	e8 5a 07 00 00 	calll	1882 <asan_internal_check_range>
e01088c6:	83 c4 18 	addl	$24, %esp
e01088c9:	5d 	popl	%ebp
e01088ca:	c3 	retl
e01088cb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e01088d0:	55 	pushl	%ebp
e01088d1:	89 e5 	movl	%esp, %ebp
e01088d3:	83 ec 08 	subl	$8, %esp
e01088d6:	83 ec 04 	subl	$4, %esp
e01088d9:	ff 75 0c 	pushl	12(%ebp)
e01088dc:	6a 00 	pushl	$0
e01088de:	ff 75 08 	pushl	8(%ebp)
e01088e1:	e8 8a f1 ff ff 	calll	-3702 <memset>
e01088e6:	83 c4 18 	addl	$24, %esp
e01088e9:	5d 	popl	%ebp
e01088ea:	c3 	retl
e01088eb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e01088f0:	55 	pushl	%ebp
e01088f1:	89 e5 	movl	%esp, %ebp
e01088f3:	83 ec 08 	subl	$8, %esp
e01088f6:	83 ec 04 	subl	$4, %esp
e01088f9:	ff 75 0c 	pushl	12(%ebp)
e01088fc:	68 f1 00 00 00 	pushl	$241
e0108901:	ff 75 08 	pushl	8(%ebp)
e0108904:	e8 67 f1 ff ff 	calll	-3737 <memset>
e0108909:	83 c4 18 	addl	$24, %esp
e010890c:	5d 	popl	%ebp
e010890d:	c3 	retl
e010890e:	66 90 	nop
e0108910:	55 	pushl	%ebp
e0108911:	89 e5 	movl	%esp, %ebp
e0108913:	83 ec 08 	subl	$8, %esp
e0108916:	83 ec 04 	subl	$4, %esp
e0108919:	ff 75 0c 	pushl	12(%ebp)
e010891c:	68 f2 00 00 00 	pushl	$242
e0108921:	ff 75 08 	pushl	8(%ebp)
e0108924:	e8 47 f1 ff ff 	calll	-3769 <memset>
e0108929:	83 c4 18 	addl	$24, %esp
e010892c:	5d 	popl	%ebp
e010892d:	c3 	retl
e010892e:	66 90 	nop
e0108930:	55 	pushl	%ebp
e0108931:	89 e5 	movl	%esp, %ebp
e0108933:	83 ec 08 	subl	$8, %esp
e0108936:	83 ec 04 	subl	$4, %esp
e0108939:	ff 75 0c 	pushl	12(%ebp)
e010893c:	68 f3 00 00 00 	pushl	$243
e0108941:	ff 75 08 	pushl	8(%ebp)
e0108944:	e8 27 f1 ff ff 	calll	-3801 <memset>
e0108949:	83 c4 18 	addl	$24, %esp
e010894c:	5d 	popl	%ebp
e010894d:	c3 	retl
e010894e:	66 90 	nop
e0108950:	55 	pushl	%ebp
e0108951:	89 e5 	movl	%esp, %ebp
e0108953:	83 ec 08 	subl	$8, %esp
e0108956:	83 ec 04 	subl	$4, %esp
e0108959:	ff 75 0c 	pushl	12(%ebp)
e010895c:	68 f5 00 00 00 	pushl	$245
e0108961:	ff 75 08 	pushl	8(%ebp)
e0108964:	e8 07 f1 ff ff 	calll	-3833 <memset>
e0108969:	83 c4 18 	addl	$24, %esp
e010896c:	5d 	popl	%ebp
e010896d:	c3 	retl
e010896e:	66 90 	nop
e0108970:	55 	pushl	%ebp
e0108971:	89 e5 	movl	%esp, %ebp
e0108973:	83 ec 08 	subl	$8, %esp
e0108976:	83 ec 04 	subl	$4, %esp
e0108979:	ff 75 0c 	pushl	12(%ebp)
e010897c:	68 f8 00 00 00 	pushl	$248
e0108981:	ff 75 08 	pushl	8(%ebp)
e0108984:	e8 e7 f0 ff ff 	calll	-3865 <memset>
e0108989:	83 c4 18 	addl	$24, %esp
e010898c:	5d 	popl	%ebp
e010898d:	c3 	retl
e010898e:	66 90 	nop
e0108990:	55 	pushl	%ebp
e0108991:	89 e5 	movl	%esp, %ebp
e0108993:	83 ec 08 	subl	$8, %esp
e0108996:	83 ec 0c 	subl	$12, %esp
e0108999:	ff 75 08 	pushl	8(%ebp)
e010899c:	6a 50 	pushl	$80
e010899e:	6a 00 	pushl	$0
e01089a0:	68 f0 2e 12 e0 	pushl	$3759288048
e01089a5:	68 e4 2e 12 e0 	pushl	$3759288036
e01089aa:	e8 b1 07 00 00 	calll	1969 <asan_internal_fakestack_alloc>
e01089af:	83 c4 28 	addl	$40, %esp
e01089b2:	5d 	popl	%ebp
e01089b3:	c3 	retl
e01089b4:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01089be:	66 90 	nop
e01089c0:	55 	pushl	%ebp
e01089c1:	89 e5 	movl	%esp, %ebp
e01089c3:	83 ec 08 	subl	$8, %esp
e01089c6:	83 ec 04 	subl	$4, %esp
e01089c9:	ff 75 0c 	pushl	12(%ebp)
e01089cc:	ff 75 08 	pushl	8(%ebp)
e01089cf:	6a 50 	pushl	$80
e01089d1:	e8 aa 08 00 00 	calll	2218 <asan_internal_fakestack_free>
e01089d6:	83 c4 18 	addl	$24, %esp
e01089d9:	5d 	popl	%ebp
e01089da:	c3 	retl
e01089db:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e01089e0:	55 	pushl	%ebp
e01089e1:	89 e5 	movl	%esp, %ebp
e01089e3:	83 ec 08 	subl	$8, %esp
e01089e6:	83 ec 0c 	subl	$12, %esp
e01089e9:	ff 75 08 	pushl	8(%ebp)
e01089ec:	68 90 00 00 00 	pushl	$144
e01089f1:	6a 00 	pushl	$0
e01089f3:	68 00 2f 12 e0 	pushl	$3759288064
e01089f8:	68 f4 2e 12 e0 	pushl	$3759288052
e01089fd:	e8 5e 07 00 00 	calll	1886 <asan_internal_fakestack_alloc>
e0108a02:	83 c4 28 	addl	$40, %esp
e0108a05:	5d 	popl	%ebp
e0108a06:	c3 	retl
e0108a07:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0108a10:	55 	pushl	%ebp
e0108a11:	89 e5 	movl	%esp, %ebp
e0108a13:	83 ec 08 	subl	$8, %esp
e0108a16:	83 ec 04 	subl	$4, %esp
e0108a19:	ff 75 0c 	pushl	12(%ebp)
e0108a1c:	ff 75 08 	pushl	8(%ebp)
e0108a1f:	68 90 00 00 00 	pushl	$144
e0108a24:	e8 57 08 00 00 	calll	2135 <asan_internal_fakestack_free>
e0108a29:	83 c4 18 	addl	$24, %esp
e0108a2c:	5d 	popl	%ebp
e0108a2d:	c3 	retl
e0108a2e:	66 90 	nop
e0108a30:	55 	pushl	%ebp
e0108a31:	89 e5 	movl	%esp, %ebp
e0108a33:	83 ec 08 	subl	$8, %esp
e0108a36:	83 ec 0c 	subl	$12, %esp
e0108a39:	ff 75 08 	pushl	8(%ebp)
e0108a3c:	68 10 01 00 00 	pushl	$272
e0108a41:	6a 00 	pushl	$0
e0108a43:	68 10 2f 12 e0 	pushl	$3759288080
e0108a48:	68 04 2f 12 e0 	pushl	$3759288068
e0108a4d:	e8 0e 07 00 00 	calll	1806 <asan_internal_fakestack_alloc>
e0108a52:	83 c4 28 	addl	$40, %esp
e0108a55:	5d 	popl	%ebp
e0108a56:	c3 	retl
e0108a57:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0108a60:	55 	pushl	%ebp
e0108a61:	89 e5 	movl	%esp, %ebp
e0108a63:	83 ec 08 	subl	$8, %esp
e0108a66:	83 ec 04 	subl	$4, %esp
e0108a69:	ff 75 0c 	pushl	12(%ebp)
e0108a6c:	ff 75 08 	pushl	8(%ebp)
e0108a6f:	68 10 01 00 00 	pushl	$272
e0108a74:	e8 07 08 00 00 	calll	2055 <asan_internal_fakestack_free>
e0108a79:	83 c4 18 	addl	$24, %esp
e0108a7c:	5d 	popl	%ebp
e0108a7d:	c3 	retl
e0108a7e:	66 90 	nop
e0108a80:	55 	pushl	%ebp
e0108a81:	89 e5 	movl	%esp, %ebp
e0108a83:	83 ec 08 	subl	$8, %esp
e0108a86:	83 ec 0c 	subl	$12, %esp
e0108a89:	ff 75 08 	pushl	8(%ebp)
e0108a8c:	68 10 02 00 00 	pushl	$528
e0108a91:	6a 00 	pushl	$0
e0108a93:	68 20 2f 12 e0 	pushl	$3759288096
e0108a98:	68 14 2f 12 e0 	pushl	$3759288084
e0108a9d:	e8 be 06 00 00 	calll	1726 <asan_internal_fakestack_alloc>
e0108aa2:	83 c4 28 	addl	$40, %esp
e0108aa5:	5d 	popl	%ebp
e0108aa6:	c3 	retl
e0108aa7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0108ab0:	55 	pushl	%ebp
e0108ab1:	89 e5 	movl	%esp, %ebp
e0108ab3:	83 ec 08 	subl	$8, %esp
e0108ab6:	83 ec 04 	subl	$4, %esp
e0108ab9:	ff 75 0c 	pushl	12(%ebp)
e0108abc:	ff 75 08 	pushl	8(%ebp)
e0108abf:	68 10 02 00 00 	pushl	$528
e0108ac4:	e8 b7 07 00 00 	calll	1975 <asan_internal_fakestack_free>
e0108ac9:	83 c4 18 	addl	$24, %esp
e0108acc:	5d 	popl	%ebp
e0108acd:	c3 	retl
e0108ace:	66 90 	nop
e0108ad0:	55 	pushl	%ebp
e0108ad1:	89 e5 	movl	%esp, %ebp
e0108ad3:	83 ec 08 	subl	$8, %esp
e0108ad6:	83 ec 0c 	subl	$12, %esp
e0108ad9:	ff 75 08 	pushl	8(%ebp)
e0108adc:	68 10 04 00 00 	pushl	$1040
e0108ae1:	6a 00 	pushl	$0
e0108ae3:	68 30 2f 12 e0 	pushl	$3759288112
e0108ae8:	68 24 2f 12 e0 	pushl	$3759288100
e0108aed:	e8 6e 06 00 00 	calll	1646 <asan_internal_fakestack_alloc>
e0108af2:	83 c4 28 	addl	$40, %esp
e0108af5:	5d 	popl	%ebp
e0108af6:	c3 	retl
e0108af7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0108b00:	55 	pushl	%ebp
e0108b01:	89 e5 	movl	%esp, %ebp
e0108b03:	83 ec 08 	subl	$8, %esp
e0108b06:	83 ec 04 	subl	$4, %esp
e0108b09:	ff 75 0c 	pushl	12(%ebp)
e0108b0c:	ff 75 08 	pushl	8(%ebp)
e0108b0f:	68 10 04 00 00 	pushl	$1040
e0108b14:	e8 67 07 00 00 	calll	1895 <asan_internal_fakestack_free>
e0108b19:	83 c4 18 	addl	$24, %esp
e0108b1c:	5d 	popl	%ebp
e0108b1d:	c3 	retl
e0108b1e:	66 90 	nop
e0108b20:	55 	pushl	%ebp
e0108b21:	89 e5 	movl	%esp, %ebp
e0108b23:	83 ec 08 	subl	$8, %esp
e0108b26:	83 ec 0c 	subl	$12, %esp
e0108b29:	ff 75 08 	pushl	8(%ebp)
e0108b2c:	68 10 08 00 00 	pushl	$2064
e0108b31:	6a 00 	pushl	$0
e0108b33:	68 40 2f 12 e0 	pushl	$3759288128
e0108b38:	68 34 2f 12 e0 	pushl	$3759288116
e0108b3d:	e8 1e 06 00 00 	calll	1566 <asan_internal_fakestack_alloc>
e0108b42:	83 c4 28 	addl	$40, %esp
e0108b45:	5d 	popl	%ebp
e0108b46:	c3 	retl
e0108b47:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0108b50:	55 	pushl	%ebp
e0108b51:	89 e5 	movl	%esp, %ebp
e0108b53:	83 ec 08 	subl	$8, %esp
e0108b56:	83 ec 04 	subl	$4, %esp
e0108b59:	ff 75 0c 	pushl	12(%ebp)
e0108b5c:	ff 75 08 	pushl	8(%ebp)
e0108b5f:	68 10 08 00 00 	pushl	$2064
e0108b64:	e8 17 07 00 00 	calll	1815 <asan_internal_fakestack_free>
e0108b69:	83 c4 18 	addl	$24, %esp
e0108b6c:	5d 	popl	%ebp
e0108b6d:	c3 	retl
e0108b6e:	66 90 	nop
e0108b70:	55 	pushl	%ebp
e0108b71:	89 e5 	movl	%esp, %ebp
e0108b73:	83 ec 08 	subl	$8, %esp
e0108b76:	83 ec 0c 	subl	$12, %esp
e0108b79:	ff 75 08 	pushl	8(%ebp)
e0108b7c:	68 10 10 00 00 	pushl	$4112
e0108b81:	6a 00 	pushl	$0
e0108b83:	68 50 2f 12 e0 	pushl	$3759288144
e0108b88:	68 44 2f 12 e0 	pushl	$3759288132
e0108b8d:	e8 ce 05 00 00 	calll	1486 <asan_internal_fakestack_alloc>
e0108b92:	83 c4 28 	addl	$40, %esp
e0108b95:	5d 	popl	%ebp
e0108b96:	c3 	retl
e0108b97:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0108ba0:	55 	pushl	%ebp
e0108ba1:	89 e5 	movl	%esp, %ebp
e0108ba3:	83 ec 08 	subl	$8, %esp
e0108ba6:	83 ec 04 	subl	$4, %esp
e0108ba9:	ff 75 0c 	pushl	12(%ebp)
e0108bac:	ff 75 08 	pushl	8(%ebp)
e0108baf:	68 10 10 00 00 	pushl	$4112
e0108bb4:	e8 c7 06 00 00 	calll	1735 <asan_internal_fakestack_free>
e0108bb9:	83 c4 18 	addl	$24, %esp
e0108bbc:	5d 	popl	%ebp
e0108bbd:	c3 	retl
e0108bbe:	66 90 	nop
e0108bc0:	55 	pushl	%ebp
e0108bc1:	89 e5 	movl	%esp, %ebp
e0108bc3:	83 ec 08 	subl	$8, %esp
e0108bc6:	83 ec 0c 	subl	$12, %esp
e0108bc9:	ff 75 08 	pushl	8(%ebp)
e0108bcc:	68 10 20 00 00 	pushl	$8208
e0108bd1:	6a 00 	pushl	$0
e0108bd3:	68 60 2f 12 e0 	pushl	$3759288160
e0108bd8:	68 54 2f 12 e0 	pushl	$3759288148
e0108bdd:	e8 7e 05 00 00 	calll	1406 <asan_internal_fakestack_alloc>
e0108be2:	83 c4 28 	addl	$40, %esp
e0108be5:	5d 	popl	%ebp
e0108be6:	c3 	retl
e0108be7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0108bf0:	55 	pushl	%ebp
e0108bf1:	89 e5 	movl	%esp, %ebp
e0108bf3:	83 ec 08 	subl	$8, %esp
e0108bf6:	83 ec 04 	subl	$4, %esp
e0108bf9:	ff 75 0c 	pushl	12(%ebp)
e0108bfc:	ff 75 08 	pushl	8(%ebp)
e0108bff:	68 10 20 00 00 	pushl	$8208
e0108c04:	e8 77 06 00 00 	calll	1655 <asan_internal_fakestack_free>
e0108c09:	83 c4 18 	addl	$24, %esp
e0108c0c:	5d 	popl	%ebp
e0108c0d:	c3 	retl
e0108c0e:	66 90 	nop
e0108c10:	55 	pushl	%ebp
e0108c11:	89 e5 	movl	%esp, %ebp
e0108c13:	83 ec 08 	subl	$8, %esp
e0108c16:	83 ec 0c 	subl	$12, %esp
e0108c19:	ff 75 08 	pushl	8(%ebp)
e0108c1c:	68 10 40 00 00 	pushl	$16400
e0108c21:	6a 00 	pushl	$0
e0108c23:	68 70 2f 12 e0 	pushl	$3759288176
e0108c28:	68 64 2f 12 e0 	pushl	$3759288164
e0108c2d:	e8 2e 05 00 00 	calll	1326 <asan_internal_fakestack_alloc>
e0108c32:	83 c4 28 	addl	$40, %esp
e0108c35:	5d 	popl	%ebp
e0108c36:	c3 	retl
e0108c37:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0108c40:	55 	pushl	%ebp
e0108c41:	89 e5 	movl	%esp, %ebp
e0108c43:	83 ec 08 	subl	$8, %esp
e0108c46:	83 ec 04 	subl	$4, %esp
e0108c49:	ff 75 0c 	pushl	12(%ebp)
e0108c4c:	ff 75 08 	pushl	8(%ebp)
e0108c4f:	68 10 40 00 00 	pushl	$16400
e0108c54:	e8 27 06 00 00 	calll	1575 <asan_internal_fakestack_free>
e0108c59:	83 c4 18 	addl	$24, %esp
e0108c5c:	5d 	popl	%ebp
e0108c5d:	c3 	retl
e0108c5e:	66 90 	nop
e0108c60:	55 	pushl	%ebp
e0108c61:	89 e5 	movl	%esp, %ebp
e0108c63:	83 ec 08 	subl	$8, %esp
e0108c66:	83 ec 0c 	subl	$12, %esp
e0108c69:	ff 75 08 	pushl	8(%ebp)
e0108c6c:	68 10 80 00 00 	pushl	$32784
e0108c71:	6a 00 	pushl	$0
e0108c73:	68 80 2f 12 e0 	pushl	$3759288192
e0108c78:	68 74 2f 12 e0 	pushl	$3759288180
e0108c7d:	e8 de 04 00 00 	calll	1246 <asan_internal_fakestack_alloc>
e0108c82:	83 c4 28 	addl	$40, %esp
e0108c85:	5d 	popl	%ebp
e0108c86:	c3 	retl
e0108c87:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0108c90:	55 	pushl	%ebp
e0108c91:	89 e5 	movl	%esp, %ebp
e0108c93:	83 ec 08 	subl	$8, %esp
e0108c96:	83 ec 04 	subl	$4, %esp
e0108c99:	ff 75 0c 	pushl	12(%ebp)
e0108c9c:	ff 75 08 	pushl	8(%ebp)
e0108c9f:	68 10 80 00 00 	pushl	$32784
e0108ca4:	e8 d7 05 00 00 	calll	1495 <asan_internal_fakestack_free>
e0108ca9:	83 c4 18 	addl	$24, %esp
e0108cac:	5d 	popl	%ebp
e0108cad:	c3 	retl
e0108cae:	66 90 	nop
e0108cb0:	55 	pushl	%ebp
e0108cb1:	89 e5 	movl	%esp, %ebp
e0108cb3:	83 ec 08 	subl	$8, %esp
e0108cb6:	83 ec 0c 	subl	$12, %esp
e0108cb9:	ff 75 08 	pushl	8(%ebp)
e0108cbc:	68 10 00 01 00 	pushl	$65552
e0108cc1:	6a 00 	pushl	$0
e0108cc3:	68 90 2f 12 e0 	pushl	$3759288208
e0108cc8:	68 84 2f 12 e0 	pushl	$3759288196
e0108ccd:	e8 8e 04 00 00 	calll	1166 <asan_internal_fakestack_alloc>
e0108cd2:	83 c4 28 	addl	$40, %esp
e0108cd5:	5d 	popl	%ebp
e0108cd6:	c3 	retl
e0108cd7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0108ce0:	55 	pushl	%ebp
e0108ce1:	89 e5 	movl	%esp, %ebp
e0108ce3:	83 ec 08 	subl	$8, %esp
e0108ce6:	83 ec 04 	subl	$4, %esp
e0108ce9:	ff 75 0c 	pushl	12(%ebp)
e0108cec:	ff 75 08 	pushl	8(%ebp)
e0108cef:	68 10 00 01 00 	pushl	$65552
e0108cf4:	e8 87 05 00 00 	calll	1415 <asan_internal_fakestack_free>
e0108cf9:	83 c4 18 	addl	$24, %esp
e0108cfc:	5d 	popl	%ebp
e0108cfd:	c3 	retl
e0108cfe:	66 90 	nop
e0108d00:	80 3d 94 2f 12 e0 00 	cmpb	$0, -535679084
e0108d07:	74 01 	je	1 <__asan_init+0xa>
e0108d09:	c3 	retl
e0108d0a:	55 	pushl	%ebp
e0108d0b:	89 e5 	movl	%esp, %ebp
e0108d0d:	83 ec 08 	subl	$8, %esp
e0108d10:	e8 7b 09 00 00 	calll	2427 <platform_asan_init>
e0108d15:	c6 05 94 2f 12 e0 01 	movb	$1, -535679084
e0108d1c:	83 c4 08 	addl	$8, %esp
e0108d1f:	5d 	popl	%ebp
e0108d20:	c3 	retl
e0108d21:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108d2b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108d30:	55 	pushl	%ebp
e0108d31:	89 e5 	movl	%esp, %ebp
e0108d33:	57 	pushl	%edi
e0108d34:	56 	pushl	%esi
e0108d35:	8b 75 0c 	movl	12(%ebp), %esi
e0108d38:	85 f6 	testl	%esi, %esi
e0108d3a:	74 38 	je	56 <__asan_register_globals+0x44>
e0108d3c:	8b 7d 08 	movl	8(%ebp), %edi
e0108d3f:	83 c7 08 	addl	$8, %edi
e0108d42:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108d4c:	0f 1f 40 00 	nopl	(%eax)
e0108d50:	8b 47 fc 	movl	-4(%edi), %eax
e0108d53:	8b 0f 	movl	(%edi), %ecx
e0108d55:	8b 57 f8 	movl	-8(%edi), %edx
e0108d58:	01 c2 	addl	%eax, %edx
e0108d5a:	29 c1 	subl	%eax, %ecx
e0108d5c:	83 ec 04 	subl	$4, %esp
e0108d5f:	68 f9 00 00 00 	pushl	$249
e0108d64:	51 	pushl	%ecx
e0108d65:	52 	pushl	%edx
e0108d66:	e8 25 02 00 00 	calll	549 <asan_internal_fill_range>
e0108d6b:	83 c4 10 	addl	$16, %esp
e0108d6e:	83 c7 20 	addl	$32, %edi
e0108d71:	4e 	decl	%esi
e0108d72:	75 dc 	jne	-36 <__asan_register_globals+0x20>
e0108d74:	5e 	popl	%esi
e0108d75:	5f 	popl	%edi
e0108d76:	5d 	popl	%ebp
e0108d77:	c3 	retl
e0108d78:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0108d80:	55 	pushl	%ebp
e0108d81:	89 e5 	movl	%esp, %ebp
e0108d83:	57 	pushl	%edi
e0108d84:	56 	pushl	%esi
e0108d85:	8b 75 0c 	movl	12(%ebp), %esi
e0108d88:	85 f6 	testl	%esi, %esi
e0108d8a:	74 35 	je	53 <__asan_unregister_globals+0x41>
e0108d8c:	8b 7d 08 	movl	8(%ebp), %edi
e0108d8f:	83 c7 08 	addl	$8, %edi
e0108d92:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108d9c:	0f 1f 40 00 	nopl	(%eax)
e0108da0:	8b 47 fc 	movl	-4(%edi), %eax
e0108da3:	8b 0f 	movl	(%edi), %ecx
e0108da5:	8b 57 f8 	movl	-8(%edi), %edx
e0108da8:	01 c2 	addl	%eax, %edx
e0108daa:	29 c1 	subl	%eax, %ecx
e0108dac:	83 ec 04 	subl	$4, %esp
e0108daf:	6a 00 	pushl	$0
e0108db1:	51 	pushl	%ecx
e0108db2:	52 	pushl	%edx
e0108db3:	e8 d8 01 00 00 	calll	472 <asan_internal_fill_range>
e0108db8:	83 c4 10 	addl	$16, %esp
e0108dbb:	83 c7 20 	addl	$32, %edi
e0108dbe:	4e 	decl	%esi
e0108dbf:	75 df 	jne	-33 <__asan_unregister_globals+0x20>
e0108dc1:	5e 	popl	%esi
e0108dc2:	5f 	popl	%edi
e0108dc3:	5d 	popl	%ebp
e0108dc4:	c3 	retl
e0108dc5:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108dcf:	90 	nop
e0108dd0:	c3 	retl
e0108dd1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108ddb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108de0:	c3 	retl
e0108de1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108deb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108df0:	c3 	retl
e0108df1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108dfb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108e00:	c3 	retl
e0108e01:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e0b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108e10:	c3 	retl
e0108e11:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e1b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108e20:	c3 	retl
e0108e21:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e2b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108e30:	c3 	retl
e0108e31:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e3b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108e40:	c3 	retl
e0108e41:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e4b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108e50:	c3 	retl
e0108e51:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e5b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108e60:	c3 	retl
e0108e61:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e6b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108e70:	c3 	retl
e0108e71:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e7b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108e80:	c3 	retl
e0108e81:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e8b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108e90:	c3 	retl
e0108e91:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e9b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0108ea0:	83 ec 0c 	subl	$12, %esp
e0108ea3:	e8 58 fe ff ff 	calll	-424 <__asan_init>
e0108ea8:	e8 73 ff ff ff 	calll	-141 <__asan_version_mismatch_check_v8>
e0108ead:	83 c4 0c 	addl	$12, %esp
e0108eb0:	c3 	retl
e0108eb1:	cc 	int3
e0108eb2:	cc 	int3
e0108eb3:	cc 	int3
e0108eb4:	cc 	int3
e0108eb5:	cc 	int3
e0108eb6:	cc 	int3
e0108eb7:	cc 	int3
e0108eb8:	cc 	int3
e0108eb9:	cc 	int3
e0108eba:	cc 	int3
e0108ebb:	cc 	int3
e0108ebc:	cc 	int3
e0108ebd:	cc 	int3
e0108ebe:	cc 	int3
e0108ebf:	cc 	int3
e0108ec0:	55 	pushl	%ebp
e0108ec1:	53 	pushl	%ebx
e0108ec2:	57 	pushl	%edi
e0108ec3:	56 	pushl	%esi
e0108ec4:	83 ec 10 	subl	$16, %esp
e0108ec7:	8a 44 24 30 	movb	48(%esp), %al
e0108ecb:	88 44 24 03 	movb	%al, 3(%esp)
e0108ecf:	8b 4c 24 28 	movl	40(%esp), %ecx
e0108ed3:	8d 71 07 	leal	7(%ecx), %esi
e0108ed6:	c1 ee 03 	shrl	$3, %esi
e0108ed9:	0f 84 9e 00 00 00 	je	158 <asan_internal_range_poisoned+0xbd>
e0108edf:	8b 5c 24 24 	movl	36(%esp), %ebx
e0108ee3:	89 df 	movl	%ebx, %edi
e0108ee5:	83 e7 f8 	andl	$-8, %edi
e0108ee8:	c1 eb 03 	shrl	$3, %ebx
e0108eeb:	03 1d a0 2f 12 e0 	addl	-535679072, %ebx
e0108ef1:	8b 2d 98 2f 12 e0 	movl	-535679080, %ebp
e0108ef7:	a1 9c 2f 12 e0 	movl	3759288220, %eax
e0108efc:	89 44 24 0c 	movl	%eax, 12(%esp)
e0108f00:	a1 a4 2f 12 e0 	movl	3759288228, %eax
e0108f05:	89 44 24 08 	movl	%eax, 8(%esp)
e0108f09:	31 d2 	xorl	%edx, %edx
e0108f0b:	a1 a8 2f 12 e0 	movl	3759288232, %eax
e0108f10:	89 44 24 04 	movl	%eax, 4(%esp)
e0108f14:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108f1e:	66 90 	nop
e0108f20:	8d 04 13 	leal	(%ebx,%edx), %eax
e0108f23:	39 e8 	cmpl	%ebp, %eax
e0108f25:	72 06 	jb	6 <asan_internal_range_poisoned+0x6d>
e0108f27:	3b 44 24 0c 	cmpl	12(%esp), %eax
e0108f2b:	72 0c 	jb	12 <asan_internal_range_poisoned+0x79>
e0108f2d:	3b 44 24 08 	cmpl	8(%esp), %eax
e0108f31:	72 2e 	jb	46 <asan_internal_range_poisoned+0xa1>
e0108f33:	3b 44 24 04 	cmpl	4(%esp), %eax
e0108f37:	73 28 	jae	40 <asan_internal_range_poisoned+0xa1>
e0108f39:	0f b6 00 	movzbl	(%eax), %eax
e0108f3c:	80 7c 24 30 00 	cmpb	$0, 48(%esp)
e0108f41:	74 0d 	je	13 <asan_internal_range_poisoned+0x90>
e0108f43:	3c 08 	cmpb	$8, %al
e0108f45:	76 16 	jbe	22 <asan_internal_range_poisoned+0x9d>
e0108f47:	eb 18 	jmp	24 <asan_internal_range_poisoned+0xa1>
e0108f49:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0108f50:	84 c0 	testb	%al, %al
e0108f52:	74 0d 	je	13 <asan_internal_range_poisoned+0xa1>
e0108f54:	3c 07 	cmpb	$7, %al
e0108f56:	77 16 	ja	22 <asan_internal_range_poisoned+0xae>
e0108f58:	83 f9 08 	cmpl	$8, %ecx
e0108f5b:	77 11 	ja	17 <asan_internal_range_poisoned+0xae>
e0108f5d:	39 c1 	cmpl	%eax, %ecx
e0108f5f:	77 0d 	ja	13 <asan_internal_range_poisoned+0xae>
e0108f61:	42 	incl	%edx
e0108f62:	83 c1 f8 	addl	$-8, %ecx
e0108f65:	83 c7 08 	addl	$8, %edi
e0108f68:	39 f2 	cmpl	%esi, %edx
e0108f6a:	72 b4 	jb	-76 <asan_internal_range_poisoned+0x60>
e0108f6c:	eb 0f 	jmp	15 <asan_internal_range_poisoned+0xbd>
e0108f6e:	8b 44 24 2c 	movl	44(%esp), %eax
e0108f72:	85 c0 	testl	%eax, %eax
e0108f74:	74 02 	je	2 <asan_internal_range_poisoned+0xb8>
e0108f76:	89 38 	movl	%edi, (%eax)
e0108f78:	80 74 24 03 01 	xorb	$1, 3(%esp)
e0108f7d:	8a 44 24 03 	movb	3(%esp), %al
e0108f81:	83 c4 10 	addl	$16, %esp
e0108f84:	5e 	popl	%esi
e0108f85:	5f 	popl	%edi
e0108f86:	5b 	popl	%ebx
e0108f87:	5d 	popl	%ebp
e0108f88:	c3 	retl
e0108f89:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0108f90:	53 	pushl	%ebx
e0108f91:	56 	pushl	%esi
e0108f92:	50 	pushl	%eax
e0108f93:	8b 44 24 14 	movl	20(%esp), %eax
e0108f97:	8b 4c 24 10 	movl	16(%esp), %ecx
e0108f9b:	89 ce 	movl	%ecx, %esi
e0108f9d:	83 e6 07 	andl	$7, %esi
e0108fa0:	74 0f 	je	15 <asan_internal_fill_range+0x21>
e0108fa2:	ba 08 00 00 00 	movl	$8, %edx
e0108fa7:	29 f2 	subl	%esi, %edx
e0108fa9:	39 c2 	cmpl	%eax, %edx
e0108fab:	73 65 	jae	101 <asan_internal_fill_range+0x82>
e0108fad:	01 d1 	addl	%edx, %ecx
e0108faf:	29 d0 	subl	%edx, %eax
e0108fb1:	8d 50 07 	leal	7(%eax), %edx
e0108fb4:	c1 ea 03 	shrl	$3, %edx
e0108fb7:	74 59 	je	89 <asan_internal_fill_range+0x82>
e0108fb9:	8a 5c 24 18 	movb	24(%esp), %bl
e0108fbd:	c1 e9 03 	shrl	$3, %ecx
e0108fc0:	03 0d a0 2f 12 e0 	addl	-535679072, %ecx
e0108fc6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108fd0:	3b 0d 98 2f 12 e0 	cmpl	-535679080, %ecx
e0108fd6:	72 08 	jb	8 <asan_internal_fill_range+0x50>
e0108fd8:	3b 0d 9c 2f 12 e0 	cmpl	-535679076, %ecx
e0108fde:	72 10 	jb	16 <asan_internal_fill_range+0x60>
e0108fe0:	3b 0d a4 2f 12 e0 	cmpl	-535679068, %ecx
e0108fe6:	72 23 	jb	35 <asan_internal_fill_range+0x7b>
e0108fe8:	3b 0d a8 2f 12 e0 	cmpl	-535679064, %ecx
e0108fee:	73 1b 	jae	27 <asan_internal_fill_range+0x7b>
e0108ff0:	83 f8 07 	cmpl	$7, %eax
e0108ff3:	88 df 	movb	%bl, %bh
e0108ff5:	77 02 	ja	2 <asan_internal_fill_range+0x69>
e0108ff7:	88 c7 	movb	%al, %bh
e0108ff9:	88 7c 24 03 	movb	%bh, 3(%esp)
e0108ffd:	84 db 	testb	%bl, %bl
e0108fff:	88 df 	movb	%bl, %bh
e0109001:	74 04 	je	4 <asan_internal_fill_range+0x77>
e0109003:	8a 5c 24 03 	movb	3(%esp), %bl
e0109007:	88 19 	movb	%bl, (%ecx)
e0109009:	88 fb 	movb	%bh, %bl
e010900b:	83 c0 f8 	addl	$-8, %eax
e010900e:	41 	incl	%ecx
e010900f:	4a 	decl	%edx
e0109010:	75 be 	jne	-66 <asan_internal_fill_range+0x40>
e0109012:	83 c4 04 	addl	$4, %esp
e0109015:	5e 	popl	%esi
e0109016:	5b 	popl	%ebx
e0109017:	c3 	retl
e0109018:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0109020:	55 	pushl	%ebp
e0109021:	89 e5 	movl	%esp, %ebp
e0109023:	56 	pushl	%esi
e0109024:	50 	pushl	%eax
e0109025:	80 3d 94 2f 12 e0 00 	cmpb	$0, -535679084
e010902c:	74 19 	je	25 <asan_internal_check_range+0x27>
e010902e:	8b 75 0c 	movl	12(%ebp), %esi
e0109031:	8d 45 f8 	leal	-8(%ebp), %eax
e0109034:	6a 00 	pushl	$0
e0109036:	50 	pushl	%eax
e0109037:	56 	pushl	%esi
e0109038:	ff 75 08 	pushl	8(%ebp)
e010903b:	e8 80 fe ff ff 	calll	-384 <asan_internal_range_poisoned>
e0109040:	83 c4 10 	addl	$16, %esp
e0109043:	84 c0 	testb	%al, %al
e0109045:	75 06 	jne	6 <asan_internal_check_range+0x2d>
e0109047:	83 c4 04 	addl	$4, %esp
e010904a:	5e 	popl	%esi
e010904b:	5d 	popl	%ebp
e010904c:	c3 	retl
e010904d:	8b 4d f8 	movl	-8(%ebp), %ecx
e0109050:	83 ec 0c 	subl	$12, %esp
e0109053:	89 f2 	movl	%esi, %edx
e0109055:	ff 75 10 	pushl	16(%ebp)
e0109058:	e8 03 00 00 00 	calll	3 <asan_internal_invalid_access>
e010905d:	83 c4 0c 	addl	$12, %esp
e0109060:	55 	pushl	%ebp
e0109061:	89 e5 	movl	%esp, %ebp
e0109063:	83 ec 08 	subl	$8, %esp
e0109066:	ff 75 08 	pushl	8(%ebp)
e0109069:	52 	pushl	%edx
e010906a:	51 	pushl	%ecx
e010906b:	68 42 a3 10 e0 	pushl	$3759186754
e0109070:	e8 fb 06 00 00 	calll	1787 <platform_asan_fatal>
e0109075:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010907f:	90 	nop
e0109080:	55 	pushl	%ebp
e0109081:	89 e5 	movl	%esp, %ebp
e0109083:	83 ec 08 	subl	$8, %esp
e0109086:	8b 45 08 	movl	8(%ebp), %eax
e0109089:	8b 10 	movl	(%eax), %edx
e010908b:	85 d2 	testl	%edx, %edx
e010908d:	74 1b 	je	27 <asan_internal_alloc_init+0x2a>
e010908f:	8b 4d 0c 	movl	12(%ebp), %ecx
e0109092:	83 c2 07 	addl	$7, %edx
e0109095:	83 e2 f8 	andl	$-8, %edx
e0109098:	89 10 	movl	%edx, (%eax)
e010909a:	83 39 07 	cmpl	$7, (%ecx)
e010909d:	77 06 	ja	6 <asan_internal_alloc_init+0x25>
e010909f:	c7 01 08 00 00 00 	movl	$8, (%ecx)
e01090a5:	83 c4 08 	addl	$8, %esp
e01090a8:	5d 	popl	%ebp
e01090a9:	c3 	retl
e01090aa:	e8 01 00 00 00 	calll	1 <asan_internal_unsupported>
e01090af:	90 	nop
e01090b0:	55 	pushl	%ebp
e01090b1:	89 e5 	movl	%esp, %ebp
e01090b3:	83 ec 08 	subl	$8, %esp
e01090b6:	6a 00 	pushl	$0
e01090b8:	6a 00 	pushl	$0
e01090ba:	6a 00 	pushl	$0
e01090bc:	68 89 a1 10 e0 	pushl	$3759186313
e01090c1:	e8 aa 06 00 00 	calll	1706 <platform_asan_fatal>
e01090c6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01090d0:	55 	pushl	%ebp
e01090d1:	89 e5 	movl	%esp, %ebp
e01090d3:	53 	pushl	%ebx
e01090d4:	57 	pushl	%edi
e01090d5:	56 	pushl	%esi
e01090d6:	83 ec 0c 	subl	$12, %esp
e01090d9:	8b 45 14 	movl	20(%ebp), %eax
e01090dc:	8b 7d 10 	movl	16(%ebp), %edi
e01090df:	8b 75 08 	movl	8(%ebp), %esi
e01090e2:	8d 1c 47 	leal	(%edi,%eax,2), %ebx
e01090e5:	8d 45 f0 	leal	-16(%ebp), %eax
e01090e8:	6a 01 	pushl	$1
e01090ea:	50 	pushl	%eax
e01090eb:	53 	pushl	%ebx
e01090ec:	56 	pushl	%esi
e01090ed:	e8 ce fd ff ff 	calll	-562 <asan_internal_range_poisoned>
e01090f2:	83 c4 10 	addl	$16, %esp
e01090f5:	84 c0 	testb	%al, %al
e01090f7:	74 48 	je	72 <asan_internal_alloc_poison+0x71>
e01090f9:	83 ec 04 	subl	$4, %esp
e01090fc:	68 e9 00 00 00 	pushl	$233
e0109101:	8b 5d 14 	movl	20(%ebp), %ebx
e0109104:	53 	pushl	%ebx
e0109105:	56 	pushl	%esi
e0109106:	e8 85 fe ff ff 	calll	-379 <asan_internal_fill_range>
e010910b:	83 c4 10 	addl	$16, %esp
e010910e:	01 de 	addl	%ebx, %esi
e0109110:	83 ec 04 	subl	$4, %esp
e0109113:	6a 00 	pushl	$0
e0109115:	ff 75 0c 	pushl	12(%ebp)
e0109118:	56 	pushl	%esi
e0109119:	e8 72 fe ff ff 	calll	-398 <asan_internal_fill_range>
e010911e:	83 c4 10 	addl	$16, %esp
e0109121:	8b 45 0c 	movl	12(%ebp), %eax
e0109124:	01 c6 	addl	%eax, %esi
e0109126:	29 c7 	subl	%eax, %edi
e0109128:	01 df 	addl	%ebx, %edi
e010912a:	83 ec 04 	subl	$4, %esp
e010912d:	68 e9 00 00 00 	pushl	$233
e0109132:	57 	pushl	%edi
e0109133:	56 	pushl	%esi
e0109134:	e8 57 fe ff ff 	calll	-425 <asan_internal_fill_range>
e0109139:	83 c4 1c 	addl	$28, %esp
e010913c:	5e 	popl	%esi
e010913d:	5f 	popl	%edi
e010913e:	5b 	popl	%ebx
e010913f:	5d 	popl	%ebp
e0109140:	c3 	retl
e0109141:	6a 00 	pushl	$0
e0109143:	53 	pushl	%ebx
e0109144:	ff 75 f0 	pushl	-16(%ebp)
e0109147:	68 27 a5 10 e0 	pushl	$3759187239
e010914c:	e8 1f 06 00 00 	calll	1567 <platform_asan_fatal>
e0109151:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010915b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0109160:	55 	pushl	%ebp
e0109161:	89 e5 	movl	%esp, %ebp
e0109163:	53 	pushl	%ebx
e0109164:	57 	pushl	%edi
e0109165:	56 	pushl	%esi
e0109166:	83 ec 0c 	subl	$12, %esp
e0109169:	c7 45 f0 00 00 00 00 	movl	$0, -16(%ebp)
e0109170:	83 ec 0c 	subl	$12, %esp
e0109173:	8d 45 f0 	leal	-16(%ebp), %eax
e0109176:	31 f6 	xorl	%esi, %esi
e0109178:	50 	pushl	%eax
e0109179:	e8 22 0a 00 00 	calll	2594 <platform_asan_fakestack_enter>
e010917e:	83 c4 10 	addl	$16, %esp
e0109181:	84 c0 	testb	%al, %al
e0109183:	0f 84 bf 00 00 00 	je	191 <asan_internal_fakestack_alloc+0xe8>
e0109189:	8b 7d 10 	movl	16(%ebp), %edi
e010918c:	8b 4d 08 	movl	8(%ebp), %ecx
e010918f:	8b 5d f0 	movl	-16(%ebp), %ebx
e0109192:	83 ec 0c 	subl	$12, %esp
e0109195:	89 da 	movl	%ebx, %edx
e0109197:	57 	pushl	%edi
e0109198:	e8 c3 00 00 00 	calll	195 <asan_internal_fakestack_get_t_configs>
e010919d:	83 c4 10 	addl	$16, %esp
e01091a0:	89 c6 	movl	%eax, %esi
e01091a2:	83 ec 08 	subl	$8, %esp
e01091a5:	8b 4d 0c 	movl	12(%ebp), %ecx
e01091a8:	89 da 	movl	%ebx, %edx
e01091aa:	8b 45 14 	movl	20(%ebp), %eax
e01091ad:	89 c3 	movl	%eax, %ebx
e01091af:	50 	pushl	%eax
e01091b0:	57 	pushl	%edi
e01091b1:	e8 ba 00 00 00 	calll	186 <asan_internal_fakestack_get_t_entries>
e01091b6:	83 c4 10 	addl	$16, %esp
e01091b9:	31 c9 	xorl	%ecx, %ecx
e01091bb:	85 ff 	testl	%edi, %edi
e01091bd:	74 0c 	je	12 <asan_internal_fakestack_alloc+0x6b>
e01091bf:	90 	nop
e01091c0:	80 3c ce 00 	cmpb	$0, (%esi,%ecx,8)
e01091c4:	74 05 	je	5 <asan_internal_fakestack_alloc+0x6b>
e01091c6:	41 	incl	%ecx
e01091c7:	39 f9 	cmpl	%edi, %ecx
e01091c9:	72 f5 	jb	-11 <asan_internal_fakestack_alloc+0x60>
e01091cb:	39 f9 	cmpl	%edi, %ecx
e01091cd:	75 09 	jne	9 <asan_internal_fakestack_alloc+0x78>
e01091cf:	e8 dc 09 00 00 	calll	2524 <platform_asan_fakestack_leave>
e01091d4:	31 f6 	xorl	%esi, %esi
e01091d6:	eb 70 	jmp	112 <asan_internal_fakestack_alloc+0xe8>
e01091d8:	8b 55 18 	movl	24(%ebp), %edx
e01091db:	89 cf 	movl	%ecx, %edi
e01091dd:	0f af fb 	imull	%ebx, %edi
e01091e0:	c6 04 ce 01 	movb	$1, (%esi,%ecx,8)
e01091e4:	89 54 ce 04 	movl	%edx, 4(%esi,%ecx,8)
e01091e8:	8d 0c ce 	leal	(%esi,%ecx,8), %ecx
e01091eb:	89 4d ec 	movl	%ecx, -20(%ebp)
e01091ee:	8d 1c 07 	leal	(%edi,%eax), %ebx
e01091f1:	83 ec 04 	subl	$4, %esp
e01091f4:	68 f1 00 00 00 	pushl	$241
e01091f9:	6a 10 	pushl	$16
e01091fb:	53 	pushl	%ebx
e01091fc:	89 c6 	movl	%eax, %esi
e01091fe:	e8 8d fd ff ff 	calll	-627 <asan_internal_fill_range>
e0109203:	83 c4 10 	addl	$16, %esp
e0109206:	8d 74 37 10 	leal	16(%edi,%esi), %esi
e010920a:	83 ec 04 	subl	$4, %esp
e010920d:	6a 00 	pushl	$0
e010920f:	8b 7d 18 	movl	24(%ebp), %edi
e0109212:	57 	pushl	%edi
e0109213:	56 	pushl	%esi
e0109214:	e8 77 fd ff ff 	calll	-649 <asan_internal_fill_range>
e0109219:	83 c4 10 	addl	$16, %esp
e010921c:	8d 44 1f 10 	leal	16(%edi,%ebx), %eax
e0109220:	89 fa 	movl	%edi, %edx
e0109222:	8b 7d 14 	movl	20(%ebp), %edi
e0109225:	8d 4f f0 	leal	-16(%edi), %ecx
e0109228:	29 d1 	subl	%edx, %ecx
e010922a:	83 ec 04 	subl	$4, %esp
e010922d:	68 f3 00 00 00 	pushl	$243
e0109232:	51 	pushl	%ecx
e0109233:	50 	pushl	%eax
e0109234:	e8 57 fd ff ff 	calll	-681 <asan_internal_fill_range>
e0109239:	83 c4 10 	addl	$16, %esp
e010923c:	8b 45 ec 	movl	-20(%ebp), %eax
e010923f:	89 44 1f fc 	movl	%eax, -4(%edi,%ebx)
e0109243:	e8 68 09 00 00 	calll	2408 <platform_asan_fakestack_leave>
e0109248:	89 f0 	movl	%esi, %eax
e010924a:	83 c4 0c 	addl	$12, %esp
e010924d:	5e 	popl	%esi
e010924e:	5f 	popl	%edi
e010924f:	5b 	popl	%ebx
e0109250:	5d 	popl	%ebp
e0109251:	c3 	retl
e0109252:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010925c:	0f 1f 40 00 	nopl	(%eax)
e0109260:	0f af 54 24 04 	imull	4(%esp), %edx
e0109265:	8d 04 d1 	leal	(%ecx,%edx,8), %eax
e0109268:	c3 	retl
e0109269:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0109270:	0f af 54 24 04 	imull	4(%esp), %edx
e0109275:	0f af 54 24 08 	imull	8(%esp), %edx
e010927a:	8d 04 0a 	leal	(%edx,%ecx), %eax
e010927d:	c3 	retl
e010927e:	66 90 	nop
e0109280:	55 	pushl	%ebp
e0109281:	89 e5 	movl	%esp, %ebp
e0109283:	83 ec 08 	subl	$8, %esp
e0109286:	8b 45 10 	movl	16(%ebp), %eax
e0109289:	8b 4d 0c 	movl	12(%ebp), %ecx
e010928c:	8b 55 08 	movl	8(%ebp), %edx
e010928f:	8b 54 0a ec 	movl	-20(%edx,%ecx), %edx
e0109293:	c6 02 00 	movb	$0, (%edx)
e0109296:	83 ec 04 	subl	$4, %esp
e0109299:	68 f5 00 00 00 	pushl	$245
e010929e:	50 	pushl	%eax
e010929f:	51 	pushl	%ecx
e01092a0:	e8 eb fc ff ff 	calll	-789 <asan_internal_fill_range>
e01092a5:	83 c4 18 	addl	$24, %esp
e01092a8:	5d 	popl	%ebp
e01092a9:	c3 	retl
e01092aa:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e01092b0:	c3 	retl
e01092b1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01092bb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e01092c0:	83 ec 0c 	subl	$12, %esp
e01092c3:	e8 38 fa ff ff 	calll	-1480 <__asan_init>
e01092c8:	e8 53 fb ff ff 	calll	-1197 <__asan_version_mismatch_check_v8>
e01092cd:	83 c4 0c 	addl	$12, %esp
e01092d0:	c3 	retl
e01092d1:	cc 	int3
e01092d2:	cc 	int3
e01092d3:	cc 	int3
e01092d4:	cc 	int3
e01092d5:	cc 	int3
e01092d6:	cc 	int3
e01092d7:	cc 	int3
e01092d8:	cc 	int3
e01092d9:	cc 	int3
e01092da:	cc 	int3
e01092db:	cc 	int3
e01092dc:	cc 	int3
e01092dd:	cc 	int3
e01092de:	cc 	int3
e01092df:	cc 	int3
e01092e0:	55 	pushl	%ebp
e01092e1:	89 e5 	movl	%esp, %ebp
e01092e3:	57 	pushl	%edi
e01092e4:	56 	pushl	%esi
e01092e5:	8b 75 08 	movl	8(%ebp), %esi
e01092e8:	8b 7d 10 	movl	16(%ebp), %edi
e01092eb:	83 ec 04 	subl	$4, %esp
e01092ee:	6a 20 	pushl	$32
e01092f0:	57 	pushl	%edi
e01092f1:	ff 75 0c 	pushl	12(%ebp)
e01092f4:	e8 27 fd ff ff 	calll	-729 <asan_internal_check_range>
e01092f9:	83 c4 0c 	addl	$12, %esp
e01092fc:	6a 40 	pushl	$64
e01092fe:	57 	pushl	%edi
e01092ff:	56 	pushl	%esi
e0109300:	e8 1b fd ff ff 	calll	-741 <asan_internal_check_range>
e0109305:	83 c4 10 	addl	$16, %esp
e0109308:	5e 	popl	%esi
e0109309:	5f 	popl	%edi
e010930a:	5d 	popl	%ebp
e010930b:	e9 10 e8 ff ff 	jmp	-6128 <memcpy>
e0109310:	55 	pushl	%ebp
e0109311:	89 e5 	movl	%esp, %ebp
e0109313:	83 ec 08 	subl	$8, %esp
e0109316:	83 ec 04 	subl	$4, %esp
e0109319:	6a 40 	pushl	$64
e010931b:	ff 75 10 	pushl	16(%ebp)
e010931e:	ff 75 08 	pushl	8(%ebp)
e0109321:	e8 fa fc ff ff 	calll	-774 <asan_internal_check_range>
e0109326:	83 c4 18 	addl	$24, %esp
e0109329:	5d 	popl	%ebp
e010932a:	e9 41 e7 ff ff 	jmp	-6335 <memset>
e010932f:	90 	nop
e0109330:	55 	pushl	%ebp
e0109331:	89 e5 	movl	%esp, %ebp
e0109333:	57 	pushl	%edi
e0109334:	56 	pushl	%esi
e0109335:	8b 75 0c 	movl	12(%ebp), %esi
e0109338:	8b 7d 10 	movl	16(%ebp), %edi
e010933b:	83 ec 04 	subl	$4, %esp
e010933e:	6a 20 	pushl	$32
e0109340:	57 	pushl	%edi
e0109341:	ff 75 08 	pushl	8(%ebp)
e0109344:	e8 d7 fc ff ff 	calll	-809 <asan_internal_check_range>
e0109349:	83 c4 0c 	addl	$12, %esp
e010934c:	6a 40 	pushl	$64
e010934e:	57 	pushl	%edi
e010934f:	56 	pushl	%esi
e0109350:	e8 cb fc ff ff 	calll	-821 <asan_internal_check_range>
e0109355:	83 c4 10 	addl	$16, %esp
e0109358:	5e 	popl	%esi
e0109359:	5f 	popl	%edi
e010935a:	5d 	popl	%ebp
e010935b:	e9 50 e7 ff ff 	jmp	-6320 <memmove>
e0109360:	55 	pushl	%ebp
e0109361:	89 e5 	movl	%esp, %ebp
e0109363:	57 	pushl	%edi
e0109364:	56 	pushl	%esi
e0109365:	8b 75 0c 	movl	12(%ebp), %esi
e0109368:	8b 7d 10 	movl	16(%ebp), %edi
e010936b:	83 ec 04 	subl	$4, %esp
e010936e:	6a 20 	pushl	$32
e0109370:	57 	pushl	%edi
e0109371:	ff 75 08 	pushl	8(%ebp)
e0109374:	e8 a7 fc ff ff 	calll	-857 <asan_internal_check_range>
e0109379:	83 c4 0c 	addl	$12, %esp
e010937c:	6a 40 	pushl	$64
e010937e:	57 	pushl	%edi
e010937f:	56 	pushl	%esi
e0109380:	e8 9b fc ff ff 	calll	-869 <asan_internal_check_range>
e0109385:	e8 46 02 00 00 	calll	582 <__real_bcopy>
e010938a:	83 c4 04 	addl	$4, %esp
e010938d:	0f 1f 00 	nopl	(%eax)
e0109390:	55 	pushl	%ebp
e0109391:	89 e5 	movl	%esp, %ebp
e0109393:	83 ec 18 	subl	$24, %esp
e0109396:	8b 45 08 	movl	8(%ebp), %eax
e0109399:	8b 4d 0c 	movl	12(%ebp), %ecx
e010939c:	89 4c 24 04 	movl	%ecx, 4(%esp)
e01093a0:	89 04 24 	movl	%eax, (%esp)
e01093a3:	c7 44 24 08 40 00 00 00 	movl	$64, 8(%esp)
e01093ab:	e8 70 fc ff ff 	calll	-912 <asan_internal_check_range>
e01093b0:	e8 4b 02 00 00 	calll	587 <__real_bzero>
e01093b5:	83 ec 08 	subl	$8, %esp
e01093b8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e01093c0:	55 	pushl	%ebp
e01093c1:	89 e5 	movl	%esp, %ebp
e01093c3:	57 	pushl	%edi
e01093c4:	56 	pushl	%esi
e01093c5:	8b 75 0c 	movl	12(%ebp), %esi
e01093c8:	8b 7d 10 	movl	16(%ebp), %edi
e01093cb:	83 ec 04 	subl	$4, %esp
e01093ce:	6a 20 	pushl	$32
e01093d0:	57 	pushl	%edi
e01093d1:	ff 75 08 	pushl	8(%ebp)
e01093d4:	e8 47 fc ff ff 	calll	-953 <asan_internal_check_range>
e01093d9:	83 c4 0c 	addl	$12, %esp
e01093dc:	6a 20 	pushl	$32
e01093de:	57 	pushl	%edi
e01093df:	56 	pushl	%esi
e01093e0:	e8 3b fc ff ff 	calll	-965 <asan_internal_check_range>
e01093e5:	e8 26 02 00 00 	calll	550 <__real_bcmp>
e01093ea:	83 c4 04 	addl	$4, %esp
e01093ed:	0f 1f 00 	nopl	(%eax)
e01093f0:	55 	pushl	%ebp
e01093f1:	89 e5 	movl	%esp, %ebp
e01093f3:	57 	pushl	%edi
e01093f4:	56 	pushl	%esi
e01093f5:	8b 75 0c 	movl	12(%ebp), %esi
e01093f8:	8b 7d 10 	movl	16(%ebp), %edi
e01093fb:	83 ec 04 	subl	$4, %esp
e01093fe:	6a 20 	pushl	$32
e0109400:	57 	pushl	%edi
e0109401:	ff 75 08 	pushl	8(%ebp)
e0109404:	e8 17 fc ff ff 	calll	-1001 <asan_internal_check_range>
e0109409:	83 c4 0c 	addl	$12, %esp
e010940c:	6a 20 	pushl	$32
e010940e:	57 	pushl	%edi
e010940f:	56 	pushl	%esi
e0109410:	e8 0b fc ff ff 	calll	-1013 <asan_internal_check_range>
e0109415:	83 c4 10 	addl	$16, %esp
e0109418:	5e 	popl	%esi
e0109419:	5f 	popl	%edi
e010941a:	5d 	popl	%ebp
e010941b:	e9 10 e7 ff ff 	jmp	-6384 <memcmp>
e0109420:	55 	pushl	%ebp
e0109421:	89 e5 	movl	%esp, %ebp
e0109423:	53 	pushl	%ebx
e0109424:	57 	pushl	%edi
e0109425:	56 	pushl	%esi
e0109426:	83 ec 0c 	subl	$12, %esp
e0109429:	8b 7d 0c 	movl	12(%ebp), %edi
e010942c:	8b 5d 08 	movl	8(%ebp), %ebx
e010942f:	89 1c 24 	movl	%ebx, (%esp)
e0109432:	e8 f9 e0 ff ff 	calll	-7943 <strlen>
e0109437:	89 c6 	movl	%eax, %esi
e0109439:	89 3c 24 	movl	%edi, (%esp)
e010943c:	e8 ef e0 ff ff 	calll	-7953 <strlen>
e0109441:	8d 44 06 01 	leal	1(%esi,%eax), %eax
e0109445:	89 44 24 04 	movl	%eax, 4(%esp)
e0109449:	89 1c 24 	movl	%ebx, (%esp)
e010944c:	c7 44 24 08 00 01 00 00 	movl	$256, 8(%esp)
e0109454:	e8 c7 fb ff ff 	calll	-1081 <asan_internal_check_range>
e0109459:	83 c4 0c 	addl	$12, %esp
e010945c:	5e 	popl	%esi
e010945d:	5f 	popl	%edi
e010945e:	5b 	popl	%ebx
e010945f:	5d 	popl	%ebp
e0109460:	e9 2b e2 ff ff 	jmp	-7637 <strcat>
e0109465:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010946f:	90 	nop
e0109470:	55 	pushl	%ebp
e0109471:	89 e5 	movl	%esp, %ebp
e0109473:	56 	pushl	%esi
e0109474:	50 	pushl	%eax
e0109475:	8b 75 08 	movl	8(%ebp), %esi
e0109478:	83 ec 0c 	subl	$12, %esp
e010947b:	ff 75 0c 	pushl	12(%ebp)
e010947e:	e8 ad e0 ff ff 	calll	-8019 <strlen>
e0109483:	83 c4 10 	addl	$16, %esp
e0109486:	40 	incl	%eax
e0109487:	83 ec 04 	subl	$4, %esp
e010948a:	68 00 01 00 00 	pushl	$256
e010948f:	50 	pushl	%eax
e0109490:	56 	pushl	%esi
e0109491:	e8 8a fb ff ff 	calll	-1142 <asan_internal_check_range>
e0109496:	83 c4 14 	addl	$20, %esp
e0109499:	5e 	popl	%esi
e010949a:	5d 	popl	%ebp
e010949b:	e9 70 e1 ff ff 	jmp	-7824 <strcpy>
e01094a0:	55 	pushl	%ebp
e01094a1:	89 e5 	movl	%esp, %ebp
e01094a3:	83 ec 18 	subl	$24, %esp
e01094a6:	8b 45 08 	movl	8(%ebp), %eax
e01094a9:	8b 4d 10 	movl	16(%ebp), %ecx
e01094ac:	89 4c 24 04 	movl	%ecx, 4(%esp)
e01094b0:	89 04 24 	movl	%eax, (%esp)
e01094b3:	c7 44 24 08 00 01 00 00 	movl	$256, 8(%esp)
e01094bb:	e8 60 fb ff ff 	calll	-1184 <asan_internal_check_range>
e01094c0:	e8 5b 01 00 00 	calll	347 <__real_bcmp+0x10>
e01094c5:	83 ec 0c 	subl	$12, %esp
e01094c8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e01094d0:	55 	pushl	%ebp
e01094d1:	89 e5 	movl	%esp, %ebp
e01094d3:	83 ec 08 	subl	$8, %esp
e01094d6:	83 ec 04 	subl	$4, %esp
e01094d9:	68 00 01 00 00 	pushl	$256
e01094de:	ff 75 10 	pushl	16(%ebp)
e01094e1:	ff 75 08 	pushl	8(%ebp)
e01094e4:	e8 37 fb ff ff 	calll	-1225 <asan_internal_check_range>
e01094e9:	83 c4 18 	addl	$24, %esp
e01094ec:	5d 	popl	%ebp
e01094ed:	e9 ce e1 ff ff 	jmp	-7730 <strncpy>
e01094f2:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01094fc:	0f 1f 40 00 	nopl	(%eax)
e0109500:	55 	pushl	%ebp
e0109501:	89 e5 	movl	%esp, %ebp
e0109503:	83 ec 18 	subl	$24, %esp
e0109506:	8b 45 08 	movl	8(%ebp), %eax
e0109509:	8b 4d 10 	movl	16(%ebp), %ecx
e010950c:	89 4c 24 04 	movl	%ecx, 4(%esp)
e0109510:	89 04 24 	movl	%eax, (%esp)
e0109513:	c7 44 24 08 00 01 00 00 	movl	$256, 8(%esp)
e010951b:	e8 00 fb ff ff 	calll	-1280 <asan_internal_check_range>
e0109520:	e8 0b 01 00 00 	calll	267 <__real_strlcat>
e0109525:	83 ec 0c 	subl	$12, %esp
e0109528:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0109530:	55 	pushl	%ebp
e0109531:	89 e5 	movl	%esp, %ebp
e0109533:	57 	pushl	%edi
e0109534:	56 	pushl	%esi
e0109535:	83 ec 10 	subl	$16, %esp
e0109538:	8b 75 10 	movl	16(%ebp), %esi
e010953b:	8b 7d 08 	movl	8(%ebp), %edi
e010953e:	89 3c 24 	movl	%edi, (%esp)
e0109541:	e8 ea df ff ff 	calll	-8214 <strlen>
e0109546:	8d 44 06 01 	leal	1(%esi,%eax), %eax
e010954a:	89 44 24 04 	movl	%eax, 4(%esp)
e010954e:	89 3c 24 	movl	%edi, (%esp)
e0109551:	c7 44 24 08 00 01 00 00 	movl	$256, 8(%esp)
e0109559:	e8 c2 fa ff ff 	calll	-1342 <asan_internal_check_range>
e010955e:	e8 dd 00 00 00 	calll	221 <__real_strlcat+0x10>
e0109563:	83 ec 0c 	subl	$12, %esp
e0109566:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0109570:	55 	pushl	%ebp
e0109571:	89 e5 	movl	%esp, %ebp
e0109573:	83 ec 08 	subl	$8, %esp
e0109576:	83 ec 04 	subl	$4, %esp
e0109579:	68 80 00 00 00 	pushl	$128
e010957e:	ff 75 0c 	pushl	12(%ebp)
e0109581:	ff 75 08 	pushl	8(%ebp)
e0109584:	e8 97 fa ff ff 	calll	-1385 <asan_internal_check_range>
e0109589:	83 c4 18 	addl	$24, %esp
e010958c:	5d 	popl	%ebp
e010958d:	e9 1e e0 ff ff 	jmp	-8162 <strnlen>
e0109592:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010959c:	0f 1f 40 00 	nopl	(%eax)
e01095a0:	55 	pushl	%ebp
e01095a1:	89 e5 	movl	%esp, %ebp
e01095a3:	57 	pushl	%edi
e01095a4:	56 	pushl	%esi
e01095a5:	8b 7d 08 	movl	8(%ebp), %edi
e01095a8:	83 ec 0c 	subl	$12, %esp
e01095ab:	57 	pushl	%edi
e01095ac:	e8 7f df ff ff 	calll	-8321 <strlen>
e01095b1:	83 c4 10 	addl	$16, %esp
e01095b4:	89 c6 	movl	%eax, %esi
e01095b6:	40 	incl	%eax
e01095b7:	83 ec 04 	subl	$4, %esp
e01095ba:	68 80 00 00 00 	pushl	$128
e01095bf:	50 	pushl	%eax
e01095c0:	57 	pushl	%edi
e01095c1:	e8 5a fa ff ff 	calll	-1446 <asan_internal_check_range>
e01095c6:	83 c4 10 	addl	$16, %esp
e01095c9:	89 f0 	movl	%esi, %eax
e01095cb:	5e 	popl	%esi
e01095cc:	5f 	popl	%edi
e01095cd:	5d 	popl	%ebp
e01095ce:	c3 	retl
e01095cf:	90 	nop
e01095d0:	55 	pushl	%ebp
e01095d1:	89 e5 	movl	%esp, %ebp
e01095d3:	83 ec 08 	subl	$8, %esp
e01095d6:	b9 20 a4 10 e0 	movl	$3759186976, %ecx
e01095db:	e8 00 00 00 00 	calll	0 <asan_internal_unsupported>
e01095e0:	55 	pushl	%ebp
e01095e1:	89 e5 	movl	%esp, %ebp
e01095e3:	83 ec 08 	subl	$8, %esp
e01095e6:	6a 00 	pushl	$0
e01095e8:	6a 00 	pushl	$0
e01095ea:	6a 00 	pushl	$0
e01095ec:	51 	pushl	%ecx
e01095ed:	e8 7e 01 00 00 	calll	382 <platform_asan_fatal>
e01095f2:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01095fc:	0f 1f 40 00 	nopl	(%eax)
e0109600:	55 	pushl	%ebp
e0109601:	89 e5 	movl	%esp, %ebp
e0109603:	83 ec 08 	subl	$8, %esp
e0109606:	b9 7a a3 10 e0 	movl	$3759186810, %ecx
e010960b:	e8 d0 ff ff ff 	calll	-48 <asan_internal_unsupported>
e0109610:	55 	pushl	%ebp
e0109611:	89 e5 	movl	%esp, %ebp
e0109613:	83 ec 08 	subl	$8, %esp
e0109616:	b9 51 a3 10 e0 	movl	$3759186769, %ecx
e010961b:	e8 c0 ff ff ff 	calll	-64 <asan_internal_unsupported>
e0109620:	55 	pushl	%ebp
e0109621:	89 e5 	movl	%esp, %ebp
e0109623:	83 ec 08 	subl	$8, %esp
e0109626:	b9 56 a4 10 e0 	movl	$3759187030, %ecx
e010962b:	e8 b0 ff ff ff 	calll	-80 <asan_internal_unsupported>
e0109630:	55 	pushl	%ebp
e0109631:	89 e5 	movl	%esp, %ebp
e0109633:	83 ec 08 	subl	$8, %esp
e0109636:	b9 c7 a2 10 e0 	movl	$3759186631, %ecx
e010963b:	e8 a0 ff ff ff 	calll	-96 <asan_internal_unsupported>
e0109640:	55 	pushl	%ebp
e0109641:	89 e5 	movl	%esp, %ebp
e0109643:	83 ec 08 	subl	$8, %esp
e0109646:	b9 5d a3 10 e0 	movl	$3759186781, %ecx
e010964b:	e8 90 ff ff ff 	calll	-112 <asan_internal_unsupported>
e0109650:	83 ec 0c 	subl	$12, %esp
e0109653:	e8 a8 f6 ff ff 	calll	-2392 <__asan_init>
e0109658:	e8 c3 f7 ff ff 	calll	-2109 <__asan_version_mismatch_check_v8>
e010965d:	83 c4 0c 	addl	$12, %esp
e0109660:	c3 	retl
e0109661:	cc 	int3
e0109662:	cc 	int3
e0109663:	cc 	int3
e0109664:	cc 	int3
e0109665:	cc 	int3
e0109666:	cc 	int3
e0109667:	cc 	int3
e0109668:	cc 	int3
e0109669:	cc 	int3
e010966a:	cc 	int3
e010966b:	cc 	int3
e010966c:	cc 	int3
e010966d:	cc 	int3
e010966e:	cc 	int3
e010966f:	cc 	int3
e0109670:	55 	pushl	%ebp
e0109671:	89 e5 	movl	%esp, %ebp
e0109673:	83 ec 08 	subl	$8, %esp
e0109676:	83 ec 04 	subl	$4, %esp
e0109679:	68 ff a3 10 e0 	pushl	$3759186943
e010967e:	6a 00 	pushl	$0
e0109680:	68 7b a4 10 e0 	pushl	$3759187067
e0109685:	e8 a6 6a ff ff 	calll	-38234 <_panic>
e010968a:	83 c4 04 	addl	$4, %esp
e010968d:	0f 1f 00 	nopl	(%eax)
e0109690:	55 	pushl	%ebp
e0109691:	89 e5 	movl	%esp, %ebp
e0109693:	83 ec 08 	subl	$8, %esp
e0109696:	c7 05 98 2f 12 e0 00 00 00 fa 	movl	$4194304000, -535679080
e01096a0:	c7 05 9c 2f 12 e0 00 00 80 fb 	movl	$4219469824, -535679076
e01096aa:	c7 05 a0 2f 12 e0 00 00 80 de 	movl	$3732930560, -535679072
e01096b4:	83 ec 04 	subl	$4, %esp
e01096b7:	68 00 00 80 01 	pushl	$25165824
e01096bc:	68 f9 00 00 00 	pushl	$249
e01096c1:	68 00 00 00 fa 	pushl	$4194304000
e01096c6:	e8 15 05 00 00 	calll	1301 <__nosan_memset>
e01096cb:	83 c4 10 	addl	$16, %esp
e01096ce:	b8 00 e0 10 e0 	movl	$3759202304, %eax
e01096d3:	b9 a0 1a 12 e0 	movl	$3759282848, %ecx
e01096d8:	29 c1 	subl	%eax, %ecx
e01096da:	83 ec 04 	subl	$4, %esp
e01096dd:	6a 00 	pushl	$0
e01096df:	51 	pushl	%ecx
e01096e0:	68 00 e0 10 e0 	pushl	$3759202304
e01096e5:	e8 a6 f8 ff ff 	calll	-1882 <asan_internal_fill_range>
e01096ea:	83 c4 10 	addl	$16, %esp
e01096ed:	b8 e0 9f 10 e0 	movl	$3759185888, %eax
e01096f2:	b9 6c df 10 e0 	movl	$3759202156, %ecx
e01096f7:	29 c1 	subl	%eax, %ecx
e01096f9:	83 ec 04 	subl	$4, %esp
e01096fc:	6a 00 	pushl	$0
e01096fe:	51 	pushl	%ecx
e01096ff:	68 e0 9f 10 e0 	pushl	$3759185888
e0109704:	e8 87 f8 ff ff 	calll	-1913 <asan_internal_fill_range>
e0109709:	83 c4 10 	addl	$16, %esp
e010970c:	b8 40 1b 12 e0 	movl	$3759283008, %eax
e0109711:	b9 00 40 12 e0 	movl	$3759292416, %ecx
e0109716:	29 c1 	subl	%eax, %ecx
e0109718:	83 ec 04 	subl	$4, %esp
e010971b:	6a 00 	pushl	$0
e010971d:	51 	pushl	%ecx
e010971e:	68 40 1b 12 e0 	pushl	$3759283008
e0109723:	e8 68 f8 ff ff 	calll	-1944 <asan_internal_fill_range>
e0109728:	83 c4 10 	addl	$16, %esp
e010972b:	b8 00 e0 10 e0 	movl	$3759202304, %eax
e0109730:	b9 00 60 11 e0 	movl	$3759235072, %ecx
e0109735:	29 c1 	subl	%eax, %ecx
e0109737:	83 ec 04 	subl	$4, %esp
e010973a:	6a 00 	pushl	$0
e010973c:	51 	pushl	%ecx
e010973d:	68 00 e0 10 e0 	pushl	$3759202304
e0109742:	e8 49 f8 ff ff 	calll	-1975 <asan_internal_fill_range>
e0109747:	83 c4 18 	addl	$24, %esp
e010974a:	5d 	popl	%ebp
e010974b:	c3 	retl
e010974c:	0f 1f 40 00 	nopl	(%eax)
e0109750:	55 	pushl	%ebp
e0109751:	89 e5 	movl	%esp, %ebp
e0109753:	83 ec 08 	subl	$8, %esp
e0109756:	83 ec 04 	subl	$4, %esp
e0109759:	6a 00 	pushl	$0
e010975b:	ff 75 0c 	pushl	12(%ebp)
e010975e:	ff 75 08 	pushl	8(%ebp)
e0109761:	e8 2a f8 ff ff 	calll	-2006 <asan_internal_fill_range>
e0109766:	83 c4 18 	addl	$24, %esp
e0109769:	5d 	popl	%ebp
e010976a:	c3 	retl
e010976b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0109770:	55 	pushl	%ebp
e0109771:	89 e5 	movl	%esp, %ebp
e0109773:	56 	pushl	%esi
e0109774:	50 	pushl	%eax
e0109775:	83 ec 0c 	subl	$12, %esp
e0109778:	ff 75 14 	pushl	20(%ebp)
e010977b:	ff 75 10 	pushl	16(%ebp)
e010977e:	ff 75 0c 	pushl	12(%ebp)
e0109781:	ff 75 08 	pushl	8(%ebp)
e0109784:	68 e6 a2 10 e0 	pushl	$3759186662
e0109789:	e8 b2 a7 ff ff 	calll	-22606 <cprintf>
e010978e:	83 c4 20 	addl	$32, %esp
e0109791:	8b 75 04 	movl	4(%ebp), %esi
e0109794:	85 f6 	testl	%esi, %esi
e0109796:	74 3a 	je	58 <platform_asan_fatal+0x62>
e0109798:	83 ec 04 	subl	$4, %esp
e010979b:	56 	pushl	%esi
e010979c:	6a 00 	pushl	$0
e010979e:	68 f0 a3 10 e0 	pushl	$3759186928
e01097a3:	e8 98 a7 ff ff 	calll	-22632 <cprintf>
e01097a8:	83 c4 10 	addl	$16, %esp
e01097ab:	83 7d 00 00 	cmpl	$0, (%ebp)
e01097af:	74 1d 	je	29 <platform_asan_fatal+0x5e>
e01097b1:	8b 45 00 	movl	(%ebp), %eax
e01097b4:	8b 70 04 	movl	4(%eax), %esi
e01097b7:	85 f6 	testl	%esi, %esi
e01097b9:	74 17 	je	23 <platform_asan_fatal+0x62>
e01097bb:	83 ec 04 	subl	$4, %esp
e01097be:	56 	pushl	%esi
e01097bf:	6a 01 	pushl	$1
e01097c1:	68 f0 a3 10 e0 	pushl	$3759186928
e01097c6:	e8 75 a7 ff ff 	calll	-22667 <cprintf>
e01097cb:	83 c4 10 	addl	$16, %esp
e01097ce:	85 f6 	testl	%esi, %esi
e01097d0:	75 05 	jne	5 <platform_asan_fatal+0x67>
e01097d2:	e8 99 fe ff ff 	calll	-359 <platform_abort>
e01097d7:	8b 45 00 	movl	(%ebp), %eax
e01097da:	83 38 00 	cmpl	$0, (%eax)
e01097dd:	74 1f 	je	31 <platform_asan_fatal+0x8e>
e01097df:	8b 45 00 	movl	(%ebp), %eax
e01097e2:	8b 00 	movl	(%eax), %eax
e01097e4:	8b 40 04 	movl	4(%eax), %eax
e01097e7:	85 c0 	testl	%eax, %eax
e01097e9:	74 e7 	je	-25 <platform_asan_fatal+0x62>
e01097eb:	83 ec 04 	subl	$4, %esp
e01097ee:	50 	pushl	%eax
e01097ef:	6a 02 	pushl	$2
e01097f1:	68 f0 a3 10 e0 	pushl	$3759186928
e01097f6:	e8 45 a7 ff ff 	calll	-22715 <cprintf>
e01097fb:	83 c4 10 	addl	$16, %esp
e01097fe:	8b 45 00 	movl	(%ebp), %eax
e0109801:	8b 00 	movl	(%eax), %eax
e0109803:	83 38 00 	cmpl	$0, (%eax)
e0109806:	74 21 	je	33 <platform_asan_fatal+0xb9>
e0109808:	8b 45 00 	movl	(%ebp), %eax
e010980b:	8b 00 	movl	(%eax), %eax
e010980d:	8b 00 	movl	(%eax), %eax
e010980f:	8b 40 04 	movl	4(%eax), %eax
e0109812:	85 c0 	testl	%eax, %eax
e0109814:	74 bc 	je	-68 <platform_asan_fatal+0x62>
e0109816:	83 ec 04 	subl	$4, %esp
e0109819:	50 	pushl	%eax
e010981a:	6a 03 	pushl	$3
e010981c:	68 f0 a3 10 e0 	pushl	$3759186928
e0109821:	e8 1a a7 ff ff 	calll	-22758 <cprintf>
e0109826:	83 c4 10 	addl	$16, %esp
e0109829:	8b 45 00 	movl	(%ebp), %eax
e010982c:	8b 00 	movl	(%eax), %eax
e010982e:	8b 00 	movl	(%eax), %eax
e0109830:	83 38 00 	cmpl	$0, (%eax)
e0109833:	74 23 	je	35 <platform_asan_fatal+0xe8>
e0109835:	8b 45 00 	movl	(%ebp), %eax
e0109838:	8b 00 	movl	(%eax), %eax
e010983a:	8b 00 	movl	(%eax), %eax
e010983c:	8b 00 	movl	(%eax), %eax
e010983e:	8b 40 04 	movl	4(%eax), %eax
e0109841:	85 c0 	testl	%eax, %eax
e0109843:	74 8d 	je	-115 <platform_asan_fatal+0x62>
e0109845:	83 ec 04 	subl	$4, %esp
e0109848:	50 	pushl	%eax
e0109849:	6a 04 	pushl	$4
e010984b:	68 f0 a3 10 e0 	pushl	$3759186928
e0109850:	e8 eb a6 ff ff 	calll	-22805 <cprintf>
e0109855:	83 c4 10 	addl	$16, %esp
e0109858:	8b 45 00 	movl	(%ebp), %eax
e010985b:	8b 00 	movl	(%eax), %eax
e010985d:	8b 00 	movl	(%eax), %eax
e010985f:	8b 00 	movl	(%eax), %eax
e0109861:	83 38 00 	cmpl	$0, (%eax)
e0109864:	74 29 	je	41 <platform_asan_fatal+0x11f>
e0109866:	8b 45 00 	movl	(%ebp), %eax
e0109869:	8b 00 	movl	(%eax), %eax
e010986b:	8b 00 	movl	(%eax), %eax
e010986d:	8b 00 	movl	(%eax), %eax
e010986f:	8b 00 	movl	(%eax), %eax
e0109871:	8b 40 04 	movl	4(%eax), %eax
e0109874:	85 c0 	testl	%eax, %eax
e0109876:	0f 84 56 ff ff ff 	je	-170 <platform_asan_fatal+0x62>
e010987c:	83 ec 04 	subl	$4, %esp
e010987f:	50 	pushl	%eax
e0109880:	6a 05 	pushl	$5
e0109882:	68 f0 a3 10 e0 	pushl	$3759186928
e0109887:	e8 b4 a6 ff ff 	calll	-22860 <cprintf>
e010988c:	83 c4 10 	addl	$16, %esp
e010988f:	8b 45 00 	movl	(%ebp), %eax
e0109892:	8b 00 	movl	(%eax), %eax
e0109894:	8b 00 	movl	(%eax), %eax
e0109896:	8b 00 	movl	(%eax), %eax
e0109898:	8b 00 	movl	(%eax), %eax
e010989a:	83 38 00 	cmpl	$0, (%eax)
e010989d:	74 2b 	je	43 <platform_asan_fatal+0x15a>
e010989f:	8b 45 00 	movl	(%ebp), %eax
e01098a2:	8b 00 	movl	(%eax), %eax
e01098a4:	8b 00 	movl	(%eax), %eax
e01098a6:	8b 00 	movl	(%eax), %eax
e01098a8:	8b 00 	movl	(%eax), %eax
e01098aa:	8b 00 	movl	(%eax), %eax
e01098ac:	8b 40 04 	movl	4(%eax), %eax
e01098af:	85 c0 	testl	%eax, %eax
e01098b1:	0f 84 1b ff ff ff 	je	-229 <platform_asan_fatal+0x62>
e01098b7:	83 ec 04 	subl	$4, %esp
e01098ba:	50 	pushl	%eax
e01098bb:	6a 06 	pushl	$6
e01098bd:	68 f0 a3 10 e0 	pushl	$3759186928
e01098c2:	e8 79 a6 ff ff 	calll	-22919 <cprintf>
e01098c7:	83 c4 10 	addl	$16, %esp
e01098ca:	8b 45 00 	movl	(%ebp), %eax
e01098cd:	8b 00 	movl	(%eax), %eax
e01098cf:	8b 00 	movl	(%eax), %eax
e01098d1:	8b 00 	movl	(%eax), %eax
e01098d3:	8b 00 	movl	(%eax), %eax
e01098d5:	8b 00 	movl	(%eax), %eax
e01098d7:	83 38 00 	cmpl	$0, (%eax)
e01098da:	74 2d 	je	45 <platform_asan_fatal+0x199>
e01098dc:	8b 45 00 	movl	(%ebp), %eax
e01098df:	8b 00 	movl	(%eax), %eax
e01098e1:	8b 00 	movl	(%eax), %eax
e01098e3:	8b 00 	movl	(%eax), %eax
e01098e5:	8b 00 	movl	(%eax), %eax
e01098e7:	8b 00 	movl	(%eax), %eax
e01098e9:	8b 00 	movl	(%eax), %eax
e01098eb:	8b 40 04 	movl	4(%eax), %eax
e01098ee:	85 c0 	testl	%eax, %eax
e01098f0:	0f 84 dc fe ff ff 	je	-292 <platform_asan_fatal+0x62>
e01098f6:	83 ec 04 	subl	$4, %esp
e01098f9:	50 	pushl	%eax
e01098fa:	6a 07 	pushl	$7
e01098fc:	68 f0 a3 10 e0 	pushl	$3759186928
e0109901:	e8 3a a6 ff ff 	calll	-22982 <cprintf>
e0109906:	83 c4 10 	addl	$16, %esp
e0109909:	8b 45 00 	movl	(%ebp), %eax
e010990c:	8b 00 	movl	(%eax), %eax
e010990e:	8b 00 	movl	(%eax), %eax
e0109910:	8b 00 	movl	(%eax), %eax
e0109912:	8b 00 	movl	(%eax), %eax
e0109914:	8b 00 	movl	(%eax), %eax
e0109916:	8b 00 	movl	(%eax), %eax
e0109918:	83 38 00 	cmpl	$0, (%eax)
e010991b:	74 2f 	je	47 <platform_asan_fatal+0x1dc>
e010991d:	8b 45 00 	movl	(%ebp), %eax
e0109920:	8b 00 	movl	(%eax), %eax
e0109922:	8b 00 	movl	(%eax), %eax
e0109924:	8b 00 	movl	(%eax), %eax
e0109926:	8b 00 	movl	(%eax), %eax
e0109928:	8b 00 	movl	(%eax), %eax
e010992a:	8b 00 	movl	(%eax), %eax
e010992c:	8b 00 	movl	(%eax), %eax
e010992e:	8b 40 04 	movl	4(%eax), %eax
e0109931:	85 c0 	testl	%eax, %eax
e0109933:	0f 84 99 fe ff ff 	je	-359 <platform_asan_fatal+0x62>
e0109939:	83 ec 04 	subl	$4, %esp
e010993c:	50 	pushl	%eax
e010993d:	6a 08 	pushl	$8
e010993f:	68 f0 a3 10 e0 	pushl	$3759186928
e0109944:	e8 f7 a5 ff ff 	calll	-23049 <cprintf>
e0109949:	83 c4 10 	addl	$16, %esp
e010994c:	8b 45 00 	movl	(%ebp), %eax
e010994f:	8b 00 	movl	(%eax), %eax
e0109951:	8b 00 	movl	(%eax), %eax
e0109953:	8b 00 	movl	(%eax), %eax
e0109955:	8b 00 	movl	(%eax), %eax
e0109957:	8b 00 	movl	(%eax), %eax
e0109959:	8b 00 	movl	(%eax), %eax
e010995b:	8b 00 	movl	(%eax), %eax
e010995d:	83 38 00 	cmpl	$0, (%eax)
e0109960:	74 31 	je	49 <platform_asan_fatal+0x223>
e0109962:	8b 45 00 	movl	(%ebp), %eax
e0109965:	8b 00 	movl	(%eax), %eax
e0109967:	8b 00 	movl	(%eax), %eax
e0109969:	8b 00 	movl	(%eax), %eax
e010996b:	8b 00 	movl	(%eax), %eax
e010996d:	8b 00 	movl	(%eax), %eax
e010996f:	8b 00 	movl	(%eax), %eax
e0109971:	8b 00 	movl	(%eax), %eax
e0109973:	8b 00 	movl	(%eax), %eax
e0109975:	8b 40 04 	movl	4(%eax), %eax
e0109978:	85 c0 	testl	%eax, %eax
e010997a:	0f 84 52 fe ff ff 	je	-430 <platform_asan_fatal+0x62>
e0109980:	83 ec 04 	subl	$4, %esp
e0109983:	50 	pushl	%eax
e0109984:	6a 09 	pushl	$9
e0109986:	68 f0 a3 10 e0 	pushl	$3759186928
e010998b:	e8 b0 a5 ff ff 	calll	-23120 <cprintf>
e0109990:	83 c4 10 	addl	$16, %esp
e0109993:	8b 45 00 	movl	(%ebp), %eax
e0109996:	8b 00 	movl	(%eax), %eax
e0109998:	8b 00 	movl	(%eax), %eax
e010999a:	8b 00 	movl	(%eax), %eax
e010999c:	8b 00 	movl	(%eax), %eax
e010999e:	8b 00 	movl	(%eax), %eax
e01099a0:	8b 00 	movl	(%eax), %eax
e01099a2:	8b 00 	movl	(%eax), %eax
e01099a4:	8b 00 	movl	(%eax), %eax
e01099a6:	83 38 00 	cmpl	$0, (%eax)
e01099a9:	74 33 	je	51 <platform_asan_fatal+0x26e>
e01099ab:	8b 45 00 	movl	(%ebp), %eax
e01099ae:	8b 00 	movl	(%eax), %eax
e01099b0:	8b 00 	movl	(%eax), %eax
e01099b2:	8b 00 	movl	(%eax), %eax
e01099b4:	8b 00 	movl	(%eax), %eax
e01099b6:	8b 00 	movl	(%eax), %eax
e01099b8:	8b 00 	movl	(%eax), %eax
e01099ba:	8b 00 	movl	(%eax), %eax
e01099bc:	8b 00 	movl	(%eax), %eax
e01099be:	8b 00 	movl	(%eax), %eax
e01099c0:	8b 40 04 	movl	4(%eax), %eax
e01099c3:	85 c0 	testl	%eax, %eax
e01099c5:	0f 84 07 fe ff ff 	je	-505 <platform_asan_fatal+0x62>
e01099cb:	83 ec 04 	subl	$4, %esp
e01099ce:	50 	pushl	%eax
e01099cf:	6a 0a 	pushl	$10
e01099d1:	68 f0 a3 10 e0 	pushl	$3759186928
e01099d6:	e8 65 a5 ff ff 	calll	-23195 <cprintf>
e01099db:	83 c4 10 	addl	$16, %esp
e01099de:	8b 45 00 	movl	(%ebp), %eax
e01099e1:	8b 00 	movl	(%eax), %eax
e01099e3:	8b 00 	movl	(%eax), %eax
e01099e5:	8b 00 	movl	(%eax), %eax
e01099e7:	8b 00 	movl	(%eax), %eax
e01099e9:	8b 00 	movl	(%eax), %eax
e01099eb:	8b 00 	movl	(%eax), %eax
e01099ed:	8b 00 	movl	(%eax), %eax
e01099ef:	8b 00 	movl	(%eax), %eax
e01099f1:	8b 00 	movl	(%eax), %eax
e01099f3:	83 38 00 	cmpl	$0, (%eax)
e01099f6:	74 35 	je	53 <platform_asan_fatal+0x2bd>
e01099f8:	8b 45 00 	movl	(%ebp), %eax
e01099fb:	8b 00 	movl	(%eax), %eax
e01099fd:	8b 00 	movl	(%eax), %eax
e01099ff:	8b 00 	movl	(%eax), %eax
e0109a01:	8b 00 	movl	(%eax), %eax
e0109a03:	8b 00 	movl	(%eax), %eax
e0109a05:	8b 00 	movl	(%eax), %eax
e0109a07:	8b 00 	movl	(%eax), %eax
e0109a09:	8b 00 	movl	(%eax), %eax
e0109a0b:	8b 00 	movl	(%eax), %eax
e0109a0d:	8b 00 	movl	(%eax), %eax
e0109a0f:	8b 40 04 	movl	4(%eax), %eax
e0109a12:	85 c0 	testl	%eax, %eax
e0109a14:	0f 84 b8 fd ff ff 	je	-584 <platform_asan_fatal+0x62>
e0109a1a:	83 ec 04 	subl	$4, %esp
e0109a1d:	50 	pushl	%eax
e0109a1e:	6a 0b 	pushl	$11
e0109a20:	68 f0 a3 10 e0 	pushl	$3759186928
e0109a25:	e8 16 a5 ff ff 	calll	-23274 <cprintf>
e0109a2a:	83 c4 10 	addl	$16, %esp
e0109a2d:	8b 45 00 	movl	(%ebp), %eax
e0109a30:	8b 00 	movl	(%eax), %eax
e0109a32:	8b 00 	movl	(%eax), %eax
e0109a34:	8b 00 	movl	(%eax), %eax
e0109a36:	8b 00 	movl	(%eax), %eax
e0109a38:	8b 00 	movl	(%eax), %eax
e0109a3a:	8b 00 	movl	(%eax), %eax
e0109a3c:	8b 00 	movl	(%eax), %eax
e0109a3e:	8b 00 	movl	(%eax), %eax
e0109a40:	8b 00 	movl	(%eax), %eax
e0109a42:	8b 00 	movl	(%eax), %eax
e0109a44:	83 38 00 	cmpl	$0, (%eax)
e0109a47:	74 37 	je	55 <platform_asan_fatal+0x310>
e0109a49:	8b 45 00 	movl	(%ebp), %eax
e0109a4c:	8b 00 	movl	(%eax), %eax
e0109a4e:	8b 00 	movl	(%eax), %eax
e0109a50:	8b 00 	movl	(%eax), %eax
e0109a52:	8b 00 	movl	(%eax), %eax
e0109a54:	8b 00 	movl	(%eax), %eax
e0109a56:	8b 00 	movl	(%eax), %eax
e0109a58:	8b 00 	movl	(%eax), %eax
e0109a5a:	8b 00 	movl	(%eax), %eax
e0109a5c:	8b 00 	movl	(%eax), %eax
e0109a5e:	8b 00 	movl	(%eax), %eax
e0109a60:	8b 00 	movl	(%eax), %eax
e0109a62:	8b 40 04 	movl	4(%eax), %eax
e0109a65:	85 c0 	testl	%eax, %eax
e0109a67:	0f 84 65 fd ff ff 	je	-667 <platform_asan_fatal+0x62>
e0109a6d:	83 ec 04 	subl	$4, %esp
e0109a70:	50 	pushl	%eax
e0109a71:	6a 0c 	pushl	$12
e0109a73:	68 f0 a3 10 e0 	pushl	$3759186928
e0109a78:	e8 c3 a4 ff ff 	calll	-23357 <cprintf>
e0109a7d:	83 c4 10 	addl	$16, %esp
e0109a80:	8b 45 00 	movl	(%ebp), %eax
e0109a83:	8b 00 	movl	(%eax), %eax
e0109a85:	8b 00 	movl	(%eax), %eax
e0109a87:	8b 00 	movl	(%eax), %eax
e0109a89:	8b 00 	movl	(%eax), %eax
e0109a8b:	8b 00 	movl	(%eax), %eax
e0109a8d:	8b 00 	movl	(%eax), %eax
e0109a8f:	8b 00 	movl	(%eax), %eax
e0109a91:	8b 00 	movl	(%eax), %eax
e0109a93:	8b 00 	movl	(%eax), %eax
e0109a95:	8b 00 	movl	(%eax), %eax
e0109a97:	8b 00 	movl	(%eax), %eax
e0109a99:	83 38 00 	cmpl	$0, (%eax)
e0109a9c:	74 39 	je	57 <platform_asan_fatal+0x367>
e0109a9e:	8b 45 00 	movl	(%ebp), %eax
e0109aa1:	8b 00 	movl	(%eax), %eax
e0109aa3:	8b 00 	movl	(%eax), %eax
e0109aa5:	8b 00 	movl	(%eax), %eax
e0109aa7:	8b 00 	movl	(%eax), %eax
e0109aa9:	8b 00 	movl	(%eax), %eax
e0109aab:	8b 00 	movl	(%eax), %eax
e0109aad:	8b 00 	movl	(%eax), %eax
e0109aaf:	8b 00 	movl	(%eax), %eax
e0109ab1:	8b 00 	movl	(%eax), %eax
e0109ab3:	8b 00 	movl	(%eax), %eax
e0109ab5:	8b 00 	movl	(%eax), %eax
e0109ab7:	8b 00 	movl	(%eax), %eax
e0109ab9:	8b 40 04 	movl	4(%eax), %eax
e0109abc:	85 c0 	testl	%eax, %eax
e0109abe:	0f 84 0e fd ff ff 	je	-754 <platform_asan_fatal+0x62>
e0109ac4:	83 ec 04 	subl	$4, %esp
e0109ac7:	50 	pushl	%eax
e0109ac8:	6a 0d 	pushl	$13
e0109aca:	68 f0 a3 10 e0 	pushl	$3759186928
e0109acf:	e8 6c a4 ff ff 	calll	-23444 <cprintf>
e0109ad4:	83 c4 10 	addl	$16, %esp
e0109ad7:	8b 45 00 	movl	(%ebp), %eax
e0109ada:	8b 00 	movl	(%eax), %eax
e0109adc:	8b 00 	movl	(%eax), %eax
e0109ade:	8b 00 	movl	(%eax), %eax
e0109ae0:	8b 00 	movl	(%eax), %eax
e0109ae2:	8b 00 	movl	(%eax), %eax
e0109ae4:	8b 00 	movl	(%eax), %eax
e0109ae6:	8b 00 	movl	(%eax), %eax
e0109ae8:	8b 00 	movl	(%eax), %eax
e0109aea:	8b 00 	movl	(%eax), %eax
e0109aec:	8b 00 	movl	(%eax), %eax
e0109aee:	8b 00 	movl	(%eax), %eax
e0109af0:	8b 00 	movl	(%eax), %eax
e0109af2:	83 38 00 	cmpl	$0, (%eax)
e0109af5:	74 3b 	je	59 <platform_asan_fatal+0x3c2>
e0109af7:	8b 45 00 	movl	(%ebp), %eax
e0109afa:	8b 00 	movl	(%eax), %eax
e0109afc:	8b 00 	movl	(%eax), %eax
e0109afe:	8b 00 	movl	(%eax), %eax
e0109b00:	8b 00 	movl	(%eax), %eax
e0109b02:	8b 00 	movl	(%eax), %eax
e0109b04:	8b 00 	movl	(%eax), %eax
e0109b06:	8b 00 	movl	(%eax), %eax
e0109b08:	8b 00 	movl	(%eax), %eax
e0109b0a:	8b 00 	movl	(%eax), %eax
e0109b0c:	8b 00 	movl	(%eax), %eax
e0109b0e:	8b 00 	movl	(%eax), %eax
e0109b10:	8b 00 	movl	(%eax), %eax
e0109b12:	8b 00 	movl	(%eax), %eax
e0109b14:	8b 40 04 	movl	4(%eax), %eax
e0109b17:	85 c0 	testl	%eax, %eax
e0109b19:	0f 84 b3 fc ff ff 	je	-845 <platform_asan_fatal+0x62>
e0109b1f:	83 ec 04 	subl	$4, %esp
e0109b22:	50 	pushl	%eax
e0109b23:	6a 0e 	pushl	$14
e0109b25:	68 f0 a3 10 e0 	pushl	$3759186928
e0109b2a:	e8 11 a4 ff ff 	calll	-23535 <cprintf>
e0109b2f:	83 c4 10 	addl	$16, %esp
e0109b32:	8b 45 00 	movl	(%ebp), %eax
e0109b35:	8b 00 	movl	(%eax), %eax
e0109b37:	8b 00 	movl	(%eax), %eax
e0109b39:	8b 00 	movl	(%eax), %eax
e0109b3b:	8b 00 	movl	(%eax), %eax
e0109b3d:	8b 00 	movl	(%eax), %eax
e0109b3f:	8b 00 	movl	(%eax), %eax
e0109b41:	8b 00 	movl	(%eax), %eax
e0109b43:	8b 00 	movl	(%eax), %eax
e0109b45:	8b 00 	movl	(%eax), %eax
e0109b47:	8b 00 	movl	(%eax), %eax
e0109b49:	8b 00 	movl	(%eax), %eax
e0109b4b:	8b 00 	movl	(%eax), %eax
e0109b4d:	8b 00 	movl	(%eax), %eax
e0109b4f:	83 38 00 	cmpl	$0, (%eax)
e0109b52:	0f 84 7a fc ff ff 	je	-902 <platform_asan_fatal+0x62>
e0109b58:	8b 45 00 	movl	(%ebp), %eax
e0109b5b:	8b 00 	movl	(%eax), %eax
e0109b5d:	8b 00 	movl	(%eax), %eax
e0109b5f:	8b 00 	movl	(%eax), %eax
e0109b61:	8b 00 	movl	(%eax), %eax
e0109b63:	8b 00 	movl	(%eax), %eax
e0109b65:	8b 00 	movl	(%eax), %eax
e0109b67:	8b 00 	movl	(%eax), %eax
e0109b69:	8b 00 	movl	(%eax), %eax
e0109b6b:	8b 00 	movl	(%eax), %eax
e0109b6d:	8b 00 	movl	(%eax), %eax
e0109b6f:	8b 00 	movl	(%eax), %eax
e0109b71:	8b 00 	movl	(%eax), %eax
e0109b73:	8b 00 	movl	(%eax), %eax
e0109b75:	8b 00 	movl	(%eax), %eax
e0109b77:	8b 40 04 	movl	4(%eax), %eax
e0109b7a:	85 c0 	testl	%eax, %eax
e0109b7c:	0f 84 50 fc ff ff 	je	-944 <platform_asan_fatal+0x62>
e0109b82:	83 ec 04 	subl	$4, %esp
e0109b85:	50 	pushl	%eax
e0109b86:	6a 0f 	pushl	$15
e0109b88:	68 f0 a3 10 e0 	pushl	$3759186928
e0109b8d:	e8 ae a3 ff ff 	calll	-23634 <cprintf>
e0109b92:	83 c4 10 	addl	$16, %esp
e0109b95:	e8 d6 fa ff ff 	calll	-1322 <platform_abort>
e0109b9a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0109ba0:	b0 01 	movb	$1, %al
e0109ba2:	c3 	retl
e0109ba3:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0109bad:	0f 1f 00 	nopl	(%eax)
e0109bb0:	c3 	retl
e0109bb1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0109bbb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0109bc0:	83 ec 0c 	subl	$12, %esp
e0109bc3:	e8 38 f1 ff ff 	calll	-3784 <__asan_init>
e0109bc8:	e8 53 f2 ff ff 	calll	-3501 <__asan_version_mismatch_check_v8>
e0109bcd:	83 c4 0c 	addl	$12, %esp
e0109bd0:	c3 	retl
e0109bd1:	cc 	int3
e0109bd2:	cc 	int3
e0109bd3:	cc 	int3
e0109bd4:	cc 	int3
e0109bd5:	cc 	int3
e0109bd6:	cc 	int3
e0109bd7:	cc 	int3
e0109bd8:	cc 	int3
e0109bd9:	cc 	int3
e0109bda:	cc 	int3
e0109bdb:	cc 	int3
e0109bdc:	cc 	int3
e0109bdd:	cc 	int3
e0109bde:	cc 	int3
e0109bdf:	cc 	int3
e0109be0:	56 	pushl	%esi
e0109be1:	8b 4c 24 10 	movl	16(%esp), %ecx
e0109be5:	8b 44 24 08 	movl	8(%esp), %eax
e0109be9:	85 c9 	testl	%ecx, %ecx
e0109beb:	74 1b 	je	27 <__nosan_memset+0x28>
e0109bed:	8b 54 24 0c 	movl	12(%esp), %edx
e0109bf1:	89 c6 	movl	%eax, %esi
e0109bf3:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0109bfd:	0f 1f 00 	nopl	(%eax)
e0109c00:	49 	decl	%ecx
e0109c01:	88 16 	movb	%dl, (%esi)
e0109c03:	8d 76 01 	leal	1(%esi), %esi
e0109c06:	75 f8 	jne	-8 <__nosan_memset+0x20>
e0109c08:	5e 	popl	%esi
e0109c09:	c3 	retl
e0109c0a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0109c10:	53 	pushl	%ebx
e0109c11:	56 	pushl	%esi
e0109c12:	8b 4c 24 14 	movl	20(%esp), %ecx
e0109c16:	8b 44 24 0c 	movl	12(%esp), %eax
e0109c1a:	85 c9 	testl	%ecx, %ecx
e0109c1c:	74 1e 	je	30 <__nosan_memcpy+0x2c>
e0109c1e:	8b 54 24 10 	movl	16(%esp), %edx
e0109c22:	31 f6 	xorl	%esi, %esi
e0109c24:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0109c2e:	66 90 	nop
e0109c30:	0f b6 1c 32 	movzbl	(%edx,%esi), %ebx
e0109c34:	88 1c 30 	movb	%bl, (%eax,%esi)
e0109c37:	46 	incl	%esi
e0109c38:	39 f1 	cmpl	%esi, %ecx
e0109c3a:	75 f4 	jne	-12 <__nosan_memcpy+0x20>
e0109c3c:	5e 	popl	%esi
e0109c3d:	5b 	popl	%ebx
e0109c3e:	c3 	retl
e0109c3f:	90 	nop
e0109c40:	83 ec 0c 	subl	$12, %esp
e0109c43:	e8 b8 f0 ff ff 	calll	-3912 <__asan_init>
e0109c48:	e8 d3 f1 ff ff 	calll	-3629 <__asan_version_mismatch_check_v8>
e0109c4d:	83 c4 0c 	addl	$12, %esp
e0109c50:	c3 	retl
e0109c51:	cc 	int3
e0109c52:	cc 	int3
e0109c53:	cc 	int3
e0109c54:	cc 	int3
e0109c55:	cc 	int3
e0109c56:	cc 	int3
e0109c57:	cc 	int3
e0109c58:	cc 	int3
e0109c59:	cc 	int3
e0109c5a:	cc 	int3
e0109c5b:	cc 	int3
e0109c5c:	cc 	int3
e0109c5d:	cc 	int3
e0109c5e:	cc 	int3
e0109c5f:	cc 	int3
e0109c60:	55 	pushl	%ebp
e0109c61:	89 e5 	movl	%esp, %ebp
e0109c63:	83 ec 08 	subl	$8, %esp
e0109c66:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x8>
e0109c68:	e8 73 f6 ff ff 	calll	-2445 <__wrap_memcpy>
e0109c6d:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0xf>
e0109c6f:	e8 9c f6 ff ff 	calll	-2404 <__wrap_memset>
e0109c74:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x16>
e0109c76:	e8 b5 f6 ff ff 	calll	-2379 <__wrap_memmove>
e0109c7b:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x1d>
e0109c7d:	e8 6e f7 ff ff 	calll	-2194 <__wrap_memcmp>
e0109c82:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x24>
e0109c84:	e8 97 f7 ff ff 	calll	-2153 <__wrap_strcat>
e0109c89:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x2b>
e0109c8b:	e8 e0 f7 ff ff 	calll	-2080 <__wrap_strcpy>
e0109c90:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x32>
e0109c92:	e8 99 f8 ff ff 	calll	-1895 <__wrap_strncat>
e0109c97:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x39>
e0109c99:	e8 d2 f8 ff ff 	calll	-1838 <__wrap_strnlen>
e0109c9e:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x40>
e0109ca0:	e8 fb f8 ff ff 	calll	-1797 <__wrap_strlen>
e0109ca5:	83 c4 08 	addl	$8, %esp
e0109ca8:	5d 	popl	%ebp
e0109ca9:	c3 	retl
e0109caa:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0109cb0:	83 ec 0c 	subl	$12, %esp
e0109cb3:	e8 48 f0 ff ff 	calll	-4024 <__asan_init>
e0109cb8:	e8 63 f1 ff ff 	calll	-3741 <__asan_version_mismatch_check_v8>
e0109cbd:	83 c4 0c 	addl	$12, %esp
e0109cc0:	c3 	retl
e0109cc1:	cc 	int3
e0109cc2:	cc 	int3
e0109cc3:	cc 	int3
e0109cc4:	cc 	int3
e0109cc5:	cc 	int3
e0109cc6:	cc 	int3
e0109cc7:	cc 	int3
e0109cc8:	cc 	int3
e0109cc9:	cc 	int3
e0109cca:	cc 	int3
e0109ccb:	cc 	int3
e0109ccc:	cc 	int3
e0109ccd:	cc 	int3
e0109cce:	cc 	int3
e0109ccf:	cc 	int3
e0109cd0:	83 ec 18 	subl	$24, %esp
e0109cd3:	6a 00 	pushl	$0
e0109cd5:	ff 74 24 2c 	pushl	44(%esp)
e0109cd9:	ff 74 24 2c 	pushl	44(%esp)
e0109cdd:	ff 74 24 2c 	pushl	44(%esp)
e0109ce1:	ff 74 24 2c 	pushl	44(%esp)
e0109ce5:	e8 06 00 00 00 	calll	6 <__udivmoddi4>
e0109cea:	83 c4 2c 	addl	$44, %esp
e0109ced:	c3 	retl
e0109cee:	cc 	int3
e0109cef:	cc 	int3
e0109cf0:	55 	pushl	%ebp
e0109cf1:	53 	pushl	%ebx
e0109cf2:	57 	pushl	%edi
e0109cf3:	56 	pushl	%esi
e0109cf4:	83 ec 0c 	subl	$12, %esp
e0109cf7:	8b 54 24 2c 	movl	44(%esp), %edx
e0109cfb:	8b 4c 24 28 	movl	40(%esp), %ecx
e0109cff:	8b 6c 24 24 	movl	36(%esp), %ebp
e0109d03:	8b 7c 24 20 	movl	32(%esp), %edi
e0109d07:	8b 74 24 30 	movl	48(%esp), %esi
e0109d0b:	85 ed 	testl	%ebp, %ebp
e0109d0d:	74 35 	je	53 <__udivmoddi4+0x54>
e0109d0f:	85 c9 	testl	%ecx, %ecx
e0109d11:	74 4f 	je	79 <__udivmoddi4+0x72>
e0109d13:	85 d2 	testl	%edx, %edx
e0109d15:	0f 84 aa 00 00 00 	je	170 <__udivmoddi4+0xd5>
e0109d1b:	0f bd ca 	bsrl	%edx, %ecx
e0109d1e:	83 f1 1f 	xorl	$31, %ecx
e0109d21:	0f bd c5 	bsrl	%ebp, %eax
e0109d24:	83 f0 1f 	xorl	$31, %eax
e0109d27:	29 c1 	subl	%eax, %ecx
e0109d29:	83 f9 20 	cmpl	$32, %ecx
e0109d2c:	0f 82 04 01 00 00 	jb	260 <__udivmoddi4+0x146>
e0109d32:	85 f6 	testl	%esi, %esi
e0109d34:	0f 84 2c 01 00 00 	je	300 <__udivmoddi4+0x176>
e0109d3a:	89 3e 	movl	%edi, (%esi)
e0109d3c:	89 6e 04 	movl	%ebp, 4(%esi)
e0109d3f:	e9 22 01 00 00 	jmp	290 <__udivmoddi4+0x176>
e0109d44:	85 d2 	testl	%edx, %edx
e0109d46:	0f 84 c8 00 00 00 	je	200 <__udivmoddi4+0x124>
e0109d4c:	85 f6 	testl	%esi, %esi
e0109d4e:	0f 84 12 01 00 00 	je	274 <__udivmoddi4+0x176>
e0109d54:	89 3e 	movl	%edi, (%esi)
e0109d56:	c7 46 04 00 00 00 00 	movl	$0, 4(%esi)
e0109d5d:	e9 04 01 00 00 	jmp	260 <__udivmoddi4+0x176>
e0109d62:	85 d2 	testl	%edx, %edx
e0109d64:	0f 84 eb 00 00 00 	je	235 <__udivmoddi4+0x165>
e0109d6a:	85 ff 	testl	%edi, %edi
e0109d6c:	0f 84 ac 01 00 00 	je	428 <__udivmoddi4+0x22e>
e0109d72:	8d 42 ff 	leal	-1(%edx), %eax
e0109d75:	85 d0 	testl	%edx, %eax
e0109d77:	0f 84 e4 01 00 00 	je	484 <__udivmoddi4+0x271>
e0109d7d:	0f bd ca 	bsrl	%edx, %ecx
e0109d80:	83 f1 1f 	xorl	$31, %ecx
e0109d83:	0f bd c5 	bsrl	%ebp, %eax
e0109d86:	83 f0 1f 	xorl	$31, %eax
e0109d89:	29 c1 	subl	%eax, %ecx
e0109d8b:	83 f9 1f 	cmpl	$31, %ecx
e0109d8e:	73 a2 	jae	-94 <__udivmoddi4+0x42>
e0109d90:	8d 59 01 	leal	1(%ecx), %ebx
e0109d93:	b2 1f 	movb	$31, %dl
e0109d95:	28 ca 	subb	%cl, %dl
e0109d97:	89 f8 	movl	%edi, %eax
e0109d99:	89 d1 	movl	%edx, %ecx
e0109d9b:	d3 e0 	shll	%cl, %eax
e0109d9d:	89 44 24 08 	movl	%eax, 8(%esp)
e0109da1:	89 f8 	movl	%edi, %eax
e0109da3:	89 ef 	movl	%ebp, %edi
e0109da5:	89 d9 	movl	%ebx, %ecx
e0109da7:	d3 ef 	shrl	%cl, %edi
e0109da9:	89 d1 	movl	%edx, %ecx
e0109dab:	d3 e5 	shll	%cl, %ebp
e0109dad:	89 5c 24 04 	movl	%ebx, 4(%esp)
e0109db1:	89 d9 	movl	%ebx, %ecx
e0109db3:	d3 e8 	shrl	%cl, %eax
e0109db5:	09 c5 	orl	%eax, %ebp
e0109db7:	89 ee 	movl	%ebp, %esi
e0109db9:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0109dc0:	e9 d7 00 00 00 	jmp	215 <__udivmoddi4+0x1ac>
e0109dc5:	8d 41 ff 	leal	-1(%ecx), %eax
e0109dc8:	85 c8 	testl	%ecx, %eax
e0109dca:	0f 84 6f 01 00 00 	je	367 <__udivmoddi4+0x24f>
e0109dd0:	0f bd c1 	bsrl	%ecx, %eax
e0109dd3:	83 f0 1f 	xorl	$31, %eax
e0109dd6:	83 c0 21 	addl	$33, %eax
e0109dd9:	0f bd cd 	bsrl	%ebp, %ecx
e0109ddc:	83 f1 1f 	xorl	$31, %ecx
e0109ddf:	29 c8 	subl	%ecx, %eax
e0109de1:	83 f8 20 	cmpl	$32, %eax
e0109de4:	74 58 	je	88 <__udivmoddi4+0x14e>
e0109de6:	83 f8 1f 	cmpl	$31, %eax
e0109de9:	89 44 24 04 	movl	%eax, 4(%esp)
e0109ded:	0f 87 84 01 00 00 	ja	388 <__udivmoddi4+0x287>
e0109df3:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0109dfa:	89 c1 	movl	%eax, %ecx
e0109dfc:	f6 d9 	negb	%cl
e0109dfe:	89 fa 	movl	%edi, %edx
e0109e00:	d3 e2 	shll	%cl, %edx
e0109e02:	89 c1 	movl	%eax, %ecx
e0109e04:	89 fe 	movl	%edi, %esi
e0109e06:	89 ef 	movl	%ebp, %edi
e0109e08:	d3 ef 	shrl	%cl, %edi
e0109e0a:	0f ad ee 	shrdl	%cl, %ebp, %esi
e0109e0d:	89 d0 	movl	%edx, %eax
e0109e0f:	e9 8c 00 00 00 	jmp	140 <__udivmoddi4+0x1b0>
e0109e14:	85 f6 	testl	%esi, %esi
e0109e16:	74 0f 	je	15 <__udivmoddi4+0x137>
e0109e18:	89 f8 	movl	%edi, %eax
e0109e1a:	31 d2 	xorl	%edx, %edx
e0109e1c:	f7 f1 	divl	%ecx
e0109e1e:	89 16 	movl	%edx, (%esi)
e0109e20:	c7 46 04 00 00 00 00 	movl	$0, 4(%esi)
e0109e27:	31 ed 	xorl	%ebp, %ebp
e0109e29:	89 f8 	movl	%edi, %eax
e0109e2b:	31 d2 	xorl	%edx, %edx
e0109e2d:	f7 f1 	divl	%ecx
e0109e2f:	89 c7 	movl	%eax, %edi
e0109e31:	e9 dc 00 00 00 	jmp	220 <__udivmoddi4+0x222>
e0109e36:	8d 59 01 	leal	1(%ecx), %ebx
e0109e39:	83 fb 20 	cmpl	$32, %ebx
e0109e3c:	75 31 	jne	49 <__udivmoddi4+0x17f>
e0109e3e:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0109e45:	89 ee 	movl	%ebp, %esi
e0109e47:	89 f8 	movl	%edi, %eax
e0109e49:	c7 44 24 04 20 00 00 00 	movl	$32, 4(%esp)
e0109e51:	31 ff 	xorl	%edi, %edi
e0109e53:	eb 4b 	jmp	75 <__udivmoddi4+0x1b0>
e0109e55:	85 f6 	testl	%esi, %esi
e0109e57:	74 0d 	je	13 <__udivmoddi4+0x176>
e0109e59:	c7 46 04 00 00 00 00 	movl	$0, 4(%esi)
e0109e60:	c7 06 00 00 00 00 	movl	$0, (%esi)
e0109e66:	31 ff 	xorl	%edi, %edi
e0109e68:	31 ed 	xorl	%ebp, %ebp
e0109e6a:	e9 a3 00 00 00 	jmp	163 <__udivmoddi4+0x222>
e0109e6f:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0109e76:	b2 1f 	movb	$31, %dl
e0109e78:	28 ca 	subb	%cl, %dl
e0109e7a:	89 f8 	movl	%edi, %eax
e0109e7c:	89 d1 	movl	%edx, %ecx
e0109e7e:	d3 e0 	shll	%cl, %eax
e0109e80:	89 44 24 08 	movl	%eax, 8(%esp)
e0109e84:	89 f8 	movl	%edi, %eax
e0109e86:	89 ef 	movl	%ebp, %edi
e0109e88:	89 d9 	movl	%ebx, %ecx
e0109e8a:	d3 ef 	shrl	%cl, %edi
e0109e8c:	89 d1 	movl	%edx, %ecx
e0109e8e:	d3 e5 	shll	%cl, %ebp
e0109e90:	89 5c 24 04 	movl	%ebx, 4(%esp)
e0109e94:	89 d9 	movl	%ebx, %ecx
e0109e96:	d3 e8 	shrl	%cl, %eax
e0109e98:	09 c5 	orl	%eax, %ebp
e0109e9a:	89 ee 	movl	%ebp, %esi
e0109e9c:	8b 44 24 08 	movl	8(%esp), %eax
e0109ea0:	31 c9 	xorl	%ecx, %ecx
e0109ea2:	8b 2c 24 	movl	(%esp), %ebp
e0109ea5:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0109eaf:	90 	nop
e0109eb0:	0f a4 f7 01 	shldl	$1, %esi, %edi
e0109eb4:	0f a4 c6 01 	shldl	$1, %eax, %esi
e0109eb8:	0f a4 e8 01 	shldl	$1, %ebp, %eax
e0109ebc:	01 ed 	addl	%ebp, %ebp
e0109ebe:	09 cd 	orl	%ecx, %ebp
e0109ec0:	89 fa 	movl	%edi, %edx
e0109ec2:	f7 d2 	notl	%edx
e0109ec4:	89 f1 	movl	%esi, %ecx
e0109ec6:	f7 d1 	notl	%ecx
e0109ec8:	8b 5c 24 28 	movl	40(%esp), %ebx
e0109ecc:	01 d9 	addl	%ebx, %ecx
e0109ece:	8b 4c 24 2c 	movl	44(%esp), %ecx
e0109ed2:	11 ca 	adcl	%ecx, %edx
e0109ed4:	c1 fa 1f 	sarl	$31, %edx
e0109ed7:	89 d1 	movl	%edx, %ecx
e0109ed9:	83 e1 01 	andl	$1, %ecx
e0109edc:	89 d3 	movl	%edx, %ebx
e0109ede:	23 5c 24 2c 	andl	44(%esp), %ebx
e0109ee2:	23 54 24 28 	andl	40(%esp), %edx
e0109ee6:	29 d6 	subl	%edx, %esi
e0109ee8:	19 df 	sbbl	%ebx, %edi
e0109eea:	ff 4c 24 04 	decl	4(%esp)
e0109eee:	75 c0 	jne	-64 <__udivmoddi4+0x1c0>
e0109ef0:	89 f3 	movl	%esi, %ebx
e0109ef2:	89 ea 	movl	%ebp, %edx
e0109ef4:	c1 ea 1f 	shrl	$31, %edx
e0109ef7:	8d 74 2d 00 	leal	(%ebp,%ebp), %esi
e0109efb:	8d 2c 42 	leal	(%edx,%eax,2), %ebp
e0109efe:	8b 44 24 30 	movl	48(%esp), %eax
e0109f02:	85 c0 	testl	%eax, %eax
e0109f04:	74 05 	je	5 <__udivmoddi4+0x21b>
e0109f06:	89 18 	movl	%ebx, (%eax)
e0109f08:	89 78 04 	movl	%edi, 4(%eax)
e0109f0b:	83 e6 fe 	andl	$-2, %esi
e0109f0e:	09 ce 	orl	%ecx, %esi
e0109f10:	89 f7 	movl	%esi, %edi
e0109f12:	89 f8 	movl	%edi, %eax
e0109f14:	89 ea 	movl	%ebp, %edx
e0109f16:	83 c4 0c 	addl	$12, %esp
e0109f19:	5e 	popl	%esi
e0109f1a:	5f 	popl	%edi
e0109f1b:	5b 	popl	%ebx
e0109f1c:	5d 	popl	%ebp
e0109f1d:	c3 	retl
e0109f1e:	85 f6 	testl	%esi, %esi
e0109f20:	89 d1 	movl	%edx, %ecx
e0109f22:	74 0f 	je	15 <__udivmoddi4+0x243>
e0109f24:	89 e8 	movl	%ebp, %eax
e0109f26:	31 d2 	xorl	%edx, %edx
e0109f28:	f7 f1 	divl	%ecx
e0109f2a:	89 56 04 	movl	%edx, 4(%esi)
e0109f2d:	c7 06 00 00 00 00 	movl	$0, (%esi)
e0109f33:	89 e8 	movl	%ebp, %eax
e0109f35:	31 d2 	xorl	%edx, %edx
e0109f37:	f7 f1 	divl	%ecx
e0109f39:	89 c7 	movl	%eax, %edi
e0109f3b:	31 ed 	xorl	%ebp, %ebp
e0109f3d:	eb d3 	jmp	-45 <__udivmoddi4+0x222>
e0109f3f:	85 f6 	testl	%esi, %esi
e0109f41:	74 0b 	je	11 <__udivmoddi4+0x25e>
e0109f43:	21 f8 	andl	%edi, %eax
e0109f45:	89 06 	movl	%eax, (%esi)
e0109f47:	c7 46 04 00 00 00 00 	movl	$0, 4(%esi)
e0109f4e:	83 f9 01 	cmpl	$1, %ecx
e0109f51:	74 bf 	je	-65 <__udivmoddi4+0x222>
e0109f53:	0f bc c9 	bsfl	%ecx, %ecx
e0109f56:	89 e8 	movl	%ebp, %eax
e0109f58:	d3 e8 	shrl	%cl, %eax
e0109f5a:	0f ad ef 	shrdl	%cl, %ebp, %edi
e0109f5d:	89 c5 	movl	%eax, %ebp
e0109f5f:	eb b1 	jmp	-79 <__udivmoddi4+0x222>
e0109f61:	85 f6 	testl	%esi, %esi
e0109f63:	74 07 	je	7 <__udivmoddi4+0x27c>
e0109f65:	21 e8 	andl	%ebp, %eax
e0109f67:	89 3e 	movl	%edi, (%esi)
e0109f69:	89 46 04 	movl	%eax, 4(%esi)
e0109f6c:	0f bc ca 	bsfl	%edx, %ecx
e0109f6f:	d3 ed 	shrl	%cl, %ebp
e0109f71:	89 ef 	movl	%ebp, %edi
e0109f73:	31 ed 	xorl	%ebp, %ebp
e0109f75:	eb 9b 	jmp	-101 <__udivmoddi4+0x222>
e0109f77:	89 c1 	movl	%eax, %ecx
e0109f79:	f6 d9 	negb	%cl
e0109f7b:	89 fa 	movl	%edi, %edx
e0109f7d:	d3 e2 	shll	%cl, %edx
e0109f7f:	89 14 24 	movl	%edx, (%esp)
e0109f82:	89 ea 	movl	%ebp, %edx
e0109f84:	d3 e2 	shll	%cl, %edx
e0109f86:	89 c1 	movl	%eax, %ecx
e0109f88:	d3 ef 	shrl	%cl, %edi
e0109f8a:	09 d7 	orl	%edx, %edi
e0109f8c:	89 c1 	movl	%eax, %ecx
e0109f8e:	89 f8 	movl	%edi, %eax
e0109f90:	d3 ed 	shrl	%cl, %ebp
e0109f92:	89 ee 	movl	%ebp, %esi
e0109f94:	e9 b8 fe ff ff 	jmp	-328 <__udivmoddi4+0x161>
e0109f99:	cc 	int3
e0109f9a:	cc 	int3
e0109f9b:	cc 	int3
e0109f9c:	cc 	int3
e0109f9d:	cc 	int3
e0109f9e:	cc 	int3
e0109f9f:	cc 	int3
e0109fa0:	83 ec 18 	subl	$24, %esp
e0109fa3:	8d 44 24 0c 	leal	12(%esp), %eax
e0109fa7:	50 	pushl	%eax
e0109fa8:	ff 74 24 2c 	pushl	44(%esp)
e0109fac:	ff 74 24 2c 	pushl	44(%esp)
e0109fb0:	ff 74 24 2c 	pushl	44(%esp)
e0109fb4:	ff 74 24 2c 	pushl	44(%esp)
e0109fb8:	e8 33 fd ff ff 	calll	-717 <__udivmoddi4>
e0109fbd:	83 c4 20 	addl	$32, %esp
e0109fc0:	8b 04 24 	movl	(%esp), %eax
e0109fc3:	8b 54 24 04 	movl	4(%esp), %edx
e0109fc7:	83 c4 0c 	addl	$12, %esp
e0109fca:	c3 	retl
e0109fcb:	cc 	int3

00000000e0100000 __text_start:
e0100000:	02 b0 ad 1b 00 00 	addb	7085(%eax), %dh
e0100006:	00 00 	addb	%al, (%eax)
e0100008:	fe 4f 52 	decb	82(%edi)
e010000b:	e4 fa 	inb	$250, %al

00000000e010000c entry:
e010000c:	fa 	cli
e010000d:	66 c7 05 72 04 00 00 34 12 	movw	$4660, 1138
e0100016:	b8 00 d0 11 00 	movl	$1167360, %eax
e010001b:	0f 22 d8 	movl	%eax, %cr3
e010001e:	0f 20 c0 	movl	%cr0, %eax
e0100021:	0d 01 00 01 80 	orl	$2147549185, %eax
e0100026:	0f 22 c0 	movl	%eax, %cr0
e0100029:	b8 30 00 10 e0 	movl	$3759145008, %eax
e010002e:	ff e0 	jmpl	*%eax

00000000e0100030 relocated:
e0100030:	bd 00 00 00 00 	movl	$0, %ebp
e0100035:	bc 00 60 11 e0 	movl	$3759235072, %esp
e010003a:	e8 31 00 00 00 	calll	49 <i386_init>

00000000e010003f spin:
e010003f:	eb fe 	jmp	-2 <spin>
e0100041:	cc 	int3
e0100042:	cc 	int3
e0100043:	cc 	int3
e0100044:	cc 	int3
e0100045:	cc 	int3
e0100046:	cc 	int3
e0100047:	cc 	int3
e0100048:	cc 	int3
e0100049:	cc 	int3
e010004a:	cc 	int3
e010004b:	cc 	int3
e010004c:	cc 	int3
e010004d:	cc 	int3
e010004e:	cc 	int3
e010004f:	cc 	int3

00000000e0100050 asan.module_ctor:
e0100050:	83 ec 0c 	subl	$12, %esp
e0100053:	e8 a8 8c 00 00 	calll	36008 <__asan_init>
e0100058:	e8 c3 8d 00 00 	calll	36291 <__asan_version_mismatch_check_v8>
e010005d:	83 c4 0c 	addl	$12, %esp
e0100060:	c3 	retl
e0100061:	cc 	int3
e0100062:	cc 	int3
e0100063:	cc 	int3
e0100064:	cc 	int3
e0100065:	cc 	int3
e0100066:	cc 	int3
e0100067:	cc 	int3
e0100068:	cc 	int3
e0100069:	cc 	int3
e010006a:	cc 	int3
e010006b:	cc 	int3
e010006c:	cc 	int3
e010006d:	cc 	int3
e010006e:	cc 	int3
e010006f:	cc 	int3

00000000e0100070 i386_init:
e0100070:	b8 00 40 12 e0 	movl	$3759292416, %eax
e0100075:	3d 2c 1b 12 e0 	cmpl	$3759282988, %eax
e010007a:	74 20 	je	32 <i386_init+0x2c>
e010007c:	31 c9 	xorl	%ecx, %ecx
e010007e:	ba 2c 1b 12 e0 	movl	$3759282988, %edx
e0100083:	29 d0 	subl	%edx, %eax
e0100085:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010008f:	90 	nop
e0100090:	c6 81 2c 1b 12 e0 00 	movb	$0, -535684308(%ecx)
e0100097:	41 	incl	%ecx
e0100098:	39 c1 	cmpl	%eax, %ecx
e010009a:	72 f4 	jb	-12 <i386_init+0x20>
e010009c:	55 	pushl	%ebp
e010009d:	89 e5 	movl	%esp, %ebp
e010009f:	56 	pushl	%esi
e01000a0:	83 ec 14 	subl	$20, %esp
e01000a3:	be a0 1a 12 e0 	movl	$3759282848, %esi
e01000a8:	81 fe fc 1a 12 e0 	cmpl	$3759282940, %esi
e01000ae:	73 0d 	jae	13 <i386_init+0x4d>
e01000b0:	ff 16 	calll	*(%esi)
e01000b2:	83 c6 04 	addl	$4, %esi
e01000b5:	81 fe fc 1a 12 e0 	cmpl	$3759282940, %esi
e01000bb:	72 f3 	jb	-13 <i386_init+0x40>
e01000bd:	e8 1e 04 00 00 	calll	1054 <cons_init>
e01000c2:	e8 49 7d 00 00 	calll	32073 <tsc_calibrate>
e01000c7:	c7 44 24 04 ac 1a 00 00 	movl	$6828, 4(%esp)
e01000cf:	c7 04 24 e0 9f 10 e0 	movl	$3759185888, (%esp)
e01000d6:	e8 65 3e 00 00 	calll	15973 <cprintf>
e01000db:	c7 44 24 04 00 40 12 e0 	movl	$3759292416, 4(%esp)
e01000e3:	c7 04 24 20 a0 10 e0 	movl	$3759185952, (%esp)
e01000ea:	e8 51 3e 00 00 	calll	15953 <cprintf>
e01000ef:	e8 7c 16 00 00 	calll	5756 <mem_init>
e01000f4:	e8 97 2f 00 00 	calll	12183 <env_init>
e01000f9:	e8 52 3f 00 00 	calll	16210 <clock_idt_init>
e01000fe:	e8 5d 3b 00 00 	calll	15197 <pic_init>
e0100103:	e8 88 3a 00 00 	calll	14984 <rtc_init>
e0100108:	0f b7 05 00 0f 12 e0 	movzwl	-535687424, %eax
e010010f:	25 ff fe 00 00 	andl	$65279, %eax
e0100114:	89 04 24 	movl	%eax, (%esp)
e0100117:	e8 e4 3b 00 00 	calll	15332 <irq_setmask_8259A>
e010011c:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0100123:	e8 08 10 00 00 	calll	4104 <monitor>
e0100128:	e8 63 4d 00 00 	calll	19811 <sched_yield>
e010012d:	0f 1f 00 	nopl	(%eax)

00000000e0100130 _panic:
e0100130:	55 	pushl	%ebp
e0100131:	89 e5 	movl	%esp, %ebp
e0100133:	56 	pushl	%esi
e0100134:	83 ec 14 	subl	$20, %esp
e0100137:	83 3d ac 2f 12 e0 00 	cmpl	$0, -535679060
e010013e:	75 50 	jne	80 <_panic+0x60>
e0100140:	8b 75 10 	movl	16(%ebp), %esi
e0100143:	8b 45 0c 	movl	12(%ebp), %eax
e0100146:	8b 4d 08 	movl	8(%ebp), %ecx
e0100149:	89 35 ac 2f 12 e0 	movl	%esi, -535679060
e010014f:	fa 	cli
e0100150:	fc 	cld
e0100151:	8d 55 14 	leal	20(%ebp), %edx
e0100154:	89 55 f8 	movl	%edx, -8(%ebp)
e0100157:	89 44 24 08 	movl	%eax, 8(%esp)
e010015b:	89 4c 24 04 	movl	%ecx, 4(%esp)
e010015f:	c7 04 24 60 a0 10 e0 	movl	$3759186016, (%esp)
e0100166:	e8 d5 3d 00 00 	calll	15829 <cprintf>
e010016b:	8b 45 f8 	movl	-8(%ebp), %eax
e010016e:	89 44 24 04 	movl	%eax, 4(%esp)
e0100172:	89 34 24 	movl	%esi, (%esp)
e0100175:	e8 56 3c 00 00 	calll	15446 <vcprintf>
e010017a:	c7 04 24 a0 a0 10 e0 	movl	$3759186080, (%esp)
e0100181:	e8 ba 3d 00 00 	calll	15802 <cprintf>
e0100186:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100190:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0100197:	e8 94 0f 00 00 	calll	3988 <monitor>
e010019c:	eb f2 	jmp	-14 <_panic+0x60>
e010019e:	66 90 	nop

00000000e01001a0 _warn:
e01001a0:	55 	pushl	%ebp
e01001a1:	89 e5 	movl	%esp, %ebp
e01001a3:	53 	pushl	%ebx
e01001a4:	57 	pushl	%edi
e01001a5:	56 	pushl	%esi
e01001a6:	83 e4 e0 	andl	$-32, %esp
e01001a9:	83 ec 40 	subl	$64, %esp
e01001ac:	89 e6 	movl	%esp, %esi
e01001ae:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e01001b5:	74 0f 	je	15 <_warn+0x26>
e01001b7:	83 ec 0c 	subl	$12, %esp
e01001ba:	6a 20 	pushl	$32
e01001bc:	e8 cf 87 00 00 	calll	34767 <__asan_stack_malloc_0>
e01001c1:	83 c4 10 	addl	$16, %esp
e01001c4:	eb 02 	jmp	2 <_warn+0x28>
e01001c6:	31 c0 	xorl	%eax, %eax
e01001c8:	8b 4d 0c 	movl	12(%ebp), %ecx
e01001cb:	85 c0 	testl	%eax, %eax
e01001cd:	89 46 18 	movl	%eax, 24(%esi)
e01001d0:	89 c3 	movl	%eax, %ebx
e01001d2:	75 0a 	jne	10 <_warn+0x3e>
e01001d4:	89 e3 	movl	%esp, %ebx
e01001d6:	83 c3 e0 	addl	$-32, %ebx
e01001d9:	83 e3 e0 	andl	$-32, %ebx
e01001dc:	89 dc 	movl	%ebx, %esp
e01001de:	89 5e 1c 	movl	%ebx, 28(%esi)
e01001e1:	8d 43 10 	leal	16(%ebx), %eax
e01001e4:	89 46 14 	movl	%eax, 20(%esi)
e01001e7:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e01001ed:	c7 43 04 14 a2 10 e0 	movl	$3759186452, 4(%ebx)
e01001f4:	c7 43 08 a0 01 10 e0 	movl	$3759145376, 8(%ebx)
e01001fb:	89 df 	movl	%ebx, %edi
e01001fd:	c1 ef 03 	shrl	$3, %edi
e0100200:	c7 87 00 00 80 de f1 f1 f8 f3 	movl	$4093178353, -562036736(%edi)
e010020a:	c6 87 02 00 80 de 04 	movb	$4, -562036734(%edi)
e0100211:	8d 55 14 	leal	20(%ebp), %edx
e0100214:	89 53 10 	movl	%edx, 16(%ebx)
e0100217:	83 ec 04 	subl	$4, %esp
e010021a:	51 	pushl	%ecx
e010021b:	ff 75 08 	pushl	8(%ebp)
e010021e:	68 e0 a0 10 e0 	pushl	$3759186144
e0100223:	e8 18 3d 00 00 	calll	15640 <cprintf>
e0100228:	8b 56 14 	movl	20(%esi), %edx
e010022b:	83 c4 10 	addl	$16, %esp
e010022e:	89 d0 	movl	%edx, %eax
e0100230:	c1 e8 03 	shrl	$3, %eax
e0100233:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0100239:	84 c0 	testb	%al, %al
e010023b:	75 60 	jne	96 <_warn+0xfd>
e010023d:	83 ec 08 	subl	$8, %esp
e0100240:	ff 73 10 	pushl	16(%ebx)
e0100243:	ff 75 10 	pushl	16(%ebp)
e0100246:	e8 85 3b 00 00 	calll	15237 <vcprintf>
e010024b:	83 c4 04 	addl	$4, %esp
e010024e:	68 a0 a0 10 e0 	pushl	$3759186080
e0100253:	e8 e8 3c 00 00 	calll	15592 <cprintf>
e0100258:	83 c4 10 	addl	$16, %esp
e010025b:	c6 87 02 00 80 de f8 	movb	$-8, -562036734(%edi)
e0100262:	c7 03 0e 36 e0 45 	movl	$1172321806, (%ebx)
e0100268:	8b 46 18 	movl	24(%esi), %eax
e010026b:	85 c0 	testl	%eax, %eax
e010026d:	74 1c 	je	28 <_warn+0xeb>
e010026f:	c7 87 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edi)
e0100279:	c7 87 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edi)
e0100283:	8b 40 3c 	movl	60(%eax), %eax
e0100286:	c6 00 00 	movb	$0, (%eax)
e0100289:	eb 0a 	jmp	10 <_warn+0xf5>
e010028b:	c7 87 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edi)
e0100295:	8d 65 f4 	leal	-12(%ebp), %esp
e0100298:	5e 	popl	%esi
e0100299:	5f 	popl	%edi
e010029a:	5b 	popl	%ebx
e010029b:	5d 	popl	%ebp
e010029c:	c3 	retl
e010029d:	89 d1 	movl	%edx, %ecx
e010029f:	80 e1 07 	andb	$7, %cl
e01002a2:	80 c1 03 	addb	$3, %cl
e01002a5:	38 c1 	cmpb	%al, %cl
e01002a7:	7c 94 	jl	-108 <_warn+0x9d>
e01002a9:	83 ec 0c 	subl	$12, %esp
e01002ac:	52 	pushl	%edx
e01002ad:	e8 de 84 00 00 	calll	34014 <__asan_report_load4>
e01002b2:	83 c4 10 	addl	$16, %esp
e01002b5:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01002bf:	90 	nop

00000000e01002c0 asan.module_ctor:
e01002c0:	83 ec 0c 	subl	$12, %esp
e01002c3:	e8 38 8a 00 00 	calll	35384 <__asan_init>
e01002c8:	e8 53 8b 00 00 	calll	35667 <__asan_version_mismatch_check_v8>
e01002cd:	83 ec 08 	subl	$8, %esp
e01002d0:	6a 05 	pushl	$5
e01002d2:	68 00 00 12 e0 	pushl	$3759276032
e01002d7:	e8 54 8a 00 00 	calll	35412 <__asan_register_globals>
e01002dc:	83 c4 1c 	addl	$28, %esp
e01002df:	c3 	retl

00000000e01002e0 asan.module_dtor:
e01002e0:	83 ec 14 	subl	$20, %esp
e01002e3:	6a 05 	pushl	$5
e01002e5:	68 00 00 12 e0 	pushl	$3759276032
e01002ea:	e8 91 8a 00 00 	calll	35473 <__asan_unregister_globals>
e01002ef:	83 c4 1c 	addl	$28, %esp
e01002f2:	c3 	retl
e01002f3:	cc 	int3
e01002f4:	cc 	int3
e01002f5:	cc 	int3
e01002f6:	cc 	int3
e01002f7:	cc 	int3
e01002f8:	cc 	int3
e01002f9:	cc 	int3
e01002fa:	cc 	int3
e01002fb:	cc 	int3
e01002fc:	cc 	int3
e01002fd:	cc 	int3
e01002fe:	cc 	int3
e01002ff:	cc 	int3

00000000e0100300 serial_intr:
e0100300:	80 3d 40 1b 12 e0 00 	cmpb	$0, -535684288
e0100307:	74 07 	je	7 <serial_intr+0x10>
e0100309:	b9 70 03 10 e0 	movl	$3759145840, %ecx
e010030e:	eb 10 	jmp	16 <cons_intr>
e0100310:	c3 	retl
e0100311:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010031b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0100320 cons_intr:
e0100320:	55 	pushl	%ebp
e0100321:	89 e5 	movl	%esp, %ebp
e0100323:	56 	pushl	%esi
e0100324:	50 	pushl	%eax
e0100325:	89 ce 	movl	%ecx, %esi
e0100327:	eb 11 	jmp	17 <cons_intr+0x1a>
e0100329:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0100330:	c7 05 48 1d 12 e0 00 00 00 00 	movl	$0, -535683768
e010033a:	ff d6 	calll	*%esi
e010033c:	85 c0 	testl	%eax, %eax
e010033e:	74 fa 	je	-6 <cons_intr+0x1a>
e0100340:	83 f8 ff 	cmpl	$-1, %eax
e0100343:	74 23 	je	35 <cons_intr+0x48>
e0100345:	8b 0d 48 1d 12 e0 	movl	-535683768, %ecx
e010034b:	8d 51 01 	leal	1(%ecx), %edx
e010034e:	89 15 48 1d 12 e0 	movl	%edx, -535683768
e0100354:	88 81 44 1b 12 e0 	movb	%al, -535684284(%ecx)
e010035a:	81 3d 48 1d 12 e0 00 02 00 00 	cmpl	$512, -535683768
e0100364:	75 d4 	jne	-44 <cons_intr+0x1a>
e0100366:	eb c8 	jmp	-56 <cons_intr+0x10>
e0100368:	83 c4 04 	addl	$4, %esp
e010036b:	5e 	popl	%esi
e010036c:	5d 	popl	%ebp
e010036d:	c3 	retl
e010036e:	66 90 	nop

00000000e0100370 serial_proc_data:
e0100370:	ba fd 03 00 00 	movl	$1021, %edx
e0100375:	ec 	inb	%dx, %al
e0100376:	89 c1 	movl	%eax, %ecx
e0100378:	b8 ff ff ff ff 	movl	$4294967295, %eax
e010037d:	f6 c1 01 	testb	$1, %cl
e0100380:	74 09 	je	9 <serial_proc_data+0x1b>
e0100382:	ba f8 03 00 00 	movl	$1016, %edx
e0100387:	ec 	inb	%dx, %al
e0100388:	0f b6 c0 	movzbl	%al, %eax
e010038b:	c3 	retl
e010038c:	0f 1f 40 00 	nopl	(%eax)

00000000e0100390 kbd_intr:
e0100390:	b9 a0 03 10 e0 	movl	$3759145888, %ecx
e0100395:	eb 89 	jmp	-119 <cons_intr>
e0100397:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e01003a0 kbd_proc_data:
e01003a0:	55 	pushl	%ebp
e01003a1:	89 e5 	movl	%esp, %ebp
e01003a3:	56 	pushl	%esi
e01003a4:	50 	pushl	%eax
e01003a5:	ba 64 00 00 00 	movl	$100, %edx
e01003aa:	ec 	inb	%dx, %al
e01003ab:	89 c1 	movl	%eax, %ecx
e01003ad:	b8 ff ff ff ff 	movl	$4294967295, %eax
e01003b2:	f6 c1 01 	testb	$1, %cl
e01003b5:	0f 84 cd 00 00 00 	je	205 <kbd_proc_data+0xe8>
e01003bb:	ba 60 00 00 00 	movl	$96, %edx
e01003c0:	ec 	inb	%dx, %al
e01003c1:	3c e0 	cmpb	$-32, %al
e01003c3:	75 0e 	jne	14 <kbd_proc_data+0x33>
e01003c5:	80 0d 4c 1d 12 e0 40 	orb	$64, -535683764
e01003cc:	31 c0 	xorl	%eax, %eax
e01003ce:	e9 b5 00 00 00 	jmp	181 <kbd_proc_data+0xe8>
e01003d3:	84 c0 	testb	%al, %al
e01003d5:	8b 0d 4c 1d 12 e0 	movl	-535683764, %ecx
e01003db:	78 53 	js	83 <kbd_proc_data+0x90>
e01003dd:	f6 c1 40 	testb	$64, %cl
e01003e0:	74 0b 	je	11 <kbd_proc_data+0x4d>
e01003e2:	0c 80 	orb	$-128, %al
e01003e4:	83 e1 bf 	andl	$-65, %ecx
e01003e7:	89 0d 4c 1d 12 e0 	movl	%ecx, -535683764
e01003ed:	0f b6 c0 	movzbl	%al, %eax
e01003f0:	0f b6 90 68 a5 10 e0 	movzbl	-535779992(%eax), %edx
e01003f7:	0b 15 4c 1d 12 e0 	orl	-535683764, %edx
e01003fd:	0f b6 88 68 a6 10 e0 	movzbl	-535779736(%eax), %ecx
e0100404:	31 d1 	xorl	%edx, %ecx
e0100406:	89 0d 4c 1d 12 e0 	movl	%ecx, -535683764
e010040c:	89 ca 	movl	%ecx, %edx
e010040e:	83 e2 03 	andl	$3, %edx
e0100411:	8b 14 95 58 a5 10 e0 	movl	-535780008(,%edx,4), %edx
e0100418:	0f b6 04 02 	movzbl	(%edx,%eax), %eax
e010041c:	f6 c1 08 	testb	$8, %cl
e010041f:	74 3f 	je	63 <kbd_proc_data+0xc0>
e0100421:	89 c2 	movl	%eax, %edx
e0100423:	80 c2 9f 	addb	$-97, %dl
e0100426:	80 fa 19 	cmpb	$25, %dl
e0100429:	77 27 	ja	39 <kbd_proc_data+0xb2>
e010042b:	83 c0 e0 	addl	$-32, %eax
e010042e:	eb 58 	jmp	88 <kbd_proc_data+0xe8>
e0100430:	f6 c1 40 	testb	$64, %cl
e0100433:	75 02 	jne	2 <kbd_proc_data+0x97>
e0100435:	24 7f 	andb	$127, %al
e0100437:	0f b6 c0 	movzbl	%al, %eax
e010043a:	0f b6 80 68 a5 10 e0 	movzbl	-535779992(%eax), %eax
e0100441:	f7 d0 	notl	%eax
e0100443:	21 c1 	andl	%eax, %ecx
e0100445:	83 e1 bf 	andl	$-65, %ecx
e0100448:	89 0d 4c 1d 12 e0 	movl	%ecx, -535683764
e010044e:	31 c0 	xorl	%eax, %eax
e0100450:	eb 36 	jmp	54 <kbd_proc_data+0xe8>
e0100452:	89 c2 	movl	%eax, %edx
e0100454:	80 c2 bf 	addb	$-65, %dl
e0100457:	8d 70 20 	leal	32(%eax), %esi
e010045a:	80 fa 1a 	cmpb	$26, %dl
e010045d:	0f 42 c6 	cmovbl	%esi, %eax
e0100460:	83 e1 06 	andl	$6, %ecx
e0100463:	83 f9 06 	cmpl	$6, %ecx
e0100466:	75 20 	jne	32 <kbd_proc_data+0xe8>
e0100468:	3d e9 00 00 00 	cmpl	$233, %eax
e010046d:	75 19 	jne	25 <kbd_proc_data+0xe8>
e010046f:	c7 04 24 36 a3 10 e0 	movl	$3759186742, (%esp)
e0100476:	e8 c5 3a 00 00 	calll	15045 <cprintf>
e010047b:	b0 03 	movb	$3, %al
e010047d:	ba 92 00 00 00 	movl	$146, %edx
e0100482:	ee 	outb	%al, %dx
e0100483:	b8 e9 00 00 00 	movl	$233, %eax
e0100488:	83 c4 04 	addl	$4, %esp
e010048b:	5e 	popl	%esi
e010048c:	5d 	popl	%ebp
e010048d:	c3 	retl
e010048e:	66 90 	nop

00000000e0100490 cons_getc:
e0100490:	55 	pushl	%ebp
e0100491:	89 e5 	movl	%esp, %ebp
e0100493:	83 ec 08 	subl	$8, %esp
e0100496:	e8 65 fe ff ff 	calll	-411 <serial_intr>
e010049b:	e8 f0 fe ff ff 	calll	-272 <kbd_intr>
e01004a0:	8b 0d 44 1d 12 e0 	movl	-535683772, %ecx
e01004a6:	31 c0 	xorl	%eax, %eax
e01004a8:	3b 0d 48 1d 12 e0 	cmpl	-535683768, %ecx
e01004ae:	74 21 	je	33 <cons_getc+0x41>
e01004b0:	8d 51 01 	leal	1(%ecx), %edx
e01004b3:	89 15 44 1d 12 e0 	movl	%edx, -535683772
e01004b9:	0f b6 81 44 1b 12 e0 	movzbl	-535684284(%ecx), %eax
e01004c0:	31 c9 	xorl	%ecx, %ecx
e01004c2:	81 fa 00 02 00 00 	cmpl	$512, %edx
e01004c8:	0f 45 ca 	cmovnel	%edx, %ecx
e01004cb:	89 0d 44 1d 12 e0 	movl	%ecx, -535683772
e01004d1:	83 c4 08 	addl	$8, %esp
e01004d4:	5d 	popl	%ebp
e01004d5:	c3 	retl
e01004d6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e01004e0 cons_init:
e01004e0:	55 	pushl	%ebp
e01004e1:	89 e5 	movl	%esp, %ebp
e01004e3:	83 ec 08 	subl	$8, %esp
e01004e6:	e8 25 00 00 00 	calll	37 <cga_init>
e01004eb:	e8 a0 00 00 00 	calll	160 <serial_init>
e01004f0:	80 3d 40 1b 12 e0 00 	cmpb	$0, -535684288
e01004f7:	75 0c 	jne	12 <cons_init+0x25>
e01004f9:	c7 04 24 a3 a4 10 e0 	movl	$3759187107, (%esp)
e0100500:	e8 3b 3a 00 00 	calll	14907 <cprintf>
e0100505:	83 c4 08 	addl	$8, %esp
e0100508:	5d 	popl	%ebp
e0100509:	c3 	retl
e010050a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e0100510 cga_init:
e0100510:	0f b7 05 00 80 0b e0 	movzwl	-536117248, %eax
e0100517:	66 c7 05 00 80 0b e0 5a a5 	movw	$42330, -536117248
e0100520:	0f b7 0d 00 80 0b e0 	movzwl	-536117248, %ecx
e0100527:	81 f9 5a a5 00 00 	cmpl	$42330, %ecx
e010052d:	75 12 	jne	18 <cga_init+0x31>
e010052f:	66 a3 00 80 0b e0 	movw	%ax, 3758850048
e0100535:	b9 00 80 0b e0 	movl	$3758850048, %ecx
e010053a:	ba d4 03 00 00 	movl	$980, %edx
e010053f:	eb 0a 	jmp	10 <cga_init+0x3b>
e0100541:	b9 00 00 0b e0 	movl	$3758817280, %ecx
e0100546:	ba b4 03 00 00 	movl	$948, %edx
e010054b:	56 	pushl	%esi
e010054c:	89 15 50 1d 12 e0 	movl	%edx, -535683760
e0100552:	b0 0e 	movb	$14, %al
e0100554:	ee 	outb	%al, %dx
e0100555:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e010055b:	42 	incl	%edx
e010055c:	ec 	inb	%dx, %al
e010055d:	0f b6 f0 	movzbl	%al, %esi
e0100560:	c1 e6 08 	shll	$8, %esi
e0100563:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e0100569:	b0 0f 	movb	$15, %al
e010056b:	ee 	outb	%al, %dx
e010056c:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e0100572:	42 	incl	%edx
e0100573:	ec 	inb	%dx, %al
e0100574:	0f b6 c0 	movzbl	%al, %eax
e0100577:	09 f0 	orl	%esi, %eax
e0100579:	89 0d 54 1d 12 e0 	movl	%ecx, -535683756
e010057f:	66 a3 58 1d 12 e0 	movw	%ax, 3759283544
e0100585:	5e 	popl	%esi
e0100586:	c3 	retl
e0100587:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0100590 serial_init:
e0100590:	31 c0 	xorl	%eax, %eax
e0100592:	ba fa 03 00 00 	movl	$1018, %edx
e0100597:	ee 	outb	%al, %dx
e0100598:	b0 80 	movb	$-128, %al
e010059a:	ba fb 03 00 00 	movl	$1019, %edx
e010059f:	ee 	outb	%al, %dx
e01005a0:	b0 0c 	movb	$12, %al
e01005a2:	ba f8 03 00 00 	movl	$1016, %edx
e01005a7:	ee 	outb	%al, %dx
e01005a8:	31 c0 	xorl	%eax, %eax
e01005aa:	ba f9 03 00 00 	movl	$1017, %edx
e01005af:	ee 	outb	%al, %dx
e01005b0:	b0 03 	movb	$3, %al
e01005b2:	ba fb 03 00 00 	movl	$1019, %edx
e01005b7:	ee 	outb	%al, %dx
e01005b8:	31 c0 	xorl	%eax, %eax
e01005ba:	ba fc 03 00 00 	movl	$1020, %edx
e01005bf:	ee 	outb	%al, %dx
e01005c0:	b0 01 	movb	$1, %al
e01005c2:	ba f9 03 00 00 	movl	$1017, %edx
e01005c7:	ee 	outb	%al, %dx
e01005c8:	ba fd 03 00 00 	movl	$1021, %edx
e01005cd:	ec 	inb	%dx, %al
e01005ce:	3c ff 	cmpb	$-1, %al
e01005d0:	0f 95 05 40 1b 12 e0 	setne	-535684288
e01005d7:	ba fa 03 00 00 	movl	$1018, %edx
e01005dc:	ec 	inb	%dx, %al
e01005dd:	ba f8 03 00 00 	movl	$1016, %edx
e01005e2:	ec 	inb	%dx, %al
e01005e3:	c3 	retl
e01005e4:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01005ee:	66 90 	nop

00000000e01005f0 cputchar:
e01005f0:	8b 4c 24 04 	movl	4(%esp), %ecx
e01005f4:	eb 0a 	jmp	10 <cons_putc>
e01005f6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e0100600 cons_putc:
e0100600:	55 	pushl	%ebp
e0100601:	89 e5 	movl	%esp, %ebp
e0100603:	56 	pushl	%esi
e0100604:	50 	pushl	%eax
e0100605:	89 ce 	movl	%ecx, %esi
e0100607:	e8 44 00 00 00 	calll	68 <serial_putc>
e010060c:	89 f1 	movl	%esi, %ecx
e010060e:	e8 8d 00 00 00 	calll	141 <lpt_putc>
e0100613:	89 f1 	movl	%esi, %ecx
e0100615:	83 c4 04 	addl	$4, %esp
e0100618:	5e 	popl	%esi
e0100619:	5d 	popl	%ebp
e010061a:	e9 e1 00 00 00 	jmp	225 <cga_putc>
e010061f:	90 	nop

00000000e0100620 getchar:
e0100620:	55 	pushl	%ebp
e0100621:	89 e5 	movl	%esp, %ebp
e0100623:	83 ec 08 	subl	$8, %esp
e0100626:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100630:	e8 5b fe ff ff 	calll	-421 <cons_getc>
e0100635:	85 c0 	testl	%eax, %eax
e0100637:	74 f7 	je	-9 <getchar+0x10>
e0100639:	83 c4 08 	addl	$8, %esp
e010063c:	5d 	popl	%ebp
e010063d:	c3 	retl
e010063e:	66 90 	nop

00000000e0100640 iscons:
e0100640:	b8 01 00 00 00 	movl	$1, %eax
e0100645:	c3 	retl
e0100646:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e0100650 serial_putc:
e0100650:	55 	pushl	%ebp
e0100651:	89 e5 	movl	%esp, %ebp
e0100653:	53 	pushl	%ebx
e0100654:	56 	pushl	%esi
e0100655:	89 cb 	movl	%ecx, %ebx
e0100657:	ba fd 03 00 00 	movl	$1021, %edx
e010065c:	ec 	inb	%dx, %al
e010065d:	a8 20 	testb	$32, %al
e010065f:	75 29 	jne	41 <serial_putc+0x3a>
e0100661:	be 01 00 00 00 	movl	$1, %esi
e0100666:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100670:	e8 eb 01 00 00 	calll	491 <delay>
e0100675:	ba fd 03 00 00 	movl	$1021, %edx
e010067a:	ec 	inb	%dx, %al
e010067b:	81 fe ff 31 00 00 	cmpl	$12799, %esi
e0100681:	77 07 	ja	7 <serial_putc+0x3a>
e0100683:	24 20 	andb	$32, %al
e0100685:	46 	incl	%esi
e0100686:	84 c0 	testb	%al, %al
e0100688:	74 e6 	je	-26 <serial_putc+0x20>
e010068a:	89 d8 	movl	%ebx, %eax
e010068c:	ba f8 03 00 00 	movl	$1016, %edx
e0100691:	ee 	outb	%al, %dx
e0100692:	5e 	popl	%esi
e0100693:	5b 	popl	%ebx
e0100694:	5d 	popl	%ebp
e0100695:	c3 	retl
e0100696:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e01006a0 lpt_putc:
e01006a0:	55 	pushl	%ebp
e01006a1:	89 e5 	movl	%esp, %ebp
e01006a3:	53 	pushl	%ebx
e01006a4:	56 	pushl	%esi
e01006a5:	89 cb 	movl	%ecx, %ebx
e01006a7:	ba 79 03 00 00 	movl	$889, %edx
e01006ac:	ec 	inb	%dx, %al
e01006ad:	84 c0 	testb	%al, %al
e01006af:	78 27 	js	39 <lpt_putc+0x38>
e01006b1:	be 01 00 00 00 	movl	$1, %esi
e01006b6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01006c0:	e8 9b 01 00 00 	calll	411 <delay>
e01006c5:	ba 79 03 00 00 	movl	$889, %edx
e01006ca:	ec 	inb	%dx, %al
e01006cb:	81 fe ff 31 00 00 	cmpl	$12799, %esi
e01006d1:	77 05 	ja	5 <lpt_putc+0x38>
e01006d3:	46 	incl	%esi
e01006d4:	84 c0 	testb	%al, %al
e01006d6:	79 e8 	jns	-24 <lpt_putc+0x20>
e01006d8:	89 d8 	movl	%ebx, %eax
e01006da:	ba 78 03 00 00 	movl	$888, %edx
e01006df:	ee 	outb	%al, %dx
e01006e0:	b0 0d 	movb	$13, %al
e01006e2:	ba 7a 03 00 00 	movl	$890, %edx
e01006e7:	ee 	outb	%al, %dx
e01006e8:	b0 08 	movb	$8, %al
e01006ea:	ba 7a 03 00 00 	movl	$890, %edx
e01006ef:	ee 	outb	%al, %dx
e01006f0:	5e 	popl	%esi
e01006f1:	5b 	popl	%ebx
e01006f2:	5d 	popl	%ebp
e01006f3:	c3 	retl
e01006f4:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01006fe:	66 90 	nop

00000000e0100700 cga_putc:
e0100700:	55 	pushl	%ebp
e0100701:	89 e5 	movl	%esp, %ebp
e0100703:	56 	pushl	%esi
e0100704:	50 	pushl	%eax
e0100705:	89 c8 	movl	%ecx, %eax
e0100707:	0d 00 07 00 00 	orl	$1792, %eax
e010070c:	81 f9 ff 00 00 00 	cmpl	$255, %ecx
e0100712:	0f 47 c1 	cmoval	%ecx, %eax
e0100715:	89 c1 	movl	%eax, %ecx
e0100717:	80 c1 f8 	addb	$-8, %cl
e010071a:	80 f9 05 	cmpb	$5, %cl
e010071d:	0f 87 9b 00 00 00 	ja	155 <cga_putc+0xbe>
e0100723:	0f b6 c9 	movzbl	%cl, %ecx
e0100726:	ff 24 8d 40 a5 10 e0 	jmpl	*-535780032(,%ecx,4)
e010072d:	0f b7 0d 58 1d 12 e0 	movzwl	-535683752, %ecx
e0100734:	66 85 c9 	testw	%cx, %cx
e0100737:	0f 84 ea 00 00 00 	je	234 <cga_putc+0x127>
e010073d:	49 	decl	%ecx
e010073e:	66 89 0d 58 1d 12 e0 	movw	%cx, -535683752
e0100745:	25 00 ff ff ff 	andl	$4294967040, %eax
e010074a:	83 c8 20 	orl	$32, %eax
e010074d:	8b 15 54 1d 12 e0 	movl	-535683756, %edx
e0100753:	0f b7 c9 	movzwl	%cx, %ecx
e0100756:	66 89 04 4a 	movw	%ax, (%edx,%ecx,2)
e010075a:	eb 32 	jmp	50 <cga_putc+0x8e>
e010075c:	b9 20 00 00 00 	movl	$32, %ecx
e0100761:	e8 9a fe ff ff 	calll	-358 <cons_putc>
e0100766:	b9 20 00 00 00 	movl	$32, %ecx
e010076b:	e8 90 fe ff ff 	calll	-368 <cons_putc>
e0100770:	b9 20 00 00 00 	movl	$32, %ecx
e0100775:	e8 86 fe ff ff 	calll	-378 <cons_putc>
e010077a:	b9 20 00 00 00 	movl	$32, %ecx
e010077f:	e8 7c fe ff ff 	calll	-388 <cons_putc>
e0100784:	b9 20 00 00 00 	movl	$32, %ecx
e0100789:	e8 72 fe ff ff 	calll	-398 <cons_putc>
e010078e:	0f b7 0d 58 1d 12 e0 	movzwl	-535683752, %ecx
e0100795:	eb 42 	jmp	66 <cga_putc+0xd9>
e0100797:	66 83 05 58 1d 12 e0 50 	addw	$80, -535683752
e010079f:	0f b7 05 58 1d 12 e0 	movzwl	-535683752, %eax
e01007a6:	69 c0 cd cc 00 00 	imull	$52429, %eax, %eax
e01007ac:	c1 e8 16 	shrl	$22, %eax
e01007af:	c1 e0 04 	shll	$4, %eax
e01007b2:	8d 0c 80 	leal	(%eax,%eax,4), %ecx
e01007b5:	66 89 0d 58 1d 12 e0 	movw	%cx, -535683752
e01007bc:	eb 1b 	jmp	27 <cga_putc+0xd9>
e01007be:	8b 15 54 1d 12 e0 	movl	-535683756, %edx
e01007c4:	0f b7 35 58 1d 12 e0 	movzwl	-535683752, %esi
e01007cb:	8d 4e 01 	leal	1(%esi), %ecx
e01007ce:	66 89 0d 58 1d 12 e0 	movw	%cx, -535683752
e01007d5:	66 89 04 72 	movw	%ax, (%edx,%esi,2)
e01007d9:	0f b7 c1 	movzwl	%cx, %eax
e01007dc:	3d d0 07 00 00 	cmpl	$2000, %eax
e01007e1:	72 44 	jb	68 <cga_putc+0x127>
e01007e3:	a1 54 1d 12 e0 	movl	3759283540, %eax
e01007e8:	8d 88 a0 00 00 00 	leal	160(%eax), %ecx
e01007ee:	83 ec 04 	subl	$4, %esp
e01007f1:	68 00 0f 00 00 	pushl	$3840
e01007f6:	51 	pushl	%ecx
e01007f7:	50 	pushl	%eax
e01007f8:	e8 33 8b 00 00 	calll	35635 <__wrap_memmove>
e01007fd:	83 c4 10 	addl	$16, %esp
e0100800:	b8 60 ff ff ff 	movl	$4294967136, %eax
e0100805:	8b 0d 54 1d 12 e0 	movl	-535683756, %ecx
e010080b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0100810:	66 c7 84 01 a0 0f 00 00 20 07 	movw	$1824, 4000(%ecx,%eax)
e010081a:	83 c0 02 	addl	$2, %eax
e010081d:	75 f1 	jne	-15 <cga_putc+0x110>
e010081f:	66 83 05 58 1d 12 e0 b0 	addw	$-80, -535683752
e0100827:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e010082d:	b0 0e 	movb	$14, %al
e010082f:	ee 	outb	%al, %dx
e0100830:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e0100836:	42 	incl	%edx
e0100837:	a0 59 1d 12 e0 	movb	3759283545, %al
e010083c:	ee 	outb	%al, %dx
e010083d:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e0100843:	b0 0f 	movb	$15, %al
e0100845:	ee 	outb	%al, %dx
e0100846:	8b 15 50 1d 12 e0 	movl	-535683760, %edx
e010084c:	42 	incl	%edx
e010084d:	a0 58 1d 12 e0 	movb	3759283544, %al
e0100852:	ee 	outb	%al, %dx
e0100853:	83 c4 04 	addl	$4, %esp
e0100856:	5e 	popl	%esi
e0100857:	5d 	popl	%ebp
e0100858:	c3 	retl
e0100859:	0f 1f 80 00 00 00 00 	nopl	(%eax)

00000000e0100860 delay:
e0100860:	ba 84 00 00 00 	movl	$132, %edx
e0100865:	ec 	inb	%dx, %al
e0100866:	ba 84 00 00 00 	movl	$132, %edx
e010086b:	ec 	inb	%dx, %al
e010086c:	ba 84 00 00 00 	movl	$132, %edx
e0100871:	ec 	inb	%dx, %al
e0100872:	ba 84 00 00 00 	movl	$132, %edx
e0100877:	ec 	inb	%dx, %al
e0100878:	c3 	retl
e0100879:	0f 1f 80 00 00 00 00 	nopl	(%eax)

00000000e0100880 asan.module_ctor:
e0100880:	83 ec 0c 	subl	$12, %esp
e0100883:	e8 78 84 00 00 	calll	33912 <__asan_init>
e0100888:	e8 93 85 00 00 	calll	34195 <__asan_version_mismatch_check_v8>
e010088d:	83 c4 0c 	addl	$12, %esp
e0100890:	c3 	retl
e0100891:	cc 	int3
e0100892:	cc 	int3
e0100893:	cc 	int3
e0100894:	cc 	int3
e0100895:	cc 	int3
e0100896:	cc 	int3
e0100897:	cc 	int3
e0100898:	cc 	int3
e0100899:	cc 	int3
e010089a:	cc 	int3
e010089b:	cc 	int3
e010089c:	cc 	int3
e010089d:	cc 	int3
e010089e:	cc 	int3
e010089f:	cc 	int3

00000000e01008a0 mon_help:
e01008a0:	55 	pushl	%ebp
e01008a1:	89 e5 	movl	%esp, %ebp
e01008a3:	53 	pushl	%ebx
e01008a4:	56 	pushl	%esi
e01008a5:	83 ec 10 	subl	$16, %esp
e01008a8:	be 06 00 00 00 	movl	$6, %esi
e01008ad:	bb c4 a7 10 e0 	movl	$3759187908, %ebx
e01008b2:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01008bc:	0f 1f 40 00 	nopl	(%eax)
e01008c0:	8d 43 fc 	leal	-4(%ebx), %eax
e01008c3:	89 c1 	movl	%eax, %ecx
e01008c5:	c1 e9 03 	shrl	$3, %ecx
e01008c8:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e01008cf:	84 c9 	testb	%cl, %cl
e01008d1:	75 31 	jne	49 <mon_help+0x64>
e01008d3:	8b 43 fc 	movl	-4(%ebx), %eax
e01008d6:	89 d9 	movl	%ebx, %ecx
e01008d8:	c1 e9 03 	shrl	$3, %ecx
e01008db:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e01008e2:	84 c9 	testb	%cl, %cl
e01008e4:	75 2c 	jne	44 <mon_help+0x72>
e01008e6:	8b 0b 	movl	(%ebx), %ecx
e01008e8:	89 4c 24 08 	movl	%ecx, 8(%esp)
e01008ec:	89 44 24 04 	movl	%eax, 4(%esp)
e01008f0:	c7 04 24 80 a7 10 e0 	movl	$3759187840, (%esp)
e01008f7:	e8 44 36 00 00 	calll	13892 <cprintf>
e01008fc:	83 c3 0c 	addl	$12, %ebx
e01008ff:	4e 	decl	%esi
e0100900:	75 be 	jne	-66 <mon_help+0x20>
e0100902:	eb 22 	jmp	34 <mon_help+0x86>
e0100904:	89 c2 	movl	%eax, %edx
e0100906:	80 e2 07 	andb	$7, %dl
e0100909:	80 c2 03 	addb	$3, %dl
e010090c:	38 ca 	cmpb	%cl, %dl
e010090e:	7c c3 	jl	-61 <mon_help+0x33>
e0100910:	eb 1d 	jmp	29 <mon_help+0x8f>
e0100912:	89 da 	movl	%ebx, %edx
e0100914:	80 e2 07 	andb	$7, %dl
e0100917:	80 c2 03 	addb	$3, %dl
e010091a:	38 ca 	cmpb	%cl, %dl
e010091c:	7c c8 	jl	-56 <mon_help+0x46>
e010091e:	89 1c 24 	movl	%ebx, (%esp)
e0100921:	e8 6a 7e 00 00 	calll	32362 <__asan_report_load4>
e0100926:	31 c0 	xorl	%eax, %eax
e0100928:	83 c4 10 	addl	$16, %esp
e010092b:	5e 	popl	%esi
e010092c:	5b 	popl	%ebx
e010092d:	5d 	popl	%ebp
e010092e:	c3 	retl
e010092f:	89 04 24 	movl	%eax, (%esp)
e0100932:	e8 59 7e 00 00 	calll	32345 <__asan_report_load4>
e0100937:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0100940 mon_kerninfo:
e0100940:	55 	pushl	%ebp
e0100941:	89 e5 	movl	%esp, %ebp
e0100943:	83 ec 08 	subl	$8, %esp
e0100946:	83 ec 0c 	subl	$12, %esp
e0100949:	68 40 a8 10 e0 	pushl	$3759188032
e010094e:	e8 ed 35 00 00 	calll	13805 <cprintf>
e0100953:	83 c4 08 	addl	$8, %esp
e0100956:	68 0c 00 10 00 	pushl	$1048588
e010095b:	68 80 a8 10 e0 	pushl	$3759188096
e0100960:	e8 db 35 00 00 	calll	13787 <cprintf>
e0100965:	83 c4 0c 	addl	$12, %esp
e0100968:	8d 05 0c 00 10 00 	leal	1048588, %eax
e010096e:	50 	pushl	%eax
e010096f:	68 0c 00 10 e0 	pushl	$3759144972
e0100974:	68 e0 a8 10 e0 	pushl	$3759188192
e0100979:	e8 c2 35 00 00 	calll	13762 <cprintf>
e010097e:	83 c4 0c 	addl	$12, %esp
e0100981:	8d 05 cc 9f 10 00 	leal	1089484, %eax
e0100987:	50 	pushl	%eax
e0100988:	68 cc 9f 10 e0 	pushl	$3759185868
e010098d:	68 40 a9 10 e0 	pushl	$3759188288
e0100992:	e8 a9 35 00 00 	calll	13737 <cprintf>
e0100997:	83 c4 0c 	addl	$12, %esp
e010099a:	8d 05 2c 1b 12 00 	leal	1186604, %eax
e01009a0:	50 	pushl	%eax
e01009a1:	68 2c 1b 12 e0 	pushl	$3759282988
e01009a6:	68 a0 a9 10 e0 	pushl	$3759188384
e01009ab:	e8 90 35 00 00 	calll	13712 <cprintf>
e01009b0:	83 c4 0c 	addl	$12, %esp
e01009b3:	8d 05 00 40 12 00 	leal	1196032, %eax
e01009b9:	50 	pushl	%eax
e01009ba:	68 00 40 12 e0 	pushl	$3759292416
e01009bf:	68 00 aa 10 e0 	pushl	$3759188480
e01009c4:	e8 77 35 00 00 	calll	13687 <cprintf>
e01009c9:	83 c4 10 	addl	$16, %esp
e01009cc:	b8 0c 00 10 e0 	movl	$3759144972, %eax
e01009d1:	b9 00 40 12 e0 	movl	$3759292416, %ecx
e01009d6:	29 c1 	subl	%eax, %ecx
e01009d8:	81 c1 ff 03 00 00 	addl	$1023, %ecx
e01009de:	89 c8 	movl	%ecx, %eax
e01009e0:	25 ff 03 00 00 	andl	$1023, %eax
e01009e5:	29 c1 	subl	%eax, %ecx
e01009e7:	c1 e9 0a 	shrl	$10, %ecx
e01009ea:	83 ec 08 	subl	$8, %esp
e01009ed:	51 	pushl	%ecx
e01009ee:	68 60 aa 10 e0 	pushl	$3759188576
e01009f3:	e8 48 35 00 00 	calll	13640 <cprintf>
e01009f8:	83 c4 10 	addl	$16, %esp
e01009fb:	31 c0 	xorl	%eax, %eax
e01009fd:	83 c4 08 	addl	$8, %esp
e0100a00:	5d 	popl	%ebp
e0100a01:	c3 	retl
e0100a02:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100a0c:	0f 1f 40 00 	nopl	(%eax)

00000000e0100a10 mon_backtrace:
e0100a10:	55 	pushl	%ebp
e0100a11:	89 e5 	movl	%esp, %ebp
e0100a13:	53 	pushl	%ebx
e0100a14:	57 	pushl	%edi
e0100a15:	56 	pushl	%esi
e0100a16:	83 e4 e0 	andl	$-32, %esp
e0100a19:	81 ec e0 00 00 00 	subl	$224, %esp
e0100a1f:	c7 44 24 60 b3 8a b5 41 	movl	$1102416563, 96(%esp)
e0100a27:	c7 44 24 64 65 a4 10 e0 	movl	$3759187045, 100(%esp)
e0100a2f:	c7 44 24 68 10 0a 10 e0 	movl	$3759147536, 104(%esp)
e0100a37:	8d 44 24 60 	leal	96(%esp), %eax
e0100a3b:	c1 e8 03 	shrl	$3, %eax
e0100a3e:	c7 80 00 00 80 de f1 f1 f8 f8 	movl	$4177064433, -562036736(%eax)
e0100a48:	c7 80 04 00 80 de f8 f3 f3 f3 	movl	$4092851192, -562036732(%eax)
e0100a52:	66 c7 80 08 00 80 de f3 f3 	movw	$62451, -562036728(%eax)
e0100a5b:	66 c7 80 02 00 80 de 00 00 	movw	$0, -562036734(%eax)
e0100a64:	89 44 24 54 	movl	%eax, 84(%esp)
e0100a68:	c6 80 04 00 80 de 00 	movb	$0, -562036732(%eax)
e0100a6f:	89 eb 	movl	%ebp, %ebx
e0100a71:	c7 04 24 c0 aa 10 e0 	movl	$3759188672, (%esp)
e0100a78:	e8 c3 34 00 00 	calll	13507 <cprintf>
e0100a7d:	85 db 	testl	%ebx, %ebx
e0100a7f:	0f 84 5a 03 00 00 	je	858 <mon_backtrace+0x3cf>
e0100a85:	8d 44 24 70 	leal	112(%esp), %eax
e0100a89:	8d 48 04 	leal	4(%eax), %ecx
e0100a8c:	89 4c 24 4c 	movl	%ecx, 76(%esp)
e0100a90:	8d 48 0c 	leal	12(%eax), %ecx
e0100a93:	89 4c 24 48 	movl	%ecx, 72(%esp)
e0100a97:	8d 48 08 	leal	8(%eax), %ecx
e0100a9a:	89 4c 24 44 	movl	%ecx, 68(%esp)
e0100a9e:	8d 40 10 	leal	16(%eax), %eax
e0100aa1:	89 44 24 40 	movl	%eax, 64(%esp)
e0100aa5:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100aaf:	90 	nop
e0100ab0:	8d 53 04 	leal	4(%ebx), %edx
e0100ab3:	89 d7 	movl	%edx, %edi
e0100ab5:	c1 ef 03 	shrl	$3, %edi
e0100ab8:	0f b6 87 00 00 80 de 	movzbl	-562036736(%edi), %eax
e0100abf:	84 c0 	testb	%al, %al
e0100ac1:	0f 85 cf 01 00 00 	jne	463 <mon_backtrace+0x286>
e0100ac7:	89 54 24 3c 	movl	%edx, 60(%esp)
e0100acb:	8b 02 	movl	(%edx), %eax
e0100acd:	8d 4c 24 70 	leal	112(%esp), %ecx
e0100ad1:	89 4c 24 04 	movl	%ecx, 4(%esp)
e0100ad5:	89 04 24 	movl	%eax, (%esp)
e0100ad8:	e8 d3 46 00 00 	calll	18131 <debuginfo_eip>
e0100add:	0f b6 87 00 00 80 de 	movzbl	-562036736(%edi), %eax
e0100ae4:	84 c0 	testb	%al, %al
e0100ae6:	0f 85 bf 01 00 00 	jne	447 <mon_backtrace+0x29b>
e0100aec:	8b 43 04 	movl	4(%ebx), %eax
e0100aef:	89 44 24 50 	movl	%eax, 80(%esp)
e0100af3:	8d 43 08 	leal	8(%ebx), %eax
e0100af6:	89 c1 	movl	%eax, %ecx
e0100af8:	c1 e9 03 	shrl	$3, %ecx
e0100afb:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0100b02:	84 c9 	testb	%cl, %cl
e0100b04:	0f 85 b8 01 00 00 	jne	440 <mon_backtrace+0x2b2>
e0100b0a:	8b 43 08 	movl	8(%ebx), %eax
e0100b0d:	89 44 24 5c 	movl	%eax, 92(%esp)
e0100b11:	8d 43 0c 	leal	12(%ebx), %eax
e0100b14:	89 c1 	movl	%eax, %ecx
e0100b16:	c1 e9 03 	shrl	$3, %ecx
e0100b19:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0100b20:	84 c9 	testb	%cl, %cl
e0100b22:	0f 85 af 01 00 00 	jne	431 <mon_backtrace+0x2c7>
e0100b28:	8b 43 0c 	movl	12(%ebx), %eax
e0100b2b:	89 44 24 58 	movl	%eax, 88(%esp)
e0100b2f:	8d 43 10 	leal	16(%ebx), %eax
e0100b32:	89 c1 	movl	%eax, %ecx
e0100b34:	c1 e9 03 	shrl	$3, %ecx
e0100b37:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0100b3e:	84 c9 	testb	%cl, %cl
e0100b40:	0f 85 a6 01 00 00 	jne	422 <mon_backtrace+0x2dc>
e0100b46:	8b 73 10 	movl	16(%ebx), %esi
e0100b49:	8d 43 14 	leal	20(%ebx), %eax
e0100b4c:	89 c1 	movl	%eax, %ecx
e0100b4e:	c1 e9 03 	shrl	$3, %ecx
e0100b51:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0100b58:	84 c9 	testb	%cl, %cl
e0100b5a:	0f 85 a1 01 00 00 	jne	417 <mon_backtrace+0x2f1>
e0100b60:	8b 43 14 	movl	20(%ebx), %eax
e0100b63:	8d 4b 18 	leal	24(%ebx), %ecx
e0100b66:	89 ca 	movl	%ecx, %edx
e0100b68:	c1 ea 03 	shrl	$3, %edx
e0100b6b:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0100b72:	84 d2 	testb	%dl, %dl
e0100b74:	0f 85 9c 01 00 00 	jne	412 <mon_backtrace+0x306>
e0100b7a:	8b 4b 18 	movl	24(%ebx), %ecx
e0100b7d:	89 4c 24 1c 	movl	%ecx, 28(%esp)
e0100b81:	89 44 24 18 	movl	%eax, 24(%esp)
e0100b85:	89 74 24 14 	movl	%esi, 20(%esp)
e0100b89:	8b 44 24 58 	movl	88(%esp), %eax
e0100b8d:	89 44 24 10 	movl	%eax, 16(%esp)
e0100b91:	8b 44 24 5c 	movl	92(%esp), %eax
e0100b95:	89 44 24 0c 	movl	%eax, 12(%esp)
e0100b99:	8b 44 24 50 	movl	80(%esp), %eax
e0100b9d:	89 44 24 08 	movl	%eax, 8(%esp)
e0100ba1:	89 5c 24 04 	movl	%ebx, 4(%esp)
e0100ba5:	c7 04 24 00 ab 10 e0 	movl	$3759188736, (%esp)
e0100bac:	e8 8f 33 00 00 	calll	13199 <cprintf>
e0100bb1:	8d 44 24 70 	leal	112(%esp), %eax
e0100bb5:	c1 e8 03 	shrl	$3, %eax
e0100bb8:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0100bbf:	84 c0 	testb	%al, %al
e0100bc1:	0f 85 64 01 00 00 	jne	356 <mon_backtrace+0x31b>
e0100bc7:	8b 44 24 70 	movl	112(%esp), %eax
e0100bcb:	89 44 24 50 	movl	%eax, 80(%esp)
e0100bcf:	8b 44 24 4c 	movl	76(%esp), %eax
e0100bd3:	c1 e8 03 	shrl	$3, %eax
e0100bd6:	0f b6 88 00 00 80 de 	movzbl	-562036736(%eax), %ecx
e0100bdd:	84 c9 	testb	%cl, %cl
e0100bdf:	0f 85 5d 01 00 00 	jne	349 <mon_backtrace+0x332>
e0100be5:	8b 4c 24 74 	movl	116(%esp), %ecx
e0100be9:	8b 44 24 48 	movl	72(%esp), %eax
e0100bed:	c1 e8 03 	shrl	$3, %eax
e0100bf0:	0f b6 90 00 00 80 de 	movzbl	-562036736(%eax), %edx
e0100bf7:	84 d2 	testb	%dl, %dl
e0100bf9:	0f 85 58 01 00 00 	jne	344 <mon_backtrace+0x347>
e0100bff:	8b 54 24 7c 	movl	124(%esp), %edx
e0100c03:	8b 44 24 44 	movl	68(%esp), %eax
e0100c07:	c1 e8 03 	shrl	$3, %eax
e0100c0a:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0100c11:	84 c0 	testb	%al, %al
e0100c13:	0f 85 53 01 00 00 	jne	339 <mon_backtrace+0x35c>
e0100c19:	8b 74 24 78 	movl	120(%esp), %esi
e0100c1d:	0f b6 87 00 00 80 de 	movzbl	-562036736(%edi), %eax
e0100c24:	84 c0 	testb	%al, %al
e0100c26:	0f 85 5d 01 00 00 	jne	349 <mon_backtrace+0x379>
e0100c2c:	8b 44 24 3c 	movl	60(%esp), %eax
e0100c30:	8b 38 	movl	(%eax), %edi
e0100c32:	8b 44 24 40 	movl	64(%esp), %eax
e0100c36:	c1 e8 03 	shrl	$3, %eax
e0100c39:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0100c40:	84 c0 	testb	%al, %al
e0100c42:	0f 85 5e 01 00 00 	jne	350 <mon_backtrace+0x396>
e0100c48:	2b bc 24 80 00 00 00 	subl	128(%esp), %edi
e0100c4f:	89 7c 24 14 	movl	%edi, 20(%esp)
e0100c53:	89 74 24 10 	movl	%esi, 16(%esp)
e0100c57:	89 54 24 0c 	movl	%edx, 12(%esp)
e0100c5b:	89 4c 24 08 	movl	%ecx, 8(%esp)
e0100c5f:	8b 44 24 50 	movl	80(%esp), %eax
e0100c63:	89 44 24 04 	movl	%eax, 4(%esp)
e0100c67:	c7 04 24 60 ab 10 e0 	movl	$3759188832, (%esp)
e0100c6e:	e8 cd 32 00 00 	calll	13005 <cprintf>
e0100c73:	89 d8 	movl	%ebx, %eax
e0100c75:	c1 e8 03 	shrl	$3, %eax
e0100c78:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0100c7f:	84 c0 	testb	%al, %al
e0100c81:	0f 85 40 01 00 00 	jne	320 <mon_backtrace+0x3b7>
e0100c87:	8b 1b 	movl	(%ebx), %ebx
e0100c89:	85 db 	testl	%ebx, %ebx
e0100c8b:	0f 85 1f fe ff ff 	jne	-481 <mon_backtrace+0xa0>
e0100c91:	e9 49 01 00 00 	jmp	329 <mon_backtrace+0x3cf>
e0100c96:	89 d1 	movl	%edx, %ecx
e0100c98:	80 e1 07 	andb	$7, %cl
e0100c9b:	80 c1 03 	addb	$3, %cl
e0100c9e:	38 c1 	cmpb	%al, %cl
e0100ca0:	0f 8c 21 fe ff ff 	jl	-479 <mon_backtrace+0xb7>
e0100ca6:	e9 77 01 00 00 	jmp	375 <mon_backtrace+0x412>
e0100cab:	8b 4c 24 3c 	movl	60(%esp), %ecx
e0100caf:	80 e1 07 	andb	$7, %cl
e0100cb2:	80 c1 03 	addb	$3, %cl
e0100cb5:	38 c1 	cmpb	%al, %cl
e0100cb7:	0f 8c 2f fe ff ff 	jl	-465 <mon_backtrace+0xdc>
e0100cbd:	e9 68 01 00 00 	jmp	360 <mon_backtrace+0x41a>
e0100cc2:	89 c2 	movl	%eax, %edx
e0100cc4:	80 e2 07 	andb	$7, %dl
e0100cc7:	80 c2 03 	addb	$3, %dl
e0100cca:	38 ca 	cmpb	%cl, %dl
e0100ccc:	0f 8c 38 fe ff ff 	jl	-456 <mon_backtrace+0xfa>
e0100cd2:	e9 5f 01 00 00 	jmp	351 <mon_backtrace+0x426>
e0100cd7:	89 c2 	movl	%eax, %edx
e0100cd9:	80 e2 07 	andb	$7, %dl
e0100cdc:	80 c2 03 	addb	$3, %dl
e0100cdf:	38 ca 	cmpb	%cl, %dl
e0100ce1:	0f 8c 41 fe ff ff 	jl	-447 <mon_backtrace+0x118>
e0100ce7:	e9 52 01 00 00 	jmp	338 <mon_backtrace+0x42e>
e0100cec:	89 c2 	movl	%eax, %edx
e0100cee:	80 e2 07 	andb	$7, %dl
e0100cf1:	80 c2 03 	addb	$3, %dl
e0100cf4:	38 ca 	cmpb	%cl, %dl
e0100cf6:	0f 8c 4a fe ff ff 	jl	-438 <mon_backtrace+0x136>
e0100cfc:	e9 45 01 00 00 	jmp	325 <mon_backtrace+0x436>
e0100d01:	89 c2 	movl	%eax, %edx
e0100d03:	80 e2 07 	andb	$7, %dl
e0100d06:	80 c2 03 	addb	$3, %dl
e0100d09:	38 ca 	cmpb	%cl, %dl
e0100d0b:	0f 8c 4f fe ff ff 	jl	-433 <mon_backtrace+0x150>
e0100d11:	e9 38 01 00 00 	jmp	312 <mon_backtrace+0x43e>
e0100d16:	88 ce 	movb	%cl, %dh
e0100d18:	80 e6 07 	andb	$7, %dh
e0100d1b:	80 c6 03 	addb	$3, %dh
e0100d1e:	38 d6 	cmpb	%dl, %dh
e0100d20:	0f 8c 54 fe ff ff 	jl	-428 <mon_backtrace+0x16a>
e0100d26:	e9 2b 01 00 00 	jmp	299 <mon_backtrace+0x446>
e0100d2b:	8d 4c 24 70 	leal	112(%esp), %ecx
e0100d2f:	80 e1 07 	andb	$7, %cl
e0100d32:	80 c1 03 	addb	$3, %cl
e0100d35:	38 c1 	cmpb	%al, %cl
e0100d37:	0f 8c 8a fe ff ff 	jl	-374 <mon_backtrace+0x1b7>
e0100d3d:	e9 1c 01 00 00 	jmp	284 <mon_backtrace+0x44e>
e0100d42:	8b 44 24 4c 	movl	76(%esp), %eax
e0100d46:	24 07 	andb	$7, %al
e0100d48:	04 03 	addb	$3, %al
e0100d4a:	38 c8 	cmpb	%cl, %al
e0100d4c:	0f 8c 93 fe ff ff 	jl	-365 <mon_backtrace+0x1d5>
e0100d52:	e9 13 01 00 00 	jmp	275 <mon_backtrace+0x45a>
e0100d57:	8b 44 24 48 	movl	72(%esp), %eax
e0100d5b:	24 07 	andb	$7, %al
e0100d5d:	04 03 	addb	$3, %al
e0100d5f:	38 d0 	cmpb	%dl, %al
e0100d61:	0f 8c 98 fe ff ff 	jl	-360 <mon_backtrace+0x1ef>
e0100d67:	e9 0a 01 00 00 	jmp	266 <mon_backtrace+0x466>
e0100d6c:	89 ce 	movl	%ecx, %esi
e0100d6e:	8b 4c 24 44 	movl	68(%esp), %ecx
e0100d72:	88 cc 	movb	%cl, %ah
e0100d74:	89 f1 	movl	%esi, %ecx
e0100d76:	80 e4 07 	andb	$7, %ah
e0100d79:	80 c4 03 	addb	$3, %ah
e0100d7c:	38 c4 	cmpb	%al, %ah
e0100d7e:	0f 8c 95 fe ff ff 	jl	-363 <mon_backtrace+0x209>
e0100d84:	e9 f9 00 00 00 	jmp	249 <mon_backtrace+0x472>
e0100d89:	89 cf 	movl	%ecx, %edi
e0100d8b:	8b 4c 24 3c 	movl	60(%esp), %ecx
e0100d8f:	88 cc 	movb	%cl, %ah
e0100d91:	89 f9 	movl	%edi, %ecx
e0100d93:	80 e4 07 	andb	$7, %ah
e0100d96:	80 c4 03 	addb	$3, %ah
e0100d99:	38 c4 	cmpb	%al, %ah
e0100d9b:	0f 8c 8b fe ff ff 	jl	-373 <mon_backtrace+0x21c>
e0100da1:	e9 e8 00 00 00 	jmp	232 <mon_backtrace+0x47e>
e0100da6:	89 4c 24 3c 	movl	%ecx, 60(%esp)
e0100daa:	8b 4c 24 40 	movl	64(%esp), %ecx
e0100dae:	88 cc 	movb	%cl, %ah
e0100db0:	8b 4c 24 3c 	movl	60(%esp), %ecx
e0100db4:	80 e4 07 	andb	$7, %ah
e0100db7:	80 c4 03 	addb	$3, %ah
e0100dba:	38 c4 	cmpb	%al, %ah
e0100dbc:	0f 8c 86 fe ff ff 	jl	-378 <mon_backtrace+0x238>
e0100dc2:	e9 d3 00 00 00 	jmp	211 <mon_backtrace+0x48a>
e0100dc7:	89 d9 	movl	%ebx, %ecx
e0100dc9:	80 e1 07 	andb	$7, %cl
e0100dcc:	80 c1 03 	addb	$3, %cl
e0100dcf:	38 c1 	cmpb	%al, %cl
e0100dd1:	0f 8c b0 fe ff ff 	jl	-336 <mon_backtrace+0x277>
e0100dd7:	89 1c 24 	movl	%ebx, (%esp)
e0100dda:	e8 b1 79 00 00 	calll	31153 <__asan_report_load4>
e0100ddf:	8b 44 24 54 	movl	84(%esp), %eax
e0100de3:	66 c7 80 02 00 80 de f8 f8 	movw	$63736, -562036734(%eax)
e0100dec:	c6 80 04 00 80 de f8 	movb	$-8, -562036732(%eax)
e0100df3:	c7 44 24 60 0e 36 e0 45 	movl	$1172321806, 96(%esp)
e0100dfb:	c7 80 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%eax)
e0100e05:	c7 80 04 00 80 de 00 00 00 00 	movl	$0, -562036732(%eax)
e0100e0f:	66 c7 80 08 00 80 de 00 00 	movw	$0, -562036728(%eax)
e0100e18:	31 c0 	xorl	%eax, %eax
e0100e1a:	8d 65 f4 	leal	-12(%ebp), %esp
e0100e1d:	5e 	popl	%esi
e0100e1e:	5f 	popl	%edi
e0100e1f:	5b 	popl	%ebx
e0100e20:	5d 	popl	%ebp
e0100e21:	c3 	retl
e0100e22:	89 14 24 	movl	%edx, (%esp)
e0100e25:	e8 66 79 00 00 	calll	31078 <__asan_report_load4>
e0100e2a:	8b 44 24 3c 	movl	60(%esp), %eax
e0100e2e:	89 04 24 	movl	%eax, (%esp)
e0100e31:	e8 5a 79 00 00 	calll	31066 <__asan_report_load4>
e0100e36:	89 04 24 	movl	%eax, (%esp)
e0100e39:	e8 52 79 00 00 	calll	31058 <__asan_report_load4>
e0100e3e:	89 04 24 	movl	%eax, (%esp)
e0100e41:	e8 4a 79 00 00 	calll	31050 <__asan_report_load4>
e0100e46:	89 04 24 	movl	%eax, (%esp)
e0100e49:	e8 42 79 00 00 	calll	31042 <__asan_report_load4>
e0100e4e:	89 04 24 	movl	%eax, (%esp)
e0100e51:	e8 3a 79 00 00 	calll	31034 <__asan_report_load4>
e0100e56:	89 0c 24 	movl	%ecx, (%esp)
e0100e59:	e8 32 79 00 00 	calll	31026 <__asan_report_load4>
e0100e5e:	8d 44 24 70 	leal	112(%esp), %eax
e0100e62:	89 04 24 	movl	%eax, (%esp)
e0100e65:	e8 26 79 00 00 	calll	31014 <__asan_report_load4>
e0100e6a:	8b 44 24 4c 	movl	76(%esp), %eax
e0100e6e:	89 04 24 	movl	%eax, (%esp)
e0100e71:	e8 1a 79 00 00 	calll	31002 <__asan_report_load4>
e0100e76:	8b 44 24 48 	movl	72(%esp), %eax
e0100e7a:	89 04 24 	movl	%eax, (%esp)
e0100e7d:	e8 0e 79 00 00 	calll	30990 <__asan_report_load4>
e0100e82:	8b 44 24 44 	movl	68(%esp), %eax
e0100e86:	89 04 24 	movl	%eax, (%esp)
e0100e89:	e8 02 79 00 00 	calll	30978 <__asan_report_load4>
e0100e8e:	8b 44 24 3c 	movl	60(%esp), %eax
e0100e92:	89 04 24 	movl	%eax, (%esp)
e0100e95:	e8 f6 78 00 00 	calll	30966 <__asan_report_load4>
e0100e9a:	8b 44 24 40 	movl	64(%esp), %eax
e0100e9e:	89 04 24 	movl	%eax, (%esp)
e0100ea1:	e8 ea 78 00 00 	calll	30954 <__asan_report_load4>
e0100ea6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e0100eb0 mon_timer_start:
e0100eb0:	55 	pushl	%ebp
e0100eb1:	89 e5 	movl	%esp, %ebp
e0100eb3:	83 ec 08 	subl	$8, %esp
e0100eb6:	e8 c5 73 00 00 	calll	29637 <timer_start>
e0100ebb:	31 c0 	xorl	%eax, %eax
e0100ebd:	83 c4 08 	addl	$8, %esp
e0100ec0:	5d 	popl	%ebp
e0100ec1:	c3 	retl
e0100ec2:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100ecc:	0f 1f 40 00 	nopl	(%eax)

00000000e0100ed0 mon_timer_stop:
e0100ed0:	55 	pushl	%ebp
e0100ed1:	89 e5 	movl	%esp, %ebp
e0100ed3:	83 ec 08 	subl	$8, %esp
e0100ed6:	e8 c5 73 00 00 	calll	29637 <timer_stop>
e0100edb:	31 c0 	xorl	%eax, %eax
e0100edd:	83 c4 08 	addl	$8, %esp
e0100ee0:	5d 	popl	%ebp
e0100ee1:	c3 	retl
e0100ee2:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0100eec:	0f 1f 40 00 	nopl	(%eax)

00000000e0100ef0 mon_pplist:
e0100ef0:	55 	pushl	%ebp
e0100ef1:	89 e5 	movl	%esp, %ebp
e0100ef3:	53 	pushl	%ebx
e0100ef4:	57 	pushl	%edi
e0100ef5:	56 	pushl	%esi
e0100ef6:	83 ec 1c 	subl	$28, %esp
e0100ef9:	b8 b4 2f 12 e0 	movl	$3759288244, %eax
e0100efe:	c1 e8 03 	shrl	$3, %eax
e0100f01:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0100f07:	84 c0 	testb	%al, %al
e0100f09:	0f 85 61 01 00 00 	jne	353 <mon_pplist+0x180>
e0100f0f:	83 3d b4 2f 12 e0 00 	cmpl	$0, -535679052
e0100f16:	0f 84 4a 01 00 00 	je	330 <mon_pplist+0x176>
e0100f1c:	bb 01 00 00 00 	movl	$1, %ebx
e0100f21:	bf bc 2f 12 e0 	movl	$3759288252, %edi
e0100f26:	c1 ef 03 	shrl	$3, %edi
e0100f29:	be b4 2f 12 e0 	movl	$3759288244, %esi
e0100f2e:	c1 ee 03 	shrl	$3, %esi
e0100f31:	89 7d ec 	movl	%edi, -20(%ebp)
e0100f34:	89 75 e8 	movl	%esi, -24(%ebp)
e0100f37:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0100f40:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0100f46:	84 c0 	testb	%al, %al
e0100f48:	0f 85 be 00 00 00 	jne	190 <mon_pplist+0x11c>
e0100f4e:	a1 bc 2f 12 e0 	movl	3759288252, %eax
e0100f53:	8d 4c d8 f8 	leal	-8(%eax,%ebx,8), %ecx
e0100f57:	e8 64 01 00 00 	calll	356 <is_page_free>
e0100f5c:	89 45 f0 	movl	%eax, -16(%ebp)
e0100f5f:	89 5c 24 04 	movl	%ebx, 4(%esp)
e0100f63:	c7 04 24 a0 ab 10 e0 	movl	$3759188896, (%esp)
e0100f6a:	e8 d1 2f 00 00 	calll	12241 <cprintf>
e0100f6f:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e0100f75:	84 c0 	testb	%al, %al
e0100f77:	0f 85 a4 00 00 00 	jne	164 <mon_pplist+0x131>
e0100f7d:	8b 35 b4 2f 12 e0 	movl	-535679052, %esi
e0100f83:	39 f3 	cmpl	%esi, %ebx
e0100f85:	73 50 	jae	80 <mon_pplist+0xe7>
e0100f87:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0100f8d:	84 c0 	testb	%al, %al
e0100f8f:	0f 85 b2 00 00 00 	jne	178 <mon_pplist+0x157>
e0100f95:	a1 bc 2f 12 e0 	movl	3759288252, %eax
e0100f9a:	8d 3c d8 	leal	(%eax,%ebx,8), %edi
e0100f9d:	89 f9 	movl	%edi, %ecx
e0100f9f:	e8 1c 01 00 00 	calll	284 <is_page_free>
e0100fa4:	3b 45 f0 	cmpl	-16(%ebp), %eax
e0100fa7:	75 2b 	jne	43 <mon_pplist+0xe4>
e0100fa9:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0100fb0:	89 f9 	movl	%edi, %ecx
e0100fb2:	e8 09 01 00 00 	calll	265 <is_page_free>
e0100fb7:	3b 45 f0 	cmpl	-16(%ebp), %eax
e0100fba:	75 08 	jne	8 <mon_pplist+0xd4>
e0100fbc:	43 	incl	%ebx
e0100fbd:	83 c7 08 	addl	$8, %edi
e0100fc0:	39 f3 	cmpl	%esi, %ebx
e0100fc2:	72 ec 	jb	-20 <mon_pplist+0xc0>
e0100fc4:	89 5c 24 04 	movl	%ebx, 4(%esp)
e0100fc8:	c7 04 24 e0 ab 10 e0 	movl	$3759188960, (%esp)
e0100fcf:	e8 6c 2f 00 00 	calll	12140 <cprintf>
e0100fd4:	8b 7d ec 	movl	-20(%ebp), %edi
e0100fd7:	83 7d f0 00 	cmpl	$0, -16(%ebp)
e0100fdb:	b8 60 ac 10 e0 	movl	$3759189088, %eax
e0100fe0:	b9 20 ac 10 e0 	movl	$3759189024, %ecx
e0100fe5:	0f 44 c1 	cmovel	%ecx, %eax
e0100fe8:	89 04 24 	movl	%eax, (%esp)
e0100feb:	e8 50 2f 00 00 	calll	12112 <cprintf>
e0100ff0:	8b 75 e8 	movl	-24(%ebp), %esi
e0100ff3:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e0100ff9:	84 c0 	testb	%al, %al
e0100ffb:	75 39 	jne	57 <mon_pplist+0x146>
e0100ffd:	43 	incl	%ebx
e0100ffe:	3b 1d b4 2f 12 e0 	cmpl	-535679052, %ebx
e0101004:	0f 86 36 ff ff ff 	jbe	-202 <mon_pplist+0x50>
e010100a:	eb 5a 	jmp	90 <mon_pplist+0x176>
e010100c:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e0101011:	80 e1 07 	andb	$7, %cl
e0101014:	80 c1 03 	addb	$3, %cl
e0101017:	38 c1 	cmpb	%al, %cl
e0101019:	0f 8c 2f ff ff ff 	jl	-209 <mon_pplist+0x5e>
e010101f:	eb 6e 	jmp	110 <mon_pplist+0x19f>
e0101021:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101026:	80 e1 07 	andb	$7, %cl
e0101029:	80 c1 03 	addb	$3, %cl
e010102c:	38 c1 	cmpb	%al, %cl
e010102e:	0f 8c 49 ff ff ff 	jl	-183 <mon_pplist+0x8d>
e0101034:	eb 65 	jmp	101 <mon_pplist+0x1ab>
e0101036:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e010103b:	80 e1 07 	andb	$7, %cl
e010103e:	80 c1 03 	addb	$3, %cl
e0101041:	38 c1 	cmpb	%al, %cl
e0101043:	7c b8 	jl	-72 <mon_pplist+0x10d>
e0101045:	eb 60 	jmp	96 <mon_pplist+0x1b7>
e0101047:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e010104c:	80 e1 07 	andb	$7, %cl
e010104f:	80 c1 03 	addb	$3, %cl
e0101052:	38 c1 	cmpb	%al, %cl
e0101054:	0f 8c 3b ff ff ff 	jl	-197 <mon_pplist+0xa5>
e010105a:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0101061:	e8 2a 77 00 00 	calll	30506 <__asan_report_load4>
e0101066:	31 c0 	xorl	%eax, %eax
e0101068:	83 c4 1c 	addl	$28, %esp
e010106b:	5e 	popl	%esi
e010106c:	5f 	popl	%edi
e010106d:	5b 	popl	%ebx
e010106e:	5d 	popl	%ebp
e010106f:	c3 	retl
e0101070:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101075:	80 e1 07 	andb	$7, %cl
e0101078:	80 c1 03 	addb	$3, %cl
e010107b:	38 c1 	cmpb	%al, %cl
e010107d:	0f 8c 8c fe ff ff 	jl	-372 <mon_pplist+0x1f>
e0101083:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e010108a:	e8 01 77 00 00 	calll	30465 <__asan_report_load4>
e010108f:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0101096:	e8 f5 76 00 00 	calll	30453 <__asan_report_load4>
e010109b:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e01010a2:	e8 e9 76 00 00 	calll	30441 <__asan_report_load4>
e01010a7:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e01010ae:	e8 dd 76 00 00 	calll	30429 <__asan_report_load4>
e01010b3:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01010bd:	0f 1f 00 	nopl	(%eax)

00000000e01010c0 is_page_free:
e01010c0:	55 	pushl	%ebp
e01010c1:	89 e5 	movl	%esp, %ebp
e01010c3:	83 ec 08 	subl	$8, %esp
e01010c6:	89 c8 	movl	%ecx, %eax
e01010c8:	c1 e8 03 	shrl	$3, %eax
e01010cb:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01010d1:	84 c0 	testb	%al, %al
e01010d3:	75 2b 	jne	43 <is_page_free+0x40>
e01010d5:	31 c0 	xorl	%eax, %eax
e01010d7:	83 39 00 	cmpl	$0, (%ecx)
e01010da:	75 1f 	jne	31 <is_page_free+0x3b>
e01010dc:	b8 b8 2f 12 e0 	movl	$3759288248, %eax
e01010e1:	c1 e8 03 	shrl	$3, %eax
e01010e4:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01010ea:	84 c0 	testb	%al, %al
e01010ec:	75 26 	jne	38 <is_page_free+0x54>
e01010ee:	31 c0 	xorl	%eax, %eax
e01010f0:	39 0d b8 2f 12 e0 	cmpl	%ecx, -535679048
e01010f6:	0f 95 c0 	setne	%al
e01010f9:	f7 d8 	negl	%eax
e01010fb:	83 c4 08 	addl	$8, %esp
e01010fe:	5d 	popl	%ebp
e01010ff:	c3 	retl
e0101100:	89 ca 	movl	%ecx, %edx
e0101102:	80 e2 07 	andb	$7, %dl
e0101105:	80 c2 03 	addb	$3, %dl
e0101108:	38 c2 	cmpb	%al, %dl
e010110a:	7c c9 	jl	-55 <is_page_free+0x15>
e010110c:	89 0c 24 	movl	%ecx, (%esp)
e010110f:	e8 7c 76 00 00 	calll	30332 <__asan_report_load4>
e0101114:	ba b8 2f 12 e0 	movl	$3759288248, %edx
e0101119:	80 e2 07 	andb	$7, %dl
e010111c:	80 c2 03 	addb	$3, %dl
e010111f:	38 c2 	cmpb	%al, %dl
e0101121:	7c cb 	jl	-53 <is_page_free+0x2e>
e0101123:	c7 04 24 b8 2f 12 e0 	movl	$3759288248, (%esp)
e010112a:	e8 61 76 00 00 	calll	30305 <__asan_report_load4>
e010112f:	90 	nop

00000000e0101130 monitor:
e0101130:	55 	pushl	%ebp
e0101131:	89 e5 	movl	%esp, %ebp
e0101133:	56 	pushl	%esi
e0101134:	50 	pushl	%eax
e0101135:	8b 75 08 	movl	8(%ebp), %esi
e0101138:	c7 04 24 a0 ac 10 e0 	movl	$3759189152, (%esp)
e010113f:	e8 fc 2d 00 00 	calll	11772 <cprintf>
e0101144:	c7 04 24 00 ad 10 e0 	movl	$3759189248, (%esp)
e010114b:	e8 f0 2d 00 00 	calll	11760 <cprintf>
e0101150:	c7 04 24 60 ad 10 e0 	movl	$3759189344, (%esp)
e0101157:	e8 54 62 00 00 	calll	25172 <readline>
e010115c:	85 c0 	testl	%eax, %eax
e010115e:	74 f0 	je	-16 <monitor+0x20>
e0101160:	89 c1 	movl	%eax, %ecx
e0101162:	89 f2 	movl	%esi, %edx
e0101164:	e8 17 00 00 00 	calll	23 <runcmd>
e0101169:	85 c0 	testl	%eax, %eax
e010116b:	79 e3 	jns	-29 <monitor+0x20>
e010116d:	83 c4 04 	addl	$4, %esp
e0101170:	5e 	popl	%esi
e0101171:	5d 	popl	%ebp
e0101172:	c3 	retl
e0101173:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010117d:	0f 1f 00 	nopl	(%eax)

00000000e0101180 runcmd:
e0101180:	55 	pushl	%ebp
e0101181:	89 e5 	movl	%esp, %ebp
e0101183:	53 	pushl	%ebx
e0101184:	57 	pushl	%edi
e0101185:	56 	pushl	%esi
e0101186:	83 e4 e0 	andl	$-32, %esp
e0101189:	83 ec 60 	subl	$96, %esp
e010118c:	89 e6 	movl	%esp, %esi
e010118e:	89 56 38 	movl	%edx, 56(%esi)
e0101191:	89 4e 34 	movl	%ecx, 52(%esi)
e0101194:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e010119b:	74 0f 	je	15 <runcmd+0x2c>
e010119d:	83 ec 0c 	subl	$12, %esp
e01011a0:	6a 70 	pushl	$112
e01011a2:	e8 39 78 00 00 	calll	30777 <__asan_stack_malloc_1>
e01011a7:	83 c4 10 	addl	$16, %esp
e01011aa:	eb 02 	jmp	2 <runcmd+0x2e>
e01011ac:	31 c0 	xorl	%eax, %eax
e01011ae:	85 c0 	testl	%eax, %eax
e01011b0:	89 46 28 	movl	%eax, 40(%esi)
e01011b3:	89 c1 	movl	%eax, %ecx
e01011b5:	75 0a 	jne	10 <runcmd+0x41>
e01011b7:	89 e1 	movl	%esp, %ecx
e01011b9:	83 c1 90 	addl	$-112, %ecx
e01011bc:	83 e1 e0 	andl	$-32, %ecx
e01011bf:	89 cc 	movl	%ecx, %esp
e01011c1:	89 4e 3c 	movl	%ecx, 60(%esi)
e01011c4:	8d 59 10 	leal	16(%ecx), %ebx
e01011c7:	c7 01 b3 8a b5 41 	movl	$1102416563, (%ecx)
e01011cd:	c7 41 04 db a1 10 e0 	movl	$3759186395, 4(%ecx)
e01011d4:	c7 41 08 80 11 10 e0 	movl	$3759149440, 8(%ecx)
e01011db:	89 ca 	movl	%ecx, %edx
e01011dd:	c1 ea 03 	shrl	$3, %edx
e01011e0:	c7 82 00 00 80 de f1 f1 f8 f8 	movl	$4177064433, -562036736(%edx)
e01011ea:	c7 82 04 00 80 de f8 f8 f8 f8 	movl	$4177066232, -562036732(%edx)
e01011f4:	c7 82 08 00 80 de f8 f8 f3 f3 	movl	$4092852472, -562036728(%edx)
e01011fe:	66 c7 82 0c 00 80 de f3 f3 	movw	$62451, -562036724(%edx)
e0101207:	c7 82 02 00 80 de 00 00 00 00 	movl	$0, -562036734(%edx)
e0101211:	c7 82 06 00 80 de 00 00 00 00 	movl	$0, -562036730(%edx)
e010121b:	89 d8 	movl	%ebx, %eax
e010121d:	c1 e8 03 	shrl	$3, %eax
e0101220:	89 46 30 	movl	%eax, 48(%esi)
e0101223:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0101229:	84 c0 	testb	%al, %al
e010122b:	89 56 1c 	movl	%edx, 28(%esi)
e010122e:	0f 85 cd 03 00 00 	jne	973 <runcmd+0x481>
e0101234:	89 df 	movl	%ebx, %edi
e0101236:	c7 03 00 00 00 00 	movl	$0, (%ebx)
e010123c:	8b 5e 34 	movl	52(%esi), %ebx
e010123f:	89 d8 	movl	%ebx, %eax
e0101241:	c1 e8 03 	shrl	$3, %eax
e0101244:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010124a:	84 c0 	testb	%al, %al
e010124c:	0f 85 d2 03 00 00 	jne	978 <runcmd+0x4a4>
e0101252:	8a 03 	movb	(%ebx), %al
e0101254:	84 c0 	testb	%al, %al
e0101256:	0f 84 f0 01 00 00 	je	496 <runcmd+0x2cc>
e010125c:	89 4e 2c 	movl	%ecx, 44(%esi)
e010125f:	c7 46 24 00 00 00 00 	movl	$0, 36(%esi)
e0101266:	8b 56 34 	movl	52(%esi), %edx
e0101269:	89 fb 	movl	%edi, %ebx
e010126b:	89 7e 20 	movl	%edi, 32(%esi)
e010126e:	89 d3 	movl	%edx, %ebx
e0101270:	8d 7a 01 	leal	1(%edx), %edi
e0101273:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010127d:	0f 1f 00 	nopl	(%eax)
e0101280:	83 ec 08 	subl	$8, %esp
e0101283:	0f be c0 	movsbl	%al, %eax
e0101286:	50 	pushl	%eax
e0101287:	68 c0 b0 10 e0 	pushl	$3759190208
e010128c:	e8 0f 67 00 00 	calll	26383 <strchr>
e0101291:	83 c4 10 	addl	$16, %esp
e0101294:	85 c0 	testl	%eax, %eax
e0101296:	74 58 	je	88 <runcmd+0x170>
e0101298:	89 d8 	movl	%ebx, %eax
e010129a:	c1 e8 03 	shrl	$3, %eax
e010129d:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01012a4:	84 c0 	testb	%al, %al
e01012a6:	75 21 	jne	33 <runcmd+0x149>
e01012a8:	c6 03 00 	movb	$0, (%ebx)
e01012ab:	43 	incl	%ebx
e01012ac:	89 d8 	movl	%ebx, %eax
e01012ae:	c1 e8 03 	shrl	$3, %eax
e01012b1:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01012b8:	84 c0 	testb	%al, %al
e01012ba:	75 1b 	jne	27 <runcmd+0x157>
e01012bc:	0f b6 03 	movzbl	(%ebx), %eax
e01012bf:	47 	incl	%edi
e01012c0:	84 c0 	testb	%al, %al
e01012c2:	75 bc 	jne	-68 <runcmd+0x100>
e01012c4:	e9 4d 01 00 00 	jmp	333 <runcmd+0x296>
e01012c9:	89 d9 	movl	%ebx, %ecx
e01012cb:	80 e1 07 	andb	$7, %cl
e01012ce:	38 c1 	cmpb	%al, %cl
e01012d0:	7c d6 	jl	-42 <runcmd+0x128>
e01012d2:	e9 27 04 00 00 	jmp	1063 <runcmd+0x57e>
e01012d7:	89 d9 	movl	%ebx, %ecx
e01012d9:	80 e1 07 	andb	$7, %cl
e01012dc:	38 c1 	cmpb	%al, %cl
e01012de:	7c dc 	jl	-36 <runcmd+0x13c>
e01012e0:	e9 25 04 00 00 	jmp	1061 <runcmd+0x58a>
e01012e5:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01012ef:	90 	nop
e01012f0:	89 d8 	movl	%ebx, %eax
e01012f2:	c1 e8 03 	shrl	$3, %eax
e01012f5:	8a 88 00 00 80 de 	movb	-562036736(%eax), %cl
e01012fb:	84 c9 	testb	%cl, %cl
e01012fd:	0f 85 c5 00 00 00 	jne	197 <runcmd+0x248>
e0101303:	80 3b 00 	cmpb	$0, (%ebx)
e0101306:	0f 84 0a 01 00 00 	je	266 <runcmd+0x296>
e010130c:	8b 56 24 	movl	36(%esi), %edx
e010130f:	83 fa 0f 	cmpl	$15, %edx
e0101312:	0f 84 c7 02 00 00 	je	711 <runcmd+0x45f>
e0101318:	8b 4e 20 	movl	32(%esi), %ecx
e010131b:	8d 0c 91 	leal	(%ecx,%edx,4), %ecx
e010131e:	89 ca 	movl	%ecx, %edx
e0101320:	c1 ea 03 	shrl	$3, %edx
e0101323:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0101329:	84 d2 	testb	%dl, %dl
e010132b:	0f 85 a9 00 00 00 	jne	169 <runcmd+0x25a>
e0101331:	89 19 	movl	%ebx, (%ecx)
e0101333:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0101339:	84 c0 	testb	%al, %al
e010133b:	0f 85 ae 00 00 00 	jne	174 <runcmd+0x26f>
e0101341:	ff 46 24 	incl	36(%esi)
e0101344:	8a 03 	movb	(%ebx), %al
e0101346:	84 c0 	testb	%al, %al
e0101348:	8b 5e 20 	movl	32(%esi), %ebx
e010134b:	0f 84 1e 01 00 00 	je	286 <runcmd+0x2ef>
e0101351:	89 fa 	movl	%edi, %edx
e0101353:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010135d:	0f 1f 00 	nopl	(%eax)
e0101360:	89 d7 	movl	%edx, %edi
e0101362:	83 ec 08 	subl	$8, %esp
e0101365:	0f be c0 	movsbl	%al, %eax
e0101368:	50 	pushl	%eax
e0101369:	68 c0 b0 10 e0 	pushl	$3759190208
e010136e:	e8 2d 66 00 00 	calll	26157 <strchr>
e0101373:	83 c4 10 	addl	$16, %esp
e0101376:	85 c0 	testl	%eax, %eax
e0101378:	75 2d 	jne	45 <runcmd+0x227>
e010137a:	89 fa 	movl	%edi, %edx
e010137c:	89 f8 	movl	%edi, %eax
e010137e:	c1 e8 03 	shrl	$3, %eax
e0101381:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0101388:	84 c0 	testb	%al, %al
e010138a:	75 0d 	jne	13 <runcmd+0x219>
e010138c:	0f b6 02 	movzbl	(%edx), %eax
e010138f:	42 	incl	%edx
e0101390:	84 c0 	testb	%al, %al
e0101392:	75 cc 	jne	-52 <runcmd+0x1e0>
e0101394:	e9 d6 00 00 00 	jmp	214 <runcmd+0x2ef>
e0101399:	89 d1 	movl	%edx, %ecx
e010139b:	80 e1 07 	andb	$7, %cl
e010139e:	38 c1 	cmpb	%al, %cl
e01013a0:	7c ea 	jl	-22 <runcmd+0x20c>
e01013a2:	e9 6f 03 00 00 	jmp	879 <runcmd+0x596>
e01013a7:	89 fa 	movl	%edi, %edx
e01013a9:	4a 	decl	%edx
e01013aa:	89 d0 	movl	%edx, %eax
e01013ac:	c1 e8 03 	shrl	$3, %eax
e01013af:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01013b5:	84 c0 	testb	%al, %al
e01013b7:	75 48 	jne	72 <runcmd+0x281>
e01013b9:	8a 02 	movb	(%edx), %al
e01013bb:	84 c0 	testb	%al, %al
e01013bd:	0f 85 ab fe ff ff 	jne	-341 <runcmd+0xee>
e01013c3:	e9 a7 00 00 00 	jmp	167 <runcmd+0x2ef>
e01013c8:	89 da 	movl	%ebx, %edx
e01013ca:	80 e2 07 	andb	$7, %dl
e01013cd:	38 ca 	cmpb	%cl, %dl
e01013cf:	0f 8c 2e ff ff ff 	jl	-210 <runcmd+0x183>
e01013d5:	e9 18 03 00 00 	jmp	792 <runcmd+0x572>
e01013da:	88 ce 	movb	%cl, %dh
e01013dc:	80 e6 07 	andb	$7, %dh
e01013df:	80 c6 03 	addb	$3, %dh
e01013e2:	38 d6 	cmpb	%dl, %dh
e01013e4:	0f 8c 47 ff ff ff 	jl	-185 <runcmd+0x1b1>
e01013ea:	e9 eb 02 00 00 	jmp	747 <runcmd+0x55a>
e01013ef:	89 d9 	movl	%ebx, %ecx
e01013f1:	80 e1 07 	andb	$7, %cl
e01013f4:	38 c1 	cmpb	%al, %cl
e01013f6:	0f 8c 45 ff ff ff 	jl	-187 <runcmd+0x1c1>
e01013fc:	e9 e5 02 00 00 	jmp	741 <runcmd+0x566>
e0101401:	89 d1 	movl	%edx, %ecx
e0101403:	80 e1 07 	andb	$7, %cl
e0101406:	38 c1 	cmpb	%al, %cl
e0101408:	7c af 	jl	-81 <runcmd+0x239>
e010140a:	83 ec 0c 	subl	$12, %esp
e010140d:	52 	pushl	%edx
e010140e:	e8 dd 72 00 00 	calll	29405 <__asan_report_load1>
e0101413:	83 c4 10 	addl	$16, %esp
e0101416:	8b 5e 20 	movl	32(%esi), %ebx
e0101419:	8b 56 24 	movl	36(%esi), %edx
e010141c:	8d 04 93 	leal	(%ebx,%edx,4), %eax
e010141f:	89 c1 	movl	%eax, %ecx
e0101421:	c1 e9 03 	shrl	$3, %ecx
e0101424:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010142a:	84 c9 	testb	%cl, %cl
e010142c:	0f 85 2e 02 00 00 	jne	558 <runcmd+0x4e0>
e0101432:	c7 00 00 00 00 00 	movl	$0, (%eax)
e0101438:	85 d2 	testl	%edx, %edx
e010143a:	8b 56 1c 	movl	28(%esi), %edx
e010143d:	75 4f 	jne	79 <runcmd+0x30e>
e010143f:	31 c0 	xorl	%eax, %eax
e0101441:	8b 4e 2c 	movl	44(%esi), %ecx
e0101444:	8b 7e 28 	movl	40(%esi), %edi
e0101447:	e9 16 01 00 00 	jmp	278 <runcmd+0x3e2>
e010144c:	8b 46 30 	movl	48(%esi), %eax
e010144f:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0101455:	84 c0 	testb	%al, %al
e0101457:	89 fb 	movl	%edi, %ebx
e0101459:	0f 85 20 02 00 00 	jne	544 <runcmd+0x4ff>
e010145f:	c7 03 00 00 00 00 	movl	$0, (%ebx)
e0101465:	31 c0 	xorl	%eax, %eax
e0101467:	8b 7e 28 	movl	40(%esi), %edi
e010146a:	e9 f3 00 00 00 	jmp	243 <runcmd+0x3e2>
e010146f:	8b 46 24 	movl	36(%esi), %eax
e0101472:	8d 04 83 	leal	(%ebx,%eax,4), %eax
e0101475:	89 c1 	movl	%eax, %ecx
e0101477:	c1 e9 03 	shrl	$3, %ecx
e010147a:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101480:	84 c9 	testb	%cl, %cl
e0101482:	0f 85 36 02 00 00 	jne	566 <runcmd+0x53e>
e0101488:	c7 00 00 00 00 00 	movl	$0, (%eax)
e010148e:	8b 46 30 	movl	48(%esi), %eax
e0101491:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0101497:	84 c0 	testb	%al, %al
e0101499:	0f 85 a5 01 00 00 	jne	421 <runcmd+0x4c4>
e010149f:	8b 03 	movl	(%ebx), %eax
e01014a1:	31 ff 	xorl	%edi, %edi
e01014a3:	bb c8 a7 10 e0 	movl	$3759187912, %ebx
e01014a8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e01014b0:	8d 4b f8 	leal	-8(%ebx), %ecx
e01014b3:	89 ca 	movl	%ecx, %edx
e01014b5:	c1 ea 03 	shrl	$3, %edx
e01014b8:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e01014bf:	84 d2 	testb	%dl, %dl
e01014c1:	75 30 	jne	48 <runcmd+0x373>
e01014c3:	83 ec 08 	subl	$8, %esp
e01014c6:	ff 31 	pushl	(%ecx)
e01014c8:	50 	pushl	%eax
e01014c9:	e8 42 63 00 00 	calll	25410 <strcmp>
e01014ce:	83 c4 10 	addl	$16, %esp
e01014d1:	85 c0 	testl	%eax, %eax
e01014d3:	74 4a 	je	74 <runcmd+0x39f>
e01014d5:	8b 46 30 	movl	48(%esi), %eax
e01014d8:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01014df:	84 c0 	testb	%al, %al
e01014e1:	75 21 	jne	33 <runcmd+0x384>
e01014e3:	47 	incl	%edi
e01014e4:	8b 46 20 	movl	32(%esi), %eax
e01014e7:	8b 00 	movl	(%eax), %eax
e01014e9:	83 c3 0c 	addl	$12, %ebx
e01014ec:	83 ff 06 	cmpl	$6, %edi
e01014ef:	72 bf 	jb	-65 <runcmd+0x330>
e01014f1:	eb 53 	jmp	83 <runcmd+0x3c6>
e01014f3:	88 ce 	movb	%cl, %dh
e01014f5:	80 e6 07 	andb	$7, %dh
e01014f8:	80 c6 03 	addb	$3, %dh
e01014fb:	38 d6 	cmpb	%dl, %dh
e01014fd:	7c c4 	jl	-60 <runcmd+0x343>
e01014ff:	e9 1e 02 00 00 	jmp	542 <runcmd+0x5a2>
e0101504:	8b 4e 20 	movl	32(%esi), %ecx
e0101507:	80 e1 07 	andb	$7, %cl
e010150a:	80 c1 03 	addb	$3, %cl
e010150d:	38 c1 	cmpb	%al, %cl
e010150f:	7c d2 	jl	-46 <runcmd+0x363>
e0101511:	83 ec 0c 	subl	$12, %esp
e0101514:	ff 76 20 	pushl	32(%esi)
e0101517:	e8 74 72 00 00 	calll	29300 <__asan_report_load4>
e010151c:	83 c4 10 	addl	$16, %esp
e010151f:	89 d8 	movl	%ebx, %eax
e0101521:	c1 e8 03 	shrl	$3, %eax
e0101524:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010152a:	84 c0 	testb	%al, %al
e010152c:	8b 56 24 	movl	36(%esi), %edx
e010152f:	0f 85 6d 01 00 00 	jne	365 <runcmd+0x522>
e0101535:	83 ec 04 	subl	$4, %esp
e0101538:	ff 76 38 	pushl	56(%esi)
e010153b:	ff 76 20 	pushl	32(%esi)
e010153e:	52 	pushl	%edx
e010153f:	ff 13 	calll	*(%ebx)
e0101541:	83 c4 10 	addl	$16, %esp
e0101544:	eb 13 	jmp	19 <runcmd+0x3d9>
e0101546:	83 ec 08 	subl	$8, %esp
e0101549:	50 	pushl	%eax
e010154a:	68 40 b1 10 e0 	pushl	$3759190336
e010154f:	e8 ec 29 00 00 	calll	10732 <cprintf>
e0101554:	83 c4 10 	addl	$16, %esp
e0101557:	31 c0 	xorl	%eax, %eax
e0101559:	8b 7e 28 	movl	40(%esi), %edi
e010155c:	8b 4e 2c 	movl	44(%esi), %ecx
e010155f:	8b 56 1c 	movl	28(%esi), %edx
e0101562:	c7 82 02 00 80 de f8 f8 f8 f8 	movl	$4177066232, -562036734(%edx)
e010156c:	c7 82 06 00 80 de f8 f8 f8 f8 	movl	$4177066232, -562036730(%edx)
e0101576:	c7 01 0e 36 e0 45 	movl	$1172321806, (%ecx)
e010157c:	85 ff 	testl	%edi, %edi
e010157e:	74 30 	je	48 <runcmd+0x430>
e0101580:	c7 82 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edx)
e010158a:	c7 82 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edx)
e0101594:	c7 82 08 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036728(%edx)
e010159e:	c7 82 0c 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036724(%edx)
e01015a8:	8b 4f 7c 	movl	124(%edi), %ecx
e01015ab:	c6 01 00 	movb	$0, (%ecx)
e01015ae:	eb 27 	jmp	39 <runcmd+0x457>
e01015b0:	c7 82 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edx)
e01015ba:	c7 82 04 00 80 de 00 00 00 00 	movl	$0, -562036732(%edx)
e01015c4:	c7 82 08 00 80 de 00 00 00 00 	movl	$0, -562036728(%edx)
e01015ce:	66 c7 82 0c 00 80 de 00 00 	movw	$0, -562036724(%edx)
e01015d7:	8d 65 f4 	leal	-12(%ebp), %esp
e01015da:	5e 	popl	%esi
e01015db:	5f 	popl	%edi
e01015dc:	5b 	popl	%ebx
e01015dd:	5d 	popl	%ebp
e01015de:	c3 	retl
e01015df:	83 ec 08 	subl	$8, %esp
e01015e2:	6a 10 	pushl	$16
e01015e4:	68 00 b1 10 e0 	pushl	$3759190272
e01015e9:	e8 52 29 00 00 	calll	10578 <cprintf>
e01015ee:	83 c4 10 	addl	$16, %esp
e01015f1:	31 c0 	xorl	%eax, %eax
e01015f3:	8b 4e 2c 	movl	44(%esi), %ecx
e01015f6:	8b 56 1c 	movl	28(%esi), %edx
e01015f9:	8b 7e 28 	movl	40(%esi), %edi
e01015fc:	e9 61 ff ff ff 	jmp	-159 <runcmd+0x3e2>
e0101601:	89 ca 	movl	%ecx, %edx
e0101603:	89 d9 	movl	%ebx, %ecx
e0101605:	80 e1 07 	andb	$7, %cl
e0101608:	80 c1 03 	addb	$3, %cl
e010160b:	38 c1 	cmpb	%al, %cl
e010160d:	89 d1 	movl	%edx, %ecx
e010160f:	8b 56 1c 	movl	28(%esi), %edx
e0101612:	0f 8c 1c fc ff ff 	jl	-996 <runcmd+0xb4>
e0101618:	83 ec 0c 	subl	$12, %esp
e010161b:	53 	pushl	%ebx
e010161c:	e8 8f 71 00 00 	calll	29071 <__asan_report_store4>
e0101621:	83 c4 10 	addl	$16, %esp
e0101624:	89 ca 	movl	%ecx, %edx
e0101626:	89 d9 	movl	%ebx, %ecx
e0101628:	80 e1 07 	andb	$7, %cl
e010162b:	38 c1 	cmpb	%al, %cl
e010162d:	89 d1 	movl	%edx, %ecx
e010162f:	8b 56 1c 	movl	28(%esi), %edx
e0101632:	0f 8c 1a fc ff ff 	jl	-998 <runcmd+0xd2>
e0101638:	83 ec 0c 	subl	$12, %esp
e010163b:	53 	pushl	%ebx
e010163c:	e8 af 70 00 00 	calll	28847 <__asan_report_load1>
e0101641:	83 c4 10 	addl	$16, %esp
e0101644:	89 d9 	movl	%ebx, %ecx
e0101646:	80 e1 07 	andb	$7, %cl
e0101649:	80 c1 03 	addb	$3, %cl
e010164c:	38 c1 	cmpb	%al, %cl
e010164e:	0f 8c 4b fe ff ff 	jl	-437 <runcmd+0x31f>
e0101654:	83 ec 0c 	subl	$12, %esp
e0101657:	53 	pushl	%ebx
e0101658:	e8 33 71 00 00 	calll	28979 <__asan_report_load4>
e010165d:	83 c4 10 	addl	$16, %esp
e0101660:	89 c2 	movl	%eax, %edx
e0101662:	80 e2 07 	andb	$7, %dl
e0101665:	80 c2 03 	addb	$3, %dl
e0101668:	38 ca 	cmpb	%cl, %dl
e010166a:	8b 56 24 	movl	36(%esi), %edx
e010166d:	0f 8c bf fd ff ff 	jl	-577 <runcmd+0x2b2>
e0101673:	83 ec 0c 	subl	$12, %esp
e0101676:	50 	pushl	%eax
e0101677:	e8 34 71 00 00 	calll	28980 <__asan_report_store4>
e010167c:	83 c4 10 	addl	$16, %esp
e010167f:	89 ca 	movl	%ecx, %edx
e0101681:	89 d9 	movl	%ebx, %ecx
e0101683:	80 e1 07 	andb	$7, %cl
e0101686:	80 c1 03 	addb	$3, %cl
e0101689:	38 c1 	cmpb	%al, %cl
e010168b:	89 d1 	movl	%edx, %ecx
e010168d:	8b 56 1c 	movl	28(%esi), %edx
e0101690:	0f 8c c9 fd ff ff 	jl	-567 <runcmd+0x2df>
e0101696:	83 ec 0c 	subl	$12, %esp
e0101699:	53 	pushl	%ebx
e010169a:	e8 11 71 00 00 	calll	28945 <__asan_report_store4>
e010169f:	83 c4 10 	addl	$16, %esp
e01016a2:	89 d9 	movl	%ebx, %ecx
e01016a4:	80 e1 07 	andb	$7, %cl
e01016a7:	80 c1 03 	addb	$3, %cl
e01016aa:	38 c1 	cmpb	%al, %cl
e01016ac:	0f 8c 83 fe ff ff 	jl	-381 <runcmd+0x3b5>
e01016b2:	83 ec 0c 	subl	$12, %esp
e01016b5:	53 	pushl	%ebx
e01016b6:	e8 d5 70 00 00 	calll	28885 <__asan_report_load4>
e01016bb:	83 c4 10 	addl	$16, %esp
e01016be:	89 c2 	movl	%eax, %edx
e01016c0:	80 e2 07 	andb	$7, %dl
e01016c3:	80 c2 03 	addb	$3, %dl
e01016c6:	38 ca 	cmpb	%cl, %dl
e01016c8:	0f 8c ba fd ff ff 	jl	-582 <runcmd+0x308>
e01016ce:	83 ec 0c 	subl	$12, %esp
e01016d1:	50 	pushl	%eax
e01016d2:	e8 d9 70 00 00 	calll	28889 <__asan_report_store4>
e01016d7:	83 c4 10 	addl	$16, %esp
e01016da:	83 ec 0c 	subl	$12, %esp
e01016dd:	51 	pushl	%ecx
e01016de:	e8 cd 70 00 00 	calll	28877 <__asan_report_store4>
e01016e3:	83 c4 10 	addl	$16, %esp
e01016e6:	83 ec 0c 	subl	$12, %esp
e01016e9:	53 	pushl	%ebx
e01016ea:	e8 01 70 00 00 	calll	28673 <__asan_report_load1>
e01016ef:	83 c4 10 	addl	$16, %esp
e01016f2:	83 ec 0c 	subl	$12, %esp
e01016f5:	53 	pushl	%ebx
e01016f6:	e8 f5 6f 00 00 	calll	28661 <__asan_report_load1>
e01016fb:	83 c4 10 	addl	$16, %esp
e01016fe:	83 ec 0c 	subl	$12, %esp
e0101701:	53 	pushl	%ebx
e0101702:	e8 29 70 00 00 	calll	28713 <__asan_report_store1>
e0101707:	83 c4 10 	addl	$16, %esp
e010170a:	83 ec 0c 	subl	$12, %esp
e010170d:	53 	pushl	%ebx
e010170e:	e8 dd 6f 00 00 	calll	28637 <__asan_report_load1>
e0101713:	83 c4 10 	addl	$16, %esp
e0101716:	83 ec 0c 	subl	$12, %esp
e0101719:	52 	pushl	%edx
e010171a:	e8 d1 6f 00 00 	calll	28625 <__asan_report_load1>
e010171f:	83 c4 10 	addl	$16, %esp
e0101722:	83 ec 0c 	subl	$12, %esp
e0101725:	51 	pushl	%ecx
e0101726:	e8 65 70 00 00 	calll	28773 <__asan_report_load4>
e010172b:	83 c4 10 	addl	$16, %esp
e010172e:	66 90 	nop

00000000e0101730 asan.module_ctor:
e0101730:	83 ec 0c 	subl	$12, %esp
e0101733:	e8 c8 75 00 00 	calll	30152 <__asan_init>
e0101738:	e8 e3 76 00 00 	calll	30435 <__asan_version_mismatch_check_v8>
e010173d:	83 ec 08 	subl	$8, %esp
e0101740:	6a 22 	pushl	$34
e0101742:	68 a0 03 12 e0 	pushl	$3759276960
e0101747:	e8 e4 75 00 00 	calll	30180 <__asan_register_globals>
e010174c:	83 c4 1c 	addl	$28, %esp
e010174f:	c3 	retl

00000000e0101750 asan.module_dtor:
e0101750:	83 ec 14 	subl	$20, %esp
e0101753:	6a 22 	pushl	$34
e0101755:	68 a0 03 12 e0 	pushl	$3759276960
e010175a:	e8 21 76 00 00 	calll	30241 <__asan_unregister_globals>
e010175f:	83 c4 1c 	addl	$28, %esp
e0101762:	c3 	retl
e0101763:	cc 	int3
e0101764:	cc 	int3
e0101765:	cc 	int3
e0101766:	cc 	int3
e0101767:	cc 	int3
e0101768:	cc 	int3
e0101769:	cc 	int3
e010176a:	cc 	int3
e010176b:	cc 	int3
e010176c:	cc 	int3
e010176d:	cc 	int3
e010176e:	cc 	int3
e010176f:	cc 	int3

00000000e0101770 mem_init:
e0101770:	55 	pushl	%ebp
e0101771:	89 e5 	movl	%esp, %ebp
e0101773:	56 	pushl	%esi
e0101774:	83 ec 14 	subl	$20, %esp
e0101777:	e8 f4 01 00 00 	calll	500 <i386_detect_memory>
e010177c:	b9 00 10 00 00 	movl	$4096, %ecx
e0101781:	e8 ea 02 00 00 	calll	746 <boot_alloc>
e0101786:	be b0 2f 12 e0 	movl	$3759288240, %esi
e010178b:	c1 ee 03 	shrl	$3, %esi
e010178e:	8a 8e 00 00 80 de 	movb	-562036736(%esi), %cl
e0101794:	84 c9 	testb	%cl, %cl
e0101796:	0f 85 fa 00 00 00 	jne	250 <mem_init+0x126>
e010179c:	a3 b0 2f 12 e0 	movl	%eax, 3759288240
e01017a1:	89 04 24 	movl	%eax, (%esp)
e01017a4:	c7 44 24 08 00 10 00 00 	movl	$4096, 8(%esp)
e01017ac:	c7 44 24 04 00 00 00 00 	movl	$0, 4(%esp)
e01017b4:	e8 57 7b 00 00 	calll	31575 <__wrap_memset>
e01017b9:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e01017bf:	84 c0 	testb	%al, %al
e01017c1:	0f 85 ee 00 00 00 	jne	238 <mem_init+0x145>
e01017c7:	be b0 2f 12 e0 	movl	$3759288240, %esi
e01017cc:	8b 15 b0 2f 12 e0 	movl	-535679056, %edx
e01017d2:	b9 9b 00 00 00 	movl	$155, %ecx
e01017d7:	e8 54 03 00 00 	calll	852 <_paddr>
e01017dc:	c1 ee 03 	shrl	$3, %esi
e01017df:	8a 8e 00 00 80 de 	movb	-562036736(%esi), %cl
e01017e5:	84 c9 	testb	%cl, %cl
e01017e7:	0f 85 e7 00 00 00 	jne	231 <mem_init+0x164>
e01017ed:	b9 f4 0d 00 00 	movl	$3572, %ecx
e01017f2:	03 0d b0 2f 12 e0 	addl	-535679056, %ecx
e01017f8:	89 ca 	movl	%ecx, %edx
e01017fa:	c1 ea 03 	shrl	$3, %edx
e01017fd:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0101803:	84 d2 	testb	%dl, %dl
e0101805:	0f 85 e8 00 00 00 	jne	232 <mem_init+0x183>
e010180b:	83 c8 05 	orl	$5, %eax
e010180e:	89 01 	movl	%eax, (%ecx)
e0101810:	b8 b4 2f 12 e0 	movl	$3759288244, %eax
e0101815:	c1 e8 03 	shrl	$3, %eax
e0101818:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010181e:	84 c0 	testb	%al, %al
e0101820:	0f 85 e5 00 00 00 	jne	229 <mem_init+0x19b>
e0101826:	8b 0d b4 2f 12 e0 	movl	-535679052, %ecx
e010182c:	c1 e1 03 	shll	$3, %ecx
e010182f:	e8 3c 02 00 00 	calll	572 <boot_alloc>
e0101834:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e0101839:	c1 e9 03 	shrl	$3, %ecx
e010183c:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101842:	84 c9 	testb	%cl, %cl
e0101844:	0f 85 e0 00 00 00 	jne	224 <mem_init+0x1ba>
e010184a:	a3 bc 2f 12 e0 	movl	%eax, 3759288252
e010184f:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101854:	c1 e9 03 	shrl	$3, %ecx
e0101857:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010185d:	84 c9 	testb	%cl, %cl
e010185f:	0f 85 e4 00 00 00 	jne	228 <mem_init+0x1d9>
e0101865:	8b 0d b4 2f 12 e0 	movl	-535679052, %ecx
e010186b:	c1 e1 03 	shll	$3, %ecx
e010186e:	89 4c 24 08 	movl	%ecx, 8(%esp)
e0101872:	89 04 24 	movl	%eax, (%esp)
e0101875:	c7 44 24 04 00 00 00 00 	movl	$0, 4(%esp)
e010187d:	e8 8e 7a 00 00 	calll	31374 <__wrap_memset>
e0101882:	e8 e9 02 00 00 	calll	745 <page_init>
e0101887:	e8 b4 05 00 00 	calll	1460 <check_page_free_list>
e010188c:	83 c4 14 	addl	$20, %esp
e010188f:	5e 	popl	%esi
e0101890:	5d 	popl	%ebp
e0101891:	e9 8a 0c 00 00 	jmp	3210 <check_page_alloc>
e0101896:	ba b0 2f 12 e0 	movl	$3759288240, %edx
e010189b:	80 e2 07 	andb	$7, %dl
e010189e:	80 c2 03 	addb	$3, %dl
e01018a1:	38 ca 	cmpb	%cl, %dl
e01018a3:	0f 8c f3 fe ff ff 	jl	-269 <mem_init+0x2c>
e01018a9:	c7 04 24 b0 2f 12 e0 	movl	$3759288240, (%esp)
e01018b0:	e8 fb 6e 00 00 	calll	28411 <__asan_report_store4>
e01018b5:	b9 b0 2f 12 e0 	movl	$3759288240, %ecx
e01018ba:	80 e1 07 	andb	$7, %cl
e01018bd:	80 c1 03 	addb	$3, %cl
e01018c0:	38 c1 	cmpb	%al, %cl
e01018c2:	0f 8c ff fe ff ff 	jl	-257 <mem_init+0x57>
e01018c8:	c7 04 24 b0 2f 12 e0 	movl	$3759288240, (%esp)
e01018cf:	e8 bc 6e 00 00 	calll	28348 <__asan_report_load4>
e01018d4:	ba b0 2f 12 e0 	movl	$3759288240, %edx
e01018d9:	80 e2 07 	andb	$7, %dl
e01018dc:	80 c2 03 	addb	$3, %dl
e01018df:	38 ca 	cmpb	%cl, %dl
e01018e1:	0f 8c 06 ff ff ff 	jl	-250 <mem_init+0x7d>
e01018e7:	c7 04 24 b0 2f 12 e0 	movl	$3759288240, (%esp)
e01018ee:	e8 9d 6e 00 00 	calll	28317 <__asan_report_load4>
e01018f3:	88 ce 	movb	%cl, %dh
e01018f5:	80 e6 07 	andb	$7, %dh
e01018f8:	80 c6 03 	addb	$3, %dh
e01018fb:	38 d6 	cmpb	%dl, %dh
e01018fd:	0f 8c 08 ff ff ff 	jl	-248 <mem_init+0x9b>
e0101903:	89 0c 24 	movl	%ecx, (%esp)
e0101906:	e8 a5 6e 00 00 	calll	28325 <__asan_report_store4>
e010190b:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101910:	80 e1 07 	andb	$7, %cl
e0101913:	80 c1 03 	addb	$3, %cl
e0101916:	38 c1 	cmpb	%al, %cl
e0101918:	0f 8c 08 ff ff ff 	jl	-248 <mem_init+0xb6>
e010191e:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e0101925:	e8 66 6e 00 00 	calll	28262 <__asan_report_load4>
e010192a:	ba bc 2f 12 e0 	movl	$3759288252, %edx
e010192f:	80 e2 07 	andb	$7, %dl
e0101932:	80 c2 03 	addb	$3, %dl
e0101935:	38 ca 	cmpb	%cl, %dl
e0101937:	0f 8c 0d ff ff ff 	jl	-243 <mem_init+0xda>
e010193d:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0101944:	e8 67 6e 00 00 	calll	28263 <__asan_report_store4>
e0101949:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e010194e:	80 e2 07 	andb	$7, %dl
e0101951:	80 c2 03 	addb	$3, %dl
e0101954:	38 ca 	cmpb	%cl, %dl
e0101956:	0f 8c 09 ff ff ff 	jl	-247 <mem_init+0xf5>
e010195c:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e0101963:	e8 28 6e 00 00 	calll	28200 <__asan_report_load4>
e0101968:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0101970 i386_detect_memory:
e0101970:	55 	pushl	%ebp
e0101971:	89 e5 	movl	%esp, %ebp
e0101973:	53 	pushl	%ebx
e0101974:	57 	pushl	%edi
e0101975:	56 	pushl	%esi
e0101976:	83 ec 0c 	subl	$12, %esp
e0101979:	b9 15 00 00 00 	movl	$21, %ecx
e010197e:	e8 1d 14 00 00 	calll	5149 <nvram_read>
e0101983:	89 c1 	movl	%eax, %ecx
e0101985:	c1 f9 1f 	sarl	$31, %ecx
e0101988:	c1 e9 1e 	shrl	$30, %ecx
e010198b:	01 c1 	addl	%eax, %ecx
e010198d:	c1 f9 02 	sarl	$2, %ecx
e0101990:	89 0d 60 1d 12 e0 	movl	%ecx, -535683744
e0101996:	b9 17 00 00 00 	movl	$23, %ecx
e010199b:	e8 00 14 00 00 	calll	5120 <nvram_read>
e01019a0:	89 c6 	movl	%eax, %esi
e01019a2:	89 c7 	movl	%eax, %edi
e01019a4:	c1 ff 1f 	sarl	$31, %edi
e01019a7:	c1 ef 1e 	shrl	$30, %edi
e01019aa:	01 c7 	addl	%eax, %edi
e01019ac:	c1 ff 02 	sarl	$2, %edi
e01019af:	b9 34 00 00 00 	movl	$52, %ecx
e01019b4:	e8 e7 13 00 00 	calll	5095 <nvram_read>
e01019b9:	85 c0 	testl	%eax, %eax
e01019bb:	74 15 	je	21 <i386_detect_memory+0x62>
e01019bd:	81 ff 01 10 00 00 	cmpl	$4097, %edi
e01019c3:	72 0d 	jb	13 <i386_detect_memory+0x62>
e01019c5:	89 c1 	movl	%eax, %ecx
e01019c7:	c1 e1 04 	shll	$4, %ecx
e01019ca:	81 c1 00 10 00 00 	addl	$4096, %ecx
e01019d0:	eb 16 	jmp	22 <i386_detect_memory+0x78>
e01019d2:	83 c6 03 	addl	$3, %esi
e01019d5:	83 fe 07 	cmpl	$7, %esi
e01019d8:	72 08 	jb	8 <i386_detect_memory+0x72>
e01019da:	8d 8f 00 01 00 00 	leal	256(%edi), %ecx
e01019e0:	eb 06 	jmp	6 <i386_detect_memory+0x78>
e01019e2:	8b 0d 60 1d 12 e0 	movl	-535683744, %ecx
e01019e8:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e01019ed:	c1 ea 03 	shrl	$3, %edx
e01019f0:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e01019f6:	84 d2 	testb	%dl, %dl
e01019f8:	75 48 	jne	72 <i386_detect_memory+0xd2>
e01019fa:	89 0d b4 2f 12 e0 	movl	%ecx, -535679052
e0101a00:	c1 e1 02 	shll	$2, %ecx
e0101a03:	81 e1 fc ff 3f 00 	andl	$4194300, %ecx
e0101a09:	8b 15 60 1d 12 e0 	movl	-535683744, %edx
e0101a0f:	c1 e2 02 	shll	$2, %edx
e0101a12:	81 e2 fc ff 3f 00 	andl	$4194300, %edx
e0101a18:	c1 e7 02 	shll	$2, %edi
e0101a1b:	81 e7 fc ff 3f 00 	andl	$4194300, %edi
e0101a21:	c1 e0 06 	shll	$6, %eax
e0101a24:	25 c0 ff 3f 00 	andl	$4194240, %eax
e0101a29:	83 ec 0c 	subl	$12, %esp
e0101a2c:	50 	pushl	%eax
e0101a2d:	57 	pushl	%edi
e0101a2e:	52 	pushl	%edx
e0101a2f:	51 	pushl	%ecx
e0101a30:	68 40 b4 10 e0 	pushl	$3759191104
e0101a35:	e8 06 25 00 00 	calll	9478 <cprintf>
e0101a3a:	83 c4 2c 	addl	$44, %esp
e0101a3d:	5e 	popl	%esi
e0101a3e:	5f 	popl	%edi
e0101a3f:	5b 	popl	%ebx
e0101a40:	5d 	popl	%ebp
e0101a41:	c3 	retl
e0101a42:	bb b4 2f 12 e0 	movl	$3759288244, %ebx
e0101a47:	80 e3 07 	andb	$7, %bl
e0101a4a:	80 c3 03 	addb	$3, %bl
e0101a4d:	38 d3 	cmpb	%dl, %bl
e0101a4f:	7c a9 	jl	-87 <i386_detect_memory+0x8a>
e0101a51:	83 ec 0c 	subl	$12, %esp
e0101a54:	68 b4 2f 12 e0 	pushl	$3759288244
e0101a59:	e8 52 6d 00 00 	calll	27986 <__asan_report_store4>
e0101a5e:	83 c4 10 	addl	$16, %esp
e0101a61:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0101a6b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0101a70 boot_alloc:
e0101a70:	55 	pushl	%ebp
e0101a71:	89 e5 	movl	%esp, %ebp
e0101a73:	57 	pushl	%edi
e0101a74:	56 	pushl	%esi
e0101a75:	89 ce 	movl	%ecx, %esi
e0101a77:	83 3d e0 1d 12 e0 00 	cmpl	$0, -535683616
e0101a7e:	75 18 	jne	24 <boot_alloc+0x28>
e0101a80:	b8 ff 4f 12 e0 	movl	$3759296511, %eax
e0101a85:	25 ff 0f 00 00 	andl	$4095, %eax
e0101a8a:	f7 d8 	negl	%eax
e0101a8c:	8d 04 05 ff 4f 12 e0 	leal	-535670785(,%eax), %eax
e0101a93:	a3 e0 1d 12 e0 	movl	%eax, 3759283680
e0101a98:	85 f6 	testl	%esi, %esi
e0101a9a:	8b 3d e0 1d 12 e0 	movl	-535683616, %edi
e0101aa0:	74 4a 	je	74 <boot_alloc+0x7c>
e0101aa2:	8d 96 ff 0f 00 00 	leal	4095(%esi), %edx
e0101aa8:	81 e2 00 f0 ff ff 	andl	$4294963200, %edx
e0101aae:	01 fa 	addl	%edi, %edx
e0101ab0:	89 15 e0 1d 12 e0 	movl	%edx, -535683616
e0101ab6:	b9 72 00 00 00 	movl	$114, %ecx
e0101abb:	e8 70 00 00 00 	calll	112 <_paddr>
e0101ac0:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101ac5:	c1 e9 03 	shrl	$3, %ecx
e0101ac8:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101ace:	84 c9 	testb	%cl, %cl
e0101ad0:	75 20 	jne	32 <boot_alloc+0x82>
e0101ad2:	8b 0d b4 2f 12 e0 	movl	-535679052, %ecx
e0101ad8:	c1 e1 0c 	shll	$12, %ecx
e0101adb:	39 c8 	cmpl	%ecx, %eax
e0101add:	77 32 	ja	50 <boot_alloc+0xa1>
e0101adf:	83 ec 08 	subl	$8, %esp
e0101ae2:	56 	pushl	%esi
e0101ae3:	57 	pushl	%edi
e0101ae4:	e8 67 7c 00 00 	calll	31847 <platform_asan_unpoison>
e0101ae9:	83 c4 10 	addl	$16, %esp
e0101aec:	89 f8 	movl	%edi, %eax
e0101aee:	5e 	popl	%esi
e0101aef:	5f 	popl	%edi
e0101af0:	5d 	popl	%ebp
e0101af1:	c3 	retl
e0101af2:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e0101af7:	80 e2 07 	andb	$7, %dl
e0101afa:	80 c2 03 	addb	$3, %dl
e0101afd:	38 ca 	cmpb	%cl, %dl
e0101aff:	7c d1 	jl	-47 <boot_alloc+0x62>
e0101b01:	83 ec 0c 	subl	$12, %esp
e0101b04:	68 b4 2f 12 e0 	pushl	$3759288244
e0101b09:	e8 82 6c 00 00 	calll	27778 <__asan_report_load4>
e0101b0e:	83 c4 10 	addl	$16, %esp
e0101b11:	e8 8a 6a 00 00 	calll	27274 <__asan_handle_no_return>
e0101b16:	83 ec 04 	subl	$4, %esp
e0101b19:	68 c0 b4 10 e0 	pushl	$3759191232
e0101b1e:	6a 73 	pushl	$115
e0101b20:	68 c0 b3 10 e0 	pushl	$3759190976
e0101b25:	e8 06 e6 ff ff 	calll	-6650 <_panic>
e0101b2a:	83 c4 04 	addl	$4, %esp
e0101b2d:	0f 1f 00 	nopl	(%eax)

00000000e0101b30 _paddr:
e0101b30:	55 	pushl	%ebp
e0101b31:	89 e5 	movl	%esp, %ebp
e0101b33:	57 	pushl	%edi
e0101b34:	56 	pushl	%esi
e0101b35:	89 d6 	movl	%edx, %esi
e0101b37:	81 fa ff ff ff df 	cmpl	$3758096383, %edx
e0101b3d:	76 0c 	jbe	12 <_paddr+0x1b>
e0101b3f:	81 c6 00 00 00 20 	addl	$536870912, %esi
e0101b45:	89 f0 	movl	%esi, %eax
e0101b47:	5e 	popl	%esi
e0101b48:	5f 	popl	%edi
e0101b49:	5d 	popl	%ebp
e0101b4a:	c3 	retl
e0101b4b:	89 cf 	movl	%ecx, %edi
e0101b4d:	e8 4e 6a 00 00 	calll	27214 <__asan_handle_no_return>
e0101b52:	56 	pushl	%esi
e0101b53:	68 00 b5 10 e0 	pushl	$3759191296
e0101b58:	57 	pushl	%edi
e0101b59:	68 c0 b3 10 e0 	pushl	$3759190976
e0101b5e:	e8 cd e5 ff ff 	calll	-6707 <_panic>
e0101b63:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0101b6d:	0f 1f 00 	nopl	(%eax)

00000000e0101b70 page_init:
e0101b70:	55 	pushl	%ebp
e0101b71:	89 e5 	movl	%esp, %ebp
e0101b73:	53 	pushl	%ebx
e0101b74:	57 	pushl	%edi
e0101b75:	56 	pushl	%esi
e0101b76:	83 ec 0c 	subl	$12, %esp
e0101b79:	b8 bc 2f 12 e0 	movl	$3759288252, %eax
e0101b7e:	c1 e8 03 	shrl	$3, %eax
e0101b81:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0101b87:	84 c0 	testb	%al, %al
e0101b89:	0f 85 05 02 00 00 	jne	517 <page_init+0x224>
e0101b8f:	a1 bc 2f 12 e0 	movl	3759288252, %eax
e0101b94:	b9 b8 2f 12 e0 	movl	$3759288248, %ecx
e0101b99:	c1 e9 03 	shrl	$3, %ecx
e0101b9c:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101ba2:	84 c9 	testb	%cl, %cl
e0101ba4:	0f 85 09 02 00 00 	jne	521 <page_init+0x243>
e0101baa:	83 c0 08 	addl	$8, %eax
e0101bad:	a3 b8 2f 12 e0 	movl	%eax, 3759288248
e0101bb2:	83 3d 60 1d 12 e0 02 	cmpl	$2, -535683744
e0101bb9:	0f 82 be 00 00 00 	jb	190 <page_init+0x10d>
e0101bbf:	b8 01 00 00 00 	movl	$1, %eax
e0101bc4:	b9 08 00 00 00 	movl	$8, %ecx
e0101bc9:	8b 15 60 1d 12 e0 	movl	-535683744, %edx
e0101bcf:	89 55 ec 	movl	%edx, -20(%ebp)
e0101bd2:	be bc 2f 12 e0 	movl	$3759288252, %esi
e0101bd7:	c1 ee 03 	shrl	$3, %esi
e0101bda:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0101be0:	0f b6 96 00 00 80 de 	movzbl	-562036736(%esi), %edx
e0101be7:	84 d2 	testb	%dl, %dl
e0101be9:	75 54 	jne	84 <page_init+0xcf>
e0101beb:	8b 1d bc 2f 12 e0 	movl	-535679044, %ebx
e0101bf1:	8d 54 0b 04 	leal	4(%ebx,%ecx), %edx
e0101bf5:	89 d7 	movl	%edx, %edi
e0101bf7:	c1 ea 03 	shrl	$3, %edx
e0101bfa:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0101c01:	84 d2 	testb	%dl, %dl
e0101c03:	75 4e 	jne	78 <page_init+0xe3>
e0101c05:	66 c7 44 0b 04 00 00 	movw	$0, 4(%ebx,%ecx)
e0101c0c:	01 cb 	addl	%ecx, %ebx
e0101c0e:	8b 3d a0 1d 12 e0 	movl	-535683680, %edi
e0101c14:	89 da 	movl	%ebx, %edx
e0101c16:	c1 ea 03 	shrl	$3, %edx
e0101c19:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0101c20:	84 d2 	testb	%dl, %dl
e0101c22:	75 45 	jne	69 <page_init+0xf9>
e0101c24:	89 3b 	movl	%edi, (%ebx)
e0101c26:	8b 15 bc 2f 12 e0 	movl	-535679044, %edx
e0101c2c:	01 ca 	addl	%ecx, %edx
e0101c2e:	89 15 a0 1d 12 e0 	movl	%edx, -535683680
e0101c34:	40 	incl	%eax
e0101c35:	83 c1 08 	addl	$8, %ecx
e0101c38:	3b 45 ec 	cmpl	-20(%ebp), %eax
e0101c3b:	72 a3 	jb	-93 <page_init+0x70>
e0101c3d:	eb 3e 	jmp	62 <page_init+0x10d>
e0101c3f:	bb bc 2f 12 e0 	movl	$3759288252, %ebx
e0101c44:	80 e3 07 	andb	$7, %bl
e0101c47:	80 c3 03 	addb	$3, %bl
e0101c4a:	38 d3 	cmpb	%dl, %bl
e0101c4c:	7c 9d 	jl	-99 <page_init+0x7b>
e0101c4e:	e9 bd 01 00 00 	jmp	445 <page_init+0x2a0>
e0101c53:	88 55 f0 	movb	%dl, -16(%ebp)
e0101c56:	89 fa 	movl	%edi, %edx
e0101c58:	88 d6 	movb	%dl, %dh
e0101c5a:	80 e6 07 	andb	$7, %dh
e0101c5d:	fe c6 	incb	%dh
e0101c5f:	3a 75 f0 	cmpb	-16(%ebp), %dh
e0101c62:	7c a1 	jl	-95 <page_init+0x95>
e0101c64:	e9 b3 01 00 00 	jmp	435 <page_init+0x2ac>
e0101c69:	88 de 	movb	%bl, %dh
e0101c6b:	80 e6 07 	andb	$7, %dh
e0101c6e:	80 c6 03 	addb	$3, %dh
e0101c71:	38 d6 	cmpb	%dl, %dh
e0101c73:	7c af 	jl	-81 <page_init+0xb4>
e0101c75:	89 1c 24 	movl	%ebx, (%esp)
e0101c78:	e8 33 6b 00 00 	calll	27443 <__asan_report_store4>
e0101c7d:	31 c9 	xorl	%ecx, %ecx
e0101c7f:	e8 ec fd ff ff 	calll	-532 <boot_alloc>
e0101c84:	b9 d9 00 00 00 	movl	$217, %ecx
e0101c89:	89 c2 	movl	%eax, %edx
e0101c8b:	e8 a0 fe ff ff 	calll	-352 <_paddr>
e0101c90:	89 c6 	movl	%eax, %esi
e0101c92:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101c97:	c1 e9 03 	shrl	$3, %ecx
e0101c9a:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101ca0:	84 c9 	testb	%cl, %cl
e0101ca2:	0f 85 2a 01 00 00 	jne	298 <page_init+0x262>
e0101ca8:	c1 ee 0c 	shrl	$12, %esi
e0101cab:	3b 35 b4 2f 12 e0 	cmpl	-535679052, %esi
e0101cb1:	0f 83 d5 00 00 00 	jae	213 <page_init+0x21c>
e0101cb7:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0101cbc:	c1 e9 03 	shrl	$3, %ecx
e0101cbf:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101cc5:	84 c9 	testb	%cl, %cl
e0101cc7:	0f 85 24 01 00 00 	jne	292 <page_init+0x281>
e0101ccd:	8b 0d b4 2f 12 e0 	movl	-535679052, %ecx
e0101cd3:	89 4d ec 	movl	%ecx, -20(%ebp)
e0101cd6:	8d 14 f5 00 00 00 00 	leal	(,%esi,8), %edx
e0101cdd:	b8 bc 2f 12 e0 	movl	$3759288252, %eax
e0101ce2:	c1 e8 03 	shrl	$3, %eax
e0101ce5:	89 45 f0 	movl	%eax, -16(%ebp)
e0101ce8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0101cf0:	8b 45 f0 	movl	-16(%ebp), %eax
e0101cf3:	0f b6 88 00 00 80 de 	movzbl	-562036736(%eax), %ecx
e0101cfa:	84 c9 	testb	%cl, %cl
e0101cfc:	75 54 	jne	84 <page_init+0x1e2>
e0101cfe:	8b 1d bc 2f 12 e0 	movl	-535679044, %ebx
e0101d04:	8d 4c 13 04 	leal	4(%ebx,%edx), %ecx
e0101d08:	89 cf 	movl	%ecx, %edi
e0101d0a:	c1 e9 03 	shrl	$3, %ecx
e0101d0d:	0f b6 81 00 00 80 de 	movzbl	-562036736(%ecx), %eax
e0101d14:	84 c0 	testb	%al, %al
e0101d16:	75 4e 	jne	78 <page_init+0x1f6>
e0101d18:	66 c7 44 13 04 00 00 	movw	$0, 4(%ebx,%edx)
e0101d1f:	01 d3 	addl	%edx, %ebx
e0101d21:	8b 3d a0 1d 12 e0 	movl	-535683680, %edi
e0101d27:	89 d9 	movl	%ebx, %ecx
e0101d29:	c1 e9 03 	shrl	$3, %ecx
e0101d2c:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0101d33:	84 c9 	testb	%cl, %cl
e0101d35:	75 41 	jne	65 <page_init+0x208>
e0101d37:	89 3b 	movl	%edi, (%ebx)
e0101d39:	8b 0d bc 2f 12 e0 	movl	-535679044, %ecx
e0101d3f:	01 d1 	addl	%edx, %ecx
e0101d41:	89 0d a0 1d 12 e0 	movl	%ecx, -535683680
e0101d47:	46 	incl	%esi
e0101d48:	83 c2 08 	addl	$8, %edx
e0101d4b:	3b 75 ec 	cmpl	-20(%ebp), %esi
e0101d4e:	72 a0 	jb	-96 <page_init+0x180>
e0101d50:	eb 3a 	jmp	58 <page_init+0x21c>
e0101d52:	bb bc 2f 12 e0 	movl	$3759288252, %ebx
e0101d57:	80 e3 07 	andb	$7, %bl
e0101d5a:	80 c3 03 	addb	$3, %bl
e0101d5d:	38 cb 	cmpb	%cl, %bl
e0101d5f:	7c 9d 	jl	-99 <page_init+0x18e>
e0101d61:	e9 be 00 00 00 	jmp	190 <page_init+0x2b4>
e0101d66:	89 f9 	movl	%edi, %ecx
e0101d68:	88 cd 	movb	%cl, %ch
e0101d6a:	80 e5 07 	andb	$7, %ch
e0101d6d:	fe c5 	incb	%ch
e0101d6f:	38 c5 	cmpb	%al, %ch
e0101d71:	7c a5 	jl	-91 <page_init+0x1a8>
e0101d73:	e9 b8 00 00 00 	jmp	184 <page_init+0x2c0>
e0101d78:	88 dd 	movb	%bl, %ch
e0101d7a:	80 e5 07 	andb	$7, %ch
e0101d7d:	80 c5 03 	addb	$3, %ch
e0101d80:	38 cd 	cmpb	%cl, %ch
e0101d82:	7c b3 	jl	-77 <page_init+0x1c7>
e0101d84:	89 1c 24 	movl	%ebx, (%esp)
e0101d87:	e8 24 6a 00 00 	calll	27172 <__asan_report_store4>
e0101d8c:	83 c4 0c 	addl	$12, %esp
e0101d8f:	5e 	popl	%esi
e0101d90:	5f 	popl	%edi
e0101d91:	5b 	popl	%ebx
e0101d92:	5d 	popl	%ebp
e0101d93:	c3 	retl
e0101d94:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e0101d99:	80 e1 07 	andb	$7, %cl
e0101d9c:	80 c1 03 	addb	$3, %cl
e0101d9f:	38 c1 	cmpb	%al, %cl
e0101da1:	0f 8c e8 fd ff ff 	jl	-536 <page_init+0x1f>
e0101da7:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0101dae:	e8 dd 69 00 00 	calll	27101 <__asan_report_load4>
e0101db3:	ba b8 2f 12 e0 	movl	$3759288248, %edx
e0101db8:	80 e2 07 	andb	$7, %dl
e0101dbb:	80 c2 03 	addb	$3, %dl
e0101dbe:	38 ca 	cmpb	%cl, %dl
e0101dc0:	0f 8c e4 fd ff ff 	jl	-540 <page_init+0x3a>
e0101dc6:	c7 04 24 b8 2f 12 e0 	movl	$3759288248, (%esp)
e0101dcd:	e8 de 69 00 00 	calll	27102 <__asan_report_store4>
e0101dd2:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e0101dd7:	80 e2 07 	andb	$7, %dl
e0101dda:	80 c2 03 	addb	$3, %dl
e0101ddd:	38 ca 	cmpb	%cl, %dl
e0101ddf:	0f 8c c3 fe ff ff 	jl	-317 <page_init+0x138>
e0101de5:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e0101dec:	e8 9f 69 00 00 	calll	27039 <__asan_report_load4>
e0101df1:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e0101df6:	80 e2 07 	andb	$7, %dl
e0101df9:	80 c2 03 	addb	$3, %dl
e0101dfc:	38 ca 	cmpb	%cl, %dl
e0101dfe:	0f 8c c9 fe ff ff 	jl	-311 <page_init+0x15d>
e0101e04:	c7 04 24 b4 2f 12 e0 	movl	$3759288244, (%esp)
e0101e0b:	e8 80 69 00 00 	calll	27008 <__asan_report_load4>
e0101e10:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0101e17:	e8 74 69 00 00 	calll	26996 <__asan_report_load4>
e0101e1c:	89 3c 24 	movl	%edi, (%esp)
e0101e1f:	e8 4c 69 00 00 	calll	26956 <__asan_report_store2>
e0101e24:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0101e2b:	e8 60 69 00 00 	calll	26976 <__asan_report_load4>
e0101e30:	89 3c 24 	movl	%edi, (%esp)
e0101e33:	e8 38 69 00 00 	calll	26936 <__asan_report_store2>
e0101e38:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0101e40 check_page_free_list:
e0101e40:	55 	pushl	%ebp
e0101e41:	89 e5 	movl	%esp, %ebp
e0101e43:	53 	pushl	%ebx
e0101e44:	57 	pushl	%edi
e0101e45:	56 	pushl	%esi
e0101e46:	83 e4 e0 	andl	$-32, %esp
e0101e49:	83 ec 60 	subl	$96, %esp
e0101e4c:	89 e6 	movl	%esp, %esi
e0101e4e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0101e55:	74 0f 	je	15 <check_page_free_list+0x26>
e0101e57:	83 ec 0c 	subl	$12, %esp
e0101e5a:	6a 50 	pushl	$80
e0101e5c:	e8 7f 6b 00 00 	calll	27519 <__asan_stack_malloc_1>
e0101e61:	83 c4 10 	addl	$16, %esp
e0101e64:	eb 02 	jmp	2 <check_page_free_list+0x28>
e0101e66:	31 c0 	xorl	%eax, %eax
e0101e68:	85 c0 	testl	%eax, %eax
e0101e6a:	89 c3 	movl	%eax, %ebx
e0101e6c:	75 0a 	jne	10 <check_page_free_list+0x38>
e0101e6e:	89 e3 	movl	%esp, %ebx
e0101e70:	83 c3 b0 	addl	$-80, %ebx
e0101e73:	83 e3 e0 	andl	$-32, %ebx
e0101e76:	89 dc 	movl	%ebx, %esp
e0101e78:	89 5e 3c 	movl	%ebx, 60(%esi)
e0101e7b:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e0101e81:	c7 43 04 a8 a3 10 e0 	movl	$3759186856, 4(%ebx)
e0101e88:	c7 43 08 40 1e 10 e0 	movl	$3759152704, 8(%ebx)
e0101e8f:	89 d9 	movl	%ebx, %ecx
e0101e91:	c1 e9 03 	shrl	$3, %ecx
e0101e94:	c7 81 00 00 80 de f1 f1 f8 f2 	movl	$4076401137, -562036736(%ecx)
e0101e9e:	c7 81 04 00 80 de f8 f2 f8 f3 	movl	$4093178616, -562036732(%ecx)
e0101ea8:	66 c7 81 08 00 80 de f3 f3 	movw	$62451, -562036728(%ecx)
e0101eb1:	83 3d a0 1d 12 e0 00 	cmpl	$0, -535683680
e0101eb8:	0f 84 0b 06 00 00 	je	1547 <check_page_free_list+0x689>
e0101ebe:	8d 53 30 	leal	48(%ebx), %edx
e0101ec1:	c6 81 02 00 80 de 04 	movb	$4, -562036734(%ecx)
e0101ec8:	c6 81 04 00 80 de 04 	movb	$4, -562036732(%ecx)
e0101ecf:	89 4e 30 	movl	%ecx, 48(%esi)
e0101ed2:	c6 81 06 00 80 de 00 	movb	$0, -562036730(%ecx)
e0101ed9:	89 d1 	movl	%edx, %ecx
e0101edb:	c1 ea 03 	shrl	$3, %edx
e0101ede:	89 56 28 	movl	%edx, 40(%esi)
e0101ee1:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0101ee7:	84 d2 	testb	%dl, %dl
e0101ee9:	89 cf 	movl	%ecx, %edi
e0101eeb:	89 4e 1c 	movl	%ecx, 28(%esi)
e0101eee:	0f 85 b9 03 00 00 	jne	953 <check_page_free_list+0x46d>
e0101ef4:	89 46 38 	movl	%eax, 56(%esi)
e0101ef7:	8d 43 10 	leal	16(%ebx), %eax
e0101efa:	89 46 2c 	movl	%eax, 44(%esi)
e0101efd:	89 01 	movl	%eax, (%ecx)
e0101eff:	8d 51 04 	leal	4(%ecx), %edx
e0101f02:	89 d7 	movl	%edx, %edi
e0101f04:	c1 ef 03 	shrl	$3, %edi
e0101f07:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0101f0d:	84 c0 	testb	%al, %al
e0101f0f:	0f 85 b8 03 00 00 	jne	952 <check_page_free_list+0x48d>
e0101f15:	89 5e 34 	movl	%ebx, 52(%esi)
e0101f18:	8d 4b 20 	leal	32(%ebx), %ecx
e0101f1b:	89 c8 	movl	%ecx, %eax
e0101f1d:	89 4e 24 	movl	%ecx, 36(%esi)
e0101f20:	89 56 20 	movl	%edx, 32(%esi)
e0101f23:	89 0a 	movl	%ecx, (%edx)
e0101f25:	8b 1d a0 1d 12 e0 	movl	-535683680, %ebx
e0101f2b:	85 db 	testl	%ebx, %ebx
e0101f2d:	75 1b 	jne	27 <check_page_free_list+0x10a>
e0101f2f:	e9 9d 00 00 00 	jmp	157 <check_page_free_list+0x191>
e0101f34:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0101f3e:	66 90 	nop
e0101f40:	8b 1b 	movl	(%ebx), %ebx
e0101f42:	85 db 	testl	%ebx, %ebx
e0101f44:	0f 84 87 00 00 00 	je	135 <check_page_free_list+0x191>
e0101f4a:	89 d9 	movl	%ebx, %ecx
e0101f4c:	e8 ef 0e 00 00 	calll	3823 <page2pa>
e0101f51:	31 c9 	xorl	%ecx, %ecx
e0101f53:	3d ff ff 3f 00 	cmpl	$4194303, %eax
e0101f58:	0f 97 c1 	seta	%cl
e0101f5b:	8b 46 1c 	movl	28(%esi), %eax
e0101f5e:	8d 04 88 	leal	(%eax,%ecx,4), %eax
e0101f61:	89 c1 	movl	%eax, %ecx
e0101f63:	c1 e9 03 	shrl	$3, %ecx
e0101f66:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0101f6d:	84 c9 	testb	%cl, %cl
e0101f6f:	75 37 	jne	55 <check_page_free_list+0x168>
e0101f71:	8b 08 	movl	(%eax), %ecx
e0101f73:	89 ca 	movl	%ecx, %edx
e0101f75:	c1 ea 03 	shrl	$3, %edx
e0101f78:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0101f7f:	84 d2 	testb	%dl, %dl
e0101f81:	75 36 	jne	54 <check_page_free_list+0x179>
e0101f83:	89 19 	movl	%ebx, (%ecx)
e0101f85:	89 18 	movl	%ebx, (%eax)
e0101f87:	89 d8 	movl	%ebx, %eax
e0101f89:	c1 e8 03 	shrl	$3, %eax
e0101f8c:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0101f93:	84 c0 	testb	%al, %al
e0101f95:	74 a9 	je	-87 <check_page_free_list+0x100>
e0101f97:	89 d9 	movl	%ebx, %ecx
e0101f99:	80 e1 07 	andb	$7, %cl
e0101f9c:	80 c1 03 	addb	$3, %cl
e0101f9f:	38 c1 	cmpb	%al, %cl
e0101fa1:	7c 9d 	jl	-99 <check_page_free_list+0x100>
e0101fa3:	e9 40 05 00 00 	jmp	1344 <check_page_free_list+0x6a8>
e0101fa8:	89 c2 	movl	%eax, %edx
e0101faa:	80 e2 07 	andb	$7, %dl
e0101fad:	80 c2 03 	addb	$3, %dl
e0101fb0:	38 ca 	cmpb	%cl, %dl
e0101fb2:	7c bd 	jl	-67 <check_page_free_list+0x131>
e0101fb4:	e9 3b 05 00 00 	jmp	1339 <check_page_free_list+0x6b4>
e0101fb9:	88 ce 	movb	%cl, %dh
e0101fbb:	80 e6 07 	andb	$7, %dh
e0101fbe:	80 c6 03 	addb	$3, %dh
e0101fc1:	38 d6 	cmpb	%dl, %dh
e0101fc3:	7c be 	jl	-66 <check_page_free_list+0x143>
e0101fc5:	83 ec 0c 	subl	$12, %esp
e0101fc8:	51 	pushl	%ecx
e0101fc9:	e8 e2 67 00 00 	calll	26594 <__asan_report_store4>
e0101fce:	83 c4 10 	addl	$16, %esp
e0101fd1:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0101fd7:	84 c0 	testb	%al, %al
e0101fd9:	0f 85 0a 03 00 00 	jne	778 <check_page_free_list+0x4a9>
e0101fdf:	8b 46 20 	movl	32(%esi), %eax
e0101fe2:	8b 00 	movl	(%eax), %eax
e0101fe4:	89 c1 	movl	%eax, %ecx
e0101fe6:	c1 e9 03 	shrl	$3, %ecx
e0101fe9:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0101fef:	84 c9 	testb	%cl, %cl
e0101ff1:	8b 7e 30 	movl	48(%esi), %edi
e0101ff4:	8b 5e 2c 	movl	44(%esi), %ebx
e0101ff7:	0f 85 0b 03 00 00 	jne	779 <check_page_free_list+0x4c8>
e0101ffd:	c7 00 00 00 00 00 	movl	$0, (%eax)
e0102003:	8b 4e 24 	movl	36(%esi), %ecx
e0102006:	89 c8 	movl	%ecx, %eax
e0102008:	c1 e8 03 	shrl	$3, %eax
e010200b:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102011:	84 c0 	testb	%al, %al
e0102013:	0f 85 0b 03 00 00 	jne	779 <check_page_free_list+0x4e4>
e0102019:	8b 01 	movl	(%ecx), %eax
e010201b:	8b 4e 28 	movl	40(%esi), %ecx
e010201e:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102024:	84 c9 	testb	%cl, %cl
e0102026:	0f 85 18 03 00 00 	jne	792 <check_page_free_list+0x504>
e010202c:	8b 4e 1c 	movl	28(%esi), %ecx
e010202f:	8b 09 	movl	(%ecx), %ecx
e0102031:	89 ca 	movl	%ecx, %edx
e0102033:	c1 ea 03 	shrl	$3, %edx
e0102036:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e010203c:	84 d2 	testb	%dl, %dl
e010203e:	0f 85 1f 03 00 00 	jne	799 <check_page_free_list+0x523>
e0102044:	89 01 	movl	%eax, (%ecx)
e0102046:	89 d8 	movl	%ebx, %eax
e0102048:	c1 e8 03 	shrl	$3, %eax
e010204b:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102051:	84 c0 	testb	%al, %al
e0102053:	0f 85 26 03 00 00 	jne	806 <check_page_free_list+0x53f>
e0102059:	8b 1b 	movl	(%ebx), %ebx
e010205b:	89 1d a0 1d 12 e0 	movl	%ebx, -535683680
e0102061:	c6 87 06 00 80 de f8 	movb	$-8, -562036730(%edi)
e0102068:	c6 87 04 00 80 de f8 	movb	$-8, -562036732(%edi)
e010206f:	c6 87 02 00 80 de f8 	movb	$-8, -562036734(%edi)
e0102076:	85 db 	testl	%ebx, %ebx
e0102078:	75 0c 	jne	12 <check_page_free_list+0x246>
e010207a:	eb 5d 	jmp	93 <check_page_free_list+0x299>
e010207c:	0f 1f 40 00 	nopl	(%eax)
e0102080:	8b 1b 	movl	(%ebx), %ebx
e0102082:	85 db 	testl	%ebx, %ebx
e0102084:	74 53 	je	83 <check_page_free_list+0x299>
e0102086:	89 d9 	movl	%ebx, %ecx
e0102088:	e8 b3 0d 00 00 	calll	3507 <page2pa>
e010208d:	3d ff ff 3f 00 	cmpl	$4194303, %eax
e0102092:	77 1d 	ja	29 <check_page_free_list+0x271>
e0102094:	89 d9 	movl	%ebx, %ecx
e0102096:	e8 25 0b 00 00 	calll	2853 <page2kva>
e010209b:	83 ec 04 	subl	$4, %esp
e010209e:	68 80 00 00 00 	pushl	$128
e01020a3:	68 97 00 00 00 	pushl	$151
e01020a8:	50 	pushl	%eax
e01020a9:	e8 32 7b 00 00 	calll	31538 <__nosan_memset>
e01020ae:	83 c4 10 	addl	$16, %esp
e01020b1:	89 d8 	movl	%ebx, %eax
e01020b3:	c1 e8 03 	shrl	$3, %eax
e01020b6:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01020bd:	84 c0 	testb	%al, %al
e01020bf:	74 bf 	je	-65 <check_page_free_list+0x240>
e01020c1:	89 d9 	movl	%ebx, %ecx
e01020c3:	80 e1 07 	andb	$7, %cl
e01020c6:	80 c1 03 	addb	$3, %cl
e01020c9:	38 c1 	cmpb	%al, %cl
e01020cb:	7c b3 	jl	-77 <check_page_free_list+0x240>
e01020cd:	83 ec 0c 	subl	$12, %esp
e01020d0:	53 	pushl	%ebx
e01020d1:	e8 ba 66 00 00 	calll	26298 <__asan_report_load4>
e01020d6:	83 c4 10 	addl	$16, %esp
e01020d9:	c7 46 1c 00 00 00 00 	movl	$0, 28(%esi)
e01020e0:	31 c9 	xorl	%ecx, %ecx
e01020e2:	e8 89 f9 ff ff 	calll	-1655 <boot_alloc>
e01020e7:	89 46 2c 	movl	%eax, 44(%esi)
e01020ea:	8b 1d a0 1d 12 e0 	movl	-535683680, %ebx
e01020f0:	85 db 	testl	%ebx, %ebx
e01020f2:	0f 84 b3 03 00 00 	je	947 <check_page_free_list+0x66b>
e01020f8:	b8 bc 2f 12 e0 	movl	$3759288252, %eax
e01020fd:	c1 e8 03 	shrl	$3, %eax
e0102100:	89 46 24 	movl	%eax, 36(%esi)
e0102103:	b8 b4 2f 12 e0 	movl	$3759288244, %eax
e0102108:	c1 e8 03 	shrl	$3, %eax
e010210b:	89 46 20 	movl	%eax, 32(%esi)
e010210e:	31 ff 	xorl	%edi, %edi
e0102110:	8b 46 24 	movl	36(%esi), %eax
e0102113:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e010211a:	84 c0 	testb	%al, %al
e010211c:	0f 85 c5 00 00 00 	jne	197 <check_page_free_list+0x3a7>
e0102122:	8b 0d bc 2f 12 e0 	movl	-535679044, %ecx
e0102128:	89 d8 	movl	%ebx, %eax
e010212a:	29 c8 	subl	%ecx, %eax
e010212c:	0f 82 c3 02 00 00 	jb	707 <check_page_free_list+0x5b5>
e0102132:	8b 56 20 	movl	32(%esi), %edx
e0102135:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e010213c:	84 d2 	testb	%dl, %dl
e010213e:	0f 85 bb 00 00 00 	jne	187 <check_page_free_list+0x3bf>
e0102144:	8b 15 b4 2f 12 e0 	movl	-535679052, %edx
e010214a:	8d 0c d1 	leal	(%ecx,%edx,8), %ecx
e010214d:	39 cb 	cmpl	%ecx, %ebx
e010214f:	0f 83 46 02 00 00 	jae	582 <check_page_free_list+0x55b>
e0102155:	a8 07 	testb	$7, %al
e0102157:	0f 85 5c 02 00 00 	jne	604 <check_page_free_list+0x579>
e010215d:	89 d9 	movl	%ebx, %ecx
e010215f:	e8 dc 0c 00 00 	calll	3292 <page2pa>
e0102164:	3d ff ef 0f 00 	cmpl	$1044479, %eax
e0102169:	7f 15 	jg	21 <check_page_free_list+0x340>
e010216b:	85 c0 	testl	%eax, %eax
e010216d:	0f 84 a0 02 00 00 	je	672 <check_page_free_list+0x5d3>
e0102173:	3d 00 00 0a 00 	cmpl	$655360, %eax
e0102178:	75 1c 	jne	28 <check_page_free_list+0x356>
e010217a:	e9 b2 02 00 00 	jmp	690 <check_page_free_list+0x5f1>
e010217f:	90 	nop
e0102180:	3d 00 f0 0f 00 	cmpl	$1044480, %eax
e0102185:	0f 84 c4 02 00 00 	je	708 <check_page_free_list+0x60f>
e010218b:	3d 00 00 10 00 	cmpl	$1048576, %eax
e0102190:	0f 84 41 02 00 00 	je	577 <check_page_free_list+0x597>
e0102196:	3d 00 00 10 00 	cmpl	$1048576, %eax
e010219b:	72 10 	jb	16 <check_page_free_list+0x36d>
e010219d:	89 d9 	movl	%ebx, %ecx
e010219f:	e8 1c 0a 00 00 	calll	2588 <page2kva>
e01021a4:	3b 46 2c 	cmpl	44(%esi), %eax
e01021a7:	0f 82 c0 02 00 00 	jb	704 <check_page_free_list+0x62d>
e01021ad:	89 d9 	movl	%ebx, %ecx
e01021af:	e8 8c 0c 00 00 	calll	3212 <page2pa>
e01021b4:	31 c9 	xorl	%ecx, %ecx
e01021b6:	3d ff ff 0f 00 	cmpl	$1048575, %eax
e01021bb:	0f 97 c2 	seta	%dl
e01021be:	3d 00 00 10 00 	cmpl	$1048576, %eax
e01021c3:	83 56 1c 00 	adcl	$0, 28(%esi)
e01021c7:	89 d8 	movl	%ebx, %eax
e01021c9:	c1 e8 03 	shrl	$3, %eax
e01021cc:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01021d3:	84 c0 	testb	%al, %al
e01021d5:	75 44 	jne	68 <check_page_free_list+0x3db>
e01021d7:	88 d1 	movb	%dl, %cl
e01021d9:	01 cf 	addl	%ecx, %edi
e01021db:	8b 1b 	movl	(%ebx), %ebx
e01021dd:	85 db 	testl	%ebx, %ebx
e01021df:	0f 85 2b ff ff ff 	jne	-213 <check_page_free_list+0x2d0>
e01021e5:	eb 4c 	jmp	76 <check_page_free_list+0x3f3>
e01021e7:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e01021ec:	80 e1 07 	andb	$7, %cl
e01021ef:	80 c1 03 	addb	$3, %cl
e01021f2:	38 c1 	cmpb	%al, %cl
e01021f4:	0f 8c 28 ff ff ff 	jl	-216 <check_page_free_list+0x2e2>
e01021fa:	e9 8c 02 00 00 	jmp	652 <check_page_free_list+0x64b>
e01021ff:	88 56 28 	movb	%dl, 40(%esi)
e0102202:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e0102207:	80 e2 07 	andb	$7, %dl
e010220a:	80 c2 03 	addb	$3, %dl
e010220d:	3a 56 28 	cmpb	40(%esi), %dl
e0102210:	0f 8c 2e ff ff ff 	jl	-210 <check_page_free_list+0x304>
e0102216:	e9 80 02 00 00 	jmp	640 <check_page_free_list+0x65b>
e010221b:	88 dc 	movb	%bl, %ah
e010221d:	80 e4 07 	andb	$7, %ah
e0102220:	80 c4 03 	addb	$3, %ah
e0102223:	38 c4 	cmpb	%al, %ah
e0102225:	7c b0 	jl	-80 <check_page_free_list+0x397>
e0102227:	83 ec 0c 	subl	$12, %esp
e010222a:	53 	pushl	%ebx
e010222b:	e8 60 65 00 00 	calll	25952 <__asan_report_load4>
e0102230:	83 c4 10 	addl	$16, %esp
e0102233:	83 7e 1c 00 	cmpl	$0, 28(%esi)
e0102237:	0f 84 6e 02 00 00 	je	622 <check_page_free_list+0x66b>
e010223d:	85 ff 	testl	%edi, %edi
e010223f:	0f 84 bb 02 00 00 	je	699 <check_page_free_list+0x6c0>
e0102245:	8b 46 34 	movl	52(%esi), %eax
e0102248:	c7 00 0e 36 e0 45 	movl	$1172321806, (%eax)
e010224e:	8b 46 38 	movl	56(%esi), %eax
e0102251:	85 c0 	testl	%eax, %eax
e0102253:	8b 4e 30 	movl	48(%esi), %ecx
e0102256:	74 30 	je	48 <check_page_free_list+0x448>
e0102258:	c7 81 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%ecx)
e0102262:	c7 81 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%ecx)
e010226c:	c7 81 08 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036728(%ecx)
e0102276:	c7 81 0c 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036724(%ecx)
e0102280:	8b 40 7c 	movl	124(%eax), %eax
e0102283:	c6 00 00 	movb	$0, (%eax)
e0102286:	eb 1d 	jmp	29 <check_page_free_list+0x465>
e0102288:	c7 81 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%ecx)
e0102292:	c7 81 04 00 80 de 00 00 00 00 	movl	$0, -562036732(%ecx)
e010229c:	66 c7 81 08 00 80 de 00 00 	movw	$0, -562036728(%ecx)
e01022a5:	8d 65 f4 	leal	-12(%ebp), %esp
e01022a8:	5e 	popl	%esi
e01022a9:	5f 	popl	%edi
e01022aa:	5b 	popl	%ebx
e01022ab:	5d 	popl	%ebp
e01022ac:	c3 	retl
e01022ad:	8b 4e 1c 	movl	28(%esi), %ecx
e01022b0:	80 e1 07 	andb	$7, %cl
e01022b3:	80 c1 03 	addb	$3, %cl
e01022b6:	38 d1 	cmpb	%dl, %cl
e01022b8:	8b 4e 1c 	movl	28(%esi), %ecx
e01022bb:	0f 8c 33 fc ff ff 	jl	-973 <check_page_free_list+0xb4>
e01022c1:	83 ec 0c 	subl	$12, %esp
e01022c4:	51 	pushl	%ecx
e01022c5:	e8 e6 64 00 00 	calll	25830 <__asan_report_store4>
e01022ca:	83 c4 10 	addl	$16, %esp
e01022cd:	89 d1 	movl	%edx, %ecx
e01022cf:	80 e1 07 	andb	$7, %cl
e01022d2:	80 c1 03 	addb	$3, %cl
e01022d5:	38 c1 	cmpb	%al, %cl
e01022d7:	0f 8c 38 fc ff ff 	jl	-968 <check_page_free_list+0xd5>
e01022dd:	83 ec 0c 	subl	$12, %esp
e01022e0:	52 	pushl	%edx
e01022e1:	e8 ca 64 00 00 	calll	25802 <__asan_report_store4>
e01022e6:	83 c4 10 	addl	$16, %esp
e01022e9:	8b 4e 20 	movl	32(%esi), %ecx
e01022ec:	80 e1 07 	andb	$7, %cl
e01022ef:	80 c1 03 	addb	$3, %cl
e01022f2:	38 c1 	cmpb	%al, %cl
e01022f4:	0f 8c e5 fc ff ff 	jl	-795 <check_page_free_list+0x19f>
e01022fa:	83 ec 0c 	subl	$12, %esp
e01022fd:	ff 76 20 	pushl	32(%esi)
e0102300:	e8 8b 64 00 00 	calll	25739 <__asan_report_load4>
e0102305:	83 c4 10 	addl	$16, %esp
e0102308:	89 c2 	movl	%eax, %edx
e010230a:	80 e2 07 	andb	$7, %dl
e010230d:	80 c2 03 	addb	$3, %dl
e0102310:	38 ca 	cmpb	%cl, %dl
e0102312:	0f 8c e5 fc ff ff 	jl	-795 <check_page_free_list+0x1bd>
e0102318:	83 ec 0c 	subl	$12, %esp
e010231b:	50 	pushl	%eax
e010231c:	e8 8f 64 00 00 	calll	25743 <__asan_report_store4>
e0102321:	83 c4 10 	addl	$16, %esp
e0102324:	8b 4e 24 	movl	36(%esi), %ecx
e0102327:	80 e1 07 	andb	$7, %cl
e010232a:	80 c1 03 	addb	$3, %cl
e010232d:	38 c1 	cmpb	%al, %cl
e010232f:	8b 4e 24 	movl	36(%esi), %ecx
e0102332:	0f 8c e1 fc ff ff 	jl	-799 <check_page_free_list+0x1d9>
e0102338:	83 ec 0c 	subl	$12, %esp
e010233b:	51 	pushl	%ecx
e010233c:	e8 4f 64 00 00 	calll	25679 <__asan_report_load4>
e0102341:	83 c4 10 	addl	$16, %esp
e0102344:	8b 56 1c 	movl	28(%esi), %edx
e0102347:	80 e2 07 	andb	$7, %dl
e010234a:	80 c2 03 	addb	$3, %dl
e010234d:	38 ca 	cmpb	%cl, %dl
e010234f:	0f 8c d7 fc ff ff 	jl	-809 <check_page_free_list+0x1ec>
e0102355:	83 ec 0c 	subl	$12, %esp
e0102358:	ff 76 1c 	pushl	28(%esi)
e010235b:	e8 30 64 00 00 	calll	25648 <__asan_report_load4>
e0102360:	83 c4 10 	addl	$16, %esp
e0102363:	88 ce 	movb	%cl, %dh
e0102365:	80 e6 07 	andb	$7, %dh
e0102368:	80 c6 03 	addb	$3, %dh
e010236b:	38 d6 	cmpb	%dl, %dh
e010236d:	0f 8c d1 fc ff ff 	jl	-815 <check_page_free_list+0x204>
e0102373:	83 ec 0c 	subl	$12, %esp
e0102376:	51 	pushl	%ecx
e0102377:	e8 34 64 00 00 	calll	25652 <__asan_report_store4>
e010237c:	83 c4 10 	addl	$16, %esp
e010237f:	89 d9 	movl	%ebx, %ecx
e0102381:	80 e1 07 	andb	$7, %cl
e0102384:	80 c1 03 	addb	$3, %cl
e0102387:	38 c1 	cmpb	%al, %cl
e0102389:	0f 8c ca fc ff ff 	jl	-822 <check_page_free_list+0x219>
e010238f:	83 ec 0c 	subl	$12, %esp
e0102392:	53 	pushl	%ebx
e0102393:	e8 f8 63 00 00 	calll	25592 <__asan_report_load4>
e0102398:	83 c4 10 	addl	$16, %esp
e010239b:	e8 00 62 00 00 	calll	25088 <__asan_handle_no_return>
e01023a0:	68 c0 b6 10 e0 	pushl	$3759191744
e01023a5:	68 40 b6 10 e0 	pushl	$3759191616
e01023aa:	68 d9 01 00 00 	pushl	$473
e01023af:	68 c0 b3 10 e0 	pushl	$3759190976
e01023b4:	e8 77 dd ff ff 	calll	-8841 <_panic>
e01023b9:	e8 e2 61 00 00 	calll	25058 <__asan_handle_no_return>
e01023be:	68 00 b7 10 e0 	pushl	$3759191808
e01023c3:	68 40 b6 10 e0 	pushl	$3759191616
e01023c8:	68 da 01 00 00 	pushl	$474
e01023cd:	68 c0 b3 10 e0 	pushl	$3759190976
e01023d2:	e8 59 dd ff ff 	calll	-8871 <_panic>
e01023d7:	e8 c4 61 00 00 	calll	25028 <__asan_handle_no_return>
e01023dc:	68 40 b8 10 e0 	pushl	$3759192128
e01023e1:	68 40 b6 10 e0 	pushl	$3759191616
e01023e6:	68 e0 01 00 00 	pushl	$480
e01023eb:	68 c0 b3 10 e0 	pushl	$3759190976
e01023f0:	e8 3b dd ff ff 	calll	-8901 <_panic>
e01023f5:	e8 a6 61 00 00 	calll	24998 <__asan_handle_no_return>
e01023fa:	68 80 b6 10 e0 	pushl	$3759191680
e01023ff:	68 40 b6 10 e0 	pushl	$3759191616
e0102404:	68 d8 01 00 00 	pushl	$472
e0102409:	68 c0 b3 10 e0 	pushl	$3759190976
e010240e:	e8 1d dd ff ff 	calll	-8931 <_panic>
e0102413:	e8 88 61 00 00 	calll	24968 <__asan_handle_no_return>
e0102418:	68 60 b7 10 e0 	pushl	$3759191904
e010241d:	68 40 b6 10 e0 	pushl	$3759191616
e0102422:	68 dd 01 00 00 	pushl	$477
e0102427:	68 c0 b3 10 e0 	pushl	$3759190976
e010242c:	e8 ff dc ff ff 	calll	-8961 <_panic>
e0102431:	e8 6a 61 00 00 	calll	24938 <__asan_handle_no_return>
e0102436:	68 a0 b7 10 e0 	pushl	$3759191968
e010243b:	68 40 b6 10 e0 	pushl	$3759191616
e0102440:	68 de 01 00 00 	pushl	$478
e0102445:	68 c0 b3 10 e0 	pushl	$3759190976
e010244a:	e8 e1 dc ff ff 	calll	-8991 <_panic>
e010244f:	e8 4c 61 00 00 	calll	24908 <__asan_handle_no_return>
e0102454:	68 e0 b7 10 e0 	pushl	$3759192032
e0102459:	68 40 b6 10 e0 	pushl	$3759191616
e010245e:	68 df 01 00 00 	pushl	$479
e0102463:	68 c0 b3 10 e0 	pushl	$3759190976
e0102468:	e8 c3 dc ff ff 	calll	-9021 <_panic>
e010246d:	e8 2e 61 00 00 	calll	24878 <__asan_handle_no_return>
e0102472:	68 80 b8 10 e0 	pushl	$3759192192
e0102477:	68 40 b6 10 e0 	pushl	$3759191616
e010247c:	68 e1 01 00 00 	pushl	$481
e0102481:	68 c0 b3 10 e0 	pushl	$3759190976
e0102486:	e8 a5 dc ff ff 	calll	-9051 <_panic>
e010248b:	83 ec 0c 	subl	$12, %esp
e010248e:	68 bc 2f 12 e0 	pushl	$3759288252
e0102493:	e8 f8 62 00 00 	calll	25336 <__asan_report_load4>
e0102498:	83 c4 10 	addl	$16, %esp
e010249b:	83 ec 0c 	subl	$12, %esp
e010249e:	68 b4 2f 12 e0 	pushl	$3759288244
e01024a3:	e8 e8 62 00 00 	calll	25320 <__asan_report_load4>
e01024a8:	83 c4 10 	addl	$16, %esp
e01024ab:	e8 f0 60 00 00 	calll	24816 <__asan_handle_no_return>
e01024b0:	68 00 b9 10 e0 	pushl	$3759192320
e01024b5:	68 40 b6 10 e0 	pushl	$3759191616
e01024ba:	68 e9 01 00 00 	pushl	$489
e01024bf:	68 c0 b3 10 e0 	pushl	$3759190976
e01024c4:	e8 67 dc ff ff 	calll	-9113 <_panic>
e01024c9:	e8 d2 60 00 00 	calll	24786 <__asan_handle_no_return>
e01024ce:	83 ec 04 	subl	$4, %esp
e01024d1:	68 e0 b5 10 e0 	pushl	$3759191520
e01024d6:	68 b7 01 00 00 	pushl	$439
e01024db:	68 c0 b3 10 e0 	pushl	$3759190976
e01024e0:	e8 4b dc ff ff 	calll	-9141 <_panic>
e01024e5:	83 c4 04 	addl	$4, %esp
e01024e8:	83 ec 0c 	subl	$12, %esp
e01024eb:	53 	pushl	%ebx
e01024ec:	e8 9f 62 00 00 	calll	25247 <__asan_report_load4>
e01024f1:	83 c4 10 	addl	$16, %esp
e01024f4:	83 ec 0c 	subl	$12, %esp
e01024f7:	50 	pushl	%eax
e01024f8:	e8 93 62 00 00 	calll	25235 <__asan_report_load4>
e01024fd:	83 c4 10 	addl	$16, %esp
e0102500:	e8 9b 60 00 00 	calll	24731 <__asan_handle_no_return>
e0102505:	68 40 b9 10 e0 	pushl	$3759192384
e010250a:	68 40 b6 10 e0 	pushl	$3759191616
e010250f:	68 ea 01 00 00 	pushl	$490
e0102514:	68 c0 b3 10 e0 	pushl	$3759190976
e0102519:	e8 12 dc ff ff 	calll	-9198 <_panic>
e010251e:	66 90 	nop

00000000e0102520 check_page_alloc:
e0102520:	55 	pushl	%ebp
e0102521:	89 e5 	movl	%esp, %ebp
e0102523:	53 	pushl	%ebx
e0102524:	57 	pushl	%edi
e0102525:	56 	pushl	%esi
e0102526:	83 ec 0c 	subl	$12, %esp
e0102529:	b8 bc 2f 12 e0 	movl	$3759288252, %eax
e010252e:	c1 e8 03 	shrl	$3, %eax
e0102531:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102537:	84 c0 	testb	%al, %al
e0102539:	0f 85 dd 02 00 00 	jne	733 <check_page_alloc+0x2fc>
e010253f:	83 3d bc 2f 12 e0 00 	cmpl	$0, -535679044
e0102546:	0f 84 70 03 00 00 	je	880 <check_page_alloc+0x39c>
e010254c:	a1 a0 1d 12 e0 	movl	3759283616, %eax
e0102551:	31 ff 	xorl	%edi, %edi
e0102553:	85 c0 	testl	%eax, %eax
e0102555:	75 10 	jne	16 <check_page_alloc+0x47>
e0102557:	eb 36 	jmp	54 <check_page_alloc+0x6f>
e0102559:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0102560:	47 	incl	%edi
e0102561:	8b 00 	movl	(%eax), %eax
e0102563:	85 c0 	testl	%eax, %eax
e0102565:	74 28 	je	40 <check_page_alloc+0x6f>
e0102567:	89 c1 	movl	%eax, %ecx
e0102569:	c1 e9 03 	shrl	$3, %ecx
e010256c:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0102573:	84 c9 	testb	%cl, %cl
e0102575:	74 e9 	je	-23 <check_page_alloc+0x40>
e0102577:	89 c2 	movl	%eax, %edx
e0102579:	80 e2 07 	andb	$7, %dl
e010257c:	80 c2 03 	addb	$3, %dl
e010257f:	38 ca 	cmpb	%cl, %dl
e0102581:	7c dd 	jl	-35 <check_page_alloc+0x40>
e0102583:	83 ec 0c 	subl	$12, %esp
e0102586:	50 	pushl	%eax
e0102587:	e8 04 62 00 00 	calll	25092 <__asan_report_load4>
e010258c:	83 c4 10 	addl	$16, %esp
e010258f:	83 ec 0c 	subl	$12, %esp
e0102592:	6a 00 	pushl	$0
e0102594:	e8 27 05 00 00 	calll	1319 <page_alloc>
e0102599:	83 c4 10 	addl	$16, %esp
e010259c:	85 c0 	testl	%eax, %eax
e010259e:	0f 84 37 03 00 00 	je	823 <check_page_alloc+0x3bb>
e01025a4:	89 c6 	movl	%eax, %esi
e01025a6:	83 ec 0c 	subl	$12, %esp
e01025a9:	6a 00 	pushl	$0
e01025ab:	e8 10 05 00 00 	calll	1296 <page_alloc>
e01025b0:	83 c4 10 	addl	$16, %esp
e01025b3:	89 45 f0 	movl	%eax, -16(%ebp)
e01025b6:	85 c0 	testl	%eax, %eax
e01025b8:	0f 84 3b 03 00 00 	je	827 <check_page_alloc+0x3d9>
e01025be:	83 ec 0c 	subl	$12, %esp
e01025c1:	6a 00 	pushl	$0
e01025c3:	e8 f8 04 00 00 	calll	1272 <page_alloc>
e01025c8:	83 c4 10 	addl	$16, %esp
e01025cb:	85 c0 	testl	%eax, %eax
e01025cd:	0f 84 44 03 00 00 	je	836 <check_page_alloc+0x3f7>
e01025d3:	89 c3 	movl	%eax, %ebx
e01025d5:	8b 45 f0 	movl	-16(%ebp), %eax
e01025d8:	39 f0 	cmpl	%esi, %eax
e01025da:	0f 84 55 03 00 00 	je	853 <check_page_alloc+0x415>
e01025e0:	39 c3 	cmpl	%eax, %ebx
e01025e2:	0f 84 98 02 00 00 	je	664 <check_page_alloc+0x360>
e01025e8:	39 f3 	cmpl	%esi, %ebx
e01025ea:	0f 84 90 02 00 00 	je	656 <check_page_alloc+0x360>
e01025f0:	89 75 ec 	movl	%esi, -20(%ebp)
e01025f3:	89 f1 	movl	%esi, %ecx
e01025f5:	e8 46 08 00 00 	calll	2118 <page2pa>
e01025fa:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e01025ff:	c1 e9 03 	shrl	$3, %ecx
e0102602:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102608:	84 c9 	testb	%cl, %cl
e010260a:	0f 85 2f 02 00 00 	jne	559 <check_page_alloc+0x31f>
e0102610:	8b 35 b4 2f 12 e0 	movl	-535679052, %esi
e0102616:	c1 e6 0c 	shll	$12, %esi
e0102619:	39 f0 	cmpl	%esi, %eax
e010261b:	0f 83 32 03 00 00 	jae	818 <check_page_alloc+0x433>
e0102621:	8b 4d f0 	movl	-16(%ebp), %ecx
e0102624:	e8 17 08 00 00 	calll	2071 <page2pa>
e0102629:	39 f0 	cmpl	%esi, %eax
e010262b:	0f 83 40 03 00 00 	jae	832 <check_page_alloc+0x451>
e0102631:	89 d9 	movl	%ebx, %ecx
e0102633:	e8 08 08 00 00 	calll	2056 <page2pa>
e0102638:	39 f0 	cmpl	%esi, %eax
e010263a:	0f 83 4f 03 00 00 	jae	847 <check_page_alloc+0x46f>
e0102640:	a1 a0 1d 12 e0 	movl	3759283616, %eax
e0102645:	89 45 e8 	movl	%eax, -24(%ebp)
e0102648:	c7 05 a0 1d 12 e0 00 00 00 00 	movl	$0, -535683680
e0102652:	83 ec 0c 	subl	$12, %esp
e0102655:	6a 00 	pushl	$0
e0102657:	e8 64 04 00 00 	calll	1124 <page_alloc>
e010265c:	83 c4 10 	addl	$16, %esp
e010265f:	85 c0 	testl	%eax, %eax
e0102661:	8b 45 ec 	movl	-20(%ebp), %eax
e0102664:	0f 85 43 03 00 00 	jne	835 <check_page_alloc+0x48d>
e010266a:	83 ec 0c 	subl	$12, %esp
e010266d:	50 	pushl	%eax
e010266e:	e8 6d 05 00 00 	calll	1389 <page_free>
e0102673:	83 c4 04 	addl	$4, %esp
e0102676:	ff 75 f0 	pushl	-16(%ebp)
e0102679:	e8 62 05 00 00 	calll	1378 <page_free>
e010267e:	83 c4 04 	addl	$4, %esp
e0102681:	53 	pushl	%ebx
e0102682:	e8 59 05 00 00 	calll	1369 <page_free>
e0102687:	83 c4 04 	addl	$4, %esp
e010268a:	6a 00 	pushl	$0
e010268c:	e8 2f 04 00 00 	calll	1071 <page_alloc>
e0102691:	83 c4 10 	addl	$16, %esp
e0102694:	85 c0 	testl	%eax, %eax
e0102696:	0f 84 2f 03 00 00 	je	815 <check_page_alloc+0x4ab>
e010269c:	89 c6 	movl	%eax, %esi
e010269e:	83 ec 0c 	subl	$12, %esp
e01026a1:	6a 00 	pushl	$0
e01026a3:	e8 18 04 00 00 	calll	1048 <page_alloc>
e01026a8:	83 c4 10 	addl	$16, %esp
e01026ab:	85 c0 	testl	%eax, %eax
e01026ad:	0f 84 36 03 00 00 	je	822 <check_page_alloc+0x4c9>
e01026b3:	89 c3 	movl	%eax, %ebx
e01026b5:	83 ec 0c 	subl	$12, %esp
e01026b8:	6a 00 	pushl	$0
e01026ba:	e8 01 04 00 00 	calll	1025 <page_alloc>
e01026bf:	83 c4 10 	addl	$16, %esp
e01026c2:	85 c0 	testl	%eax, %eax
e01026c4:	0f 84 3d 03 00 00 	je	829 <check_page_alloc+0x4e7>
e01026ca:	39 f3 	cmpl	%esi, %ebx
e01026cc:	0f 84 53 03 00 00 	je	851 <check_page_alloc+0x505>
e01026d2:	39 d8 	cmpl	%ebx, %eax
e01026d4:	0f 84 c4 01 00 00 	je	452 <check_page_alloc+0x37e>
e01026da:	39 f0 	cmpl	%esi, %eax
e01026dc:	0f 84 bc 01 00 00 	je	444 <check_page_alloc+0x37e>
e01026e2:	89 45 ec 	movl	%eax, -20(%ebp)
e01026e5:	83 ec 0c 	subl	$12, %esp
e01026e8:	6a 00 	pushl	$0
e01026ea:	e8 d1 03 00 00 	calll	977 <page_alloc>
e01026ef:	83 c4 10 	addl	$16, %esp
e01026f2:	85 c0 	testl	%eax, %eax
e01026f4:	0f 85 49 03 00 00 	jne	841 <check_page_alloc+0x523>
e01026fa:	89 f1 	movl	%esi, %ecx
e01026fc:	e8 bf 04 00 00 	calll	1215 <page2kva>
e0102701:	83 ec 04 	subl	$4, %esp
e0102704:	68 00 10 00 00 	pushl	$4096
e0102709:	6a 01 	pushl	$1
e010270b:	50 	pushl	%eax
e010270c:	e8 ff 6b 00 00 	calll	27647 <__wrap_memset>
e0102711:	83 c4 04 	addl	$4, %esp
e0102714:	56 	pushl	%esi
e0102715:	e8 c6 04 00 00 	calll	1222 <page_free>
e010271a:	83 c4 04 	addl	$4, %esp
e010271d:	6a 01 	pushl	$1
e010271f:	e8 9c 03 00 00 	calll	924 <page_alloc>
e0102724:	83 c4 10 	addl	$16, %esp
e0102727:	85 c0 	testl	%eax, %eax
e0102729:	0f 84 32 03 00 00 	je	818 <check_page_alloc+0x541>
e010272f:	89 5d f0 	movl	%ebx, -16(%ebp)
e0102732:	39 c6 	cmpl	%eax, %esi
e0102734:	0f 85 45 03 00 00 	jne	837 <check_page_alloc+0x55f>
e010273a:	89 c1 	movl	%eax, %ecx
e010273c:	e8 7f 04 00 00 	calll	1151 <page2kva>
e0102741:	31 c9 	xorl	%ecx, %ecx
e0102743:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010274d:	0f 1f 00 	nopl	(%eax)
e0102750:	8d 14 08 	leal	(%eax,%ecx), %edx
e0102753:	89 d3 	movl	%edx, %ebx
e0102755:	c1 eb 03 	shrl	$3, %ebx
e0102758:	0f b6 9b 00 00 80 de 	movzbl	-562036736(%ebx), %ebx
e010275f:	84 db 	testb	%bl, %bl
e0102761:	75 14 	jne	20 <check_page_alloc+0x257>
e0102763:	80 3a 00 	cmpb	$0, (%edx)
e0102766:	0f 85 f6 00 00 00 	jne	246 <check_page_alloc+0x342>
e010276c:	41 	incl	%ecx
e010276d:	81 f9 ff 0f 00 00 	cmpl	$4095, %ecx
e0102773:	76 db 	jbe	-37 <check_page_alloc+0x230>
e0102775:	eb 15 	jmp	21 <check_page_alloc+0x26c>
e0102777:	88 d7 	movb	%dl, %bh
e0102779:	80 e7 07 	andb	$7, %bh
e010277c:	38 df 	cmpb	%bl, %bh
e010277e:	7c e3 	jl	-29 <check_page_alloc+0x243>
e0102780:	83 ec 0c 	subl	$12, %esp
e0102783:	52 	pushl	%edx
e0102784:	e8 67 5f 00 00 	calll	24423 <__asan_report_load1>
e0102789:	83 c4 10 	addl	$16, %esp
e010278c:	8b 45 e8 	movl	-24(%ebp), %eax
e010278f:	a3 a0 1d 12 e0 	movl	%eax, 3759283616
e0102794:	83 ec 0c 	subl	$12, %esp
e0102797:	56 	pushl	%esi
e0102798:	e8 43 04 00 00 	calll	1091 <page_free>
e010279d:	83 c4 04 	addl	$4, %esp
e01027a0:	ff 75 f0 	pushl	-16(%ebp)
e01027a3:	e8 38 04 00 00 	calll	1080 <page_free>
e01027a8:	83 c4 04 	addl	$4, %esp
e01027ab:	ff 75 ec 	pushl	-20(%ebp)
e01027ae:	e8 2d 04 00 00 	calll	1069 <page_free>
e01027b3:	83 c4 10 	addl	$16, %esp
e01027b6:	a1 a0 1d 12 e0 	movl	3759283616, %eax
e01027bb:	85 c0 	testl	%eax, %eax
e01027bd:	75 18 	jne	24 <check_page_alloc+0x2b7>
e01027bf:	eb 3e 	jmp	62 <check_page_alloc+0x2df>
e01027c1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01027cb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e01027d0:	4f 	decl	%edi
e01027d1:	8b 00 	movl	(%eax), %eax
e01027d3:	85 c0 	testl	%eax, %eax
e01027d5:	74 28 	je	40 <check_page_alloc+0x2df>
e01027d7:	89 c1 	movl	%eax, %ecx
e01027d9:	c1 e9 03 	shrl	$3, %ecx
e01027dc:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e01027e3:	84 c9 	testb	%cl, %cl
e01027e5:	74 e9 	je	-23 <check_page_alloc+0x2b0>
e01027e7:	89 c2 	movl	%eax, %edx
e01027e9:	80 e2 07 	andb	$7, %dl
e01027ec:	80 c2 03 	addb	$3, %dl
e01027ef:	38 ca 	cmpb	%cl, %dl
e01027f1:	7c dd 	jl	-35 <check_page_alloc+0x2b0>
e01027f3:	83 ec 0c 	subl	$12, %esp
e01027f6:	50 	pushl	%eax
e01027f7:	e8 94 5f 00 00 	calll	24468 <__asan_report_load4>
e01027fc:	83 c4 10 	addl	$16, %esp
e01027ff:	85 ff 	testl	%edi, %edi
e0102801:	0f 85 96 02 00 00 	jne	662 <check_page_alloc+0x57d>
e0102807:	83 ec 0c 	subl	$12, %esp
e010280a:	68 00 bd 10 e0 	pushl	$3759193344
e010280f:	e8 2c 17 00 00 	calll	5932 <cprintf>
e0102814:	83 c4 1c 	addl	$28, %esp
e0102817:	5e 	popl	%esi
e0102818:	5f 	popl	%edi
e0102819:	5b 	popl	%ebx
e010281a:	5d 	popl	%ebp
e010281b:	c3 	retl
e010281c:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e0102821:	80 e1 07 	andb	$7, %cl
e0102824:	80 c1 03 	addb	$3, %cl
e0102827:	38 c1 	cmpb	%al, %cl
e0102829:	0f 8c 10 fd ff ff 	jl	-752 <check_page_alloc+0x1f>
e010282f:	83 ec 0c 	subl	$12, %esp
e0102832:	68 bc 2f 12 e0 	pushl	$3759288252
e0102837:	e8 54 5f 00 00 	calll	24404 <__asan_report_load4>
e010283c:	83 c4 10 	addl	$16, %esp
e010283f:	ba b4 2f 12 e0 	movl	$3759288244, %edx
e0102844:	80 e2 07 	andb	$7, %dl
e0102847:	80 c2 03 	addb	$3, %dl
e010284a:	38 ca 	cmpb	%cl, %dl
e010284c:	0f 8c be fd ff ff 	jl	-578 <check_page_alloc+0xf0>
e0102852:	83 ec 0c 	subl	$12, %esp
e0102855:	68 b4 2f 12 e0 	pushl	$3759288244
e010285a:	e8 31 5f 00 00 	calll	24369 <__asan_report_load4>
e010285f:	83 c4 10 	addl	$16, %esp
e0102862:	e8 39 5d 00 00 	calll	23865 <__asan_handle_no_return>
e0102867:	68 80 bc 10 e0 	pushl	$3759193216
e010286c:	68 40 b6 10 e0 	pushl	$3759191616
e0102871:	68 29 02 00 00 	pushl	$553
e0102876:	68 c0 b3 10 e0 	pushl	$3759190976
e010287b:	e8 b0 d8 ff ff 	calll	-10064 <_panic>
e0102880:	e8 1b 5d 00 00 	calll	23835 <__asan_handle_no_return>
e0102885:	68 c0 ba 10 e0 	pushl	$3759192768
e010288a:	68 40 b6 10 e0 	pushl	$3759191616
e010288f:	68 09 02 00 00 	pushl	$521
e0102894:	68 c0 b3 10 e0 	pushl	$3759190976
e0102899:	e8 92 d8 ff ff 	calll	-10094 <_panic>
e010289e:	e8 fd 5c 00 00 	calll	23805 <__asan_handle_no_return>
e01028a3:	68 c0 ba 10 e0 	pushl	$3759192768
e01028a8:	68 40 b6 10 e0 	pushl	$3759191616
e01028ad:	68 1f 02 00 00 	pushl	$543
e01028b2:	68 c0 b3 10 e0 	pushl	$3759190976
e01028b7:	e8 74 d8 ff ff 	calll	-10124 <_panic>
e01028bc:	e8 df 5c 00 00 	calll	23775 <__asan_handle_no_return>
e01028c1:	83 ec 04 	subl	$4, %esp
e01028c4:	68 80 b9 10 e0 	pushl	$3759192448
e01028c9:	68 fb 01 00 00 	pushl	$507
e01028ce:	68 c0 b3 10 e0 	pushl	$3759190976
e01028d3:	e8 58 d8 ff ff 	calll	-10152 <_panic>
e01028d8:	83 c4 04 	addl	$4, %esp
e01028db:	e8 c0 5c 00 00 	calll	23744 <__asan_handle_no_return>
e01028e0:	68 c0 b9 10 e0 	pushl	$3759192512
e01028e5:	68 40 b6 10 e0 	pushl	$3759191616
e01028ea:	68 03 02 00 00 	pushl	$515
e01028ef:	68 c0 b3 10 e0 	pushl	$3759190976
e01028f4:	e8 37 d8 ff ff 	calll	-10185 <_panic>
e01028f9:	e8 a2 5c 00 00 	calll	23714 <__asan_handle_no_return>
e01028fe:	68 00 ba 10 e0 	pushl	$3759192576
e0102903:	68 40 b6 10 e0 	pushl	$3759191616
e0102908:	68 04 02 00 00 	pushl	$516
e010290d:	68 c0 b3 10 e0 	pushl	$3759190976
e0102912:	e8 19 d8 ff ff 	calll	-10215 <_panic>
e0102917:	e8 84 5c 00 00 	calll	23684 <__asan_handle_no_return>
e010291c:	68 40 ba 10 e0 	pushl	$3759192640
e0102921:	68 40 b6 10 e0 	pushl	$3759191616
e0102926:	68 05 02 00 00 	pushl	$517
e010292b:	68 c0 b3 10 e0 	pushl	$3759190976
e0102930:	e8 fb d7 ff ff 	calll	-10245 <_panic>
e0102935:	e8 66 5c 00 00 	calll	23654 <__asan_handle_no_return>
e010293a:	68 80 ba 10 e0 	pushl	$3759192704
e010293f:	68 40 b6 10 e0 	pushl	$3759191616
e0102944:	68 08 02 00 00 	pushl	$520
e0102949:	68 c0 b3 10 e0 	pushl	$3759190976
e010294e:	e8 dd d7 ff ff 	calll	-10275 <_panic>
e0102953:	e8 48 5c 00 00 	calll	23624 <__asan_handle_no_return>
e0102958:	68 00 bb 10 e0 	pushl	$3759192832
e010295d:	68 40 b6 10 e0 	pushl	$3759191616
e0102962:	68 0a 02 00 00 	pushl	$522
e0102967:	68 c0 b3 10 e0 	pushl	$3759190976
e010296c:	e8 bf d7 ff ff 	calll	-10305 <_panic>
e0102971:	e8 2a 5c 00 00 	calll	23594 <__asan_handle_no_return>
e0102976:	68 40 bb 10 e0 	pushl	$3759192896
e010297b:	68 40 b6 10 e0 	pushl	$3759191616
e0102980:	68 0b 02 00 00 	pushl	$523
e0102985:	68 c0 b3 10 e0 	pushl	$3759190976
e010298a:	e8 a1 d7 ff ff 	calll	-10335 <_panic>
e010298f:	e8 0c 5c 00 00 	calll	23564 <__asan_handle_no_return>
e0102994:	68 80 bb 10 e0 	pushl	$3759192960
e0102999:	68 40 b6 10 e0 	pushl	$3759191616
e010299e:	68 0c 02 00 00 	pushl	$524
e01029a3:	68 c0 b3 10 e0 	pushl	$3759190976
e01029a8:	e8 83 d7 ff ff 	calll	-10365 <_panic>
e01029ad:	e8 ee 5b 00 00 	calll	23534 <__asan_handle_no_return>
e01029b2:	68 c0 bb 10 e0 	pushl	$3759193024
e01029b7:	68 40 b6 10 e0 	pushl	$3759191616
e01029bc:	68 13 02 00 00 	pushl	$531
e01029c1:	68 c0 b3 10 e0 	pushl	$3759190976
e01029c6:	e8 65 d7 ff ff 	calll	-10395 <_panic>
e01029cb:	e8 d0 5b 00 00 	calll	23504 <__asan_handle_no_return>
e01029d0:	68 c0 b9 10 e0 	pushl	$3759192512
e01029d5:	68 40 b6 10 e0 	pushl	$3759191616
e01029da:	68 1a 02 00 00 	pushl	$538
e01029df:	68 c0 b3 10 e0 	pushl	$3759190976
e01029e4:	e8 47 d7 ff ff 	calll	-10425 <_panic>
e01029e9:	e8 b2 5b 00 00 	calll	23474 <__asan_handle_no_return>
e01029ee:	68 00 ba 10 e0 	pushl	$3759192576
e01029f3:	68 40 b6 10 e0 	pushl	$3759191616
e01029f8:	68 1b 02 00 00 	pushl	$539
e01029fd:	68 c0 b3 10 e0 	pushl	$3759190976
e0102a02:	e8 29 d7 ff ff 	calll	-10455 <_panic>
e0102a07:	e8 94 5b 00 00 	calll	23444 <__asan_handle_no_return>
e0102a0c:	68 40 ba 10 e0 	pushl	$3759192640
e0102a11:	68 40 b6 10 e0 	pushl	$3759191616
e0102a16:	68 1c 02 00 00 	pushl	$540
e0102a1b:	68 c0 b3 10 e0 	pushl	$3759190976
e0102a20:	e8 0b d7 ff ff 	calll	-10485 <_panic>
e0102a25:	e8 76 5b 00 00 	calll	23414 <__asan_handle_no_return>
e0102a2a:	68 80 ba 10 e0 	pushl	$3759192704
e0102a2f:	68 40 b6 10 e0 	pushl	$3759191616
e0102a34:	68 1e 02 00 00 	pushl	$542
e0102a39:	68 c0 b3 10 e0 	pushl	$3759190976
e0102a3e:	e8 ed d6 ff ff 	calll	-10515 <_panic>
e0102a43:	e8 58 5b 00 00 	calll	23384 <__asan_handle_no_return>
e0102a48:	68 c0 bb 10 e0 	pushl	$3759193024
e0102a4d:	68 40 b6 10 e0 	pushl	$3759191616
e0102a52:	68 20 02 00 00 	pushl	$544
e0102a57:	68 c0 b3 10 e0 	pushl	$3759190976
e0102a5c:	e8 cf d6 ff ff 	calll	-10545 <_panic>
e0102a61:	e8 3a 5b 00 00 	calll	23354 <__asan_handle_no_return>
e0102a66:	68 00 bc 10 e0 	pushl	$3759193088
e0102a6b:	68 40 b6 10 e0 	pushl	$3759191616
e0102a70:	68 25 02 00 00 	pushl	$549
e0102a75:	68 c0 b3 10 e0 	pushl	$3759190976
e0102a7a:	e8 b1 d6 ff ff 	calll	-10575 <_panic>
e0102a7f:	e8 1c 5b 00 00 	calll	23324 <__asan_handle_no_return>
e0102a84:	68 40 bc 10 e0 	pushl	$3759193152
e0102a89:	68 40 b6 10 e0 	pushl	$3759191616
e0102a8e:	68 26 02 00 00 	pushl	$550
e0102a93:	68 c0 b3 10 e0 	pushl	$3759190976
e0102a98:	e8 93 d6 ff ff 	calll	-10605 <_panic>
e0102a9d:	e8 fe 5a 00 00 	calll	23294 <__asan_handle_no_return>
e0102aa2:	68 c0 bc 10 e0 	pushl	$3759193280
e0102aa7:	68 40 b6 10 e0 	pushl	$3759191616
e0102aac:	68 36 02 00 00 	pushl	$566
e0102ab1:	68 c0 b3 10 e0 	pushl	$3759190976
e0102ab6:	e8 75 d6 ff ff 	calll	-10635 <_panic>
e0102abb:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0102ac0 page_alloc:
e0102ac0:	55 	pushl	%ebp
e0102ac1:	89 e5 	movl	%esp, %ebp
e0102ac3:	53 	pushl	%ebx
e0102ac4:	83 ec 14 	subl	$20, %esp
e0102ac7:	8b 1d a0 1d 12 e0 	movl	-535683680, %ebx
e0102acd:	85 db 	testl	%ebx, %ebx
e0102acf:	0f 84 8c 00 00 00 	je	140 <page_alloc+0xa1>
e0102ad5:	89 d8 	movl	%ebx, %eax
e0102ad7:	c1 e8 03 	shrl	$3, %eax
e0102ada:	8a 88 00 00 80 de 	movb	-562036736(%eax), %cl
e0102ae0:	84 c9 	testb	%cl, %cl
e0102ae2:	0f 85 81 00 00 00 	jne	129 <page_alloc+0xa9>
e0102ae8:	8b 0b 	movl	(%ebx), %ecx
e0102aea:	89 0d a0 1d 12 e0 	movl	%ecx, -535683680
e0102af0:	85 c9 	testl	%ecx, %ecx
e0102af2:	75 20 	jne	32 <page_alloc+0x54>
e0102af4:	b9 b8 2f 12 e0 	movl	$3759288248, %ecx
e0102af9:	c1 e9 03 	shrl	$3, %ecx
e0102afc:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102b02:	84 c9 	testb	%cl, %cl
e0102b04:	0f 85 8b 00 00 00 	jne	139 <page_alloc+0xd5>
e0102b0a:	c7 05 b8 2f 12 e0 00 00 00 00 	movl	$0, -535679048
e0102b14:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102b1a:	84 c0 	testb	%al, %al
e0102b1c:	75 63 	jne	99 <page_alloc+0xc1>
e0102b1e:	8b 45 08 	movl	8(%ebp), %eax
e0102b21:	c7 03 00 00 00 00 	movl	$0, (%ebx)
e0102b27:	a8 01 	testb	$1, %al
e0102b29:	74 1f 	je	31 <page_alloc+0x8a>
e0102b2b:	89 d9 	movl	%ebx, %ecx
e0102b2d:	e8 8e 00 00 00 	calll	142 <page2kva>
e0102b32:	89 04 24 	movl	%eax, (%esp)
e0102b35:	c7 44 24 08 00 10 00 00 	movl	$4096, 8(%esp)
e0102b3d:	c7 44 24 04 00 00 00 00 	movl	$0, 4(%esp)
e0102b45:	e8 c6 67 00 00 	calll	26566 <__wrap_memset>
e0102b4a:	89 d9 	movl	%ebx, %ecx
e0102b4c:	e8 6f 00 00 00 	calll	111 <page2kva>
e0102b51:	89 04 24 	movl	%eax, (%esp)
e0102b54:	c7 44 24 04 00 10 00 00 	movl	$4096, 4(%esp)
e0102b5c:	e8 ef 6b 00 00 	calll	27631 <platform_asan_unpoison>
e0102b61:	89 d8 	movl	%ebx, %eax
e0102b63:	83 c4 14 	addl	$20, %esp
e0102b66:	5b 	popl	%ebx
e0102b67:	5d 	popl	%ebp
e0102b68:	c3 	retl
e0102b69:	89 da 	movl	%ebx, %edx
e0102b6b:	80 e2 07 	andb	$7, %dl
e0102b6e:	80 c2 03 	addb	$3, %dl
e0102b71:	38 ca 	cmpb	%cl, %dl
e0102b73:	0f 8c 6f ff ff ff 	jl	-145 <page_alloc+0x28>
e0102b79:	89 1c 24 	movl	%ebx, (%esp)
e0102b7c:	e8 0f 5c 00 00 	calll	23567 <__asan_report_load4>
e0102b81:	89 d9 	movl	%ebx, %ecx
e0102b83:	80 e1 07 	andb	$7, %cl
e0102b86:	80 c1 03 	addb	$3, %cl
e0102b89:	38 c1 	cmpb	%al, %cl
e0102b8b:	7c 91 	jl	-111 <page_alloc+0x5e>
e0102b8d:	89 1c 24 	movl	%ebx, (%esp)
e0102b90:	e8 1b 5c 00 00 	calll	23579 <__asan_report_store4>
e0102b95:	ba b8 2f 12 e0 	movl	$3759288248, %edx
e0102b9a:	80 e2 07 	andb	$7, %dl
e0102b9d:	80 c2 03 	addb	$3, %dl
e0102ba0:	38 ca 	cmpb	%cl, %dl
e0102ba2:	0f 8c 62 ff ff ff 	jl	-158 <page_alloc+0x4a>
e0102ba8:	c7 04 24 b8 2f 12 e0 	movl	$3759288248, (%esp)
e0102baf:	e8 fc 5b 00 00 	calll	23548 <__asan_report_store4>
e0102bb4:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102bbe:	66 90 	nop

00000000e0102bc0 page2kva:
e0102bc0:	55 	pushl	%ebp
e0102bc1:	89 e5 	movl	%esp, %ebp
e0102bc3:	83 ec 08 	subl	$8, %esp
e0102bc6:	e8 75 02 00 00 	calll	629 <page2pa>
e0102bcb:	89 c1 	movl	%eax, %ecx
e0102bcd:	83 c4 08 	addl	$8, %esp
e0102bd0:	5d 	popl	%ebp
e0102bd1:	e9 fa 01 00 00 	jmp	506 <_kaddr>
e0102bd6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e0102be0 page_free:
e0102be0:	55 	pushl	%ebp
e0102be1:	89 e5 	movl	%esp, %ebp
e0102be3:	83 ec 18 	subl	$24, %esp
e0102be6:	8b 45 08 	movl	8(%ebp), %eax
e0102be9:	8d 48 04 	leal	4(%eax), %ecx
e0102bec:	89 ca 	movl	%ecx, %edx
e0102bee:	c1 ea 03 	shrl	$3, %edx
e0102bf1:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0102bf7:	84 d2 	testb	%dl, %dl
e0102bf9:	75 70 	jne	112 <page_free+0x8b>
e0102bfb:	66 83 39 00 	cmpw	$0, (%ecx)
e0102bff:	0f 85 d7 00 00 00 	jne	215 <page_free+0xfc>
e0102c05:	89 c1 	movl	%eax, %ecx
e0102c07:	c1 e9 03 	shrl	$3, %ecx
e0102c0a:	8a 91 00 00 80 de 	movb	-562036736(%ecx), %dl
e0102c10:	84 d2 	testb	%dl, %dl
e0102c12:	75 6a 	jne	106 <page_free+0x9e>
e0102c14:	83 38 00 	cmpl	$0, (%eax)
e0102c17:	0f 85 bf 00 00 00 	jne	191 <page_free+0xfc>
e0102c1d:	8b 15 a0 1d 12 e0 	movl	-535683680, %edx
e0102c23:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102c29:	84 c9 	testb	%cl, %cl
e0102c2b:	75 65 	jne	101 <page_free+0xb2>
e0102c2d:	89 10 	movl	%edx, (%eax)
e0102c2f:	a3 a0 1d 12 e0 	movl	%eax, 3759283616
e0102c34:	b9 b8 2f 12 e0 	movl	$3759288248, %ecx
e0102c39:	c1 e9 03 	shrl	$3, %ecx
e0102c3c:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102c42:	84 c9 	testb	%cl, %cl
e0102c44:	75 60 	jne	96 <page_free+0xc6>
e0102c46:	83 3d b8 2f 12 e0 00 	cmpl	$0, -535679048
e0102c4d:	75 17 	jne	23 <page_free+0x86>
e0102c4f:	b9 b8 2f 12 e0 	movl	$3759288248, %ecx
e0102c54:	c1 e9 03 	shrl	$3, %ecx
e0102c57:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102c5d:	84 c9 	testb	%cl, %cl
e0102c5f:	75 60 	jne	96 <page_free+0xe1>
e0102c61:	a3 b8 2f 12 e0 	movl	%eax, 3759288248
e0102c66:	83 c4 18 	addl	$24, %esp
e0102c69:	5d 	popl	%ebp
e0102c6a:	c3 	retl
e0102c6b:	88 ce 	movb	%cl, %dh
e0102c6d:	80 e6 07 	andb	$7, %dh
e0102c70:	fe c6 	incb	%dh
e0102c72:	38 d6 	cmpb	%dl, %dh
e0102c74:	7c 85 	jl	-123 <page_free+0x1b>
e0102c76:	89 0c 24 	movl	%ecx, (%esp)
e0102c79:	e8 d2 5a 00 00 	calll	23250 <__asan_report_load2>
e0102c7e:	88 c6 	movb	%al, %dh
e0102c80:	80 e6 07 	andb	$7, %dh
e0102c83:	80 c6 03 	addb	$3, %dh
e0102c86:	38 d6 	cmpb	%dl, %dh
e0102c88:	7c 8a 	jl	-118 <page_free+0x34>
e0102c8a:	89 04 24 	movl	%eax, (%esp)
e0102c8d:	e8 fe 5a 00 00 	calll	23294 <__asan_report_load4>
e0102c92:	88 c5 	movb	%al, %ch
e0102c94:	80 e5 07 	andb	$7, %ch
e0102c97:	80 c5 03 	addb	$3, %ch
e0102c9a:	38 cd 	cmpb	%cl, %ch
e0102c9c:	7c 8f 	jl	-113 <page_free+0x4d>
e0102c9e:	89 04 24 	movl	%eax, (%esp)
e0102ca1:	e8 0a 5b 00 00 	calll	23306 <__asan_report_store4>
e0102ca6:	ba b8 2f 12 e0 	movl	$3759288248, %edx
e0102cab:	80 e2 07 	andb	$7, %dl
e0102cae:	80 c2 03 	addb	$3, %dl
e0102cb1:	38 ca 	cmpb	%cl, %dl
e0102cb3:	7c 91 	jl	-111 <page_free+0x66>
e0102cb5:	c7 04 24 b8 2f 12 e0 	movl	$3759288248, (%esp)
e0102cbc:	e8 cf 5a 00 00 	calll	23247 <__asan_report_load4>
e0102cc1:	ba b8 2f 12 e0 	movl	$3759288248, %edx
e0102cc6:	80 e2 07 	andb	$7, %dl
e0102cc9:	80 c2 03 	addb	$3, %dl
e0102ccc:	38 ca 	cmpb	%cl, %dl
e0102cce:	7c 91 	jl	-111 <page_free+0x81>
e0102cd0:	c7 04 24 b8 2f 12 e0 	movl	$3759288248, (%esp)
e0102cd7:	e8 d4 5a 00 00 	calll	23252 <__asan_report_store4>
e0102cdc:	e8 bf 58 00 00 	calll	22719 <__asan_handle_no_return>
e0102ce1:	c7 44 24 08 00 b4 10 e0 	movl	$3759191040, 8(%esp)
e0102ce9:	c7 44 24 04 0e 01 00 00 	movl	$270, 4(%esp)
e0102cf1:	c7 04 24 c0 b3 10 e0 	movl	$3759190976, (%esp)
e0102cf8:	e8 33 d4 ff ff 	calll	-11213 <_panic>
e0102cfd:	83 ec 0c 	subl	$12, %esp

00000000e0102d00 page_decref:
e0102d00:	55 	pushl	%ebp
e0102d01:	89 e5 	movl	%esp, %ebp
e0102d03:	83 ec 08 	subl	$8, %esp
e0102d06:	8b 45 08 	movl	8(%ebp), %eax
e0102d09:	83 c0 04 	addl	$4, %eax
e0102d0c:	89 c1 	movl	%eax, %ecx
e0102d0e:	c1 e9 03 	shrl	$3, %ecx
e0102d11:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102d17:	84 c9 	testb	%cl, %cl
e0102d19:	75 13 	jne	19 <page_decref+0x2e>
e0102d1b:	66 ff 08 	decw	(%eax)
e0102d1e:	74 05 	je	5 <page_decref+0x25>
e0102d20:	83 c4 08 	addl	$8, %esp
e0102d23:	5d 	popl	%ebp
e0102d24:	c3 	retl
e0102d25:	83 c4 08 	addl	$8, %esp
e0102d28:	5d 	popl	%ebp
e0102d29:	e9 b2 fe ff ff 	jmp	-334 <page_free>
e0102d2e:	89 c2 	movl	%eax, %edx
e0102d30:	80 e2 07 	andb	$7, %dl
e0102d33:	fe c2 	incb	%dl
e0102d35:	38 ca 	cmpb	%cl, %dl
e0102d37:	7c e2 	jl	-30 <page_decref+0x1b>
e0102d39:	89 04 24 	movl	%eax, (%esp)
e0102d3c:	e8 0f 5a 00 00 	calll	23055 <__asan_report_load2>
e0102d41:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102d4b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0102d50 pgdir_walk:
e0102d50:	31 c0 	xorl	%eax, %eax
e0102d52:	c3 	retl
e0102d53:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102d5d:	0f 1f 00 	nopl	(%eax)

00000000e0102d60 page_insert:
e0102d60:	31 c0 	xorl	%eax, %eax
e0102d62:	c3 	retl
e0102d63:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102d6d:	0f 1f 00 	nopl	(%eax)

00000000e0102d70 page_lookup:
e0102d70:	31 c0 	xorl	%eax, %eax
e0102d72:	c3 	retl
e0102d73:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102d7d:	0f 1f 00 	nopl	(%eax)

00000000e0102d80 page_remove:
e0102d80:	c3 	retl
e0102d81:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102d8b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0102d90 tlb_invalidate:
e0102d90:	8b 44 24 08 	movl	8(%esp), %eax
e0102d94:	0f 01 38 	invlpg	(%eax)
e0102d97:	c3 	retl
e0102d98:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0102da0 nvram_read:
e0102da0:	55 	pushl	%ebp
e0102da1:	89 e5 	movl	%esp, %ebp
e0102da3:	57 	pushl	%edi
e0102da4:	56 	pushl	%esi
e0102da5:	83 ec 10 	subl	$16, %esp
e0102da8:	89 ce 	movl	%ecx, %esi
e0102daa:	89 0c 24 	movl	%ecx, (%esp)
e0102dad:	e8 4e 0e 00 00 	calll	3662 <mc146818_read>
e0102db2:	89 c7 	movl	%eax, %edi
e0102db4:	46 	incl	%esi
e0102db5:	89 34 24 	movl	%esi, (%esp)
e0102db8:	e8 43 0e 00 00 	calll	3651 <mc146818_read>
e0102dbd:	c1 e0 08 	shll	$8, %eax
e0102dc0:	09 f8 	orl	%edi, %eax
e0102dc2:	83 c4 10 	addl	$16, %esp
e0102dc5:	5e 	popl	%esi
e0102dc6:	5f 	popl	%edi
e0102dc7:	5d 	popl	%ebp
e0102dc8:	c3 	retl
e0102dc9:	0f 1f 80 00 00 00 00 	nopl	(%eax)

00000000e0102dd0 _kaddr:
e0102dd0:	55 	pushl	%ebp
e0102dd1:	89 e5 	movl	%esp, %ebp
e0102dd3:	56 	pushl	%esi
e0102dd4:	50 	pushl	%eax
e0102dd5:	89 ce 	movl	%ecx, %esi
e0102dd7:	b8 b4 2f 12 e0 	movl	$3759288244, %eax
e0102ddc:	c1 e8 03 	shrl	$3, %eax
e0102ddf:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102de5:	84 c0 	testb	%al, %al
e0102de7:	75 1b 	jne	27 <_kaddr+0x34>
e0102de9:	89 f0 	movl	%esi, %eax
e0102deb:	c1 e8 0c 	shrl	$12, %eax
e0102dee:	3b 05 b4 2f 12 e0 	cmpl	-535679052, %eax
e0102df4:	73 2d 	jae	45 <_kaddr+0x53>
e0102df6:	81 c6 00 00 00 e0 	addl	$3758096384, %esi
e0102dfc:	89 f0 	movl	%esi, %eax
e0102dfe:	83 c4 04 	addl	$4, %esp
e0102e01:	5e 	popl	%esi
e0102e02:	5d 	popl	%ebp
e0102e03:	c3 	retl
e0102e04:	b9 b4 2f 12 e0 	movl	$3759288244, %ecx
e0102e09:	80 e1 07 	andb	$7, %cl
e0102e0c:	80 c1 03 	addb	$3, %cl
e0102e0f:	38 c1 	cmpb	%al, %cl
e0102e11:	7c d6 	jl	-42 <_kaddr+0x19>
e0102e13:	83 ec 0c 	subl	$12, %esp
e0102e16:	68 b4 2f 12 e0 	pushl	$3759288244
e0102e1b:	e8 70 59 00 00 	calll	22896 <__asan_report_load4>
e0102e20:	83 c4 10 	addl	$16, %esp
e0102e23:	e8 78 57 00 00 	calll	22392 <__asan_handle_no_return>
e0102e28:	56 	pushl	%esi
e0102e29:	68 a0 b5 10 e0 	pushl	$3759191456
e0102e2e:	6a 53 	pushl	$83
e0102e30:	68 60 b5 10 e0 	pushl	$3759191392
e0102e35:	e8 f6 d2 ff ff 	calll	-11530 <_panic>
e0102e3a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e0102e40 page2pa:
e0102e40:	55 	pushl	%ebp
e0102e41:	89 e5 	movl	%esp, %ebp
e0102e43:	83 ec 08 	subl	$8, %esp
e0102e46:	89 c8 	movl	%ecx, %eax
e0102e48:	b9 bc 2f 12 e0 	movl	$3759288252, %ecx
e0102e4d:	c1 e9 03 	shrl	$3, %ecx
e0102e50:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0102e56:	84 c9 	testb	%cl, %cl
e0102e58:	75 0e 	jne	14 <page2pa+0x28>
e0102e5a:	2b 05 bc 2f 12 e0 	subl	-535679044, %eax
e0102e60:	c1 e0 09 	shll	$9, %eax
e0102e63:	83 c4 08 	addl	$8, %esp
e0102e66:	5d 	popl	%ebp
e0102e67:	c3 	retl
e0102e68:	ba bc 2f 12 e0 	movl	$3759288252, %edx
e0102e6d:	80 e2 07 	andb	$7, %dl
e0102e70:	80 c2 03 	addb	$3, %dl
e0102e73:	38 ca 	cmpb	%cl, %dl
e0102e75:	7c e3 	jl	-29 <page2pa+0x1a>
e0102e77:	c7 04 24 bc 2f 12 e0 	movl	$3759288252, (%esp)
e0102e7e:	e8 0d 59 00 00 	calll	22797 <__asan_report_load4>
e0102e83:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0102e8d:	0f 1f 00 	nopl	(%eax)

00000000e0102e90 asan.module_ctor:
e0102e90:	83 ec 0c 	subl	$12, %esp
e0102e93:	e8 68 5e 00 00 	calll	24168 <__asan_init>
e0102e98:	e8 83 5f 00 00 	calll	24451 <__asan_version_mismatch_check_v8>
e0102e9d:	83 ec 08 	subl	$8, %esp
e0102ea0:	6a 25 	pushl	$37
e0102ea2:	68 e0 07 12 e0 	pushl	$3759278048
e0102ea7:	e8 84 5e 00 00 	calll	24196 <__asan_register_globals>
e0102eac:	83 c4 1c 	addl	$28, %esp
e0102eaf:	c3 	retl

00000000e0102eb0 asan.module_dtor:
e0102eb0:	83 ec 14 	subl	$20, %esp
e0102eb3:	6a 25 	pushl	$37
e0102eb5:	68 e0 07 12 e0 	pushl	$3759278048
e0102eba:	e8 c1 5e 00 00 	calll	24257 <__asan_unregister_globals>
e0102ebf:	83 c4 1c 	addl	$28, %esp
e0102ec2:	c3 	retl
e0102ec3:	cc 	int3
e0102ec4:	cc 	int3
e0102ec5:	cc 	int3
e0102ec6:	cc 	int3
e0102ec7:	cc 	int3
e0102ec8:	cc 	int3
e0102ec9:	cc 	int3
e0102eca:	cc 	int3
e0102ecb:	cc 	int3
e0102ecc:	cc 	int3
e0102ecd:	cc 	int3
e0102ece:	cc 	int3
e0102ecf:	cc 	int3

00000000e0102ed0 envid2env:
e0102ed0:	55 	pushl	%ebp
e0102ed1:	89 e5 	movl	%esp, %ebp
e0102ed3:	53 	pushl	%ebx
e0102ed4:	57 	pushl	%edi
e0102ed5:	56 	pushl	%esi
e0102ed6:	83 ec 0c 	subl	$12, %esp
e0102ed9:	8b 5d 0c 	movl	12(%ebp), %ebx
e0102edc:	8b 4d 08 	movl	8(%ebp), %ecx
e0102edf:	85 c9 	testl	%ecx, %ecx
e0102ee1:	0f 84 d5 00 00 00 	je	213 <envid2env+0xec>
e0102ee7:	89 df 	movl	%ebx, %edi
e0102ee9:	8b 15 80 0c 12 e0 	movl	-535688064, %edx
e0102eef:	89 c8 	movl	%ecx, %eax
e0102ef1:	83 e0 1f 	andl	$31, %eax
e0102ef4:	6b f0 5c 	imull	$92, %eax, %esi
e0102ef7:	8d 5c 32 54 	leal	84(%edx,%esi), %ebx
e0102efb:	89 d8 	movl	%ebx, %eax
e0102efd:	c1 e8 03 	shrl	$3, %eax
e0102f00:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102f06:	84 c0 	testb	%al, %al
e0102f08:	0f 85 f4 00 00 00 	jne	244 <envid2env+0x132>
e0102f0e:	83 3b 00 	cmpl	$0, (%ebx)
e0102f11:	0f 84 87 00 00 00 	je	135 <envid2env+0xce>
e0102f17:	8d 5c 32 48 	leal	72(%edx,%esi), %ebx
e0102f1b:	89 d8 	movl	%ebx, %eax
e0102f1d:	c1 e8 03 	shrl	$3, %eax
e0102f20:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102f26:	84 c0 	testb	%al, %al
e0102f28:	0f 85 00 01 00 00 	jne	256 <envid2env+0x15e>
e0102f2e:	39 0b 	cmpl	%ecx, (%ebx)
e0102f30:	75 6c 	jne	108 <envid2env+0xce>
e0102f32:	8a 45 10 	movb	16(%ebp), %al
e0102f35:	8d 0c 32 	leal	(%edx,%esi), %ecx
e0102f38:	84 c0 	testb	%al, %al
e0102f3a:	74 3d 	je	61 <envid2env+0xa9>
e0102f3c:	8b 1d 20 1e 12 e0 	movl	-535683552, %ebx
e0102f42:	39 d9 	cmpl	%ebx, %ecx
e0102f44:	74 33 	je	51 <envid2env+0xa9>
e0102f46:	8d 54 32 4c 	leal	76(%edx,%esi), %edx
e0102f4a:	89 d0 	movl	%edx, %eax
e0102f4c:	c1 e8 03 	shrl	$3, %eax
e0102f4f:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102f55:	84 c0 	testb	%al, %al
e0102f57:	0f 85 fb 00 00 00 	jne	251 <envid2env+0x188>
e0102f5d:	8b 12 	movl	(%edx), %edx
e0102f5f:	83 c3 48 	addl	$72, %ebx
e0102f62:	89 d8 	movl	%ebx, %eax
e0102f64:	c1 e8 03 	shrl	$3, %eax
e0102f67:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102f6d:	84 c0 	testb	%al, %al
e0102f6f:	0f 85 fb 00 00 00 	jne	251 <envid2env+0x1a0>
e0102f75:	3b 13 	cmpl	(%ebx), %edx
e0102f77:	75 64 	jne	100 <envid2env+0x10d>
e0102f79:	89 fb 	movl	%edi, %ebx
e0102f7b:	89 f8 	movl	%edi, %eax
e0102f7d:	c1 e8 03 	shrl	$3, %eax
e0102f80:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102f86:	84 c0 	testb	%al, %al
e0102f88:	74 47 	je	71 <envid2env+0x101>
e0102f8a:	89 da 	movl	%ebx, %edx
e0102f8c:	80 e2 07 	andb	$7, %dl
e0102f8f:	80 c2 03 	addb	$3, %dl
e0102f92:	38 c2 	cmpb	%al, %dl
e0102f94:	7c 3b 	jl	59 <envid2env+0x101>
e0102f96:	89 1c 24 	movl	%ebx, (%esp)
e0102f99:	e8 12 58 00 00 	calll	22546 <__asan_report_store4>
e0102f9e:	89 fa 	movl	%edi, %edx
e0102fa0:	89 f8 	movl	%edi, %eax
e0102fa2:	c1 e8 03 	shrl	$3, %eax
e0102fa5:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102fab:	84 c0 	testb	%al, %al
e0102fad:	75 6b 	jne	107 <envid2env+0x14a>
e0102faf:	c7 02 00 00 00 00 	movl	$0, (%edx)
e0102fb5:	b8 fe ff ff ff 	movl	$4294967294, %eax
e0102fba:	eb 19 	jmp	25 <envid2env+0x105>
e0102fbc:	8b 0d 20 1e 12 e0 	movl	-535683552, %ecx
e0102fc2:	89 d8 	movl	%ebx, %eax
e0102fc4:	c1 e8 03 	shrl	$3, %eax
e0102fc7:	8a 90 00 00 80 de 	movb	-562036736(%eax), %dl
e0102fcd:	84 d2 	testb	%dl, %dl
e0102fcf:	75 75 	jne	117 <envid2env+0x176>
e0102fd1:	89 0b 	movl	%ecx, (%ebx)
e0102fd3:	31 c0 	xorl	%eax, %eax
e0102fd5:	83 c4 0c 	addl	$12, %esp
e0102fd8:	5e 	popl	%esi
e0102fd9:	5f 	popl	%edi
e0102fda:	5b 	popl	%ebx
e0102fdb:	5d 	popl	%ebp
e0102fdc:	c3 	retl
e0102fdd:	89 fa 	movl	%edi, %edx
e0102fdf:	89 f8 	movl	%edi, %eax
e0102fe1:	c1 e8 03 	shrl	$3, %eax
e0102fe4:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0102fea:	84 c0 	testb	%al, %al
e0102fec:	74 c1 	je	-63 <envid2env+0xdf>
e0102fee:	89 d1 	movl	%edx, %ecx
e0102ff0:	80 e1 07 	andb	$7, %cl
e0102ff3:	80 c1 03 	addb	$3, %cl
e0102ff6:	38 c1 	cmpb	%al, %cl
e0102ff8:	7c b5 	jl	-75 <envid2env+0xdf>
e0102ffa:	89 14 24 	movl	%edx, (%esp)
e0102ffd:	e8 ae 57 00 00 	calll	22446 <__asan_report_store4>
e0103002:	88 dc 	movb	%bl, %ah
e0103004:	80 e4 07 	andb	$7, %ah
e0103007:	80 c4 03 	addb	$3, %ah
e010300a:	38 c4 	cmpb	%al, %ah
e010300c:	0f 8c fc fe ff ff 	jl	-260 <envid2env+0x3e>
e0103012:	89 1c 24 	movl	%ebx, (%esp)
e0103015:	e8 76 57 00 00 	calll	22390 <__asan_report_load4>
e010301a:	89 d1 	movl	%edx, %ecx
e010301c:	80 e1 07 	andb	$7, %cl
e010301f:	80 c1 03 	addb	$3, %cl
e0103022:	38 c1 	cmpb	%al, %cl
e0103024:	7c 89 	jl	-119 <envid2env+0xdf>
e0103026:	89 14 24 	movl	%edx, (%esp)
e0103029:	e8 82 57 00 00 	calll	22402 <__asan_report_store4>
e010302e:	88 dc 	movb	%bl, %ah
e0103030:	80 e4 07 	andb	$7, %ah
e0103033:	80 c4 03 	addb	$3, %ah
e0103036:	38 c4 	cmpb	%al, %ah
e0103038:	0f 8c f0 fe ff ff 	jl	-272 <envid2env+0x5e>
e010303e:	89 1c 24 	movl	%ebx, (%esp)
e0103041:	e8 4a 57 00 00 	calll	22346 <__asan_report_load4>
e0103046:	89 d8 	movl	%ebx, %eax
e0103048:	24 07 	andb	$7, %al
e010304a:	04 03 	addb	$3, %al
e010304c:	38 d0 	cmpb	%dl, %al
e010304e:	7c 81 	jl	-127 <envid2env+0x101>
e0103050:	89 1c 24 	movl	%ebx, (%esp)
e0103053:	e8 58 57 00 00 	calll	22360 <__asan_report_store4>
e0103058:	88 d4 	movb	%dl, %ah
e010305a:	80 e4 07 	andb	$7, %ah
e010305d:	80 c4 03 	addb	$3, %ah
e0103060:	38 c4 	cmpb	%al, %ah
e0103062:	0f 8c f5 fe ff ff 	jl	-267 <envid2env+0x8d>
e0103068:	89 14 24 	movl	%edx, (%esp)
e010306b:	e8 20 57 00 00 	calll	22304 <__asan_report_load4>
e0103070:	88 dc 	movb	%bl, %ah
e0103072:	80 e4 07 	andb	$7, %ah
e0103075:	80 c4 03 	addb	$3, %ah
e0103078:	38 c4 	cmpb	%al, %ah
e010307a:	0f 8c f5 fe ff ff 	jl	-267 <envid2env+0xa5>
e0103080:	89 1c 24 	movl	%ebx, (%esp)
e0103083:	e8 08 57 00 00 	calll	22280 <__asan_report_load4>
e0103088:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0103090 env_init:
e0103090:	55 	pushl	%ebp
e0103091:	89 e5 	movl	%esp, %ebp
e0103093:	53 	pushl	%ebx
e0103094:	56 	pushl	%esi
e0103095:	83 ec 10 	subl	$16, %esp
e0103098:	c7 05 60 1e 12 e0 00 00 00 00 	movl	$0, -535683488
e01030a2:	b8 24 0b 00 00 	movl	$2852, %eax
e01030a7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e01030b0:	8b 0d 80 0c 12 e0 	movl	-535688064, %ecx
e01030b6:	8d 54 01 54 	leal	84(%ecx,%eax), %edx
e01030ba:	89 d6 	movl	%edx, %esi
e01030bc:	c1 ee 03 	shrl	$3, %esi
e01030bf:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e01030c6:	84 db 	testb	%bl, %bl
e01030c8:	75 58 	jne	88 <env_init+0x92>
e01030ca:	c7 44 01 54 00 00 00 00 	movl	$0, 84(%ecx,%eax)
e01030d2:	8d 54 01 48 	leal	72(%ecx,%eax), %edx
e01030d6:	89 d6 	movl	%edx, %esi
e01030d8:	c1 ee 03 	shrl	$3, %esi
e01030db:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e01030e2:	84 db 	testb	%bl, %bl
e01030e4:	75 4a 	jne	74 <env_init+0xa0>
e01030e6:	c7 44 01 48 00 00 00 00 	movl	$0, 72(%ecx,%eax)
e01030ee:	8b 15 60 1e 12 e0 	movl	-535683488, %edx
e01030f4:	8d 4c 01 44 	leal	68(%ecx,%eax), %ecx
e01030f8:	89 ce 	movl	%ecx, %esi
e01030fa:	c1 ee 03 	shrl	$3, %esi
e01030fd:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e0103104:	84 db 	testb	%bl, %bl
e0103106:	75 36 	jne	54 <env_init+0xae>
e0103108:	89 11 	movl	%edx, (%ecx)
e010310a:	8b 0d 80 0c 12 e0 	movl	-535688064, %ecx
e0103110:	01 c1 	addl	%eax, %ecx
e0103112:	89 0d 60 1e 12 e0 	movl	%ecx, -535683488
e0103118:	83 c0 a4 	addl	$-92, %eax
e010311b:	83 f8 a4 	cmpl	$-92, %eax
e010311e:	75 90 	jne	-112 <env_init+0x20>
e0103120:	eb 30 	jmp	48 <env_init+0xc2>
e0103122:	88 d7 	movb	%dl, %bh
e0103124:	80 e7 07 	andb	$7, %bh
e0103127:	80 c7 03 	addb	$3, %bh
e010312a:	38 df 	cmpb	%bl, %bh
e010312c:	7c 9c 	jl	-100 <env_init+0x3a>
e010312e:	eb 2a 	jmp	42 <env_init+0xca>
e0103130:	88 d7 	movb	%dl, %bh
e0103132:	80 e7 07 	andb	$7, %bh
e0103135:	80 c7 03 	addb	$3, %bh
e0103138:	38 df 	cmpb	%bl, %bh
e010313a:	7c aa 	jl	-86 <env_init+0x56>
e010313c:	eb 24 	jmp	36 <env_init+0xd2>
e010313e:	88 cf 	movb	%cl, %bh
e0103140:	80 e7 07 	andb	$7, %bh
e0103143:	80 c7 03 	addb	$3, %bh
e0103146:	38 df 	cmpb	%bl, %bh
e0103148:	7c be 	jl	-66 <env_init+0x78>
e010314a:	89 0c 24 	movl	%ecx, (%esp)
e010314d:	e8 5e 56 00 00 	calll	22110 <__asan_report_store4>
e0103152:	83 c4 10 	addl	$16, %esp
e0103155:	5e 	popl	%esi
e0103156:	5b 	popl	%ebx
e0103157:	5d 	popl	%ebp
e0103158:	eb 16 	jmp	22 <env_init_percpu>
e010315a:	89 14 24 	movl	%edx, (%esp)
e010315d:	e8 4e 56 00 00 	calll	22094 <__asan_report_store4>
e0103162:	89 14 24 	movl	%edx, (%esp)
e0103165:	e8 46 56 00 00 	calll	22086 <__asan_report_store4>
e010316a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e0103170 env_init_percpu:
e0103170:	55 	pushl	%ebp
e0103171:	89 e5 	movl	%esp, %ebp
e0103173:	83 ec 08 	subl	$8, %esp
e0103176:	e8 35 00 00 00 	calll	53 <lgdt>
e010317b:	b8 23 00 00 00 	movl	$35, %eax
e0103180:	8e e8 	movl	%eax, %gs
e0103182:	b8 23 00 00 00 	movl	$35, %eax
e0103187:	8e e0 	movl	%eax, %fs
e0103189:	b8 10 00 00 00 	movl	$16, %eax
e010318e:	8e c0 	movl	%eax, %es
e0103190:	b8 10 00 00 00 	movl	$16, %eax
e0103195:	8e d8 	movl	%eax, %ds
e0103197:	b8 10 00 00 00 	movl	$16, %eax
e010319c:	8e d0 	movl	%eax, %ss
e010319e:	ea a5 31 10 e0 08 00 	ljmpl	$8, $3759157669
e01031a5:	31 c0 	xorl	%eax, %eax
e01031a7:	0f 00 d0 	lldtw	%ax
e01031aa:	83 c4 08 	addl	$8, %esp
e01031ad:	5d 	popl	%ebp
e01031ae:	c3 	retl
e01031af:	90 	nop

00000000e01031b0 lgdt:
e01031b0:	b8 20 0d 12 e0 	movl	$3759279392, %eax
e01031b5:	0f 01 10 	lgdtl	(%eax)
e01031b8:	c3 	retl
e01031b9:	0f 1f 80 00 00 00 00 	nopl	(%eax)

00000000e01031c0 env_alloc:
e01031c0:	55 	pushl	%ebp
e01031c1:	89 e5 	movl	%esp, %ebp
e01031c3:	53 	pushl	%ebx
e01031c4:	57 	pushl	%edi
e01031c5:	56 	pushl	%esi
e01031c6:	83 ec 0c 	subl	$12, %esp
e01031c9:	8b 3d 60 1e 12 e0 	movl	-535683488, %edi
e01031cf:	85 ff 	testl	%edi, %edi
e01031d1:	0f 84 1f 01 00 00 	je	287 <env_alloc+0x136>
e01031d7:	8d 5f 48 	leal	72(%edi), %ebx
e01031da:	89 de 	movl	%ebx, %esi
e01031dc:	c1 ee 03 	shrl	$3, %esi
e01031df:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e01031e5:	84 c0 	testb	%al, %al
e01031e7:	0f 85 40 01 00 00 	jne	320 <env_alloc+0x16d>
e01031ed:	b8 00 10 00 00 	movl	$4096, %eax
e01031f2:	8b 4f 48 	movl	72(%edi), %ecx
e01031f5:	01 c1 	addl	%eax, %ecx
e01031f7:	83 e1 e0 	andl	$-32, %ecx
e01031fa:	85 c9 	testl	%ecx, %ecx
e01031fc:	0f 4e c8 	cmovlel	%eax, %ecx
e01031ff:	89 f8 	movl	%edi, %eax
e0103201:	2b 05 80 0c 12 e0 	subl	-535688064, %eax
e0103207:	c1 f8 02 	sarl	$2, %eax
e010320a:	69 c0 a7 37 bd e9 	imull	$3921491879, %eax, %eax
e0103210:	09 c8 	orl	%ecx, %eax
e0103212:	89 47 48 	movl	%eax, 72(%edi)
e0103215:	8d 47 4c 	leal	76(%edi), %eax
e0103218:	89 c1 	movl	%eax, %ecx
e010321a:	c1 e9 03 	shrl	$3, %ecx
e010321d:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0103223:	84 c9 	testb	%cl, %cl
e0103225:	0f 85 1a 01 00 00 	jne	282 <env_alloc+0x185>
e010322b:	8b 45 0c 	movl	12(%ebp), %eax
e010322e:	89 47 4c 	movl	%eax, 76(%edi)
e0103231:	8d 47 54 	leal	84(%edi), %eax
e0103234:	89 c1 	movl	%eax, %ecx
e0103236:	c1 e9 03 	shrl	$3, %ecx
e0103239:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010323f:	84 c9 	testb	%cl, %cl
e0103241:	0f 85 16 01 00 00 	jne	278 <env_alloc+0x19d>
e0103247:	c7 47 54 02 00 00 00 	movl	$2, 84(%edi)
e010324e:	8d 47 58 	leal	88(%edi), %eax
e0103251:	89 c1 	movl	%eax, %ecx
e0103253:	c1 e9 03 	shrl	$3, %ecx
e0103256:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010325c:	84 c9 	testb	%cl, %cl
e010325e:	0f 85 11 01 00 00 	jne	273 <env_alloc+0x1b5>
e0103264:	c7 47 58 00 00 00 00 	movl	$0, 88(%edi)
e010326b:	89 3c 24 	movl	%edi, (%esp)
e010326e:	c7 44 24 08 44 00 00 00 	movl	$68, 8(%esp)
e0103276:	c7 44 24 04 00 00 00 00 	movl	$0, 4(%esp)
e010327e:	e8 8d 60 00 00 	calll	24717 <__wrap_memset>
e0103283:	8d 47 38 	leal	56(%edi), %eax
e0103286:	89 c1 	movl	%eax, %ecx
e0103288:	c1 e9 03 	shrl	$3, %ecx
e010328b:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0103291:	84 c9 	testb	%cl, %cl
e0103293:	0f 85 f4 00 00 00 	jne	244 <env_alloc+0x1cd>
e0103299:	80 4f 39 02 	orb	$2, 57(%edi)
e010329d:	8d 4f 44 	leal	68(%edi), %ecx
e01032a0:	89 c8 	movl	%ecx, %eax
e01032a2:	c1 e8 03 	shrl	$3, %eax
e01032a5:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01032ab:	84 c0 	testb	%al, %al
e01032ad:	0f 85 f2 00 00 00 	jne	242 <env_alloc+0x1e5>
e01032b3:	8b 45 08 	movl	8(%ebp), %eax
e01032b6:	8b 09 	movl	(%ecx), %ecx
e01032b8:	89 0d 60 1e 12 e0 	movl	%ecx, -535683488
e01032be:	89 c1 	movl	%eax, %ecx
e01032c0:	c1 e9 03 	shrl	$3, %ecx
e01032c3:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01032c9:	84 c9 	testb	%cl, %cl
e01032cb:	0f 85 ec 00 00 00 	jne	236 <env_alloc+0x1fd>
e01032d1:	89 38 	movl	%edi, (%eax)
e01032d3:	a1 20 1e 12 e0 	movl	3759283744, %eax
e01032d8:	85 c0 	testl	%eax, %eax
e01032da:	74 21 	je	33 <env_alloc+0x13d>
e01032dc:	83 c0 48 	addl	$72, %eax
e01032df:	89 c1 	movl	%eax, %ecx
e01032e1:	c1 e9 03 	shrl	$3, %ecx
e01032e4:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01032ea:	84 c9 	testb	%cl, %cl
e01032ec:	0f 85 fb 00 00 00 	jne	251 <env_alloc+0x22d>
e01032f2:	8b 00 	movl	(%eax), %eax
e01032f4:	eb 09 	jmp	9 <env_alloc+0x13f>
e01032f6:	b8 fb ff ff ff 	movl	$4294967291, %eax
e01032fb:	eb 28 	jmp	40 <env_alloc+0x165>
e01032fd:	31 c0 	xorl	%eax, %eax
e01032ff:	8a 8e 00 00 80 de 	movb	-562036736(%esi), %cl
e0103305:	84 c9 	testb	%cl, %cl
e0103307:	0f 85 c8 00 00 00 	jne	200 <env_alloc+0x215>
e010330d:	8b 0b 	movl	(%ebx), %ecx
e010330f:	89 4c 24 08 	movl	%ecx, 8(%esp)
e0103313:	89 44 24 04 	movl	%eax, 4(%esp)
e0103317:	c7 04 24 a0 bf 10 e0 	movl	$3759194016, (%esp)
e010331e:	e8 1d 0c 00 00 	calll	3101 <cprintf>
e0103323:	31 c0 	xorl	%eax, %eax
e0103325:	83 c4 0c 	addl	$12, %esp
e0103328:	5e 	popl	%esi
e0103329:	5f 	popl	%edi
e010332a:	5b 	popl	%ebx
e010332b:	5d 	popl	%ebp
e010332c:	c3 	retl
e010332d:	89 d9 	movl	%ebx, %ecx
e010332f:	80 e1 07 	andb	$7, %cl
e0103332:	80 c1 03 	addb	$3, %cl
e0103335:	38 c1 	cmpb	%al, %cl
e0103337:	0f 8c b0 fe ff ff 	jl	-336 <env_alloc+0x2d>
e010333d:	89 1c 24 	movl	%ebx, (%esp)
e0103340:	e8 4b 54 00 00 	calll	21579 <__asan_report_load4>
e0103345:	89 c2 	movl	%eax, %edx
e0103347:	80 e2 07 	andb	$7, %dl
e010334a:	80 c2 03 	addb	$3, %dl
e010334d:	38 ca 	cmpb	%cl, %dl
e010334f:	0f 8c d6 fe ff ff 	jl	-298 <env_alloc+0x6b>
e0103355:	89 04 24 	movl	%eax, (%esp)
e0103358:	e8 53 54 00 00 	calll	21587 <__asan_report_store4>
e010335d:	89 c2 	movl	%eax, %edx
e010335f:	80 e2 07 	andb	$7, %dl
e0103362:	80 c2 03 	addb	$3, %dl
e0103365:	38 ca 	cmpb	%cl, %dl
e0103367:	0f 8c da fe ff ff 	jl	-294 <env_alloc+0x87>
e010336d:	89 04 24 	movl	%eax, (%esp)
e0103370:	e8 3b 54 00 00 	calll	21563 <__asan_report_store4>
e0103375:	89 c2 	movl	%eax, %edx
e0103377:	80 e2 07 	andb	$7, %dl
e010337a:	80 c2 03 	addb	$3, %dl
e010337d:	38 ca 	cmpb	%cl, %dl
e010337f:	0f 8c df fe ff ff 	jl	-289 <env_alloc+0xa4>
e0103385:	89 04 24 	movl	%eax, (%esp)
e0103388:	e8 23 54 00 00 	calll	21539 <__asan_report_store4>
e010338d:	89 c2 	movl	%eax, %edx
e010338f:	80 e2 07 	andb	$7, %dl
e0103392:	80 c2 03 	addb	$3, %dl
e0103395:	38 ca 	cmpb	%cl, %dl
e0103397:	0f 8c fc fe ff ff 	jl	-260 <env_alloc+0xd9>
e010339d:	89 04 24 	movl	%eax, (%esp)
e01033a0:	e8 eb 53 00 00 	calll	21483 <__asan_report_load4>
e01033a5:	89 ca 	movl	%ecx, %edx
e01033a7:	80 e2 07 	andb	$7, %dl
e01033aa:	80 c2 03 	addb	$3, %dl
e01033ad:	38 c2 	cmpb	%al, %dl
e01033af:	0f 8c fe fe ff ff 	jl	-258 <env_alloc+0xf3>
e01033b5:	89 0c 24 	movl	%ecx, (%esp)
e01033b8:	e8 d3 53 00 00 	calll	21459 <__asan_report_load4>
e01033bd:	89 c2 	movl	%eax, %edx
e01033bf:	80 e2 07 	andb	$7, %dl
e01033c2:	80 c2 03 	addb	$3, %dl
e01033c5:	38 ca 	cmpb	%cl, %dl
e01033c7:	0f 8c 04 ff ff ff 	jl	-252 <env_alloc+0x111>
e01033cd:	89 04 24 	movl	%eax, (%esp)
e01033d0:	e8 db 53 00 00 	calll	21467 <__asan_report_store4>
e01033d5:	89 da 	movl	%ebx, %edx
e01033d7:	80 e2 07 	andb	$7, %dl
e01033da:	80 c2 03 	addb	$3, %dl
e01033dd:	38 ca 	cmpb	%cl, %dl
e01033df:	0f 8c 28 ff ff ff 	jl	-216 <env_alloc+0x14d>
e01033e5:	89 1c 24 	movl	%ebx, (%esp)
e01033e8:	e8 a3 53 00 00 	calll	21411 <__asan_report_load4>
e01033ed:	89 c2 	movl	%eax, %edx
e01033ef:	80 e2 07 	andb	$7, %dl
e01033f2:	80 c2 03 	addb	$3, %dl
e01033f5:	38 ca 	cmpb	%cl, %dl
e01033f7:	0f 8c f5 fe ff ff 	jl	-267 <env_alloc+0x132>
e01033fd:	89 04 24 	movl	%eax, (%esp)
e0103400:	e8 8b 53 00 00 	calll	21387 <__asan_report_load4>
e0103405:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010340f:	90 	nop

00000000e0103410 env_create:
e0103410:	55 	pushl	%ebp
e0103411:	89 e5 	movl	%esp, %ebp
e0103413:	53 	pushl	%ebx
e0103414:	57 	pushl	%edi
e0103415:	56 	pushl	%esi
e0103416:	83 e4 e0 	andl	$-32, %esp
e0103419:	83 ec 40 	subl	$64, %esp
e010341c:	89 e6 	movl	%esp, %esi
e010341e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0103425:	74 11 	je	17 <env_create+0x28>
e0103427:	83 ec 0c 	subl	$12, %esp
e010342a:	6a 20 	pushl	$32
e010342c:	e8 5f 55 00 00 	calll	21855 <__asan_stack_malloc_0>
e0103431:	83 c4 10 	addl	$16, %esp
e0103434:	89 c7 	movl	%eax, %edi
e0103436:	eb 02 	jmp	2 <env_create+0x2a>
e0103438:	31 ff 	xorl	%edi, %edi
e010343a:	85 ff 	testl	%edi, %edi
e010343c:	89 7e 18 	movl	%edi, 24(%esi)
e010343f:	75 0a 	jne	10 <env_create+0x3b>
e0103441:	89 e7 	movl	%esp, %edi
e0103443:	83 c7 e0 	addl	$-32, %edi
e0103446:	83 e7 e0 	andl	$-32, %edi
e0103449:	89 fc 	movl	%edi, %esp
e010344b:	89 7e 1c 	movl	%edi, 28(%esi)
e010344e:	8d 57 10 	leal	16(%edi), %edx
e0103451:	c7 07 b3 8a b5 41 	movl	$1102416563, (%edi)
e0103457:	c7 47 04 ee a4 10 e0 	movl	$3759187182, 4(%edi)
e010345e:	c7 47 08 10 34 10 e0 	movl	$3759158288, 8(%edi)
e0103465:	89 f8 	movl	%edi, %eax
e0103467:	c1 e8 03 	shrl	$3, %eax
e010346a:	c7 80 00 00 80 de f1 f1 f8 f3 	movl	$4093178353, -562036736(%eax)
e0103474:	89 46 14 	movl	%eax, 20(%esi)
e0103477:	c6 80 02 00 80 de 04 	movb	$4, -562036734(%eax)
e010347e:	89 d3 	movl	%edx, %ebx
e0103480:	c1 eb 03 	shrl	$3, %ebx
e0103483:	8a 83 00 00 80 de 	movb	-562036736(%ebx), %al
e0103489:	84 c0 	testb	%al, %al
e010348b:	0f 85 9c 00 00 00 	jne	156 <env_create+0x11d>
e0103491:	c7 02 00 00 00 00 	movl	$0, (%edx)
e0103497:	83 ec 08 	subl	$8, %esp
e010349a:	6a 00 	pushl	$0
e010349c:	89 56 10 	movl	%edx, 16(%esi)
e010349f:	52 	pushl	%edx
e01034a0:	e8 1b fd ff ff 	calll	-741 <env_alloc>
e01034a5:	83 c4 10 	addl	$16, %esp
e01034a8:	85 c0 	testl	%eax, %eax
e01034aa:	0f 85 d4 00 00 00 	jne	212 <env_create+0x174>
e01034b0:	8a 83 00 00 80 de 	movb	-562036736(%ebx), %al
e01034b6:	84 c0 	testb	%al, %al
e01034b8:	0f 85 8b 00 00 00 	jne	139 <env_create+0x139>
e01034be:	8b 55 08 	movl	8(%ebp), %edx
e01034c1:	8b 46 10 	movl	16(%esi), %eax
e01034c4:	8b 18 	movl	(%eax), %ebx
e01034c6:	89 d9 	movl	%ebx, %ecx
e01034c8:	e8 d3 00 00 00 	calll	211 <load_icode>
e01034cd:	83 c3 50 	addl	$80, %ebx
e01034d0:	89 d8 	movl	%ebx, %eax
e01034d2:	c1 e8 03 	shrl	$3, %eax
e01034d5:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01034db:	84 c0 	testb	%al, %al
e01034dd:	0f 85 85 00 00 00 	jne	133 <env_create+0x158>
e01034e3:	8b 45 10 	movl	16(%ebp), %eax
e01034e6:	89 03 	movl	%eax, (%ebx)
e01034e8:	8b 4e 14 	movl	20(%esi), %ecx
e01034eb:	c6 81 02 00 80 de f8 	movb	$-8, -562036734(%ecx)
e01034f2:	c7 07 0e 36 e0 45 	movl	$1172321806, (%edi)
e01034f8:	8b 46 18 	movl	24(%esi), %eax
e01034fb:	85 c0 	testl	%eax, %eax
e01034fd:	74 1c 	je	28 <env_create+0x10b>
e01034ff:	c7 81 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%ecx)
e0103509:	c7 81 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%ecx)
e0103513:	8b 40 3c 	movl	60(%eax), %eax
e0103516:	c6 00 00 	movb	$0, (%eax)
e0103519:	eb 0a 	jmp	10 <env_create+0x115>
e010351b:	c7 81 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%ecx)
e0103525:	8d 65 f4 	leal	-12(%ebp), %esp
e0103528:	5e 	popl	%esi
e0103529:	5f 	popl	%edi
e010352a:	5b 	popl	%ebx
e010352b:	5d 	popl	%ebp
e010352c:	c3 	retl
e010352d:	89 d1 	movl	%edx, %ecx
e010352f:	80 e1 07 	andb	$7, %cl
e0103532:	80 c1 03 	addb	$3, %cl
e0103535:	38 c1 	cmpb	%al, %cl
e0103537:	0f 8c 54 ff ff ff 	jl	-172 <env_create+0x81>
e010353d:	83 ec 0c 	subl	$12, %esp
e0103540:	52 	pushl	%edx
e0103541:	e8 6a 52 00 00 	calll	21098 <__asan_report_store4>
e0103546:	83 c4 10 	addl	$16, %esp
e0103549:	8b 4e 10 	movl	16(%esi), %ecx
e010354c:	80 e1 07 	andb	$7, %cl
e010354f:	80 c1 03 	addb	$3, %cl
e0103552:	38 c1 	cmpb	%al, %cl
e0103554:	0f 8c 64 ff ff ff 	jl	-156 <env_create+0xae>
e010355a:	83 ec 0c 	subl	$12, %esp
e010355d:	ff 76 10 	pushl	16(%esi)
e0103560:	e8 2b 52 00 00 	calll	21035 <__asan_report_load4>
e0103565:	83 c4 10 	addl	$16, %esp
e0103568:	89 d9 	movl	%ebx, %ecx
e010356a:	80 e1 07 	andb	$7, %cl
e010356d:	80 c1 03 	addb	$3, %cl
e0103570:	38 c1 	cmpb	%al, %cl
e0103572:	0f 8c 6b ff ff ff 	jl	-149 <env_create+0xd3>
e0103578:	83 ec 0c 	subl	$12, %esp
e010357b:	53 	pushl	%ebx
e010357c:	e8 2f 52 00 00 	calll	21039 <__asan_report_store4>
e0103581:	83 c4 10 	addl	$16, %esp
e0103584:	89 c7 	movl	%eax, %edi
e0103586:	e8 15 50 00 00 	calll	20501 <__asan_handle_no_return>
e010358b:	57 	pushl	%edi
e010358c:	68 20 c0 10 e0 	pushl	$3759194144
e0103591:	68 57 01 00 00 	pushl	$343
e0103596:	68 e0 bf 10 e0 	pushl	$3759194080
e010359b:	e8 90 cb ff ff 	calll	-13424 <_panic>

00000000e01035a0 load_icode:
e01035a0:	55 	pushl	%ebp
e01035a1:	89 e5 	movl	%esp, %ebp
e01035a3:	53 	pushl	%ebx
e01035a4:	57 	pushl	%edi
e01035a5:	56 	pushl	%esi
e01035a6:	83 ec 2c 	subl	$44, %esp
e01035a9:	89 d0 	movl	%edx, %eax
e01035ab:	c1 e8 03 	shrl	$3, %eax
e01035ae:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01035b4:	84 c0 	testb	%al, %al
e01035b6:	0f 85 66 02 00 00 	jne	614 <load_icode+0x282>
e01035bc:	81 3a 7f 45 4c 46 	cmpl	$1179403647, (%edx)
e01035c2:	0f 85 ed 02 00 00 	jne	749 <load_icode+0x315>
e01035c8:	89 4d dc 	movl	%ecx, -36(%ebp)
e01035cb:	8d 42 1c 	leal	28(%edx), %eax
e01035ce:	89 c1 	movl	%eax, %ecx
e01035d0:	c1 e9 03 	shrl	$3, %ecx
e01035d3:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01035d9:	84 c9 	testb	%cl, %cl
e01035db:	0f 85 59 02 00 00 	jne	601 <load_icode+0x29a>
e01035e1:	8b 5a 1c 	movl	28(%edx), %ebx
e01035e4:	01 d3 	addl	%edx, %ebx
e01035e6:	89 55 e0 	movl	%edx, -32(%ebp)
e01035e9:	8d 42 2c 	leal	44(%edx), %eax
e01035ec:	89 c1 	movl	%eax, %ecx
e01035ee:	c1 e9 03 	shrl	$3, %ecx
e01035f1:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01035f7:	84 c9 	testb	%cl, %cl
e01035f9:	0f 85 53 02 00 00 	jne	595 <load_icode+0x2b2>
e01035ff:	0f b7 10 	movzwl	(%eax), %edx
e0103602:	c1 e2 05 	shll	$5, %edx
e0103605:	01 da 	addl	%ebx, %edx
e0103607:	39 da 	cmpl	%ebx, %edx
e0103609:	0f 86 dd 01 00 00 	jbe	477 <load_icode+0x24c>
e010360f:	89 55 d8 	movl	%edx, -40(%ebp)
e0103612:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010361c:	0f 1f 40 00 	nopl	(%eax)
e0103620:	89 d8 	movl	%ebx, %eax
e0103622:	c1 e8 03 	shrl	$3, %eax
e0103625:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e010362c:	84 c0 	testb	%al, %al
e010362e:	0f 85 ff 00 00 00 	jne	255 <load_icode+0x193>
e0103634:	83 3b 01 	cmpl	$1, (%ebx)
e0103637:	0f 85 e6 00 00 00 	jne	230 <load_icode+0x183>
e010363d:	8d 43 10 	leal	16(%ebx), %eax
e0103640:	89 45 ec 	movl	%eax, -20(%ebp)
e0103643:	89 c7 	movl	%eax, %edi
e0103645:	c1 ef 03 	shrl	$3, %edi
e0103648:	0f b6 87 00 00 80 de 	movzbl	-562036736(%edi), %eax
e010364f:	84 c0 	testb	%al, %al
e0103651:	0f 85 f1 00 00 00 	jne	241 <load_icode+0x1a8>
e0103657:	8b 43 10 	movl	16(%ebx), %eax
e010365a:	8d 73 14 	leal	20(%ebx), %esi
e010365d:	89 75 f0 	movl	%esi, -16(%ebp)
e0103660:	c1 ee 03 	shrl	$3, %esi
e0103663:	89 75 e8 	movl	%esi, -24(%ebp)
e0103666:	0f b6 8e 00 00 80 de 	movzbl	-562036736(%esi), %ecx
e010366d:	84 c9 	testb	%cl, %cl
e010366f:	0f 85 e9 00 00 00 	jne	233 <load_icode+0x1be>
e0103675:	89 7d d4 	movl	%edi, -44(%ebp)
e0103678:	3b 43 14 	cmpl	20(%ebx), %eax
e010367b:	0f 87 10 02 00 00 	ja	528 <load_icode+0x2f1>
e0103681:	89 c6 	movl	%eax, %esi
e0103683:	8d 53 08 	leal	8(%ebx), %edx
e0103686:	89 d7 	movl	%edx, %edi
e0103688:	c1 ef 03 	shrl	$3, %edi
e010368b:	0f b6 8f 00 00 80 de 	movzbl	-562036736(%edi), %ecx
e0103692:	84 c9 	testb	%cl, %cl
e0103694:	0f 85 dc 00 00 00 	jne	220 <load_icode+0x1d6>
e010369a:	89 55 e4 	movl	%edx, -28(%ebp)
e010369d:	8b 4b 08 	movl	8(%ebx), %ecx
e01036a0:	8d 53 04 	leal	4(%ebx), %edx
e01036a3:	89 d0 	movl	%edx, %eax
e01036a5:	c1 e8 03 	shrl	$3, %eax
e01036a8:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01036af:	84 c0 	testb	%al, %al
e01036b1:	0f 85 d2 00 00 00 	jne	210 <load_icode+0x1e9>
e01036b7:	8b 02 	movl	(%edx), %eax
e01036b9:	03 45 e0 	addl	-32(%ebp), %eax
e01036bc:	89 74 24 08 	movl	%esi, 8(%esp)
e01036c0:	89 44 24 04 	movl	%eax, 4(%esp)
e01036c4:	89 0c 24 	movl	%ecx, (%esp)
e01036c7:	e8 64 5c 00 00 	calll	23652 <__wrap_memmove>
e01036cc:	0f b6 87 00 00 80 de 	movzbl	-562036736(%edi), %eax
e01036d3:	84 c0 	testb	%al, %al
e01036d5:	0f 85 c3 00 00 00 	jne	195 <load_icode+0x1fe>
e01036db:	8b 43 08 	movl	8(%ebx), %eax
e01036de:	8b 4d d4 	movl	-44(%ebp), %ecx
e01036e1:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e01036e8:	84 c9 	testb	%cl, %cl
e01036ea:	0f 85 c4 00 00 00 	jne	196 <load_icode+0x214>
e01036f0:	8b 4b 10 	movl	16(%ebx), %ecx
e01036f3:	8b 55 e8 	movl	-24(%ebp), %edx
e01036f6:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e01036fd:	84 d2 	testb	%dl, %dl
e01036ff:	0f 85 c5 00 00 00 	jne	197 <load_icode+0x22a>
e0103705:	01 c8 	addl	%ecx, %eax
e0103707:	8b 53 14 	movl	20(%ebx), %edx
e010370a:	29 ca 	subl	%ecx, %edx
e010370c:	89 54 24 08 	movl	%edx, 8(%esp)
e0103710:	89 04 24 	movl	%eax, (%esp)
e0103713:	c7 44 24 04 00 00 00 00 	movl	$0, 4(%esp)
e010371b:	e8 f0 5b 00 00 	calll	23536 <__wrap_memset>
e0103720:	8b 55 d8 	movl	-40(%ebp), %edx
e0103723:	83 c3 20 	addl	$32, %ebx
e0103726:	39 d3 	cmpl	%edx, %ebx
e0103728:	0f 82 f2 fe ff ff 	jb	-270 <load_icode+0x80>
e010372e:	e9 b9 00 00 00 	jmp	185 <load_icode+0x24c>
e0103733:	89 d9 	movl	%ebx, %ecx
e0103735:	80 e1 07 	andb	$7, %cl
e0103738:	80 c1 03 	addb	$3, %cl
e010373b:	38 c1 	cmpb	%al, %cl
e010373d:	0f 8c f1 fe ff ff 	jl	-271 <load_icode+0x94>
e0103743:	e9 84 01 00 00 	jmp	388 <load_icode+0x32c>
e0103748:	8b 4d ec 	movl	-20(%ebp), %ecx
e010374b:	80 e1 07 	andb	$7, %cl
e010374e:	80 c1 03 	addb	$3, %cl
e0103751:	38 c1 	cmpb	%al, %cl
e0103753:	0f 8c fe fe ff ff 	jl	-258 <load_icode+0xb7>
e0103759:	e9 76 01 00 00 	jmp	374 <load_icode+0x334>
e010375e:	89 c6 	movl	%eax, %esi
e0103760:	8b 45 f0 	movl	-16(%ebp), %eax
e0103763:	24 07 	andb	$7, %al
e0103765:	04 03 	addb	$3, %al
e0103767:	38 c8 	cmpb	%cl, %al
e0103769:	89 f0 	movl	%esi, %eax
e010376b:	0f 8c 04 ff ff ff 	jl	-252 <load_icode+0xd5>
e0103771:	e9 69 01 00 00 	jmp	361 <load_icode+0x33f>
e0103776:	89 d0 	movl	%edx, %eax
e0103778:	24 07 	andb	$7, %al
e010377a:	04 03 	addb	$3, %al
e010377c:	38 c8 	cmpb	%cl, %al
e010377e:	0f 8c 16 ff ff ff 	jl	-234 <load_icode+0xfa>
e0103784:	e9 61 01 00 00 	jmp	353 <load_icode+0x34a>
e0103789:	88 d4 	movb	%dl, %ah
e010378b:	80 e4 07 	andb	$7, %ah
e010378e:	80 c4 03 	addb	$3, %ah
e0103791:	38 c4 	cmpb	%al, %ah
e0103793:	0f 8c 1e ff ff ff 	jl	-226 <load_icode+0x117>
e0103799:	e9 54 01 00 00 	jmp	340 <load_icode+0x352>
e010379e:	8b 4d e4 	movl	-28(%ebp), %ecx
e01037a1:	80 e1 07 	andb	$7, %cl
e01037a4:	80 c1 03 	addb	$3, %cl
e01037a7:	38 c1 	cmpb	%al, %cl
e01037a9:	0f 8c 2c ff ff ff 	jl	-212 <load_icode+0x13b>
e01037af:	e9 46 01 00 00 	jmp	326 <load_icode+0x35a>
e01037b4:	8b 55 ec 	movl	-20(%ebp), %edx
e01037b7:	80 e2 07 	andb	$7, %dl
e01037ba:	80 c2 03 	addb	$3, %dl
e01037bd:	38 ca 	cmpb	%cl, %dl
e01037bf:	0f 8c 2b ff ff ff 	jl	-213 <load_icode+0x150>
e01037c5:	e9 3b 01 00 00 	jmp	315 <load_icode+0x365>
e01037ca:	88 55 e8 	movb	%dl, -24(%ebp)
e01037cd:	8b 55 f0 	movl	-16(%ebp), %edx
e01037d0:	88 d6 	movb	%dl, %dh
e01037d2:	80 e6 07 	andb	$7, %dh
e01037d5:	80 c6 03 	addb	$3, %dh
e01037d8:	3a 75 e8 	cmpb	-24(%ebp), %dh
e01037db:	0f 8c 24 ff ff ff 	jl	-220 <load_icode+0x165>
e01037e1:	8b 45 f0 	movl	-16(%ebp), %eax
e01037e4:	89 04 24 	movl	%eax, (%esp)
e01037e7:	e8 a4 4f 00 00 	calll	20388 <__asan_report_load4>
e01037ec:	8b 55 e0 	movl	-32(%ebp), %edx
e01037ef:	83 c2 18 	addl	$24, %edx
e01037f2:	89 d0 	movl	%edx, %eax
e01037f4:	c1 e8 03 	shrl	$3, %eax
e01037f7:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01037fd:	84 c0 	testb	%al, %al
e01037ff:	75 68 	jne	104 <load_icode+0x2c9>
e0103801:	8b 02 	movl	(%edx), %eax
e0103803:	8b 5d dc 	movl	-36(%ebp), %ebx
e0103806:	83 c3 30 	addl	$48, %ebx
e0103809:	89 d9 	movl	%ebx, %ecx
e010380b:	c1 e9 03 	shrl	$3, %ecx
e010380e:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0103814:	84 c9 	testb	%cl, %cl
e0103816:	75 65 	jne	101 <load_icode+0x2dd>
e0103818:	89 03 	movl	%eax, (%ebx)
e010381a:	83 c4 2c 	addl	$44, %esp
e010381d:	5e 	popl	%esi
e010381e:	5f 	popl	%edi
e010381f:	5b 	popl	%ebx
e0103820:	5d 	popl	%ebp
e0103821:	c3 	retl
e0103822:	88 d4 	movb	%dl, %ah
e0103824:	80 e4 07 	andb	$7, %ah
e0103827:	80 c4 03 	addb	$3, %ah
e010382a:	38 c4 	cmpb	%al, %ah
e010382c:	0f 8c 8a fd ff ff 	jl	-630 <load_icode+0x1c>
e0103832:	89 14 24 	movl	%edx, (%esp)
e0103835:	e8 56 4f 00 00 	calll	20310 <__asan_report_load4>
e010383a:	88 c5 	movb	%al, %ch
e010383c:	80 e5 07 	andb	$7, %ch
e010383f:	80 c5 03 	addb	$3, %ch
e0103842:	38 cd 	cmpb	%cl, %ch
e0103844:	0f 8c 97 fd ff ff 	jl	-617 <load_icode+0x41>
e010384a:	89 04 24 	movl	%eax, (%esp)
e010384d:	e8 3e 4f 00 00 	calll	20286 <__asan_report_load4>
e0103852:	89 c2 	movl	%eax, %edx
e0103854:	80 e2 07 	andb	$7, %dl
e0103857:	fe c2 	incb	%dl
e0103859:	38 ca 	cmpb	%cl, %dl
e010385b:	0f 8c 9e fd ff ff 	jl	-610 <load_icode+0x5f>
e0103861:	89 04 24 	movl	%eax, (%esp)
e0103864:	e8 e7 4e 00 00 	calll	20199 <__asan_report_load2>
e0103869:	89 d1 	movl	%edx, %ecx
e010386b:	80 e1 07 	andb	$7, %cl
e010386e:	80 c1 03 	addb	$3, %cl
e0103871:	38 c1 	cmpb	%al, %cl
e0103873:	7c 8c 	jl	-116 <load_icode+0x261>
e0103875:	89 14 24 	movl	%edx, (%esp)
e0103878:	e8 13 4f 00 00 	calll	20243 <__asan_report_load4>
e010387d:	89 da 	movl	%ebx, %edx
e010387f:	80 e2 07 	andb	$7, %dl
e0103882:	80 c2 03 	addb	$3, %dl
e0103885:	38 ca 	cmpb	%cl, %dl
e0103887:	7c 8f 	jl	-113 <load_icode+0x278>
e0103889:	89 1c 24 	movl	%ebx, (%esp)
e010388c:	e8 1f 4f 00 00 	calll	20255 <__asan_report_store4>
e0103891:	e8 0a 4d 00 00 	calll	19722 <__asan_handle_no_return>
e0103896:	c7 44 24 08 80 c1 10 e0 	movl	$3759194496, 8(%esp)
e010389e:	c7 44 24 04 3d 01 00 00 	movl	$317, 4(%esp)
e01038a6:	c7 04 24 e0 bf 10 e0 	movl	$3759194080, (%esp)
e01038ad:	e8 7e c8 ff ff 	calll	-14210 <_panic>
e01038b2:	83 ec 0c 	subl	$12, %esp
e01038b5:	e8 e6 4c 00 00 	calll	19686 <__asan_handle_no_return>
e01038ba:	c7 44 24 08 40 c1 10 e0 	movl	$3759194432, 8(%esp)
e01038c2:	c7 44 24 04 36 01 00 00 	movl	$310, 4(%esp)
e01038ca:	eb da 	jmp	-38 <load_icode+0x306>
e01038cc:	89 1c 24 	movl	%ebx, (%esp)
e01038cf:	e8 bc 4e 00 00 	calll	20156 <__asan_report_load4>
e01038d4:	8b 45 ec 	movl	-20(%ebp), %eax
e01038d7:	89 04 24 	movl	%eax, (%esp)
e01038da:	e8 b1 4e 00 00 	calll	20145 <__asan_report_load4>
e01038df:	8b 45 f0 	movl	-16(%ebp), %eax
e01038e2:	89 04 24 	movl	%eax, (%esp)
e01038e5:	e8 a6 4e 00 00 	calll	20134 <__asan_report_load4>
e01038ea:	89 14 24 	movl	%edx, (%esp)
e01038ed:	e8 9e 4e 00 00 	calll	20126 <__asan_report_load4>
e01038f2:	89 14 24 	movl	%edx, (%esp)
e01038f5:	e8 96 4e 00 00 	calll	20118 <__asan_report_load4>
e01038fa:	8b 45 e4 	movl	-28(%ebp), %eax
e01038fd:	89 04 24 	movl	%eax, (%esp)
e0103900:	e8 8b 4e 00 00 	calll	20107 <__asan_report_load4>
e0103905:	8b 45 ec 	movl	-20(%ebp), %eax
e0103908:	89 04 24 	movl	%eax, (%esp)
e010390b:	e8 80 4e 00 00 	calll	20096 <__asan_report_load4>

00000000e0103910 env_free:
e0103910:	55 	pushl	%ebp
e0103911:	89 e5 	movl	%esp, %ebp
e0103913:	56 	pushl	%esi
e0103914:	83 ec 14 	subl	$20, %esp
e0103917:	a1 20 1e 12 e0 	movl	3759283744, %eax
e010391c:	85 c0 	testl	%eax, %eax
e010391e:	74 1a 	je	26 <env_free+0x2a>
e0103920:	83 c0 48 	addl	$72, %eax
e0103923:	89 c1 	movl	%eax, %ecx
e0103925:	c1 e9 03 	shrl	$3, %ecx
e0103928:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010392e:	84 c9 	testb	%cl, %cl
e0103930:	0f 85 ae 00 00 00 	jne	174 <env_free+0xd4>
e0103936:	8b 00 	movl	(%eax), %eax
e0103938:	eb 02 	jmp	2 <env_free+0x2c>
e010393a:	31 c0 	xorl	%eax, %eax
e010393c:	8b 75 08 	movl	8(%ebp), %esi
e010393f:	8d 4e 48 	leal	72(%esi), %ecx
e0103942:	89 ca 	movl	%ecx, %edx
e0103944:	c1 ea 03 	shrl	$3, %edx
e0103947:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e010394d:	84 d2 	testb	%dl, %dl
e010394f:	75 57 	jne	87 <env_free+0x98>
e0103951:	8b 4e 48 	movl	72(%esi), %ecx
e0103954:	89 4c 24 08 	movl	%ecx, 8(%esp)
e0103958:	89 44 24 04 	movl	%eax, 4(%esp)
e010395c:	c7 04 24 60 c0 10 e0 	movl	$3759194208, (%esp)
e0103963:	e8 d8 05 00 00 	calll	1496 <cprintf>
e0103968:	8d 46 54 	leal	84(%esi), %eax
e010396b:	89 c1 	movl	%eax, %ecx
e010396d:	c1 e9 03 	shrl	$3, %ecx
e0103970:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0103976:	84 c9 	testb	%cl, %cl
e0103978:	75 42 	jne	66 <env_free+0xac>
e010397a:	c7 46 54 00 00 00 00 	movl	$0, 84(%esi)
e0103981:	8b 0d 60 1e 12 e0 	movl	-535683488, %ecx
e0103987:	8d 46 44 	leal	68(%esi), %eax
e010398a:	89 c2 	movl	%eax, %edx
e010398c:	c1 ea 03 	shrl	$3, %edx
e010398f:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0103995:	84 d2 	testb	%dl, %dl
e0103997:	75 37 	jne	55 <env_free+0xc0>
e0103999:	89 4e 44 	movl	%ecx, 68(%esi)
e010399c:	89 35 60 1e 12 e0 	movl	%esi, -535683488
e01039a2:	83 c4 14 	addl	$20, %esp
e01039a5:	5e 	popl	%esi
e01039a6:	5d 	popl	%ebp
e01039a7:	c3 	retl
e01039a8:	88 ce 	movb	%cl, %dh
e01039aa:	80 e6 07 	andb	$7, %dh
e01039ad:	80 c6 03 	addb	$3, %dh
e01039b0:	38 d6 	cmpb	%dl, %dh
e01039b2:	7c 9d 	jl	-99 <env_free+0x41>
e01039b4:	89 0c 24 	movl	%ecx, (%esp)
e01039b7:	e8 d4 4d 00 00 	calll	19924 <__asan_report_load4>
e01039bc:	89 c2 	movl	%eax, %edx
e01039be:	80 e2 07 	andb	$7, %dl
e01039c1:	80 c2 03 	addb	$3, %dl
e01039c4:	38 ca 	cmpb	%cl, %dl
e01039c6:	7c b2 	jl	-78 <env_free+0x6a>
e01039c8:	89 04 24 	movl	%eax, (%esp)
e01039cb:	e8 e0 4d 00 00 	calll	19936 <__asan_report_store4>
e01039d0:	88 c6 	movb	%al, %dh
e01039d2:	80 e6 07 	andb	$7, %dh
e01039d5:	80 c6 03 	addb	$3, %dh
e01039d8:	38 d6 	cmpb	%dl, %dh
e01039da:	7c bd 	jl	-67 <env_free+0x89>
e01039dc:	89 04 24 	movl	%eax, (%esp)
e01039df:	e8 cc 4d 00 00 	calll	19916 <__asan_report_store4>
e01039e4:	89 c2 	movl	%eax, %edx
e01039e6:	80 e2 07 	andb	$7, %dl
e01039e9:	80 c2 03 	addb	$3, %dl
e01039ec:	38 ca 	cmpb	%cl, %dl
e01039ee:	0f 8c 42 ff ff ff 	jl	-190 <env_free+0x26>
e01039f4:	89 04 24 	movl	%eax, (%esp)
e01039f7:	e8 94 4d 00 00 	calll	19860 <__asan_report_load4>
e01039fc:	0f 1f 40 00 	nopl	(%eax)

00000000e0103a00 env_destroy:
e0103a00:	55 	pushl	%ebp
e0103a01:	89 e5 	movl	%esp, %ebp
e0103a03:	56 	pushl	%esi
e0103a04:	50 	pushl	%eax
e0103a05:	8b 75 08 	movl	8(%ebp), %esi
e0103a08:	89 34 24 	movl	%esi, (%esp)
e0103a0b:	e8 00 ff ff ff 	calll	-256 <env_free>
e0103a10:	39 35 20 1e 12 e0 	cmpl	%esi, -535683552
e0103a16:	74 26 	je	38 <env_destroy+0x3e>
e0103a18:	c7 04 24 a0 c0 10 e0 	movl	$3759194272, (%esp)
e0103a1f:	e8 1c 05 00 00 	calll	1308 <cprintf>
e0103a24:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0103a2e:	66 90 	nop
e0103a30:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0103a37:	e8 f4 d6 ff ff 	calll	-10508 <monitor>
e0103a3c:	eb f2 	jmp	-14 <env_destroy+0x30>
e0103a3e:	e8 5d 4b 00 00 	calll	19293 <__asan_handle_no_return>
e0103a43:	e8 48 14 00 00 	calll	5192 <sched_yield>
e0103a48:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0103a50 env_pop_tf:
e0103a50:	55 	pushl	%ebp
e0103a51:	89 e5 	movl	%esp, %ebp
e0103a53:	83 ec 08 	subl	$8, %esp
e0103a56:	e8 45 4b 00 00 	calll	19269 <__asan_handle_no_return>
e0103a5b:	83 ec 04 	subl	$4, %esp
e0103a5e:	68 00 c1 10 e0 	pushl	$3759194368
e0103a63:	68 b7 01 00 00 	pushl	$439
e0103a68:	68 e0 bf 10 e0 	pushl	$3759194080
e0103a6d:	e8 be c6 ff ff 	calll	-14658 <_panic>
e0103a72:	83 c4 04 	addl	$4, %esp
e0103a75:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0103a7f:	90 	nop

00000000e0103a80 env_run:
e0103a80:	55 	pushl	%ebp
e0103a81:	89 e5 	movl	%esp, %ebp
e0103a83:	53 	pushl	%ebx
e0103a84:	50 	pushl	%eax
e0103a85:	8b 45 08 	movl	8(%ebp), %eax
e0103a88:	8b 0d 20 1e 12 e0 	movl	-535683552, %ecx
e0103a8e:	39 c1 	cmpl	%eax, %ecx
e0103a90:	74 53 	je	83 <env_run+0x65>
e0103a92:	85 c9 	testl	%ecx, %ecx
e0103a94:	74 4f 	je	79 <env_run+0x65>
e0103a96:	83 c1 54 	addl	$84, %ecx
e0103a99:	89 ca 	movl	%ecx, %edx
e0103a9b:	c1 ea 03 	shrl	$3, %edx
e0103a9e:	8a 9a 00 00 80 de 	movb	-562036736(%edx), %bl
e0103aa4:	84 db 	testb	%bl, %bl
e0103aa6:	74 14 	je	20 <env_run+0x3c>
e0103aa8:	88 cf 	movb	%cl, %bh
e0103aaa:	80 e7 07 	andb	$7, %bh
e0103aad:	80 c7 03 	addb	$3, %bh
e0103ab0:	38 df 	cmpb	%bl, %bh
e0103ab2:	7c 08 	jl	8 <env_run+0x3c>
e0103ab4:	89 0c 24 	movl	%ecx, (%esp)
e0103ab7:	e8 d4 4c 00 00 	calll	19668 <__asan_report_load4>
e0103abc:	83 39 03 	cmpl	$3, (%ecx)
e0103abf:	75 24 	jne	36 <env_run+0x65>
e0103ac1:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0103ac7:	84 d2 	testb	%dl, %dl
e0103ac9:	74 14 	je	20 <env_run+0x5f>
e0103acb:	88 ce 	movb	%cl, %dh
e0103acd:	80 e6 07 	andb	$7, %dh
e0103ad0:	80 c6 03 	addb	$3, %dh
e0103ad3:	38 d6 	cmpb	%dl, %dh
e0103ad5:	7c 08 	jl	8 <env_run+0x5f>
e0103ad7:	89 0c 24 	movl	%ecx, (%esp)
e0103ada:	e8 d1 4c 00 00 	calll	19665 <__asan_report_store4>
e0103adf:	c7 01 02 00 00 00 	movl	$2, (%ecx)
e0103ae5:	a3 20 1e 12 e0 	movl	%eax, 3759283744
e0103aea:	8d 48 54 	leal	84(%eax), %ecx
e0103aed:	89 ca 	movl	%ecx, %edx
e0103aef:	c1 ea 03 	shrl	$3, %edx
e0103af2:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0103af8:	84 d2 	testb	%dl, %dl
e0103afa:	74 14 	je	20 <env_run+0x90>
e0103afc:	88 ce 	movb	%cl, %dh
e0103afe:	80 e6 07 	andb	$7, %dh
e0103b01:	80 c6 03 	addb	$3, %dh
e0103b04:	38 d6 	cmpb	%dl, %dh
e0103b06:	7c 08 	jl	8 <env_run+0x90>
e0103b08:	89 0c 24 	movl	%ecx, (%esp)
e0103b0b:	e8 a0 4c 00 00 	calll	19616 <__asan_report_store4>
e0103b10:	c7 40 54 03 00 00 00 	movl	$3, 84(%eax)
e0103b17:	83 c0 58 	addl	$88, %eax
e0103b1a:	89 c1 	movl	%eax, %ecx
e0103b1c:	c1 e9 03 	shrl	$3, %ecx
e0103b1f:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0103b25:	84 c9 	testb	%cl, %cl
e0103b27:	74 14 	je	20 <env_run+0xbd>
e0103b29:	89 c2 	movl	%eax, %edx
e0103b2b:	80 e2 07 	andb	$7, %dl
e0103b2e:	80 c2 03 	addb	$3, %dl
e0103b31:	38 ca 	cmpb	%cl, %dl
e0103b33:	7c 08 	jl	8 <env_run+0xbd>
e0103b35:	89 04 24 	movl	%eax, (%esp)
e0103b38:	e8 53 4c 00 00 	calll	19539 <__asan_report_load4>
e0103b3d:	ff 00 	incl	(%eax)
e0103b3f:	e8 5c 4a 00 00 	calll	19036 <__asan_handle_no_return>
e0103b44:	e8 07 ff ff ff 	calll	-249 <env_pop_tf>
e0103b49:	83 ec 04 	subl	$4, %esp
e0103b4c:	0f 1f 40 00 	nopl	(%eax)

00000000e0103b50 asan.module_ctor:
e0103b50:	83 ec 0c 	subl	$12, %esp
e0103b53:	e8 a8 51 00 00 	calll	20904 <__asan_init>
e0103b58:	e8 c3 52 00 00 	calll	21187 <__asan_version_mismatch_check_v8>
e0103b5d:	83 ec 08 	subl	$8, %esp
e0103b60:	6a 0d 	pushl	$13
e0103b62:	68 60 0d 12 e0 	pushl	$3759279456
e0103b67:	e8 c4 51 00 00 	calll	20932 <__asan_register_globals>
e0103b6c:	83 c4 1c 	addl	$28, %esp
e0103b6f:	c3 	retl

00000000e0103b70 asan.module_dtor:
e0103b70:	83 ec 14 	subl	$20, %esp
e0103b73:	6a 0d 	pushl	$13
e0103b75:	68 60 0d 12 e0 	pushl	$3759279456
e0103b7a:	e8 01 52 00 00 	calll	20993 <__asan_unregister_globals>
e0103b7f:	83 c4 1c 	addl	$28, %esp
e0103b82:	c3 	retl
e0103b83:	cc 	int3
e0103b84:	cc 	int3
e0103b85:	cc 	int3
e0103b86:	cc 	int3
e0103b87:	cc 	int3
e0103b88:	cc 	int3
e0103b89:	cc 	int3
e0103b8a:	cc 	int3
e0103b8b:	cc 	int3
e0103b8c:	cc 	int3
e0103b8d:	cc 	int3
e0103b8e:	cc 	int3
e0103b8f:	cc 	int3

00000000e0103b90 rtc_init:
e0103b90:	55 	pushl	%ebp
e0103b91:	89 e5 	movl	%esp, %ebp
e0103b93:	83 ec 08 	subl	$8, %esp
e0103b96:	e8 35 00 00 00 	calll	53 <nmi_disable>
e0103b9b:	b0 0a 	movb	$10, %al
e0103b9d:	ba 70 00 00 00 	movl	$112, %edx
e0103ba2:	ee 	outb	%al, %dx
e0103ba3:	ba 71 00 00 00 	movl	$113, %edx
e0103ba8:	ec 	inb	%dx, %al
e0103ba9:	0c 0f 	orb	$15, %al
e0103bab:	ba 71 00 00 00 	movl	$113, %edx
e0103bb0:	ee 	outb	%al, %dx
e0103bb1:	b0 0b 	movb	$11, %al
e0103bb3:	ba 70 00 00 00 	movl	$112, %edx
e0103bb8:	ee 	outb	%al, %dx
e0103bb9:	ba 71 00 00 00 	movl	$113, %edx
e0103bbe:	ec 	inb	%dx, %al
e0103bbf:	0c 40 	orb	$64, %al
e0103bc1:	ba 71 00 00 00 	movl	$113, %edx
e0103bc6:	ee 	outb	%al, %dx
e0103bc7:	83 c4 08 	addl	$8, %esp
e0103bca:	5d 	popl	%ebp
e0103bcb:	eb 13 	jmp	19 <nmi_enable>
e0103bcd:	0f 1f 00 	nopl	(%eax)

00000000e0103bd0 nmi_disable:
e0103bd0:	ba 70 00 00 00 	movl	$112, %edx
e0103bd5:	ec 	inb	%dx, %al
e0103bd6:	0c 80 	orb	$-128, %al
e0103bd8:	ba 70 00 00 00 	movl	$112, %edx
e0103bdd:	ee 	outb	%al, %dx
e0103bde:	c3 	retl
e0103bdf:	90 	nop

00000000e0103be0 nmi_enable:
e0103be0:	ba 70 00 00 00 	movl	$112, %edx
e0103be5:	ec 	inb	%dx, %al
e0103be6:	24 7f 	andb	$127, %al
e0103be8:	ba 70 00 00 00 	movl	$112, %edx
e0103bed:	ee 	outb	%al, %dx
e0103bee:	c3 	retl
e0103bef:	90 	nop

00000000e0103bf0 rtc_check_status:
e0103bf0:	b0 0c 	movb	$12, %al
e0103bf2:	ba 70 00 00 00 	movl	$112, %edx
e0103bf7:	ee 	outb	%al, %dx
e0103bf8:	ba 71 00 00 00 	movl	$113, %edx
e0103bfd:	ec 	inb	%dx, %al
e0103bfe:	c3 	retl
e0103bff:	90 	nop

00000000e0103c00 mc146818_read:
e0103c00:	8a 44 24 04 	movb	4(%esp), %al
e0103c04:	ba 70 00 00 00 	movl	$112, %edx
e0103c09:	ee 	outb	%al, %dx
e0103c0a:	ba 71 00 00 00 	movl	$113, %edx
e0103c0f:	ec 	inb	%dx, %al
e0103c10:	0f b6 c0 	movzbl	%al, %eax
e0103c13:	c3 	retl
e0103c14:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0103c1e:	66 90 	nop

00000000e0103c20 mc146818_write:
e0103c20:	8a 4c 24 08 	movb	8(%esp), %cl
e0103c24:	8a 44 24 04 	movb	4(%esp), %al
e0103c28:	ba 70 00 00 00 	movl	$112, %edx
e0103c2d:	ee 	outb	%al, %dx
e0103c2e:	89 c8 	movl	%ecx, %eax
e0103c30:	ba 71 00 00 00 	movl	$113, %edx
e0103c35:	ee 	outb	%al, %dx
e0103c36:	c3 	retl
e0103c37:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0103c40 asan.module_ctor:
e0103c40:	83 ec 0c 	subl	$12, %esp
e0103c43:	e8 b8 50 00 00 	calll	20664 <__asan_init>
e0103c48:	e8 d3 51 00 00 	calll	20947 <__asan_version_mismatch_check_v8>
e0103c4d:	83 c4 0c 	addl	$12, %esp
e0103c50:	c3 	retl
e0103c51:	cc 	int3
e0103c52:	cc 	int3
e0103c53:	cc 	int3
e0103c54:	cc 	int3
e0103c55:	cc 	int3
e0103c56:	cc 	int3
e0103c57:	cc 	int3
e0103c58:	cc 	int3
e0103c59:	cc 	int3
e0103c5a:	cc 	int3
e0103c5b:	cc 	int3
e0103c5c:	cc 	int3
e0103c5d:	cc 	int3
e0103c5e:	cc 	int3
e0103c5f:	cc 	int3

00000000e0103c60 pic_init:
e0103c60:	55 	pushl	%ebp
e0103c61:	89 e5 	movl	%esp, %ebp
e0103c63:	83 ec 08 	subl	$8, %esp
e0103c66:	c6 05 a0 1e 12 e0 01 	movb	$1, -535683424
e0103c6d:	b0 ff 	movb	$-1, %al
e0103c6f:	ba 21 00 00 00 	movl	$33, %edx
e0103c74:	ee 	outb	%al, %dx
e0103c75:	b0 ff 	movb	$-1, %al
e0103c77:	ba a1 00 00 00 	movl	$161, %edx
e0103c7c:	ee 	outb	%al, %dx
e0103c7d:	b0 11 	movb	$17, %al
e0103c7f:	ba 20 00 00 00 	movl	$32, %edx
e0103c84:	ee 	outb	%al, %dx
e0103c85:	b0 20 	movb	$32, %al
e0103c87:	ba 21 00 00 00 	movl	$33, %edx
e0103c8c:	ee 	outb	%al, %dx
e0103c8d:	b0 04 	movb	$4, %al
e0103c8f:	ba 21 00 00 00 	movl	$33, %edx
e0103c94:	ee 	outb	%al, %dx
e0103c95:	b0 01 	movb	$1, %al
e0103c97:	ba 21 00 00 00 	movl	$33, %edx
e0103c9c:	ee 	outb	%al, %dx
e0103c9d:	b0 11 	movb	$17, %al
e0103c9f:	ba a0 00 00 00 	movl	$160, %edx
e0103ca4:	ee 	outb	%al, %dx
e0103ca5:	b0 28 	movb	$40, %al
e0103ca7:	ba a1 00 00 00 	movl	$161, %edx
e0103cac:	ee 	outb	%al, %dx
e0103cad:	b0 02 	movb	$2, %al
e0103caf:	ba a1 00 00 00 	movl	$161, %edx
e0103cb4:	ee 	outb	%al, %dx
e0103cb5:	b0 01 	movb	$1, %al
e0103cb7:	ba a1 00 00 00 	movl	$161, %edx
e0103cbc:	ee 	outb	%al, %dx
e0103cbd:	b0 68 	movb	$104, %al
e0103cbf:	ba 20 00 00 00 	movl	$32, %edx
e0103cc4:	ee 	outb	%al, %dx
e0103cc5:	b0 0a 	movb	$10, %al
e0103cc7:	ba 20 00 00 00 	movl	$32, %edx
e0103ccc:	ee 	outb	%al, %dx
e0103ccd:	b0 68 	movb	$104, %al
e0103ccf:	ba a0 00 00 00 	movl	$160, %edx
e0103cd4:	ee 	outb	%al, %dx
e0103cd5:	b0 0a 	movb	$10, %al
e0103cd7:	ba a0 00 00 00 	movl	$160, %edx
e0103cdc:	ee 	outb	%al, %dx
e0103cdd:	0f b7 05 00 0f 12 e0 	movzwl	-535687424, %eax
e0103ce4:	66 83 f8 ff 	cmpw	$-1, %ax
e0103ce8:	74 0b 	je	11 <pic_init+0x95>
e0103cea:	0f b7 c0 	movzwl	%ax, %eax
e0103ced:	89 04 24 	movl	%eax, (%esp)
e0103cf0:	e8 0b 00 00 00 	calll	11 <irq_setmask_8259A>
e0103cf5:	83 c4 08 	addl	$8, %esp
e0103cf8:	5d 	popl	%ebp
e0103cf9:	c3 	retl
e0103cfa:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e0103d00 irq_setmask_8259A:
e0103d00:	55 	pushl	%ebp
e0103d01:	89 e5 	movl	%esp, %ebp
e0103d03:	57 	pushl	%edi
e0103d04:	56 	pushl	%esi
e0103d05:	83 ec 10 	subl	$16, %esp
e0103d08:	0f b7 45 08 	movzwl	8(%ebp), %eax
e0103d0c:	66 a3 00 0f 12 e0 	movw	%ax, 3759279872
e0103d12:	80 3d a0 1e 12 e0 01 	cmpb	$1, -535683424
e0103d19:	75 4c 	jne	76 <irq_setmask_8259A+0x67>
e0103d1b:	ba 21 00 00 00 	movl	$33, %edx
e0103d20:	ee 	outb	%al, %dx
e0103d21:	0f b7 f0 	movzwl	%ax, %esi
e0103d24:	88 e0 	movb	%ah, %al
e0103d26:	ba a1 00 00 00 	movl	$161, %edx
e0103d2b:	ee 	outb	%al, %dx
e0103d2c:	c7 04 24 c0 c2 10 e0 	movl	$3759194816, (%esp)
e0103d33:	e8 08 02 00 00 	calll	520 <cprintf>
e0103d38:	31 ff 	xorl	%edi, %edi
e0103d3a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0103d40:	0f a3 fe 	btl	%edi, %esi
e0103d43:	72 10 	jb	16 <irq_setmask_8259A+0x55>
e0103d45:	89 7c 24 04 	movl	%edi, 4(%esp)
e0103d49:	c7 04 24 00 c3 10 e0 	movl	$3759194880, (%esp)
e0103d50:	e8 eb 01 00 00 	calll	491 <cprintf>
e0103d55:	47 	incl	%edi
e0103d56:	83 ff 10 	cmpl	$16, %edi
e0103d59:	75 e5 	jne	-27 <irq_setmask_8259A+0x40>
e0103d5b:	c7 04 24 40 c3 10 e0 	movl	$3759194944, (%esp)
e0103d62:	e8 d9 01 00 00 	calll	473 <cprintf>
e0103d67:	83 c4 10 	addl	$16, %esp
e0103d6a:	5e 	popl	%esi
e0103d6b:	5f 	popl	%edi
e0103d6c:	5d 	popl	%ebp
e0103d6d:	c3 	retl
e0103d6e:	66 90 	nop

00000000e0103d70 pic_send_eoi:
e0103d70:	80 7c 24 04 08 	cmpb	$8, 4(%esp)
e0103d75:	72 08 	jb	8 <pic_send_eoi+0xf>
e0103d77:	b0 20 	movb	$32, %al
e0103d79:	ba a0 00 00 00 	movl	$160, %edx
e0103d7e:	ee 	outb	%al, %dx
e0103d7f:	b0 20 	movb	$32, %al
e0103d81:	ba 20 00 00 00 	movl	$32, %edx
e0103d86:	ee 	outb	%al, %dx
e0103d87:	c3 	retl
e0103d88:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0103d90 asan.module_ctor:
e0103d90:	83 ec 0c 	subl	$12, %esp
e0103d93:	e8 68 4f 00 00 	calll	20328 <__asan_init>
e0103d98:	e8 83 50 00 00 	calll	20611 <__asan_version_mismatch_check_v8>
e0103d9d:	83 ec 08 	subl	$8, %esp
e0103da0:	6a 05 	pushl	$5
e0103da2:	68 40 0f 12 e0 	pushl	$3759279936
e0103da7:	e8 84 4f 00 00 	calll	20356 <__asan_register_globals>
e0103dac:	83 c4 1c 	addl	$28, %esp
e0103daf:	c3 	retl

00000000e0103db0 asan.module_dtor:
e0103db0:	83 ec 14 	subl	$20, %esp
e0103db3:	6a 05 	pushl	$5
e0103db5:	68 40 0f 12 e0 	pushl	$3759279936
e0103dba:	e8 c1 4f 00 00 	calll	20417 <__asan_unregister_globals>
e0103dbf:	83 c4 1c 	addl	$28, %esp
e0103dc2:	c3 	retl
e0103dc3:	cc 	int3
e0103dc4:	cc 	int3
e0103dc5:	cc 	int3
e0103dc6:	cc 	int3
e0103dc7:	cc 	int3
e0103dc8:	cc 	int3
e0103dc9:	cc 	int3
e0103dca:	cc 	int3
e0103dcb:	cc 	int3
e0103dcc:	cc 	int3
e0103dcd:	cc 	int3
e0103dce:	cc 	int3
e0103dcf:	cc 	int3

00000000e0103dd0 vcprintf:
e0103dd0:	55 	pushl	%ebp
e0103dd1:	89 e5 	movl	%esp, %ebp
e0103dd3:	53 	pushl	%ebx
e0103dd4:	57 	pushl	%edi
e0103dd5:	56 	pushl	%esi
e0103dd6:	83 e4 e0 	andl	$-32, %esp
e0103dd9:	83 ec 40 	subl	$64, %esp
e0103ddc:	89 e6 	movl	%esp, %esi
e0103dde:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0103de5:	74 0f 	je	15 <vcprintf+0x26>
e0103de7:	83 ec 0c 	subl	$12, %esp
e0103dea:	6a 20 	pushl	$32
e0103dec:	e8 9f 4b 00 00 	calll	19359 <__asan_stack_malloc_0>
e0103df1:	83 c4 10 	addl	$16, %esp
e0103df4:	eb 02 	jmp	2 <vcprintf+0x28>
e0103df6:	31 c0 	xorl	%eax, %eax
e0103df8:	85 c0 	testl	%eax, %eax
e0103dfa:	89 46 18 	movl	%eax, 24(%esi)
e0103dfd:	89 c3 	movl	%eax, %ebx
e0103dff:	75 0a 	jne	10 <vcprintf+0x3b>
e0103e01:	89 e3 	movl	%esp, %ebx
e0103e03:	83 c3 e0 	addl	$-32, %ebx
e0103e06:	83 e3 e0 	andl	$-32, %ebx
e0103e09:	89 dc 	movl	%ebx, %esp
e0103e0b:	89 5e 1c 	movl	%ebx, 28(%esi)
e0103e0e:	8d 53 10 	leal	16(%ebx), %edx
e0103e11:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e0103e17:	c7 43 04 d3 a4 10 e0 	movl	$3759187155, 4(%ebx)
e0103e1e:	c7 43 08 d0 3d 10 e0 	movl	$3759160784, 8(%ebx)
e0103e25:	89 d8 	movl	%ebx, %eax
e0103e27:	c1 e8 03 	shrl	$3, %eax
e0103e2a:	c7 80 00 00 80 de f1 f1 f8 f3 	movl	$4093178353, -562036736(%eax)
e0103e34:	89 46 14 	movl	%eax, 20(%esi)
e0103e37:	c6 80 02 00 80 de 04 	movb	$4, -562036734(%eax)
e0103e3e:	89 d7 	movl	%edx, %edi
e0103e40:	c1 ef 03 	shrl	$3, %edi
e0103e43:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0103e49:	84 c0 	testb	%al, %al
e0103e4b:	75 71 	jne	113 <vcprintf+0xee>
e0103e4d:	8b 45 0c 	movl	12(%ebp), %eax
e0103e50:	8b 4d 08 	movl	8(%ebp), %ecx
e0103e53:	c7 02 00 00 00 00 	movl	$0, (%edx)
e0103e59:	50 	pushl	%eax
e0103e5a:	51 	pushl	%ecx
e0103e5b:	89 56 10 	movl	%edx, 16(%esi)
e0103e5e:	52 	pushl	%edx
e0103e5f:	68 00 3f 10 e0 	pushl	$3759161088
e0103e64:	e8 17 25 00 00 	calll	9495 <vprintfmt>
e0103e69:	83 c4 10 	addl	$16, %esp
e0103e6c:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0103e72:	84 c0 	testb	%al, %al
e0103e74:	75 60 	jne	96 <vcprintf+0x106>
e0103e76:	8b 43 10 	movl	16(%ebx), %eax
e0103e79:	8b 56 14 	movl	20(%esi), %edx
e0103e7c:	c6 82 02 00 80 de f8 	movb	$-8, -562036734(%edx)
e0103e83:	c7 03 0e 36 e0 45 	movl	$1172321806, (%ebx)
e0103e89:	8b 4e 18 	movl	24(%esi), %ecx
e0103e8c:	85 c9 	testl	%ecx, %ecx
e0103e8e:	74 1c 	je	28 <vcprintf+0xdc>
e0103e90:	c7 82 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edx)
e0103e9a:	c7 82 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edx)
e0103ea4:	8b 49 3c 	movl	60(%ecx), %ecx
e0103ea7:	c6 01 00 	movb	$0, (%ecx)
e0103eaa:	eb 0a 	jmp	10 <vcprintf+0xe6>
e0103eac:	c7 82 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edx)
e0103eb6:	8d 65 f4 	leal	-12(%ebp), %esp
e0103eb9:	5e 	popl	%esi
e0103eba:	5f 	popl	%edi
e0103ebb:	5b 	popl	%ebx
e0103ebc:	5d 	popl	%ebp
e0103ebd:	c3 	retl
e0103ebe:	89 d1 	movl	%edx, %ecx
e0103ec0:	80 e1 07 	andb	$7, %cl
e0103ec3:	80 c1 03 	addb	$3, %cl
e0103ec6:	38 c1 	cmpb	%al, %cl
e0103ec8:	7c 83 	jl	-125 <vcprintf+0x7d>
e0103eca:	83 ec 0c 	subl	$12, %esp
e0103ecd:	52 	pushl	%edx
e0103ece:	e8 dd 48 00 00 	calll	18653 <__asan_report_store4>
e0103ed3:	83 c4 10 	addl	$16, %esp
e0103ed6:	8b 4e 10 	movl	16(%esi), %ecx
e0103ed9:	80 e1 07 	andb	$7, %cl
e0103edc:	80 c1 03 	addb	$3, %cl
e0103edf:	38 c1 	cmpb	%al, %cl
e0103ee1:	7c 93 	jl	-109 <vcprintf+0xa6>
e0103ee3:	83 ec 0c 	subl	$12, %esp
e0103ee6:	ff 76 10 	pushl	16(%esi)
e0103ee9:	e8 a2 48 00 00 	calll	18594 <__asan_report_load4>
e0103eee:	83 c4 10 	addl	$16, %esp
e0103ef1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0103efb:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0103f00 putch:
e0103f00:	55 	pushl	%ebp
e0103f01:	89 e5 	movl	%esp, %ebp
e0103f03:	53 	pushl	%ebx
e0103f04:	50 	pushl	%eax
e0103f05:	8b 5d 0c 	movl	12(%ebp), %ebx
e0103f08:	8b 45 08 	movl	8(%ebp), %eax
e0103f0b:	89 04 24 	movl	%eax, (%esp)
e0103f0e:	e8 dd c6 ff ff 	calll	-14627 <cputchar>
e0103f13:	89 d8 	movl	%ebx, %eax
e0103f15:	c1 e8 03 	shrl	$3, %eax
e0103f18:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0103f1e:	84 c0 	testb	%al, %al
e0103f20:	75 08 	jne	8 <putch+0x2a>
e0103f22:	ff 03 	incl	(%ebx)
e0103f24:	83 c4 04 	addl	$4, %esp
e0103f27:	5b 	popl	%ebx
e0103f28:	5d 	popl	%ebp
e0103f29:	c3 	retl
e0103f2a:	89 d9 	movl	%ebx, %ecx
e0103f2c:	80 e1 07 	andb	$7, %cl
e0103f2f:	80 c1 03 	addb	$3, %cl
e0103f32:	38 c1 	cmpb	%al, %cl
e0103f34:	7c ec 	jl	-20 <putch+0x22>
e0103f36:	89 1c 24 	movl	%ebx, (%esp)
e0103f39:	e8 52 48 00 00 	calll	18514 <__asan_report_load4>
e0103f3e:	66 90 	nop

00000000e0103f40 cprintf:
e0103f40:	55 	pushl	%ebp
e0103f41:	89 e5 	movl	%esp, %ebp
e0103f43:	53 	pushl	%ebx
e0103f44:	57 	pushl	%edi
e0103f45:	56 	pushl	%esi
e0103f46:	83 e4 e0 	andl	$-32, %esp
e0103f49:	83 ec 40 	subl	$64, %esp
e0103f4c:	89 e6 	movl	%esp, %esi
e0103f4e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0103f55:	74 0f 	je	15 <cprintf+0x26>
e0103f57:	83 ec 0c 	subl	$12, %esp
e0103f5a:	6a 20 	pushl	$32
e0103f5c:	e8 2f 4a 00 00 	calll	18991 <__asan_stack_malloc_0>
e0103f61:	83 c4 10 	addl	$16, %esp
e0103f64:	eb 02 	jmp	2 <cprintf+0x28>
e0103f66:	31 c0 	xorl	%eax, %eax
e0103f68:	85 c0 	testl	%eax, %eax
e0103f6a:	89 46 18 	movl	%eax, 24(%esi)
e0103f6d:	89 c3 	movl	%eax, %ebx
e0103f6f:	75 0a 	jne	10 <cprintf+0x3b>
e0103f71:	89 e3 	movl	%esp, %ebx
e0103f73:	83 c3 e0 	addl	$-32, %ebx
e0103f76:	83 e3 e0 	andl	$-32, %ebx
e0103f79:	89 dc 	movl	%ebx, %esp
e0103f7b:	89 5e 1c 	movl	%ebx, 28(%esi)
e0103f7e:	8d 43 10 	leal	16(%ebx), %eax
e0103f81:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e0103f87:	c7 43 04 14 a2 10 e0 	movl	$3759186452, 4(%ebx)
e0103f8e:	c7 43 08 40 3f 10 e0 	movl	$3759161152, 8(%ebx)
e0103f95:	89 df 	movl	%ebx, %edi
e0103f97:	c1 ef 03 	shrl	$3, %edi
e0103f9a:	c7 87 00 00 80 de f1 f1 f8 f3 	movl	$4093178353, -562036736(%edi)
e0103fa4:	c6 87 02 00 80 de 04 	movb	$4, -562036734(%edi)
e0103fab:	8d 4d 0c 	leal	12(%ebp), %ecx
e0103fae:	89 4b 10 	movl	%ecx, 16(%ebx)
e0103fb1:	89 c1 	movl	%eax, %ecx
e0103fb3:	c1 e9 03 	shrl	$3, %ecx
e0103fb6:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0103fbc:	84 c9 	testb	%cl, %cl
e0103fbe:	75 53 	jne	83 <cprintf+0xd3>
e0103fc0:	83 ec 08 	subl	$8, %esp
e0103fc3:	ff 73 10 	pushl	16(%ebx)
e0103fc6:	ff 75 08 	pushl	8(%ebp)
e0103fc9:	e8 02 fe ff ff 	calll	-510 <vcprintf>
e0103fce:	83 c4 10 	addl	$16, %esp
e0103fd1:	c6 87 02 00 80 de f8 	movb	$-8, -562036734(%edi)
e0103fd8:	c7 03 0e 36 e0 45 	movl	$1172321806, (%ebx)
e0103fde:	8b 4e 18 	movl	24(%esi), %ecx
e0103fe1:	85 c9 	testl	%ecx, %ecx
e0103fe3:	74 1c 	je	28 <cprintf+0xc1>
e0103fe5:	c7 87 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edi)
e0103fef:	c7 87 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edi)
e0103ff9:	8b 49 3c 	movl	60(%ecx), %ecx
e0103ffc:	c6 01 00 	movb	$0, (%ecx)
e0103fff:	eb 0a 	jmp	10 <cprintf+0xcb>
e0104001:	c7 87 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edi)
e010400b:	8d 65 f4 	leal	-12(%ebp), %esp
e010400e:	5e 	popl	%esi
e010400f:	5f 	popl	%edi
e0104010:	5b 	popl	%ebx
e0104011:	5d 	popl	%ebp
e0104012:	c3 	retl
e0104013:	89 c2 	movl	%eax, %edx
e0104015:	80 e2 07 	andb	$7, %dl
e0104018:	80 c2 03 	addb	$3, %dl
e010401b:	38 ca 	cmpb	%cl, %dl
e010401d:	7c a1 	jl	-95 <cprintf+0x80>
e010401f:	83 ec 0c 	subl	$12, %esp
e0104022:	50 	pushl	%eax
e0104023:	e8 68 47 00 00 	calll	18280 <__asan_report_load4>
e0104028:	83 c4 10 	addl	$16, %esp
e010402b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0104030 asan.module_ctor:
e0104030:	83 ec 0c 	subl	$12, %esp
e0104033:	e8 c8 4c 00 00 	calll	19656 <__asan_init>
e0104038:	e8 e3 4d 00 00 	calll	19939 <__asan_version_mismatch_check_v8>
e010403d:	83 c4 0c 	addl	$12, %esp
e0104040:	c3 	retl
e0104041:	cc 	int3
e0104042:	cc 	int3
e0104043:	cc 	int3
e0104044:	cc 	int3
e0104045:	cc 	int3
e0104046:	cc 	int3
e0104047:	cc 	int3
e0104048:	cc 	int3
e0104049:	cc 	int3
e010404a:	cc 	int3
e010404b:	cc 	int3
e010404c:	cc 	int3
e010404d:	cc 	int3
e010404e:	cc 	int3
e010404f:	cc 	int3

00000000e0104050 clock_idt_init:
e0104050:	b8 84 4e 10 e0 	movl	$3759165060, %eax
e0104055:	b9 84 4e 10 e0 	movl	$3759165060, %ecx
e010405a:	81 e1 00 00 ff ff 	andl	$4294901760, %ecx
e0104060:	81 c9 00 8e 00 00 	orl	$36352, %ecx
e0104066:	89 0d 24 20 12 e0 	movl	%ecx, -535683036
e010406c:	0f b7 c0 	movzwl	%ax, %eax
e010406f:	0d 00 00 08 00 	orl	$524288, %eax
e0104074:	a3 20 20 12 e0 	movl	%eax, 3759284256
e0104079:	b8 e0 0f 12 e0 	movl	$3759280096, %eax
e010407e:	0f 01 18 	lidtl	(%eax)
e0104081:	c3 	retl
e0104082:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010408c:	0f 1f 40 00 	nopl	(%eax)

00000000e0104090 print_trapframe:
e0104090:	55 	pushl	%ebp
e0104091:	89 e5 	movl	%esp, %ebp
e0104093:	53 	pushl	%ebx
e0104094:	57 	pushl	%edi
e0104095:	56 	pushl	%esi
e0104096:	83 ec 0c 	subl	$12, %esp
e0104099:	8b 5d 08 	movl	8(%ebp), %ebx
e010409c:	83 ec 08 	subl	$8, %esp
e010409f:	53 	pushl	%ebx
e01040a0:	68 e0 c3 10 e0 	pushl	$3759195104
e01040a5:	e8 96 fe ff ff 	calll	-362 <cprintf>
e01040aa:	83 c4 04 	addl	$4, %esp
e01040ad:	53 	pushl	%ebx
e01040ae:	e8 dd 05 00 00 	calll	1501 <print_regs>
e01040b3:	83 c4 10 	addl	$16, %esp
e01040b6:	8d 43 20 	leal	32(%ebx), %eax
e01040b9:	89 c1 	movl	%eax, %ecx
e01040bb:	c1 e9 03 	shrl	$3, %ecx
e01040be:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01040c4:	84 c9 	testb	%cl, %cl
e01040c6:	0f 85 1f 03 00 00 	jne	799 <print_trapframe+0x35b>
e01040cc:	8d 43 21 	leal	33(%ebx), %eax
e01040cf:	89 c1 	movl	%eax, %ecx
e01040d1:	c1 e9 03 	shrl	$3, %ecx
e01040d4:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01040da:	84 c9 	testb	%cl, %cl
e01040dc:	0f 85 24 03 00 00 	jne	804 <print_trapframe+0x376>
e01040e2:	0f b7 43 20 	movzwl	32(%ebx), %eax
e01040e6:	83 ec 08 	subl	$8, %esp
e01040e9:	50 	pushl	%eax
e01040ea:	68 20 c4 10 e0 	pushl	$3759195168
e01040ef:	e8 4c fe ff ff 	calll	-436 <cprintf>
e01040f4:	83 c4 10 	addl	$16, %esp
e01040f7:	8d 43 24 	leal	36(%ebx), %eax
e01040fa:	89 c1 	movl	%eax, %ecx
e01040fc:	c1 e9 03 	shrl	$3, %ecx
e01040ff:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104105:	84 c9 	testb	%cl, %cl
e0104107:	0f 85 14 03 00 00 	jne	788 <print_trapframe+0x391>
e010410d:	8d 43 25 	leal	37(%ebx), %eax
e0104110:	89 c1 	movl	%eax, %ecx
e0104112:	c1 e9 03 	shrl	$3, %ecx
e0104115:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010411b:	84 c9 	testb	%cl, %cl
e010411d:	0f 85 19 03 00 00 	jne	793 <print_trapframe+0x3ac>
e0104123:	0f b7 43 24 	movzwl	36(%ebx), %eax
e0104127:	83 ec 08 	subl	$8, %esp
e010412a:	50 	pushl	%eax
e010412b:	68 60 c4 10 e0 	pushl	$3759195232
e0104130:	e8 0b fe ff ff 	calll	-501 <cprintf>
e0104135:	83 c4 10 	addl	$16, %esp
e0104138:	8d 53 28 	leal	40(%ebx), %edx
e010413b:	89 d7 	movl	%edx, %edi
e010413d:	c1 ef 03 	shrl	$3, %edi
e0104140:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0104146:	84 c0 	testb	%al, %al
e0104148:	0f 85 09 03 00 00 	jne	777 <print_trapframe+0x3c7>
e010414e:	89 55 f0 	movl	%edx, -16(%ebp)
e0104151:	8d 43 2b 	leal	43(%ebx), %eax
e0104154:	89 c1 	movl	%eax, %ecx
e0104156:	c1 e9 03 	shrl	$3, %ecx
e0104159:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010415f:	84 c9 	testb	%cl, %cl
e0104161:	0f 85 0b 03 00 00 	jne	779 <print_trapframe+0x3e2>
e0104167:	8b 73 28 	movl	40(%ebx), %esi
e010416a:	89 f1 	movl	%esi, %ecx
e010416c:	e8 cf 08 00 00 	calll	2255 <trapname>
e0104171:	83 ec 04 	subl	$4, %esp
e0104174:	50 	pushl	%eax
e0104175:	56 	pushl	%esi
e0104176:	68 a0 c4 10 e0 	pushl	$3759195296
e010417b:	e8 c0 fd ff ff 	calll	-576 <cprintf>
e0104180:	83 c4 10 	addl	$16, %esp
e0104183:	39 1d e0 28 12 e0 	cmpl	%ebx, -535680800
e0104189:	8b 55 f0 	movl	-16(%ebp), %edx
e010418c:	75 3d 	jne	61 <print_trapframe+0x13b>
e010418e:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0104194:	84 c0 	testb	%al, %al
e0104196:	0f 85 b0 04 00 00 	jne	1200 <print_trapframe+0x5bc>
e010419c:	8d 42 03 	leal	3(%edx), %eax
e010419f:	89 c1 	movl	%eax, %ecx
e01041a1:	c1 e9 03 	shrl	$3, %ecx
e01041a4:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01041aa:	84 c9 	testb	%cl, %cl
e01041ac:	0f 85 b5 04 00 00 	jne	1205 <print_trapframe+0x5d7>
e01041b2:	83 3a 0e 	cmpl	$14, (%edx)
e01041b5:	75 14 	jne	20 <print_trapframe+0x13b>
e01041b7:	0f 20 d0 	movl	%cr2, %eax
e01041ba:	83 ec 08 	subl	$8, %esp
e01041bd:	50 	pushl	%eax
e01041be:	68 e0 c4 10 e0 	pushl	$3759195360
e01041c3:	e8 78 fd ff ff 	calll	-648 <cprintf>
e01041c8:	83 c4 10 	addl	$16, %esp
e01041cb:	8d 53 2c 	leal	44(%ebx), %edx
e01041ce:	89 d6 	movl	%edx, %esi
e01041d0:	c1 ee 03 	shrl	$3, %esi
e01041d3:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e01041d9:	84 c0 	testb	%al, %al
e01041db:	0f 85 ac 02 00 00 	jne	684 <print_trapframe+0x3fd>
e01041e1:	8d 43 2f 	leal	47(%ebx), %eax
e01041e4:	89 c1 	movl	%eax, %ecx
e01041e6:	c1 e9 03 	shrl	$3, %ecx
e01041e9:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01041ef:	84 c9 	testb	%cl, %cl
e01041f1:	89 55 ec 	movl	%edx, -20(%ebp)
e01041f4:	0f 85 ae 02 00 00 	jne	686 <print_trapframe+0x418>
e01041fa:	83 ec 08 	subl	$8, %esp
e01041fd:	ff 32 	pushl	(%edx)
e01041ff:	68 20 c5 10 e0 	pushl	$3759195424
e0104204:	e8 37 fd ff ff 	calll	-713 <cprintf>
e0104209:	83 c4 10 	addl	$16, %esp
e010420c:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0104212:	84 c0 	testb	%al, %al
e0104214:	0f 85 ac 02 00 00 	jne	684 <print_trapframe+0x436>
e010421a:	8b 55 f0 	movl	-16(%ebp), %edx
e010421d:	8d 42 03 	leal	3(%edx), %eax
e0104220:	89 c1 	movl	%eax, %ecx
e0104222:	c1 e9 03 	shrl	$3, %ecx
e0104225:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010422b:	84 c9 	testb	%cl, %cl
e010422d:	0f 85 b1 02 00 00 	jne	689 <print_trapframe+0x454>
e0104233:	83 3a 0e 	cmpl	$14, (%edx)
e0104236:	75 60 	jne	96 <print_trapframe+0x208>
e0104238:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e010423e:	84 c0 	testb	%al, %al
e0104240:	0f 85 ca 03 00 00 	jne	970 <print_trapframe+0x580>
e0104246:	8b 55 ec 	movl	-20(%ebp), %edx
e0104249:	8d 42 03 	leal	3(%edx), %eax
e010424c:	89 c1 	movl	%eax, %ecx
e010424e:	c1 e9 03 	shrl	$3, %ecx
e0104251:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104257:	84 c9 	testb	%cl, %cl
e0104259:	0f 85 cf 03 00 00 	jne	975 <print_trapframe+0x59e>
e010425f:	8b 02 	movl	(%edx), %eax
e0104261:	a8 04 	testb	$4, %al
e0104263:	b9 e0 c5 10 e0 	movl	$3759195616, %ecx
e0104268:	ba a0 c5 10 e0 	movl	$3759195552, %edx
e010426d:	0f 44 d1 	cmovel	%ecx, %edx
e0104270:	a8 02 	testb	$2, %al
e0104272:	b9 60 c6 10 e0 	movl	$3759195744, %ecx
e0104277:	be 20 c6 10 e0 	movl	$3759195680, %esi
e010427c:	0f 44 f1 	cmovel	%ecx, %esi
e010427f:	a8 01 	testb	$1, %al
e0104281:	b8 e0 c6 10 e0 	movl	$3759195872, %eax
e0104286:	b9 a0 c6 10 e0 	movl	$3759195808, %ecx
e010428b:	0f 44 c8 	cmovel	%eax, %ecx
e010428e:	51 	pushl	%ecx
e010428f:	56 	pushl	%esi
e0104290:	52 	pushl	%edx
e0104291:	68 60 c5 10 e0 	pushl	$3759195488
e0104296:	eb 08 	jmp	8 <print_trapframe+0x210>
e0104298:	83 ec 0c 	subl	$12, %esp
e010429b:	68 20 c7 10 e0 	pushl	$3759195936
e01042a0:	e8 9b fc ff ff 	calll	-869 <cprintf>
e01042a5:	83 c4 10 	addl	$16, %esp
e01042a8:	8d 43 30 	leal	48(%ebx), %eax
e01042ab:	89 c1 	movl	%eax, %ecx
e01042ad:	c1 e9 03 	shrl	$3, %ecx
e01042b0:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01042b6:	84 c9 	testb	%cl, %cl
e01042b8:	0f 85 44 02 00 00 	jne	580 <print_trapframe+0x472>
e01042be:	8d 43 33 	leal	51(%ebx), %eax
e01042c1:	89 c1 	movl	%eax, %ecx
e01042c3:	c1 e9 03 	shrl	$3, %ecx
e01042c6:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01042cc:	84 c9 	testb	%cl, %cl
e01042ce:	0f 85 49 02 00 00 	jne	585 <print_trapframe+0x48d>
e01042d4:	83 ec 08 	subl	$8, %esp
e01042d7:	ff 73 30 	pushl	48(%ebx)
e01042da:	68 60 c7 10 e0 	pushl	$3759196000
e01042df:	e8 5c fc ff ff 	calll	-932 <cprintf>
e01042e4:	83 c4 10 	addl	$16, %esp
e01042e7:	8d 43 34 	leal	52(%ebx), %eax
e01042ea:	89 c1 	movl	%eax, %ecx
e01042ec:	c1 e9 03 	shrl	$3, %ecx
e01042ef:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01042f5:	84 c9 	testb	%cl, %cl
e01042f7:	0f 85 3b 02 00 00 	jne	571 <print_trapframe+0x4a8>
e01042fd:	8d 43 35 	leal	53(%ebx), %eax
e0104300:	89 c1 	movl	%eax, %ecx
e0104302:	c1 e9 03 	shrl	$3, %ecx
e0104305:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010430b:	84 c9 	testb	%cl, %cl
e010430d:	0f 85 40 02 00 00 	jne	576 <print_trapframe+0x4c3>
e0104313:	0f b7 43 34 	movzwl	52(%ebx), %eax
e0104317:	83 ec 08 	subl	$8, %esp
e010431a:	50 	pushl	%eax
e010431b:	68 a0 c7 10 e0 	pushl	$3759196064
e0104320:	e8 1b fc ff ff 	calll	-997 <cprintf>
e0104325:	83 c4 10 	addl	$16, %esp
e0104328:	8d 43 38 	leal	56(%ebx), %eax
e010432b:	89 c1 	movl	%eax, %ecx
e010432d:	c1 e9 03 	shrl	$3, %ecx
e0104330:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104336:	84 c9 	testb	%cl, %cl
e0104338:	0f 85 30 02 00 00 	jne	560 <print_trapframe+0x4de>
e010433e:	8d 43 3b 	leal	59(%ebx), %eax
e0104341:	89 c1 	movl	%eax, %ecx
e0104343:	c1 e9 03 	shrl	$3, %ecx
e0104346:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010434c:	84 c9 	testb	%cl, %cl
e010434e:	0f 85 35 02 00 00 	jne	565 <print_trapframe+0x4f9>
e0104354:	83 ec 08 	subl	$8, %esp
e0104357:	ff 73 38 	pushl	56(%ebx)
e010435a:	68 e0 c7 10 e0 	pushl	$3759196128
e010435f:	e8 dc fb ff ff 	calll	-1060 <cprintf>
e0104364:	83 c4 10 	addl	$16, %esp
e0104367:	8d 43 3c 	leal	60(%ebx), %eax
e010436a:	89 c1 	movl	%eax, %ecx
e010436c:	c1 e9 03 	shrl	$3, %ecx
e010436f:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104375:	84 c9 	testb	%cl, %cl
e0104377:	0f 85 27 02 00 00 	jne	551 <print_trapframe+0x514>
e010437d:	8d 43 3f 	leal	63(%ebx), %eax
e0104380:	89 c1 	movl	%eax, %ecx
e0104382:	c1 e9 03 	shrl	$3, %ecx
e0104385:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010438b:	84 c9 	testb	%cl, %cl
e010438d:	0f 85 2c 02 00 00 	jne	556 <print_trapframe+0x52f>
e0104393:	83 ec 08 	subl	$8, %esp
e0104396:	ff 73 3c 	pushl	60(%ebx)
e0104399:	68 20 c8 10 e0 	pushl	$3759196192
e010439e:	e8 9d fb ff ff 	calll	-1123 <cprintf>
e01043a3:	83 c4 10 	addl	$16, %esp
e01043a6:	8d 43 40 	leal	64(%ebx), %eax
e01043a9:	89 c1 	movl	%eax, %ecx
e01043ab:	c1 e9 03 	shrl	$3, %ecx
e01043ae:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01043b4:	84 c9 	testb	%cl, %cl
e01043b6:	0f 85 1e 02 00 00 	jne	542 <print_trapframe+0x54a>
e01043bc:	83 c3 41 	addl	$65, %ebx
e01043bf:	89 d9 	movl	%ebx, %ecx
e01043c1:	c1 e9 03 	shrl	$3, %ecx
e01043c4:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01043ca:	84 c9 	testb	%cl, %cl
e01043cc:	0f 85 23 02 00 00 	jne	547 <print_trapframe+0x565>
e01043d2:	0f b7 00 	movzwl	(%eax), %eax
e01043d5:	83 ec 08 	subl	$8, %esp
e01043d8:	50 	pushl	%eax
e01043d9:	68 60 c8 10 e0 	pushl	$3759196256
e01043de:	e8 5d fb ff ff 	calll	-1187 <cprintf>
e01043e3:	83 c4 1c 	addl	$28, %esp
e01043e6:	5e 	popl	%esi
e01043e7:	5f 	popl	%edi
e01043e8:	5b 	popl	%ebx
e01043e9:	5d 	popl	%ebp
e01043ea:	c3 	retl
e01043eb:	89 c2 	movl	%eax, %edx
e01043ed:	80 e2 07 	andb	$7, %dl
e01043f0:	38 ca 	cmpb	%cl, %dl
e01043f2:	0f 8c d4 fc ff ff 	jl	-812 <print_trapframe+0x3c>
e01043f8:	83 ec 08 	subl	$8, %esp
e01043fb:	6a 02 	pushl	$2
e01043fd:	50 	pushl	%eax
e01043fe:	e8 4d 44 00 00 	calll	17485 <__asan_report_load_n>
e0104403:	83 c4 10 	addl	$16, %esp
e0104406:	89 c2 	movl	%eax, %edx
e0104408:	80 e2 07 	andb	$7, %dl
e010440b:	38 ca 	cmpb	%cl, %dl
e010440d:	0f 8c cf fc ff ff 	jl	-817 <print_trapframe+0x52>
e0104413:	83 ec 08 	subl	$8, %esp
e0104416:	6a 02 	pushl	$2
e0104418:	50 	pushl	%eax
e0104419:	e8 32 44 00 00 	calll	17458 <__asan_report_load_n>
e010441e:	83 c4 10 	addl	$16, %esp
e0104421:	89 c2 	movl	%eax, %edx
e0104423:	80 e2 07 	andb	$7, %dl
e0104426:	38 ca 	cmpb	%cl, %dl
e0104428:	0f 8c df fc ff ff 	jl	-801 <print_trapframe+0x7d>
e010442e:	83 ec 08 	subl	$8, %esp
e0104431:	6a 02 	pushl	$2
e0104433:	50 	pushl	%eax
e0104434:	e8 17 44 00 00 	calll	17431 <__asan_report_load_n>
e0104439:	83 c4 10 	addl	$16, %esp
e010443c:	89 c2 	movl	%eax, %edx
e010443e:	80 e2 07 	andb	$7, %dl
e0104441:	38 ca 	cmpb	%cl, %dl
e0104443:	0f 8c da fc ff ff 	jl	-806 <print_trapframe+0x93>
e0104449:	83 ec 08 	subl	$8, %esp
e010444c:	6a 02 	pushl	$2
e010444e:	50 	pushl	%eax
e010444f:	e8 fc 43 00 00 	calll	17404 <__asan_report_load_n>
e0104454:	83 c4 10 	addl	$16, %esp
e0104457:	89 d1 	movl	%edx, %ecx
e0104459:	80 e1 07 	andb	$7, %cl
e010445c:	38 c1 	cmpb	%al, %cl
e010445e:	0f 8c ea fc ff ff 	jl	-790 <print_trapframe+0xbe>
e0104464:	83 ec 08 	subl	$8, %esp
e0104467:	6a 04 	pushl	$4
e0104469:	52 	pushl	%edx
e010446a:	e8 e1 43 00 00 	calll	17377 <__asan_report_load_n>
e010446f:	83 c4 10 	addl	$16, %esp
e0104472:	89 c2 	movl	%eax, %edx
e0104474:	80 e2 07 	andb	$7, %dl
e0104477:	38 ca 	cmpb	%cl, %dl
e0104479:	0f 8c e8 fc ff ff 	jl	-792 <print_trapframe+0xd7>
e010447f:	83 ec 08 	subl	$8, %esp
e0104482:	6a 04 	pushl	$4
e0104484:	50 	pushl	%eax
e0104485:	e8 c6 43 00 00 	calll	17350 <__asan_report_load_n>
e010448a:	83 c4 10 	addl	$16, %esp
e010448d:	89 d1 	movl	%edx, %ecx
e010448f:	80 e1 07 	andb	$7, %cl
e0104492:	38 c1 	cmpb	%al, %cl
e0104494:	0f 8c 47 fd ff ff 	jl	-697 <print_trapframe+0x151>
e010449a:	83 ec 08 	subl	$8, %esp
e010449d:	6a 04 	pushl	$4
e010449f:	52 	pushl	%edx
e01044a0:	e8 ab 43 00 00 	calll	17323 <__asan_report_load_n>
e01044a5:	83 c4 10 	addl	$16, %esp
e01044a8:	89 c2 	movl	%eax, %edx
e01044aa:	80 e2 07 	andb	$7, %dl
e01044ad:	38 ca 	cmpb	%cl, %dl
e01044af:	8b 55 ec 	movl	-20(%ebp), %edx
e01044b2:	0f 8c 42 fd ff ff 	jl	-702 <print_trapframe+0x16a>
e01044b8:	83 ec 08 	subl	$8, %esp
e01044bb:	6a 04 	pushl	$4
e01044bd:	50 	pushl	%eax
e01044be:	e8 8d 43 00 00 	calll	17293 <__asan_report_load_n>
e01044c3:	83 c4 10 	addl	$16, %esp
e01044c6:	8b 4d f0 	movl	-16(%ebp), %ecx
e01044c9:	80 e1 07 	andb	$7, %cl
e01044cc:	38 c1 	cmpb	%al, %cl
e01044ce:	0f 8c 46 fd ff ff 	jl	-698 <print_trapframe+0x18a>
e01044d4:	83 ec 08 	subl	$8, %esp
e01044d7:	6a 04 	pushl	$4
e01044d9:	ff 75 f0 	pushl	-16(%ebp)
e01044dc:	e8 6f 43 00 00 	calll	17263 <__asan_report_load_n>
e01044e1:	83 c4 10 	addl	$16, %esp
e01044e4:	89 c2 	movl	%eax, %edx
e01044e6:	80 e2 07 	andb	$7, %dl
e01044e9:	38 ca 	cmpb	%cl, %dl
e01044eb:	8b 55 f0 	movl	-16(%ebp), %edx
e01044ee:	0f 8c 3f fd ff ff 	jl	-705 <print_trapframe+0x1a3>
e01044f4:	83 ec 08 	subl	$8, %esp
e01044f7:	6a 04 	pushl	$4
e01044f9:	50 	pushl	%eax
e01044fa:	e8 51 43 00 00 	calll	17233 <__asan_report_load_n>
e01044ff:	83 c4 10 	addl	$16, %esp
e0104502:	89 c2 	movl	%eax, %edx
e0104504:	80 e2 07 	andb	$7, %dl
e0104507:	38 ca 	cmpb	%cl, %dl
e0104509:	0f 8c af fd ff ff 	jl	-593 <print_trapframe+0x22e>
e010450f:	83 ec 08 	subl	$8, %esp
e0104512:	6a 04 	pushl	$4
e0104514:	50 	pushl	%eax
e0104515:	e8 36 43 00 00 	calll	17206 <__asan_report_load_n>
e010451a:	83 c4 10 	addl	$16, %esp
e010451d:	89 c2 	movl	%eax, %edx
e010451f:	80 e2 07 	andb	$7, %dl
e0104522:	38 ca 	cmpb	%cl, %dl
e0104524:	0f 8c aa fd ff ff 	jl	-598 <print_trapframe+0x244>
e010452a:	83 ec 08 	subl	$8, %esp
e010452d:	6a 04 	pushl	$4
e010452f:	50 	pushl	%eax
e0104530:	e8 1b 43 00 00 	calll	17179 <__asan_report_load_n>
e0104535:	83 c4 10 	addl	$16, %esp
e0104538:	89 c2 	movl	%eax, %edx
e010453a:	80 e2 07 	andb	$7, %dl
e010453d:	38 ca 	cmpb	%cl, %dl
e010453f:	0f 8c b8 fd ff ff 	jl	-584 <print_trapframe+0x26d>
e0104545:	83 ec 08 	subl	$8, %esp
e0104548:	6a 02 	pushl	$2
e010454a:	50 	pushl	%eax
e010454b:	e8 00 43 00 00 	calll	17152 <__asan_report_load_n>
e0104550:	83 c4 10 	addl	$16, %esp
e0104553:	89 c2 	movl	%eax, %edx
e0104555:	80 e2 07 	andb	$7, %dl
e0104558:	38 ca 	cmpb	%cl, %dl
e010455a:	0f 8c b3 fd ff ff 	jl	-589 <print_trapframe+0x283>
e0104560:	83 ec 08 	subl	$8, %esp
e0104563:	6a 02 	pushl	$2
e0104565:	50 	pushl	%eax
e0104566:	e8 e5 42 00 00 	calll	17125 <__asan_report_load_n>
e010456b:	83 c4 10 	addl	$16, %esp
e010456e:	89 c2 	movl	%eax, %edx
e0104570:	80 e2 07 	andb	$7, %dl
e0104573:	38 ca 	cmpb	%cl, %dl
e0104575:	0f 8c c3 fd ff ff 	jl	-573 <print_trapframe+0x2ae>
e010457b:	83 ec 08 	subl	$8, %esp
e010457e:	6a 04 	pushl	$4
e0104580:	50 	pushl	%eax
e0104581:	e8 ca 42 00 00 	calll	17098 <__asan_report_load_n>
e0104586:	83 c4 10 	addl	$16, %esp
e0104589:	89 c2 	movl	%eax, %edx
e010458b:	80 e2 07 	andb	$7, %dl
e010458e:	38 ca 	cmpb	%cl, %dl
e0104590:	0f 8c be fd ff ff 	jl	-578 <print_trapframe+0x2c4>
e0104596:	83 ec 08 	subl	$8, %esp
e0104599:	6a 04 	pushl	$4
e010459b:	50 	pushl	%eax
e010459c:	e8 af 42 00 00 	calll	17071 <__asan_report_load_n>
e01045a1:	83 c4 10 	addl	$16, %esp
e01045a4:	89 c2 	movl	%eax, %edx
e01045a6:	80 e2 07 	andb	$7, %dl
e01045a9:	38 ca 	cmpb	%cl, %dl
e01045ab:	0f 8c cc fd ff ff 	jl	-564 <print_trapframe+0x2ed>
e01045b1:	83 ec 08 	subl	$8, %esp
e01045b4:	6a 04 	pushl	$4
e01045b6:	50 	pushl	%eax
e01045b7:	e8 94 42 00 00 	calll	17044 <__asan_report_load_n>
e01045bc:	83 c4 10 	addl	$16, %esp
e01045bf:	89 c2 	movl	%eax, %edx
e01045c1:	80 e2 07 	andb	$7, %dl
e01045c4:	38 ca 	cmpb	%cl, %dl
e01045c6:	0f 8c c7 fd ff ff 	jl	-569 <print_trapframe+0x303>
e01045cc:	83 ec 08 	subl	$8, %esp
e01045cf:	6a 04 	pushl	$4
e01045d1:	50 	pushl	%eax
e01045d2:	e8 79 42 00 00 	calll	17017 <__asan_report_load_n>
e01045d7:	83 c4 10 	addl	$16, %esp
e01045da:	89 c2 	movl	%eax, %edx
e01045dc:	80 e2 07 	andb	$7, %dl
e01045df:	38 ca 	cmpb	%cl, %dl
e01045e1:	0f 8c d5 fd ff ff 	jl	-555 <print_trapframe+0x32c>
e01045e7:	83 ec 08 	subl	$8, %esp
e01045ea:	6a 02 	pushl	$2
e01045ec:	50 	pushl	%eax
e01045ed:	e8 5e 42 00 00 	calll	16990 <__asan_report_load_n>
e01045f2:	83 c4 10 	addl	$16, %esp
e01045f5:	89 da 	movl	%ebx, %edx
e01045f7:	80 e2 07 	andb	$7, %dl
e01045fa:	38 ca 	cmpb	%cl, %dl
e01045fc:	0f 8c d0 fd ff ff 	jl	-560 <print_trapframe+0x342>
e0104602:	83 ec 08 	subl	$8, %esp
e0104605:	6a 02 	pushl	$2
e0104607:	53 	pushl	%ebx
e0104608:	e8 43 42 00 00 	calll	16963 <__asan_report_load_n>
e010460d:	83 c4 10 	addl	$16, %esp
e0104610:	8b 4d ec 	movl	-20(%ebp), %ecx
e0104613:	80 e1 07 	andb	$7, %cl
e0104616:	38 c1 	cmpb	%al, %cl
e0104618:	0f 8c 28 fc ff ff 	jl	-984 <print_trapframe+0x1b6>
e010461e:	83 ec 08 	subl	$8, %esp
e0104621:	6a 04 	pushl	$4
e0104623:	ff 75 ec 	pushl	-20(%ebp)
e0104626:	e8 25 42 00 00 	calll	16933 <__asan_report_load_n>
e010462b:	83 c4 10 	addl	$16, %esp
e010462e:	89 c2 	movl	%eax, %edx
e0104630:	80 e2 07 	andb	$7, %dl
e0104633:	38 ca 	cmpb	%cl, %dl
e0104635:	8b 55 ec 	movl	-20(%ebp), %edx
e0104638:	0f 8c 21 fc ff ff 	jl	-991 <print_trapframe+0x1cf>
e010463e:	83 ec 08 	subl	$8, %esp
e0104641:	6a 04 	pushl	$4
e0104643:	50 	pushl	%eax
e0104644:	e8 07 42 00 00 	calll	16903 <__asan_report_load_n>
e0104649:	83 c4 10 	addl	$16, %esp
e010464c:	89 d1 	movl	%edx, %ecx
e010464e:	80 e1 07 	andb	$7, %cl
e0104651:	38 c1 	cmpb	%al, %cl
e0104653:	0f 8c 43 fb ff ff 	jl	-1213 <print_trapframe+0x10c>
e0104659:	83 ec 08 	subl	$8, %esp
e010465c:	6a 04 	pushl	$4
e010465e:	52 	pushl	%edx
e010465f:	e8 ec 41 00 00 	calll	16876 <__asan_report_load_n>
e0104664:	83 c4 10 	addl	$16, %esp
e0104667:	89 c2 	movl	%eax, %edx
e0104669:	80 e2 07 	andb	$7, %dl
e010466c:	38 ca 	cmpb	%cl, %dl
e010466e:	8b 55 f0 	movl	-16(%ebp), %edx
e0104671:	0f 8c 3b fb ff ff 	jl	-1221 <print_trapframe+0x122>
e0104677:	83 ec 08 	subl	$8, %esp
e010467a:	6a 04 	pushl	$4
e010467c:	50 	pushl	%eax
e010467d:	e8 ce 41 00 00 	calll	16846 <__asan_report_load_n>
e0104682:	83 c4 10 	addl	$16, %esp
e0104685:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010468f:	90 	nop

00000000e0104690 print_regs:
e0104690:	55 	pushl	%ebp
e0104691:	89 e5 	movl	%esp, %ebp
e0104693:	53 	pushl	%ebx
e0104694:	50 	pushl	%eax
e0104695:	8b 5d 08 	movl	8(%ebp), %ebx
e0104698:	89 d8 	movl	%ebx, %eax
e010469a:	c1 e8 03 	shrl	$3, %eax
e010469d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01046a3:	84 c0 	testb	%al, %al
e01046a5:	0f 85 e3 01 00 00 	jne	483 <print_regs+0x1fe>
e01046ab:	8d 43 03 	leal	3(%ebx), %eax
e01046ae:	89 c1 	movl	%eax, %ecx
e01046b0:	c1 e9 03 	shrl	$3, %ecx
e01046b3:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01046b9:	84 c9 	testb	%cl, %cl
e01046bb:	0f 85 e8 01 00 00 	jne	488 <print_regs+0x219>
e01046c1:	83 ec 08 	subl	$8, %esp
e01046c4:	ff 33 	pushl	(%ebx)
e01046c6:	68 a0 c8 10 e0 	pushl	$3759196320
e01046cb:	e8 70 f8 ff ff 	calll	-1936 <cprintf>
e01046d0:	83 c4 10 	addl	$16, %esp
e01046d3:	8d 43 04 	leal	4(%ebx), %eax
e01046d6:	89 c1 	movl	%eax, %ecx
e01046d8:	c1 e9 03 	shrl	$3, %ecx
e01046db:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01046e1:	84 c9 	testb	%cl, %cl
e01046e3:	0f 85 db 01 00 00 	jne	475 <print_regs+0x234>
e01046e9:	8d 43 07 	leal	7(%ebx), %eax
e01046ec:	89 c1 	movl	%eax, %ecx
e01046ee:	c1 e9 03 	shrl	$3, %ecx
e01046f1:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01046f7:	84 c9 	testb	%cl, %cl
e01046f9:	0f 85 e0 01 00 00 	jne	480 <print_regs+0x24f>
e01046ff:	83 ec 08 	subl	$8, %esp
e0104702:	ff 73 04 	pushl	4(%ebx)
e0104705:	68 e0 c8 10 e0 	pushl	$3759196384
e010470a:	e8 31 f8 ff ff 	calll	-1999 <cprintf>
e010470f:	83 c4 10 	addl	$16, %esp
e0104712:	8d 43 08 	leal	8(%ebx), %eax
e0104715:	89 c1 	movl	%eax, %ecx
e0104717:	c1 e9 03 	shrl	$3, %ecx
e010471a:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104720:	84 c9 	testb	%cl, %cl
e0104722:	0f 85 d2 01 00 00 	jne	466 <print_regs+0x26a>
e0104728:	8d 43 0b 	leal	11(%ebx), %eax
e010472b:	89 c1 	movl	%eax, %ecx
e010472d:	c1 e9 03 	shrl	$3, %ecx
e0104730:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104736:	84 c9 	testb	%cl, %cl
e0104738:	0f 85 d7 01 00 00 	jne	471 <print_regs+0x285>
e010473e:	83 ec 08 	subl	$8, %esp
e0104741:	ff 73 08 	pushl	8(%ebx)
e0104744:	68 20 c9 10 e0 	pushl	$3759196448
e0104749:	e8 f2 f7 ff ff 	calll	-2062 <cprintf>
e010474e:	83 c4 10 	addl	$16, %esp
e0104751:	8d 43 0c 	leal	12(%ebx), %eax
e0104754:	89 c1 	movl	%eax, %ecx
e0104756:	c1 e9 03 	shrl	$3, %ecx
e0104759:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010475f:	84 c9 	testb	%cl, %cl
e0104761:	0f 85 c9 01 00 00 	jne	457 <print_regs+0x2a0>
e0104767:	8d 43 0f 	leal	15(%ebx), %eax
e010476a:	89 c1 	movl	%eax, %ecx
e010476c:	c1 e9 03 	shrl	$3, %ecx
e010476f:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104775:	84 c9 	testb	%cl, %cl
e0104777:	0f 85 ce 01 00 00 	jne	462 <print_regs+0x2bb>
e010477d:	83 ec 08 	subl	$8, %esp
e0104780:	ff 73 0c 	pushl	12(%ebx)
e0104783:	68 60 c9 10 e0 	pushl	$3759196512
e0104788:	e8 b3 f7 ff ff 	calll	-2125 <cprintf>
e010478d:	83 c4 10 	addl	$16, %esp
e0104790:	8d 43 10 	leal	16(%ebx), %eax
e0104793:	89 c1 	movl	%eax, %ecx
e0104795:	c1 e9 03 	shrl	$3, %ecx
e0104798:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010479e:	84 c9 	testb	%cl, %cl
e01047a0:	0f 85 c0 01 00 00 	jne	448 <print_regs+0x2d6>
e01047a6:	8d 43 13 	leal	19(%ebx), %eax
e01047a9:	89 c1 	movl	%eax, %ecx
e01047ab:	c1 e9 03 	shrl	$3, %ecx
e01047ae:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01047b4:	84 c9 	testb	%cl, %cl
e01047b6:	0f 85 c5 01 00 00 	jne	453 <print_regs+0x2f1>
e01047bc:	83 ec 08 	subl	$8, %esp
e01047bf:	ff 73 10 	pushl	16(%ebx)
e01047c2:	68 a0 c9 10 e0 	pushl	$3759196576
e01047c7:	e8 74 f7 ff ff 	calll	-2188 <cprintf>
e01047cc:	83 c4 10 	addl	$16, %esp
e01047cf:	8d 43 14 	leal	20(%ebx), %eax
e01047d2:	89 c1 	movl	%eax, %ecx
e01047d4:	c1 e9 03 	shrl	$3, %ecx
e01047d7:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01047dd:	84 c9 	testb	%cl, %cl
e01047df:	0f 85 b7 01 00 00 	jne	439 <print_regs+0x30c>
e01047e5:	8d 43 17 	leal	23(%ebx), %eax
e01047e8:	89 c1 	movl	%eax, %ecx
e01047ea:	c1 e9 03 	shrl	$3, %ecx
e01047ed:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01047f3:	84 c9 	testb	%cl, %cl
e01047f5:	0f 85 bc 01 00 00 	jne	444 <print_regs+0x327>
e01047fb:	83 ec 08 	subl	$8, %esp
e01047fe:	ff 73 14 	pushl	20(%ebx)
e0104801:	68 e0 c9 10 e0 	pushl	$3759196640
e0104806:	e8 35 f7 ff ff 	calll	-2251 <cprintf>
e010480b:	83 c4 10 	addl	$16, %esp
e010480e:	8d 43 18 	leal	24(%ebx), %eax
e0104811:	89 c1 	movl	%eax, %ecx
e0104813:	c1 e9 03 	shrl	$3, %ecx
e0104816:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010481c:	84 c9 	testb	%cl, %cl
e010481e:	0f 85 ae 01 00 00 	jne	430 <print_regs+0x342>
e0104824:	8d 43 1b 	leal	27(%ebx), %eax
e0104827:	89 c1 	movl	%eax, %ecx
e0104829:	c1 e9 03 	shrl	$3, %ecx
e010482c:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104832:	84 c9 	testb	%cl, %cl
e0104834:	0f 85 b3 01 00 00 	jne	435 <print_regs+0x35d>
e010483a:	83 ec 08 	subl	$8, %esp
e010483d:	ff 73 18 	pushl	24(%ebx)
e0104840:	68 20 ca 10 e0 	pushl	$3759196704
e0104845:	e8 f6 f6 ff ff 	calll	-2314 <cprintf>
e010484a:	83 c4 10 	addl	$16, %esp
e010484d:	8d 43 1c 	leal	28(%ebx), %eax
e0104850:	89 c1 	movl	%eax, %ecx
e0104852:	c1 e9 03 	shrl	$3, %ecx
e0104855:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010485b:	84 c9 	testb	%cl, %cl
e010485d:	0f 85 a5 01 00 00 	jne	421 <print_regs+0x378>
e0104863:	83 c3 1f 	addl	$31, %ebx
e0104866:	89 d9 	movl	%ebx, %ecx
e0104868:	c1 e9 03 	shrl	$3, %ecx
e010486b:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104871:	84 c9 	testb	%cl, %cl
e0104873:	0f 85 aa 01 00 00 	jne	426 <print_regs+0x393>
e0104879:	83 ec 08 	subl	$8, %esp
e010487c:	ff 30 	pushl	(%eax)
e010487e:	68 60 ca 10 e0 	pushl	$3759196768
e0104883:	e8 b8 f6 ff ff 	calll	-2376 <cprintf>
e0104888:	83 c4 14 	addl	$20, %esp
e010488b:	5b 	popl	%ebx
e010488c:	5d 	popl	%ebp
e010488d:	c3 	retl
e010488e:	89 d9 	movl	%ebx, %ecx
e0104890:	80 e1 07 	andb	$7, %cl
e0104893:	38 c1 	cmpb	%al, %cl
e0104895:	0f 8c 10 fe ff ff 	jl	-496 <print_regs+0x1b>
e010489b:	83 ec 08 	subl	$8, %esp
e010489e:	6a 04 	pushl	$4
e01048a0:	53 	pushl	%ebx
e01048a1:	e8 aa 3f 00 00 	calll	16298 <__asan_report_load_n>
e01048a6:	83 c4 10 	addl	$16, %esp
e01048a9:	89 c2 	movl	%eax, %edx
e01048ab:	80 e2 07 	andb	$7, %dl
e01048ae:	38 ca 	cmpb	%cl, %dl
e01048b0:	0f 8c 0b fe ff ff 	jl	-501 <print_regs+0x31>
e01048b6:	83 ec 08 	subl	$8, %esp
e01048b9:	6a 04 	pushl	$4
e01048bb:	50 	pushl	%eax
e01048bc:	e8 8f 3f 00 00 	calll	16271 <__asan_report_load_n>
e01048c1:	83 c4 10 	addl	$16, %esp
e01048c4:	89 c2 	movl	%eax, %edx
e01048c6:	80 e2 07 	andb	$7, %dl
e01048c9:	38 ca 	cmpb	%cl, %dl
e01048cb:	0f 8c 18 fe ff ff 	jl	-488 <print_regs+0x59>
e01048d1:	83 ec 08 	subl	$8, %esp
e01048d4:	6a 04 	pushl	$4
e01048d6:	50 	pushl	%eax
e01048d7:	e8 74 3f 00 00 	calll	16244 <__asan_report_load_n>
e01048dc:	83 c4 10 	addl	$16, %esp
e01048df:	89 c2 	movl	%eax, %edx
e01048e1:	80 e2 07 	andb	$7, %dl
e01048e4:	38 ca 	cmpb	%cl, %dl
e01048e6:	0f 8c 13 fe ff ff 	jl	-493 <print_regs+0x6f>
e01048ec:	83 ec 08 	subl	$8, %esp
e01048ef:	6a 04 	pushl	$4
e01048f1:	50 	pushl	%eax
e01048f2:	e8 59 3f 00 00 	calll	16217 <__asan_report_load_n>
e01048f7:	83 c4 10 	addl	$16, %esp
e01048fa:	89 c2 	movl	%eax, %edx
e01048fc:	80 e2 07 	andb	$7, %dl
e01048ff:	38 ca 	cmpb	%cl, %dl
e0104901:	0f 8c 21 fe ff ff 	jl	-479 <print_regs+0x98>
e0104907:	83 ec 08 	subl	$8, %esp
e010490a:	6a 04 	pushl	$4
e010490c:	50 	pushl	%eax
e010490d:	e8 3e 3f 00 00 	calll	16190 <__asan_report_load_n>
e0104912:	83 c4 10 	addl	$16, %esp
e0104915:	89 c2 	movl	%eax, %edx
e0104917:	80 e2 07 	andb	$7, %dl
e010491a:	38 ca 	cmpb	%cl, %dl
e010491c:	0f 8c 1c fe ff ff 	jl	-484 <print_regs+0xae>
e0104922:	83 ec 08 	subl	$8, %esp
e0104925:	6a 04 	pushl	$4
e0104927:	50 	pushl	%eax
e0104928:	e8 23 3f 00 00 	calll	16163 <__asan_report_load_n>
e010492d:	83 c4 10 	addl	$16, %esp
e0104930:	89 c2 	movl	%eax, %edx
e0104932:	80 e2 07 	andb	$7, %dl
e0104935:	38 ca 	cmpb	%cl, %dl
e0104937:	0f 8c 2a fe ff ff 	jl	-470 <print_regs+0xd7>
e010493d:	83 ec 08 	subl	$8, %esp
e0104940:	6a 04 	pushl	$4
e0104942:	50 	pushl	%eax
e0104943:	e8 08 3f 00 00 	calll	16136 <__asan_report_load_n>
e0104948:	83 c4 10 	addl	$16, %esp
e010494b:	89 c2 	movl	%eax, %edx
e010494d:	80 e2 07 	andb	$7, %dl
e0104950:	38 ca 	cmpb	%cl, %dl
e0104952:	0f 8c 25 fe ff ff 	jl	-475 <print_regs+0xed>
e0104958:	83 ec 08 	subl	$8, %esp
e010495b:	6a 04 	pushl	$4
e010495d:	50 	pushl	%eax
e010495e:	e8 ed 3e 00 00 	calll	16109 <__asan_report_load_n>
e0104963:	83 c4 10 	addl	$16, %esp
e0104966:	89 c2 	movl	%eax, %edx
e0104968:	80 e2 07 	andb	$7, %dl
e010496b:	38 ca 	cmpb	%cl, %dl
e010496d:	0f 8c 33 fe ff ff 	jl	-461 <print_regs+0x116>
e0104973:	83 ec 08 	subl	$8, %esp
e0104976:	6a 04 	pushl	$4
e0104978:	50 	pushl	%eax
e0104979:	e8 d2 3e 00 00 	calll	16082 <__asan_report_load_n>
e010497e:	83 c4 10 	addl	$16, %esp
e0104981:	89 c2 	movl	%eax, %edx
e0104983:	80 e2 07 	andb	$7, %dl
e0104986:	38 ca 	cmpb	%cl, %dl
e0104988:	0f 8c 2e fe ff ff 	jl	-466 <print_regs+0x12c>
e010498e:	83 ec 08 	subl	$8, %esp
e0104991:	6a 04 	pushl	$4
e0104993:	50 	pushl	%eax
e0104994:	e8 b7 3e 00 00 	calll	16055 <__asan_report_load_n>
e0104999:	83 c4 10 	addl	$16, %esp
e010499c:	89 c2 	movl	%eax, %edx
e010499e:	80 e2 07 	andb	$7, %dl
e01049a1:	38 ca 	cmpb	%cl, %dl
e01049a3:	0f 8c 3c fe ff ff 	jl	-452 <print_regs+0x155>
e01049a9:	83 ec 08 	subl	$8, %esp
e01049ac:	6a 04 	pushl	$4
e01049ae:	50 	pushl	%eax
e01049af:	e8 9c 3e 00 00 	calll	16028 <__asan_report_load_n>
e01049b4:	83 c4 10 	addl	$16, %esp
e01049b7:	89 c2 	movl	%eax, %edx
e01049b9:	80 e2 07 	andb	$7, %dl
e01049bc:	38 ca 	cmpb	%cl, %dl
e01049be:	0f 8c 37 fe ff ff 	jl	-457 <print_regs+0x16b>
e01049c4:	83 ec 08 	subl	$8, %esp
e01049c7:	6a 04 	pushl	$4
e01049c9:	50 	pushl	%eax
e01049ca:	e8 81 3e 00 00 	calll	16001 <__asan_report_load_n>
e01049cf:	83 c4 10 	addl	$16, %esp
e01049d2:	89 c2 	movl	%eax, %edx
e01049d4:	80 e2 07 	andb	$7, %dl
e01049d7:	38 ca 	cmpb	%cl, %dl
e01049d9:	0f 8c 45 fe ff ff 	jl	-443 <print_regs+0x194>
e01049df:	83 ec 08 	subl	$8, %esp
e01049e2:	6a 04 	pushl	$4
e01049e4:	50 	pushl	%eax
e01049e5:	e8 66 3e 00 00 	calll	15974 <__asan_report_load_n>
e01049ea:	83 c4 10 	addl	$16, %esp
e01049ed:	89 c2 	movl	%eax, %edx
e01049ef:	80 e2 07 	andb	$7, %dl
e01049f2:	38 ca 	cmpb	%cl, %dl
e01049f4:	0f 8c 40 fe ff ff 	jl	-448 <print_regs+0x1aa>
e01049fa:	83 ec 08 	subl	$8, %esp
e01049fd:	6a 04 	pushl	$4
e01049ff:	50 	pushl	%eax
e0104a00:	e8 4b 3e 00 00 	calll	15947 <__asan_report_load_n>
e0104a05:	83 c4 10 	addl	$16, %esp
e0104a08:	89 c2 	movl	%eax, %edx
e0104a0a:	80 e2 07 	andb	$7, %dl
e0104a0d:	38 ca 	cmpb	%cl, %dl
e0104a0f:	0f 8c 4e fe ff ff 	jl	-434 <print_regs+0x1d3>
e0104a15:	83 ec 08 	subl	$8, %esp
e0104a18:	6a 04 	pushl	$4
e0104a1a:	50 	pushl	%eax
e0104a1b:	e8 30 3e 00 00 	calll	15920 <__asan_report_load_n>
e0104a20:	83 c4 10 	addl	$16, %esp
e0104a23:	89 da 	movl	%ebx, %edx
e0104a25:	80 e2 07 	andb	$7, %dl
e0104a28:	38 ca 	cmpb	%cl, %dl
e0104a2a:	0f 8c 49 fe ff ff 	jl	-439 <print_regs+0x1e9>
e0104a30:	83 ec 08 	subl	$8, %esp
e0104a33:	6a 04 	pushl	$4
e0104a35:	53 	pushl	%ebx
e0104a36:	e8 15 3e 00 00 	calll	15893 <__asan_report_load_n>
e0104a3b:	83 c4 10 	addl	$16, %esp
e0104a3e:	66 90 	nop

00000000e0104a40 trapname:
e0104a40:	55 	pushl	%ebp
e0104a41:	89 e5 	movl	%esp, %ebp
e0104a43:	83 ec 08 	subl	$8, %esp
e0104a46:	83 f9 13 	cmpl	$19, %ecx
e0104a49:	77 1a 	ja	26 <trapname+0x25>
e0104a4b:	8d 04 8d a0 cb 10 e0 	leal	-535770208(,%ecx,4), %eax
e0104a52:	89 c1 	movl	%eax, %ecx
e0104a54:	c1 e9 03 	shrl	$3, %ecx
e0104a57:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104a5d:	84 c9 	testb	%cl, %cl
e0104a5f:	75 26 	jne	38 <trapname+0x47>
e0104a61:	8b 00 	movl	(%eax), %eax
e0104a63:	eb 1d 	jmp	29 <trapname+0x42>
e0104a65:	b8 20 d1 10 e0 	movl	$3759198496, %eax
e0104a6a:	83 f9 30 	cmpl	$48, %ecx
e0104a6d:	74 13 	je	19 <trapname+0x42>
e0104a6f:	83 e1 f0 	andl	$-16, %ecx
e0104a72:	83 f9 20 	cmpl	$32, %ecx
e0104a75:	b9 60 d1 10 e0 	movl	$3759198560, %ecx
e0104a7a:	b8 e0 cf 10 e0 	movl	$3759198176, %eax
e0104a7f:	0f 44 c1 	cmovel	%ecx, %eax
e0104a82:	83 c4 08 	addl	$8, %esp
e0104a85:	5d 	popl	%ebp
e0104a86:	c3 	retl
e0104a87:	89 c2 	movl	%eax, %edx
e0104a89:	80 e2 07 	andb	$7, %dl
e0104a8c:	80 c2 03 	addb	$3, %dl
e0104a8f:	38 ca 	cmpb	%cl, %dl
e0104a91:	7c ce 	jl	-50 <trapname+0x21>
e0104a93:	89 04 24 	movl	%eax, (%esp)
e0104a96:	e8 f5 3c 00 00 	calll	15605 <__asan_report_load4>
e0104a9b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0104aa0 trap:
e0104aa0:	55 	pushl	%ebp
e0104aa1:	89 e5 	movl	%esp, %ebp
e0104aa3:	56 	pushl	%esi
e0104aa4:	83 ec 14 	subl	$20, %esp
e0104aa7:	fc 	cld
e0104aa8:	b8 ac 2f 12 e0 	movl	$3759288236, %eax
e0104aad:	c1 e8 03 	shrl	$3, %eax
e0104ab0:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0104ab6:	84 c0 	testb	%al, %al
e0104ab8:	74 1b 	je	27 <trap+0x35>
e0104aba:	b9 ac 2f 12 e0 	movl	$3759288236, %ecx
e0104abf:	80 e1 07 	andb	$7, %cl
e0104ac2:	80 c1 03 	addb	$3, %cl
e0104ac5:	38 c1 	cmpb	%al, %cl
e0104ac7:	7c 0c 	jl	12 <trap+0x35>
e0104ac9:	c7 04 24 ac 2f 12 e0 	movl	$3759288236, (%esp)
e0104ad0:	e8 bb 3c 00 00 	calll	15547 <__asan_report_load4>
e0104ad5:	83 3d ac 2f 12 e0 00 	cmpl	$0, -535679060
e0104adc:	74 01 	je	1 <trap+0x3f>
e0104ade:	f4 	hlt
e0104adf:	9c 	pushfl
e0104ae0:	58 	popl	%eax
e0104ae1:	a9 00 02 00 00 	testl	$512, %eax
e0104ae6:	75 2d 	jne	45 <trap+0x75>
e0104ae8:	b8 20 1e 12 e0 	movl	$3759283744, %eax
e0104aed:	c1 e8 03 	shrl	$3, %eax
e0104af0:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0104af6:	84 c0 	testb	%al, %al
e0104af8:	74 3a 	je	58 <trap+0x94>
e0104afa:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0104aff:	80 e1 07 	andb	$7, %cl
e0104b02:	80 c1 03 	addb	$3, %cl
e0104b05:	38 c1 	cmpb	%al, %cl
e0104b07:	7c 2b 	jl	43 <trap+0x94>
e0104b09:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0104b10:	e8 7b 3c 00 00 	calll	15483 <__asan_report_load4>
e0104b15:	e8 86 3a 00 00 	calll	14982 <__asan_handle_no_return>
e0104b1a:	c7 44 24 0c 20 cb 10 e0 	movl	$3759196960, 12(%esp)
e0104b22:	c7 44 24 08 e0 ca 10 e0 	movl	$3759196896, 8(%esp)
e0104b2a:	c7 44 24 04 a7 00 00 00 	movl	$167, 4(%esp)
e0104b32:	eb 26 	jmp	38 <trap+0xba>
e0104b34:	a1 20 1e 12 e0 	movl	3759283744, %eax
e0104b39:	85 c0 	testl	%eax, %eax
e0104b3b:	75 2c 	jne	44 <trap+0xc9>
e0104b3d:	e8 5e 3a 00 00 	calll	14942 <__asan_handle_no_return>
e0104b42:	c7 44 24 0c 60 cb 10 e0 	movl	$3759197024, 12(%esp)
e0104b4a:	c7 44 24 08 e0 ca 10 e0 	movl	$3759196896, 8(%esp)
e0104b52:	c7 44 24 04 ad 00 00 00 	movl	$173, 4(%esp)
e0104b5a:	c7 04 24 a0 ca 10 e0 	movl	$3759196832, (%esp)
e0104b61:	e8 ca b5 ff ff 	calll	-18998 <_panic>
e0104b66:	83 ec 10 	subl	$16, %esp
e0104b69:	8d 48 54 	leal	84(%eax), %ecx
e0104b6c:	89 ca 	movl	%ecx, %edx
e0104b6e:	c1 ea 03 	shrl	$3, %edx
e0104b71:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0104b77:	84 d2 	testb	%dl, %dl
e0104b79:	74 14 	je	20 <trap+0xef>
e0104b7b:	88 ce 	movb	%cl, %dh
e0104b7d:	80 e6 07 	andb	$7, %dh
e0104b80:	80 c6 03 	addb	$3, %dh
e0104b83:	38 d6 	cmpb	%dl, %dh
e0104b85:	7c 08 	jl	8 <trap+0xef>
e0104b87:	89 0c 24 	movl	%ecx, (%esp)
e0104b8a:	e8 01 3c 00 00 	calll	15361 <__asan_report_load4>
e0104b8f:	83 39 01 	cmpl	$1, (%ecx)
e0104b92:	75 35 	jne	53 <trap+0x129>
e0104b94:	89 04 24 	movl	%eax, (%esp)
e0104b97:	e8 74 ed ff ff 	calll	-4748 <env_free>
e0104b9c:	b8 20 1e 12 e0 	movl	$3759283744, %eax
e0104ba1:	c1 e8 03 	shrl	$3, %eax
e0104ba4:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0104baa:	84 c0 	testb	%al, %al
e0104bac:	74 5f 	je	95 <trap+0x16d>
e0104bae:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0104bb3:	80 e1 07 	andb	$7, %cl
e0104bb6:	80 c1 03 	addb	$3, %cl
e0104bb9:	38 c1 	cmpb	%al, %cl
e0104bbb:	7c 50 	jl	80 <trap+0x16d>
e0104bbd:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0104bc4:	e8 e7 3b 00 00 	calll	15335 <__asan_report_store4>
e0104bc9:	8b 4d 08 	movl	8(%ebp), %ecx
e0104bcc:	89 4c 24 04 	movl	%ecx, 4(%esp)
e0104bd0:	89 04 24 	movl	%eax, (%esp)
e0104bd3:	c7 44 24 08 44 00 00 00 	movl	$68, 8(%esp)
e0104bdb:	e8 00 47 00 00 	calll	18176 <__wrap_memcpy>
e0104be0:	be 20 1e 12 e0 	movl	$3759283744, %esi
e0104be5:	c1 ee 03 	shrl	$3, %esi
e0104be8:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e0104bee:	84 c0 	testb	%al, %al
e0104bf0:	74 2f 	je	47 <trap+0x181>
e0104bf2:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0104bf7:	80 e1 07 	andb	$7, %cl
e0104bfa:	80 c1 03 	addb	$3, %cl
e0104bfd:	38 c1 	cmpb	%al, %cl
e0104bff:	7c 20 	jl	32 <trap+0x181>
e0104c01:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0104c08:	e8 83 3b 00 00 	calll	15235 <__asan_report_load4>
e0104c0d:	c7 05 20 1e 12 e0 00 00 00 00 	movl	$0, -535683552
e0104c17:	e8 84 39 00 00 	calll	14724 <__asan_handle_no_return>
e0104c1c:	e8 6f 02 00 00 	calll	623 <sched_yield>
e0104c21:	8b 0d 20 1e 12 e0 	movl	-535683552, %ecx
e0104c27:	89 0d e0 28 12 e0 	movl	%ecx, -535680800
e0104c2d:	e8 7e 00 00 00 	calll	126 <trap_dispatch>
e0104c32:	8a 86 00 00 80 de 	movb	-562036736(%esi), %al
e0104c38:	84 c0 	testb	%al, %al
e0104c3a:	74 1b 	je	27 <trap+0x1b7>
e0104c3c:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0104c41:	80 e1 07 	andb	$7, %cl
e0104c44:	80 c1 03 	addb	$3, %cl
e0104c47:	38 c1 	cmpb	%al, %cl
e0104c49:	7c 0c 	jl	12 <trap+0x1b7>
e0104c4b:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0104c52:	e8 39 3b 00 00 	calll	15161 <__asan_report_load4>
e0104c57:	8b 35 20 1e 12 e0 	movl	-535683552, %esi
e0104c5d:	85 f6 	testl	%esi, %esi
e0104c5f:	74 3b 	je	59 <trap+0x1fc>
e0104c61:	8d 46 54 	leal	84(%esi), %eax
e0104c64:	89 c1 	movl	%eax, %ecx
e0104c66:	c1 e9 03 	shrl	$3, %ecx
e0104c69:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104c6f:	84 c9 	testb	%cl, %cl
e0104c71:	74 14 	je	20 <trap+0x1e7>
e0104c73:	89 c2 	movl	%eax, %edx
e0104c75:	80 e2 07 	andb	$7, %dl
e0104c78:	80 c2 03 	addb	$3, %dl
e0104c7b:	38 ca 	cmpb	%cl, %dl
e0104c7d:	7c 08 	jl	8 <trap+0x1e7>
e0104c7f:	89 04 24 	movl	%eax, (%esp)
e0104c82:	e8 09 3b 00 00 	calll	15113 <__asan_report_load4>
e0104c87:	83 38 03 	cmpl	$3, (%eax)
e0104c8a:	75 10 	jne	16 <trap+0x1fc>
e0104c8c:	e8 0f 39 00 00 	calll	14607 <__asan_handle_no_return>
e0104c91:	89 34 24 	movl	%esi, (%esp)
e0104c94:	e8 e7 ed ff ff 	calll	-4633 <env_run>
e0104c99:	83 ec 04 	subl	$4, %esp
e0104c9c:	e8 ff 38 00 00 	calll	14591 <__asan_handle_no_return>
e0104ca1:	e8 ea 01 00 00 	calll	490 <sched_yield>
e0104ca6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e0104cb0 trap_dispatch:
e0104cb0:	55 	pushl	%ebp
e0104cb1:	89 e5 	movl	%esp, %ebp
e0104cb3:	53 	pushl	%ebx
e0104cb4:	83 ec 14 	subl	$20, %esp
e0104cb7:	89 cb 	movl	%ecx, %ebx
e0104cb9:	8d 41 28 	leal	40(%ecx), %eax
e0104cbc:	89 c1 	movl	%eax, %ecx
e0104cbe:	c1 e9 03 	shrl	$3, %ecx
e0104cc1:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104cc7:	84 c9 	testb	%cl, %cl
e0104cc9:	0f 85 a3 00 00 00 	jne	163 <trap_dispatch+0xc2>
e0104ccf:	8d 4b 2b 	leal	43(%ebx), %ecx
e0104cd2:	89 ca 	movl	%ecx, %edx
e0104cd4:	c1 ea 03 	shrl	$3, %edx
e0104cd7:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0104cdd:	84 d2 	testb	%dl, %dl
e0104cdf:	0f 85 aa 00 00 00 	jne	170 <trap_dispatch+0xdf>
e0104ce5:	8b 00 	movl	(%eax), %eax
e0104ce7:	83 f8 27 	cmpl	$39, %eax
e0104cea:	74 6c 	je	108 <trap_dispatch+0xa8>
e0104cec:	83 f8 28 	cmpl	$40, %eax
e0104cef:	0f 84 10 01 00 00 	je	272 <trap_dispatch+0x155>
e0104cf5:	89 1c 24 	movl	%ebx, (%esp)
e0104cf8:	e8 93 f3 ff ff 	calll	-3181 <print_trapframe>
e0104cfd:	8d 43 34 	leal	52(%ebx), %eax
e0104d00:	89 c1 	movl	%eax, %ecx
e0104d02:	c1 e9 03 	shrl	$3, %ecx
e0104d05:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104d0b:	84 c9 	testb	%cl, %cl
e0104d0d:	0f 85 99 00 00 00 	jne	153 <trap_dispatch+0xfc>
e0104d13:	83 c3 35 	addl	$53, %ebx
e0104d16:	89 d9 	movl	%ebx, %ecx
e0104d18:	c1 e9 03 	shrl	$3, %ecx
e0104d1b:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104d21:	84 c9 	testb	%cl, %cl
e0104d23:	0f 85 a0 00 00 00 	jne	160 <trap_dispatch+0x119>
e0104d29:	66 83 38 08 	cmpw	$8, (%eax)
e0104d2d:	0f 84 ec 00 00 00 	je	236 <trap_dispatch+0x16f>
e0104d33:	b8 20 1e 12 e0 	movl	$3759283744, %eax
e0104d38:	c1 e8 03 	shrl	$3, %eax
e0104d3b:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0104d41:	84 c0 	testb	%al, %al
e0104d43:	0f 85 9d 00 00 00 	jne	157 <trap_dispatch+0x136>
e0104d49:	a1 20 1e 12 e0 	movl	3759283744, %eax
e0104d4e:	89 04 24 	movl	%eax, (%esp)
e0104d51:	e8 aa ec ff ff 	calll	-4950 <env_destroy>
e0104d56:	eb 14 	jmp	20 <trap_dispatch+0xbc>
e0104d58:	c7 04 24 a0 d1 10 e0 	movl	$3759198624, (%esp)
e0104d5f:	e8 dc f1 ff ff 	calll	-3620 <cprintf>
e0104d64:	89 1c 24 	movl	%ebx, (%esp)
e0104d67:	e8 24 f3 ff ff 	calll	-3292 <print_trapframe>
e0104d6c:	83 c4 14 	addl	$20, %esp
e0104d6f:	5b 	popl	%ebx
e0104d70:	5d 	popl	%ebp
e0104d71:	c3 	retl
e0104d72:	89 c2 	movl	%eax, %edx
e0104d74:	80 e2 07 	andb	$7, %dl
e0104d77:	38 ca 	cmpb	%cl, %dl
e0104d79:	0f 8c 50 ff ff ff 	jl	-176 <trap_dispatch+0x1f>
e0104d7f:	89 04 24 	movl	%eax, (%esp)
e0104d82:	c7 44 24 04 04 00 00 00 	movl	$4, 4(%esp)
e0104d8a:	e8 c1 3a 00 00 	calll	15041 <__asan_report_load_n>
e0104d8f:	88 ce 	movb	%cl, %dh
e0104d91:	80 e6 07 	andb	$7, %dh
e0104d94:	38 d6 	cmpb	%dl, %dh
e0104d96:	0f 8c 49 ff ff ff 	jl	-183 <trap_dispatch+0x35>
e0104d9c:	89 0c 24 	movl	%ecx, (%esp)
e0104d9f:	c7 44 24 04 04 00 00 00 	movl	$4, 4(%esp)
e0104da7:	e8 a4 3a 00 00 	calll	15012 <__asan_report_load_n>
e0104dac:	89 c2 	movl	%eax, %edx
e0104dae:	80 e2 07 	andb	$7, %dl
e0104db1:	38 ca 	cmpb	%cl, %dl
e0104db3:	0f 8c 5a ff ff ff 	jl	-166 <trap_dispatch+0x63>
e0104db9:	89 04 24 	movl	%eax, (%esp)
e0104dbc:	c7 44 24 04 02 00 00 00 	movl	$2, 4(%esp)
e0104dc4:	e8 87 3a 00 00 	calll	14983 <__asan_report_load_n>
e0104dc9:	89 da 	movl	%ebx, %edx
e0104dcb:	80 e2 07 	andb	$7, %dl
e0104dce:	38 ca 	cmpb	%cl, %dl
e0104dd0:	0f 8c 53 ff ff ff 	jl	-173 <trap_dispatch+0x79>
e0104dd6:	89 1c 24 	movl	%ebx, (%esp)
e0104dd9:	c7 44 24 04 02 00 00 00 	movl	$2, 4(%esp)
e0104de1:	e8 6a 3a 00 00 	calll	14954 <__asan_report_load_n>
e0104de6:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0104deb:	80 e1 07 	andb	$7, %cl
e0104dee:	80 c1 03 	addb	$3, %cl
e0104df1:	38 c1 	cmpb	%al, %cl
e0104df3:	0f 8c 50 ff ff ff 	jl	-176 <trap_dispatch+0x99>
e0104df9:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0104e00:	e8 8b 39 00 00 	calll	14731 <__asan_report_load4>
e0104e05:	e8 e6 ed ff ff 	calll	-4634 <rtc_check_status>
e0104e0a:	0f b6 c0 	movzbl	%al, %eax
e0104e0d:	89 04 24 	movl	%eax, (%esp)
e0104e10:	e8 5b ef ff ff 	calll	-4261 <pic_send_eoi>
e0104e15:	e8 86 37 00 00 	calll	14214 <__asan_handle_no_return>
e0104e1a:	e8 71 00 00 00 	calll	113 <sched_yield>
e0104e1f:	e8 7c 37 00 00 	calll	14204 <__asan_handle_no_return>
e0104e24:	c7 44 24 08 e0 d1 10 e0 	movl	$3759198688, 8(%esp)
e0104e2c:	c7 44 24 04 92 00 00 00 	movl	$146, 4(%esp)
e0104e34:	c7 04 24 a0 ca 10 e0 	movl	$3759196832, (%esp)
e0104e3b:	e8 f0 b2 ff ff 	calll	-19728 <_panic>
e0104e40:	83 ec 0c 	subl	$12, %esp
e0104e43:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0104e4d:	0f 1f 00 	nopl	(%eax)

00000000e0104e50 asan.module_ctor:
e0104e50:	83 ec 0c 	subl	$12, %esp
e0104e53:	e8 a8 3e 00 00 	calll	16040 <__asan_init>
e0104e58:	e8 c3 3f 00 00 	calll	16323 <__asan_version_mismatch_check_v8>
e0104e5d:	83 ec 08 	subl	$8, %esp
e0104e60:	6a 3b 	pushl	$59
e0104e62:	68 20 10 12 e0 	pushl	$3759280160
e0104e67:	e8 c4 3e 00 00 	calll	16068 <__asan_register_globals>
e0104e6c:	83 c4 1c 	addl	$28, %esp
e0104e6f:	c3 	retl

00000000e0104e70 asan.module_dtor:
e0104e70:	83 ec 14 	subl	$20, %esp
e0104e73:	6a 3b 	pushl	$59
e0104e75:	68 20 10 12 e0 	pushl	$3759280160
e0104e7a:	e8 01 3f 00 00 	calll	16129 <__asan_unregister_globals>
e0104e7f:	83 c4 1c 	addl	$28, %esp
e0104e82:	c3 	retl
e0104e83:	cc 	int3

00000000e0104e84 clock_thdlr:
e0104e84:	eb fe 	jmp	-2 <clock_thdlr>
e0104e86:	cc 	int3
e0104e87:	cc 	int3
e0104e88:	cc 	int3
e0104e89:	cc 	int3
e0104e8a:	cc 	int3
e0104e8b:	cc 	int3
e0104e8c:	cc 	int3
e0104e8d:	cc 	int3
e0104e8e:	cc 	int3
e0104e8f:	cc 	int3

00000000e0104e90 sched_yield:
e0104e90:	55 	pushl	%ebp
e0104e91:	89 e5 	movl	%esp, %ebp
e0104e93:	53 	pushl	%ebx
e0104e94:	57 	pushl	%edi
e0104e95:	56 	pushl	%esi
e0104e96:	83 ec 0c 	subl	$12, %esp
e0104e99:	b8 20 1e 12 e0 	movl	$3759283744, %eax
e0104e9e:	c1 e8 03 	shrl	$3, %eax
e0104ea1:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0104ea7:	84 c0 	testb	%al, %al
e0104ea9:	0f 85 cd 00 00 00 	jne	205 <sched_yield+0xec>
e0104eaf:	8b 35 20 1e 12 e0 	movl	-535683552, %esi
e0104eb5:	85 f6 	testl	%esi, %esi
e0104eb7:	0f 84 3b 01 00 00 	je	315 <sched_yield+0x168>
e0104ebd:	8d 46 48 	leal	72(%esi), %eax
e0104ec0:	89 c1 	movl	%eax, %ecx
e0104ec2:	c1 e9 03 	shrl	$3, %ecx
e0104ec5:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104ecb:	84 c9 	testb	%cl, %cl
e0104ecd:	0f 85 c8 00 00 00 	jne	200 <sched_yield+0x10b>
e0104ed3:	89 75 f0 	movl	%esi, -16(%ebp)
e0104ed6:	8b 00 	movl	(%eax), %eax
e0104ed8:	b9 80 0c 12 e0 	movl	$3759279232, %ecx
e0104edd:	c1 e9 03 	shrl	$3, %ecx
e0104ee0:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104ee6:	84 c9 	testb	%cl, %cl
e0104ee8:	0f 85 c5 00 00 00 	jne	197 <sched_yield+0x123>
e0104eee:	83 e0 1f 	andl	$31, %eax
e0104ef1:	b9 01 00 00 00 	movl	$1, %ecx
e0104ef6:	8b 3d 80 0c 12 e0 	movl	-535688064, %edi
e0104efc:	0f 1f 40 00 	nopl	(%eax)
e0104f00:	8d 50 01 	leal	1(%eax), %edx
e0104f03:	89 d6 	movl	%edx, %esi
e0104f05:	c1 fe 1f 	sarl	$31, %esi
e0104f08:	c1 ee 1b 	shrl	$27, %esi
e0104f0b:	8d 74 30 01 	leal	1(%eax,%esi), %esi
e0104f0f:	83 e6 e0 	andl	$-32, %esi
e0104f12:	89 d0 	movl	%edx, %eax
e0104f14:	29 f0 	subl	%esi, %eax
e0104f16:	6b f0 5c 	imull	$92, %eax, %esi
e0104f19:	8d 5c 37 54 	leal	84(%edi,%esi), %ebx
e0104f1d:	89 da 	movl	%ebx, %edx
e0104f1f:	c1 ea 03 	shrl	$3, %edx
e0104f22:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0104f29:	84 d2 	testb	%dl, %dl
e0104f2b:	75 11 	jne	17 <sched_yield+0xae>
e0104f2d:	83 3b 02 	cmpl	$2, (%ebx)
e0104f30:	0f 84 b0 00 00 00 	je	176 <sched_yield+0x156>
e0104f36:	41 	incl	%ecx
e0104f37:	83 f9 1f 	cmpl	$31, %ecx
e0104f3a:	76 c4 	jbe	-60 <sched_yield+0x70>
e0104f3c:	eb 14 	jmp	20 <sched_yield+0xc2>
e0104f3e:	88 de 	movb	%bl, %dh
e0104f40:	80 e6 07 	andb	$7, %dh
e0104f43:	80 c6 03 	addb	$3, %dh
e0104f46:	38 d6 	cmpb	%dl, %dh
e0104f48:	7c e3 	jl	-29 <sched_yield+0x9d>
e0104f4a:	89 1c 24 	movl	%ebx, (%esp)
e0104f4d:	e8 3e 38 00 00 	calll	14398 <__asan_report_load4>
e0104f52:	8b 75 f0 	movl	-16(%ebp), %esi
e0104f55:	8d 46 54 	leal	84(%esi), %eax
e0104f58:	89 c1 	movl	%eax, %ecx
e0104f5a:	c1 e9 03 	shrl	$3, %ecx
e0104f5d:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0104f63:	84 c9 	testb	%cl, %cl
e0104f65:	75 6b 	jne	107 <sched_yield+0x142>
e0104f67:	83 38 03 	cmpl	$3, (%eax)
e0104f6a:	0f 84 bb 00 00 00 	je	187 <sched_yield+0x19b>
e0104f70:	83 c4 0c 	addl	$12, %esp
e0104f73:	5e 	popl	%esi
e0104f74:	5f 	popl	%edi
e0104f75:	5b 	popl	%ebx
e0104f76:	5d 	popl	%ebp
e0104f77:	e9 c4 00 00 00 	jmp	196 <sched_halt>
e0104f7c:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0104f81:	80 e1 07 	andb	$7, %cl
e0104f84:	80 c1 03 	addb	$3, %cl
e0104f87:	38 c1 	cmpb	%al, %cl
e0104f89:	0f 8c 20 ff ff ff 	jl	-224 <sched_yield+0x1f>
e0104f8f:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0104f96:	e8 f5 37 00 00 	calll	14325 <__asan_report_load4>
e0104f9b:	89 c2 	movl	%eax, %edx
e0104f9d:	80 e2 07 	andb	$7, %dl
e0104fa0:	80 c2 03 	addb	$3, %dl
e0104fa3:	38 ca 	cmpb	%cl, %dl
e0104fa5:	0f 8c 28 ff ff ff 	jl	-216 <sched_yield+0x43>
e0104fab:	89 04 24 	movl	%eax, (%esp)
e0104fae:	e8 dd 37 00 00 	calll	14301 <__asan_report_load4>
e0104fb3:	ba 80 0c 12 e0 	movl	$3759279232, %edx
e0104fb8:	80 e2 07 	andb	$7, %dl
e0104fbb:	80 c2 03 	addb	$3, %dl
e0104fbe:	38 ca 	cmpb	%cl, %dl
e0104fc0:	0f 8c 28 ff ff ff 	jl	-216 <sched_yield+0x5e>
e0104fc6:	c7 04 24 80 0c 12 e0 	movl	$3759279232, (%esp)
e0104fcd:	e8 be 37 00 00 	calll	14270 <__asan_report_load4>
e0104fd2:	89 c2 	movl	%eax, %edx
e0104fd4:	80 e2 07 	andb	$7, %dl
e0104fd7:	80 c2 03 	addb	$3, %dl
e0104fda:	38 ca 	cmpb	%cl, %dl
e0104fdc:	7c 89 	jl	-119 <sched_yield+0xd7>
e0104fde:	89 04 24 	movl	%eax, (%esp)
e0104fe1:	e8 aa 37 00 00 	calll	14250 <__asan_report_load4>
e0104fe6:	01 f7 	addl	%esi, %edi
e0104fe8:	e8 b3 35 00 00 	calll	13747 <__asan_handle_no_return>
e0104fed:	89 3c 24 	movl	%edi, (%esp)
e0104ff0:	e8 8b ea ff ff 	calll	-5493 <env_run>
e0104ff5:	83 ec 04 	subl	$4, %esp
e0104ff8:	b8 80 0c 12 e0 	movl	$3759279232, %eax
e0104ffd:	c1 e8 03 	shrl	$3, %eax
e0105000:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105006:	84 c0 	testb	%al, %al
e0105008:	74 1b 	je	27 <sched_yield+0x195>
e010500a:	b9 80 0c 12 e0 	movl	$3759279232, %ecx
e010500f:	80 e1 07 	andb	$7, %cl
e0105012:	80 c1 03 	addb	$3, %cl
e0105015:	38 c1 	cmpb	%al, %cl
e0105017:	7c 0c 	jl	12 <sched_yield+0x195>
e0105019:	c7 04 24 80 0c 12 e0 	movl	$3759279232, (%esp)
e0105020:	e8 6b 37 00 00 	calll	14187 <__asan_report_load4>
e0105025:	8b 35 80 0c 12 e0 	movl	-535688064, %esi
e010502b:	e8 70 35 00 00 	calll	13680 <__asan_handle_no_return>
e0105030:	89 34 24 	movl	%esi, (%esp)
e0105033:	e8 48 ea ff ff 	calll	-5560 <env_run>
e0105038:	83 ec 04 	subl	$4, %esp
e010503b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0105040 sched_halt:
e0105040:	55 	pushl	%ebp
e0105041:	89 e5 	movl	%esp, %ebp
e0105043:	83 ec 08 	subl	$8, %esp
e0105046:	b8 80 0c 12 e0 	movl	$3759279232, %eax
e010504b:	c1 e8 03 	shrl	$3, %eax
e010504e:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105054:	84 c0 	testb	%al, %al
e0105056:	0f 85 b7 00 00 00 	jne	183 <sched_halt+0xd3>
e010505c:	a1 80 0c 12 e0 	movl	3759279232, %eax
e0105061:	83 c0 54 	addl	$84, %eax
e0105064:	31 c9 	xorl	%ecx, %ecx
e0105066:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0105070:	89 c2 	movl	%eax, %edx
e0105072:	c1 ea 03 	shrl	$3, %edx
e0105075:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e010507c:	84 d2 	testb	%dl, %dl
e010507e:	75 15 	jne	21 <sched_halt+0x55>
e0105080:	8b 10 	movl	(%eax), %edx
e0105082:	83 e2 fe 	andl	$-2, %edx
e0105085:	83 fa 02 	cmpl	$2, %edx
e0105088:	74 44 	je	68 <sched_halt+0x8e>
e010508a:	41 	incl	%ecx
e010508b:	83 c0 5c 	addl	$92, %eax
e010508e:	83 f9 20 	cmpl	$32, %ecx
e0105091:	72 dd 	jb	-35 <sched_halt+0x30>
e0105093:	eb 14 	jmp	20 <sched_halt+0x69>
e0105095:	88 c6 	movb	%al, %dh
e0105097:	80 e6 07 	andb	$7, %dh
e010509a:	80 c6 03 	addb	$3, %dh
e010509d:	38 d6 	cmpb	%dl, %dh
e010509f:	7c df 	jl	-33 <sched_halt+0x40>
e01050a1:	89 04 24 	movl	%eax, (%esp)
e01050a4:	e8 e7 36 00 00 	calll	14055 <__asan_report_load4>
e01050a9:	75 23 	jne	35 <sched_halt+0x8e>
e01050ab:	c7 04 24 e0 d5 10 e0 	movl	$3759199712, (%esp)
e01050b2:	e8 89 ee ff ff 	calll	-4471 <cprintf>
e01050b7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e01050c0:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e01050c7:	e8 64 c0 ff ff 	calll	-16284 <monitor>
e01050cc:	eb f2 	jmp	-14 <sched_halt+0x80>
e01050ce:	b8 20 1e 12 e0 	movl	$3759283744, %eax
e01050d3:	c1 e8 03 	shrl	$3, %eax
e01050d6:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01050dc:	84 c0 	testb	%al, %al
e01050de:	75 52 	jne	82 <sched_halt+0xf2>
e01050e0:	c7 05 20 1e 12 e0 00 00 00 00 	movl	$0, -535683552
e01050ea:	b8 44 3b 12 e0 	movl	$3759291204, %eax
e01050ef:	c1 e8 03 	shrl	$3, %eax
e01050f2:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01050f8:	84 c0 	testb	%al, %al
e01050fa:	75 51 	jne	81 <sched_halt+0x10d>
e01050fc:	a1 44 3b 12 e0 	movl	3759291204, %eax
e0105101:	bd 00 00 00 00 	movl	$0, %ebp
e0105106:	89 c4 	movl	%eax, %esp
e0105108:	6a 00 	pushl	$0
e010510a:	6a 00 	pushl	$0
e010510c:	fb 	sti
e010510d:	f4 	hlt
e010510e:	83 c4 08 	addl	$8, %esp
e0105111:	5d 	popl	%ebp
e0105112:	c3 	retl
e0105113:	b9 80 0c 12 e0 	movl	$3759279232, %ecx
e0105118:	80 e1 07 	andb	$7, %cl
e010511b:	80 c1 03 	addb	$3, %cl
e010511e:	38 c1 	cmpb	%al, %cl
e0105120:	0f 8c 36 ff ff ff 	jl	-202 <sched_halt+0x1c>
e0105126:	c7 04 24 80 0c 12 e0 	movl	$3759279232, (%esp)
e010512d:	e8 5e 36 00 00 	calll	13918 <__asan_report_load4>
e0105132:	b9 20 1e 12 e0 	movl	$3759283744, %ecx
e0105137:	80 e1 07 	andb	$7, %cl
e010513a:	80 c1 03 	addb	$3, %cl
e010513d:	38 c1 	cmpb	%al, %cl
e010513f:	7c 9f 	jl	-97 <sched_halt+0xa0>
e0105141:	c7 04 24 20 1e 12 e0 	movl	$3759283744, (%esp)
e0105148:	e8 63 36 00 00 	calll	13923 <__asan_report_store4>
e010514d:	b9 44 3b 12 e0 	movl	$3759291204, %ecx
e0105152:	80 e1 07 	andb	$7, %cl
e0105155:	80 c1 03 	addb	$3, %cl
e0105158:	38 c1 	cmpb	%al, %cl
e010515a:	7c a0 	jl	-96 <sched_halt+0xbc>
e010515c:	c7 04 24 44 3b 12 e0 	movl	$3759291204, (%esp)
e0105163:	e8 28 36 00 00 	calll	13864 <__asan_report_load4>
e0105168:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0105170 asan.module_ctor:
e0105170:	83 ec 0c 	subl	$12, %esp
e0105173:	e8 88 3b 00 00 	calll	15240 <__asan_init>
e0105178:	e8 a3 3c 00 00 	calll	15523 <__asan_version_mismatch_check_v8>
e010517d:	83 ec 08 	subl	$8, %esp
e0105180:	6a 01 	pushl	$1
e0105182:	68 80 17 12 e0 	pushl	$3759282048
e0105187:	e8 a4 3b 00 00 	calll	15268 <__asan_register_globals>
e010518c:	83 c4 1c 	addl	$28, %esp
e010518f:	c3 	retl

00000000e0105190 asan.module_dtor:
e0105190:	83 ec 14 	subl	$20, %esp
e0105193:	6a 01 	pushl	$1
e0105195:	68 80 17 12 e0 	pushl	$3759282048
e010519a:	e8 e1 3b 00 00 	calll	15329 <__asan_unregister_globals>
e010519f:	83 c4 1c 	addl	$28, %esp
e01051a2:	c3 	retl
e01051a3:	cc 	int3
e01051a4:	cc 	int3
e01051a5:	cc 	int3
e01051a6:	cc 	int3
e01051a7:	cc 	int3
e01051a8:	cc 	int3
e01051a9:	cc 	int3
e01051aa:	cc 	int3
e01051ab:	cc 	int3
e01051ac:	cc 	int3
e01051ad:	cc 	int3
e01051ae:	cc 	int3
e01051af:	cc 	int3

00000000e01051b0 debuginfo_eip:
e01051b0:	55 	pushl	%ebp
e01051b1:	89 e5 	movl	%esp, %ebp
e01051b3:	53 	pushl	%ebx
e01051b4:	57 	pushl	%edi
e01051b5:	56 	pushl	%esi
e01051b6:	83 e4 e0 	andl	$-32, %esp
e01051b9:	81 ec 80 00 00 00 	subl	$128, %esp
e01051bf:	89 e6 	movl	%esp, %esi
e01051c1:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e01051c8:	74 11 	je	17 <debuginfo_eip+0x2b>
e01051ca:	83 ec 0c 	subl	$12, %esp
e01051cd:	6a 70 	pushl	$112
e01051cf:	e8 0c 38 00 00 	calll	14348 <__asan_stack_malloc_1>
e01051d4:	83 c4 10 	addl	$16, %esp
e01051d7:	89 c2 	movl	%eax, %edx
e01051d9:	eb 02 	jmp	2 <debuginfo_eip+0x2d>
e01051db:	31 d2 	xorl	%edx, %edx
e01051dd:	8b 4d 0c 	movl	12(%ebp), %ecx
e01051e0:	85 d2 	testl	%edx, %edx
e01051e2:	89 d7 	movl	%edx, %edi
e01051e4:	75 0a 	jne	10 <debuginfo_eip+0x40>
e01051e6:	89 e7 	movl	%esp, %edi
e01051e8:	83 c7 90 	addl	$-112, %edi
e01051eb:	83 e7 e0 	andl	$-32, %edi
e01051ee:	89 fc 	movl	%edi, %esp
e01051f0:	89 7e 20 	movl	%edi, 32(%esi)
e01051f3:	89 7e 5c 	movl	%edi, 92(%esi)
e01051f6:	c7 07 b3 8a b5 41 	movl	$1102416563, (%edi)
e01051fc:	c7 47 04 79 a2 10 e0 	movl	$3759186553, 4(%edi)
e0105203:	c7 47 08 b0 51 10 e0 	movl	$3759165872, 8(%edi)
e010520a:	c1 ef 03 	shrl	$3, %edi
e010520d:	c7 87 00 00 80 de f1 f1 f8 f2 	movl	$4076401137, -562036736(%edi)
e0105217:	c7 87 04 00 80 de f8 f2 f8 f2 	movl	$4076401400, -562036732(%edi)
e0105221:	c7 87 08 00 80 de f8 f2 f8 f2 	movl	$4076401400, -562036728(%edi)
e010522b:	66 c7 87 0c 00 80 de f8 f3 	movw	$62456, -562036724(%edi)
e0105234:	c6 87 02 00 80 de 04 	movb	$4, -562036734(%edi)
e010523b:	c6 87 04 00 80 de 04 	movb	$4, -562036732(%edi)
e0105242:	c6 87 06 00 80 de 04 	movb	$4, -562036730(%edi)
e0105249:	c6 87 08 00 80 de 04 	movb	$4, -562036728(%edi)
e0105250:	c6 87 0a 00 80 de 04 	movb	$4, -562036726(%edi)
e0105257:	c6 87 0c 00 80 de 04 	movb	$4, -562036724(%edi)
e010525e:	89 c8 	movl	%ecx, %eax
e0105260:	c1 e8 03 	shrl	$3, %eax
e0105263:	89 46 4c 	movl	%eax, 76(%esi)
e0105266:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010526c:	84 c0 	testb	%al, %al
e010526e:	0f 85 c1 06 00 00 	jne	1729 <debuginfo_eip+0x785>
e0105274:	c7 01 60 d6 10 e0 	movl	$3759199840, (%ecx)
e010527a:	8d 59 04 	leal	4(%ecx), %ebx
e010527d:	89 d8 	movl	%ebx, %eax
e010527f:	c1 e8 03 	shrl	$3, %eax
e0105282:	89 46 50 	movl	%eax, 80(%esi)
e0105285:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010528b:	84 c0 	testb	%al, %al
e010528d:	0f 85 c2 06 00 00 	jne	1730 <debuginfo_eip+0x7a5>
e0105293:	c7 41 04 00 00 00 00 	movl	$0, 4(%ecx)
e010529a:	8d 41 08 	leal	8(%ecx), %eax
e010529d:	89 46 10 	movl	%eax, 16(%esi)
e01052a0:	c1 e8 03 	shrl	$3, %eax
e01052a3:	89 46 44 	movl	%eax, 68(%esi)
e01052a6:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01052ac:	84 c0 	testb	%al, %al
e01052ae:	0f 85 c0 06 00 00 	jne	1728 <debuginfo_eip+0x7c4>
e01052b4:	89 5e 54 	movl	%ebx, 84(%esi)
e01052b7:	c7 41 08 60 d6 10 e0 	movl	$3759199840, 8(%ecx)
e01052be:	8d 41 0c 	leal	12(%ecx), %eax
e01052c1:	89 46 38 	movl	%eax, 56(%esi)
e01052c4:	c1 e8 03 	shrl	$3, %eax
e01052c7:	89 46 58 	movl	%eax, 88(%esi)
e01052ca:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01052d0:	84 c0 	testb	%al, %al
e01052d2:	0f 85 be 06 00 00 	jne	1726 <debuginfo_eip+0x7e6>
e01052d8:	c7 41 0c 09 00 00 00 	movl	$9, 12(%ecx)
e01052df:	8d 41 10 	leal	16(%ecx), %eax
e01052e2:	89 46 0c 	movl	%eax, 12(%esi)
e01052e5:	c1 e8 03 	shrl	$3, %eax
e01052e8:	89 46 18 	movl	%eax, 24(%esi)
e01052eb:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01052f1:	84 c0 	testb	%al, %al
e01052f3:	0f 85 bf 06 00 00 	jne	1727 <debuginfo_eip+0x808>
e01052f9:	8b 5d 08 	movl	8(%ebp), %ebx
e01052fc:	89 59 10 	movl	%ebx, 16(%ecx)
e01052ff:	8d 49 14 	leal	20(%ecx), %ecx
e0105302:	89 c8 	movl	%ecx, %eax
e0105304:	c1 e8 03 	shrl	$3, %eax
e0105307:	89 46 40 	movl	%eax, 64(%esi)
e010530a:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105310:	84 c0 	testb	%al, %al
e0105312:	0f 85 c2 06 00 00 	jne	1730 <debuginfo_eip+0x82a>
e0105318:	c7 01 00 00 00 00 	movl	$0, (%ecx)
e010531e:	89 5e 3c 	movl	%ebx, 60(%esi)
e0105321:	81 fb 00 00 80 df 	cmpl	$3749707776, %ebx
e0105327:	0f 87 fe 0a 00 00 	ja	2814 <debuginfo_eip+0xc7b>
e010532d:	b8 6d df 10 e0 	movl	$3759202157, %eax
e0105332:	3d 6d df 10 e0 	cmpl	$3759202157, %eax
e0105337:	76 1f 	jbe	31 <debuginfo_eip+0x1a8>
e0105339:	b8 6c df 10 e0 	movl	$3759202156, %eax
e010533e:	c1 e8 03 	shrl	$3, %eax
e0105341:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105347:	84 c0 	testb	%al, %al
e0105349:	0f 85 ae 06 00 00 	jne	1710 <debuginfo_eip+0x84d>
e010534f:	80 3d 6c df 10 e0 00 	cmpb	$0, -535765140
e0105356:	74 77 	je	119 <debuginfo_eip+0x21f>
e0105358:	bb ff ff ff ff 	movl	$4294967295, %ebx
e010535d:	81 c7 00 00 80 de 	addl	$3732930560, %edi
e0105363:	c6 47 0c f8 	movb	$-8, 12(%edi)
e0105367:	c6 47 0a f8 	movb	$-8, 10(%edi)
e010536b:	c6 47 08 f8 	movb	$-8, 8(%edi)
e010536f:	c6 47 06 f8 	movb	$-8, 6(%edi)
e0105373:	c6 47 04 f8 	movb	$-8, 4(%edi)
e0105377:	c6 47 02 f8 	movb	$-8, 2(%edi)
e010537b:	8b 46 20 	movl	32(%esi), %eax
e010537e:	c7 00 0e 36 e0 45 	movl	$1172321806, (%eax)
e0105384:	85 d2 	testl	%edx, %edx
e0105386:	74 23 	je	35 <debuginfo_eip+0x1fb>
e0105388:	c7 07 f5 f5 f5 f5 	movl	$4126537205, (%edi)
e010538e:	c7 47 04 f5 f5 f5 f5 	movl	$4126537205, 4(%edi)
e0105395:	c7 47 08 f5 f5 f5 f5 	movl	$4126537205, 8(%edi)
e010539c:	c7 47 0c f5 f5 f5 f5 	movl	$4126537205, 12(%edi)
e01053a3:	8b 42 7c 	movl	124(%edx), %eax
e01053a6:	c6 00 00 	movb	$0, (%eax)
e01053a9:	eb 1a 	jmp	26 <debuginfo_eip+0x215>
e01053ab:	c7 07 00 00 00 00 	movl	$0, (%edi)
e01053b1:	c7 47 04 00 00 00 00 	movl	$0, 4(%edi)
e01053b8:	c7 47 08 00 00 00 00 	movl	$0, 8(%edi)
e01053bf:	66 c7 47 0c 00 00 	movw	$0, 12(%edi)
e01053c5:	89 d8 	movl	%ebx, %eax
e01053c7:	8d 65 f4 	leal	-12(%ebp), %esp
e01053ca:	5e 	popl	%esi
e01053cb:	5f 	popl	%edi
e01053cc:	5b 	popl	%ebx
e01053cd:	5d 	popl	%ebp
e01053ce:	c3 	retl
e01053cf:	89 4e 24 	movl	%ecx, 36(%esi)
e01053d2:	8b 4e 20 	movl	32(%esi), %ecx
e01053d5:	8d 41 10 	leal	16(%ecx), %eax
e01053d8:	89 46 14 	movl	%eax, 20(%esi)
e01053db:	c1 e8 03 	shrl	$3, %eax
e01053de:	89 46 1c 	movl	%eax, 28(%esi)
e01053e1:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01053e7:	84 c0 	testb	%al, %al
e01053e9:	0f 85 34 06 00 00 	jne	1588 <debuginfo_eip+0x873>
e01053ef:	89 56 2c 	movl	%edx, 44(%esi)
e01053f2:	8d 59 20 	leal	32(%ecx), %ebx
e01053f5:	8b 46 14 	movl	20(%esi), %eax
e01053f8:	c7 00 00 00 00 00 	movl	$0, (%eax)
e01053fe:	89 d8 	movl	%ebx, %eax
e0105400:	c1 e8 03 	shrl	$3, %eax
e0105403:	89 46 28 	movl	%eax, 40(%esi)
e0105406:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010540c:	84 c0 	testb	%al, %al
e010540e:	0f 85 31 06 00 00 	jne	1585 <debuginfo_eip+0x895>
e0105414:	b9 6c df 10 e0 	movl	$3759202156, %ecx
e0105419:	b8 6c df 10 e0 	movl	$3759202156, %eax
e010541e:	29 c8 	subl	%ecx, %eax
e0105420:	b9 ab aa aa 2a 	movl	$715827883, %ecx
e0105425:	f7 e9 	imull	%ecx
e0105427:	89 d0 	movl	%edx, %eax
e0105429:	c1 e8 1f 	shrl	$31, %eax
e010542c:	d1 fa 	sarl	%edx
e010542e:	8d 44 02 ff 	leal	-1(%edx,%eax), %eax
e0105432:	89 03 	movl	%eax, (%ebx)
e0105434:	83 ec 08 	subl	$8, %esp
e0105437:	8b 4e 14 	movl	20(%esi), %ecx
e010543a:	89 5e 34 	movl	%ebx, 52(%esi)
e010543d:	89 da 	movl	%ebx, %edx
e010543f:	ff 75 08 	pushl	8(%ebp)
e0105442:	6a 64 	pushl	$100
e0105444:	e8 27 0a 00 00 	calll	2599 <stab_binsearch>
e0105449:	83 c4 10 	addl	$16, %esp
e010544c:	8b 46 1c 	movl	28(%esi), %eax
e010544f:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105455:	84 c0 	testb	%al, %al
e0105457:	0f 85 04 06 00 00 	jne	1540 <debuginfo_eip+0x8b1>
e010545d:	8b 46 14 	movl	20(%esi), %eax
e0105460:	8b 00 	movl	(%eax), %eax
e0105462:	89 46 14 	movl	%eax, 20(%esi)
e0105465:	85 c0 	testl	%eax, %eax
e0105467:	8b 56 2c 	movl	44(%esi), %edx
e010546a:	8b 4e 20 	movl	32(%esi), %ecx
e010546d:	0f 84 e5 fe ff ff 	je	-283 <debuginfo_eip+0x1a8>
e0105473:	8d 59 30 	leal	48(%ecx), %ebx
e0105476:	89 da 	movl	%ebx, %edx
e0105478:	c1 ea 03 	shrl	$3, %edx
e010547b:	8a 82 00 00 80 de 	movb	-562036736(%edx), %al
e0105481:	84 c0 	testb	%al, %al
e0105483:	0f 85 f7 05 00 00 	jne	1527 <debuginfo_eip+0x8d0>
e0105489:	89 56 30 	movl	%edx, 48(%esi)
e010548c:	8b 46 14 	movl	20(%esi), %eax
e010548f:	89 5e 48 	movl	%ebx, 72(%esi)
e0105492:	89 03 	movl	%eax, (%ebx)
e0105494:	8b 46 28 	movl	40(%esi), %eax
e0105497:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010549d:	84 c0 	testb	%al, %al
e010549f:	0f 85 fa 05 00 00 	jne	1530 <debuginfo_eip+0x8ef>
e01054a5:	8d 51 40 	leal	64(%ecx), %edx
e01054a8:	8b 46 34 	movl	52(%esi), %eax
e01054ab:	8b 00 	movl	(%eax), %eax
e01054ad:	89 d1 	movl	%edx, %ecx
e01054af:	c1 e9 03 	shrl	$3, %ecx
e01054b2:	89 4e 28 	movl	%ecx, 40(%esi)
e01054b5:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01054bb:	84 c9 	testb	%cl, %cl
e01054bd:	89 d3 	movl	%edx, %ebx
e01054bf:	89 56 1c 	movl	%edx, 28(%esi)
e01054c2:	0f 85 f9 05 00 00 	jne	1529 <debuginfo_eip+0x911>
e01054c8:	89 02 	movl	%eax, (%edx)
e01054ca:	83 ec 08 	subl	$8, %esp
e01054cd:	8b 5e 48 	movl	72(%esi), %ebx
e01054d0:	89 d9 	movl	%ebx, %ecx
e01054d2:	ff 75 08 	pushl	8(%ebp)
e01054d5:	6a 24 	pushl	$36
e01054d7:	e8 94 09 00 00 	calll	2452 <stab_binsearch>
e01054dc:	83 c4 10 	addl	$16, %esp
e01054df:	8b 46 30 	movl	48(%esi), %eax
e01054e2:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01054e8:	84 c0 	testb	%al, %al
e01054ea:	0f 85 f1 05 00 00 	jne	1521 <debuginfo_eip+0x931>
e01054f0:	8b 13 	movl	(%ebx), %edx
e01054f2:	8b 46 28 	movl	40(%esi), %eax
e01054f5:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01054fb:	84 c0 	testb	%al, %al
e01054fd:	8b 4e 20 	movl	32(%esi), %ecx
e0105500:	0f 85 f7 05 00 00 	jne	1527 <debuginfo_eip+0x94d>
e0105506:	8b 46 1c 	movl	28(%esi), %eax
e0105509:	8b 00 	movl	(%eax), %eax
e010550b:	89 46 28 	movl	%eax, 40(%esi)
e010550e:	39 c2 	cmpl	%eax, %edx
e0105510:	89 56 30 	movl	%edx, 48(%esi)
e0105513:	7e 27 	jle	39 <debuginfo_eip+0x38c>
e0105515:	8b 46 18 	movl	24(%esi), %eax
e0105518:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010551e:	84 c0 	testb	%al, %al
e0105520:	0f 85 eb 06 00 00 	jne	1771 <debuginfo_eip+0xa61>
e0105526:	8b 45 08 	movl	8(%ebp), %eax
e0105529:	8b 56 0c 	movl	12(%esi), %edx
e010552c:	89 02 	movl	%eax, (%edx)
e010552e:	8b 46 14 	movl	20(%esi), %eax
e0105531:	8b 56 34 	movl	52(%esi), %edx
e0105534:	89 56 1c 	movl	%edx, 28(%esi)
e0105537:	e9 88 00 00 00 	jmp	136 <debuginfo_eip+0x414>
e010553c:	8d 04 52 	leal	(%edx,%edx,2), %eax
e010553f:	8d 0c 85 6c df 10 e0 	leal	-535765140(,%eax,4), %ecx
e0105546:	89 ca 	movl	%ecx, %edx
e0105548:	c1 ea 03 	shrl	$3, %edx
e010554b:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0105551:	84 d2 	testb	%dl, %dl
e0105553:	0f 85 da 06 00 00 	jne	1754 <debuginfo_eip+0xa83>
e0105559:	8b 09 	movl	(%ecx), %ecx
e010555b:	bb 6d df 10 e0 	movl	$3759202157, %ebx
e0105560:	ba 6d df 10 e0 	movl	$3759202157, %edx
e0105565:	29 da 	subl	%ebx, %edx
e0105567:	39 d1 	cmpl	%edx, %ecx
e0105569:	73 1c 	jae	28 <debuginfo_eip+0x3d7>
e010556b:	8b 56 44 	movl	68(%esi), %edx
e010556e:	8a 9a 00 00 80 de 	movb	-562036736(%edx), %bl
e0105574:	84 db 	testb	%bl, %bl
e0105576:	0f 85 67 07 00 00 	jne	1895 <debuginfo_eip+0xb33>
e010557c:	8d 89 6d df 10 e0 	leal	-535765139(%ecx), %ecx
e0105582:	8b 56 10 	movl	16(%esi), %edx
e0105585:	89 0a 	movl	%ecx, (%edx)
e0105587:	8d 04 85 74 df 10 e0 	leal	-535765132(,%eax,4), %eax
e010558e:	89 c1 	movl	%eax, %ecx
e0105590:	c1 e9 03 	shrl	$3, %ecx
e0105593:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0105599:	84 c9 	testb	%cl, %cl
e010559b:	0f 85 ae 06 00 00 	jne	1710 <debuginfo_eip+0xa9f>
e01055a1:	8b 4e 18 	movl	24(%esi), %ecx
e01055a4:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01055aa:	84 c9 	testb	%cl, %cl
e01055ac:	8b 56 30 	movl	48(%esi), %edx
e01055af:	0f 85 b6 06 00 00 	jne	1718 <debuginfo_eip+0xabb>
e01055b5:	8b 00 	movl	(%eax), %eax
e01055b7:	8b 4e 0c 	movl	12(%esi), %ecx
e01055ba:	89 01 	movl	%eax, (%ecx)
e01055bc:	29 46 3c 	subl	%eax, 60(%esi)
e01055bf:	89 d0 	movl	%edx, %eax
e01055c1:	8b 4e 20 	movl	32(%esi), %ecx
e01055c4:	8b 56 10 	movl	16(%esi), %edx
e01055c7:	8d 59 50 	leal	80(%ecx), %ebx
e01055ca:	89 d9 	movl	%ebx, %ecx
e01055cc:	c1 e9 03 	shrl	$3, %ecx
e01055cf:	89 4e 18 	movl	%ecx, 24(%esi)
e01055d2:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01055d8:	84 c9 	testb	%cl, %cl
e01055da:	0f 85 3f 05 00 00 	jne	1343 <debuginfo_eip+0x96f>
e01055e0:	89 5e 0c 	movl	%ebx, 12(%esi)
e01055e3:	89 03 	movl	%eax, (%ebx)
e01055e5:	8b 5e 1c 	movl	28(%esi), %ebx
e01055e8:	89 d8 	movl	%ebx, %eax
e01055ea:	c1 e8 03 	shrl	$3, %eax
e01055ed:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01055f3:	84 c0 	testb	%al, %al
e01055f5:	0f 85 43 05 00 00 	jne	1347 <debuginfo_eip+0x98e>
e01055fb:	8b 46 20 	movl	32(%esi), %eax
e01055fe:	8d 48 60 	leal	96(%eax), %ecx
e0105601:	8b 03 	movl	(%ebx), %eax
e0105603:	89 cb 	movl	%ecx, %ebx
e0105605:	c1 e9 03 	shrl	$3, %ecx
e0105608:	89 4e 34 	movl	%ecx, 52(%esi)
e010560b:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0105611:	84 c9 	testb	%cl, %cl
e0105613:	0f 85 41 05 00 00 	jne	1345 <debuginfo_eip+0x9aa>
e0105619:	89 5e 1c 	movl	%ebx, 28(%esi)
e010561c:	89 03 	movl	%eax, (%ebx)
e010561e:	8b 5e 44 	movl	68(%esi), %ebx
e0105621:	8a 83 00 00 80 de 	movb	-562036736(%ebx), %al
e0105627:	84 c0 	testb	%al, %al
e0105629:	0f 85 4a 05 00 00 	jne	1354 <debuginfo_eip+0x9c9>
e010562f:	83 ec 08 	subl	$8, %esp
e0105632:	6a 3a 	pushl	$58
e0105634:	ff 32 	pushl	(%edx)
e0105636:	e8 e5 23 00 00 	calll	9189 <strfind>
e010563b:	83 c4 10 	addl	$16, %esp
e010563e:	8a 8b 00 00 80 de 	movb	-562036736(%ebx), %cl
e0105644:	84 c9 	testb	%cl, %cl
e0105646:	0f 85 49 05 00 00 	jne	1353 <debuginfo_eip+0x9e5>
e010564c:	8b 4e 10 	movl	16(%esi), %ecx
e010564f:	2b 01 	subl	(%ecx), %eax
e0105651:	8b 4e 58 	movl	88(%esi), %ecx
e0105654:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010565a:	84 c9 	testb	%cl, %cl
e010565c:	0f 85 52 05 00 00 	jne	1362 <debuginfo_eip+0xa04>
e0105662:	8b 4e 38 	movl	56(%esi), %ecx
e0105665:	89 01 	movl	%eax, (%ecx)
e0105667:	83 ec 08 	subl	$8, %esp
e010566a:	8b 4e 0c 	movl	12(%esi), %ecx
e010566d:	8b 5e 1c 	movl	28(%esi), %ebx
e0105670:	89 da 	movl	%ebx, %edx
e0105672:	ff 76 3c 	pushl	60(%esi)
e0105675:	6a 44 	pushl	$68
e0105677:	e8 f4 07 00 00 	calll	2036 <stab_binsearch>
e010567c:	83 c4 10 	addl	$16, %esp
e010567f:	8b 46 34 	movl	52(%esi), %eax
e0105682:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105688:	84 c0 	testb	%al, %al
e010568a:	0f 85 43 05 00 00 	jne	1347 <debuginfo_eip+0xa23>
e0105690:	8b 03 	movl	(%ebx), %eax
e0105692:	8b 4e 18 	movl	24(%esi), %ecx
e0105695:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010569b:	84 c9 	testb	%cl, %cl
e010569d:	8b 56 2c 	movl	44(%esi), %edx
e01056a0:	bb ff ff ff ff 	movl	$4294967295, %ebx
e01056a5:	0f 85 44 05 00 00 	jne	1348 <debuginfo_eip+0xa3f>
e01056ab:	8b 4e 0c 	movl	12(%esi), %ecx
e01056ae:	8b 09 	movl	(%ecx), %ecx
e01056b0:	39 c8 	cmpl	%ecx, %eax
e01056b2:	0f 8c a5 fc ff ff 	jl	-859 <debuginfo_eip+0x1ad>
e01056b8:	8d 04 49 	leal	(%ecx,%ecx,2), %eax
e01056bb:	8d 04 85 72 df 10 e0 	leal	-535765134(,%eax,4), %eax
e01056c2:	89 c1 	movl	%eax, %ecx
e01056c4:	c1 e9 03 	shrl	$3, %ecx
e01056c7:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01056cd:	84 c9 	testb	%cl, %cl
e01056cf:	0f 85 b8 05 00 00 	jne	1464 <debuginfo_eip+0xadd>
e01056d5:	8b 4e 50 	movl	80(%esi), %ecx
e01056d8:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01056de:	84 c9 	testb	%cl, %cl
e01056e0:	8b 5e 54 	movl	84(%esi), %ebx
e01056e3:	0f 85 bf 05 00 00 	jne	1471 <debuginfo_eip+0xaf8>
e01056e9:	0f b7 00 	movzwl	(%eax), %eax
e01056ec:	89 03 	movl	%eax, (%ebx)
e01056ee:	8b 46 18 	movl	24(%esi), %eax
e01056f1:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01056f7:	84 c0 	testb	%al, %al
e01056f9:	0f 85 c5 05 00 00 	jne	1477 <debuginfo_eip+0xb14>
e01056ff:	8b 5e 0c 	movl	12(%esi), %ebx
e0105702:	8b 13 	movl	(%ebx), %edx
e0105704:	3b 56 14 	cmpl	20(%esi), %edx
e0105707:	0f 8c 0f 01 00 00 	jl	271 <debuginfo_eip+0x66c>
e010570d:	8b 46 18 	movl	24(%esi), %eax
e0105710:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105716:	84 c0 	testb	%al, %al
e0105718:	0f 85 e6 05 00 00 	jne	1510 <debuginfo_eip+0xb54>
e010571e:	8b 0b 	movl	(%ebx), %ecx
e0105720:	8d 04 52 	leal	(%edx,%edx,2), %eax
e0105723:	8d 04 85 70 df 10 e0 	leal	-535765136(,%eax,4), %eax
e010572a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0105730:	89 c3 	movl	%eax, %ebx
e0105732:	c1 eb 03 	shrl	$3, %ebx
e0105735:	0f b6 9b 00 00 80 de 	movzbl	-562036736(%ebx), %ebx
e010573c:	84 db 	testb	%bl, %bl
e010573e:	75 3b 	jne	59 <debuginfo_eip+0x5cb>
e0105740:	0f b6 18 	movzbl	(%eax), %ebx
e0105743:	80 fb 64 	cmpb	$100, %bl
e0105746:	74 07 	je	7 <debuginfo_eip+0x59f>
e0105748:	80 fb 84 	cmpb	$-124, %bl
e010574b:	75 1c 	jne	28 <debuginfo_eip+0x5b9>
e010574d:	eb 5b 	jmp	91 <debuginfo_eip+0x5fa>
e010574f:	8d 58 04 	leal	4(%eax), %ebx
e0105752:	89 5e 10 	movl	%ebx, 16(%esi)
e0105755:	c1 eb 03 	shrl	$3, %ebx
e0105758:	0f b6 9b 00 00 80 de 	movzbl	-562036736(%ebx), %ebx
e010575f:	84 db 	testb	%bl, %bl
e0105761:	75 26 	jne	38 <debuginfo_eip+0x5d9>
e0105763:	83 78 04 00 	cmpl	$0, 4(%eax)
e0105767:	75 41 	jne	65 <debuginfo_eip+0x5fa>
e0105769:	83 c0 f4 	addl	$-12, %eax
e010576c:	3b 56 14 	cmpl	20(%esi), %edx
e010576f:	8d 4a ff 	leal	-1(%edx), %ecx
e0105772:	89 ca 	movl	%ecx, %edx
e0105774:	7f ba 	jg	-70 <debuginfo_eip+0x580>
e0105776:	e9 8b 00 00 00 	jmp	139 <debuginfo_eip+0x656>
e010577b:	88 c7 	movb	%al, %bh
e010577d:	80 e7 07 	andb	$7, %bh
e0105780:	38 df 	cmpb	%bl, %bh
e0105782:	7c bc 	jl	-68 <debuginfo_eip+0x590>
e0105784:	e9 be 06 00 00 	jmp	1726 <debuginfo_eip+0xc97>
e0105789:	88 5e 3c 	movb	%bl, 60(%esi)
e010578c:	8b 5e 10 	movl	16(%esi), %ebx
e010578f:	88 df 	movb	%bl, %bh
e0105791:	80 e7 07 	andb	$7, %bh
e0105794:	80 c7 03 	addb	$3, %bh
e0105797:	3a 7e 3c 	cmpb	60(%esi), %bh
e010579a:	7c c7 	jl	-57 <debuginfo_eip+0x5b3>
e010579c:	83 ec 0c 	subl	$12, %esp
e010579f:	ff 76 10 	pushl	16(%esi)
e01057a2:	e8 e9 2f 00 00 	calll	12265 <__asan_report_load4>
e01057a7:	83 c4 10 	addl	$16, %esp
e01057aa:	8b 56 18 	movl	24(%esi), %edx
e01057ad:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e01057b3:	84 d2 	testb	%dl, %dl
e01057b5:	8b 5e 0c 	movl	12(%esi), %ebx
e01057b8:	0f 85 81 05 00 00 	jne	1409 <debuginfo_eip+0xb8f>
e01057be:	89 0b 	movl	%ecx, (%ebx)
e01057c0:	83 c0 fc 	addl	$-4, %eax
e01057c3:	89 c1 	movl	%eax, %ecx
e01057c5:	c1 e9 03 	shrl	$3, %ecx
e01057c8:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01057ce:	84 c9 	testb	%cl, %cl
e01057d0:	0f 85 85 05 00 00 	jne	1413 <debuginfo_eip+0xbab>
e01057d6:	8b 00 	movl	(%eax), %eax
e01057d8:	b9 6d df 10 e0 	movl	$3759202157, %ecx
e01057dd:	ba 6d df 10 e0 	movl	$3759202157, %edx
e01057e2:	29 ca 	subl	%ecx, %edx
e01057e4:	39 d0 	cmpl	%edx, %eax
e01057e6:	73 34 	jae	52 <debuginfo_eip+0x66c>
e01057e8:	8b 4e 4c 	movl	76(%esi), %ecx
e01057eb:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01057f1:	84 c9 	testb	%cl, %cl
e01057f3:	0f 85 f4 05 00 00 	jne	1524 <debuginfo_eip+0xc3d>
e01057f9:	8d 80 6d df 10 e0 	leal	-535765139(%eax), %eax
e01057ff:	8b 4d 0c 	movl	12(%ebp), %ecx
e0105802:	89 01 	movl	%eax, (%ecx)
e0105804:	eb 16 	jmp	22 <debuginfo_eip+0x66c>
e0105806:	8b 46 18 	movl	24(%esi), %eax
e0105809:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010580f:	84 c0 	testb	%al, %al
e0105811:	0f 85 98 05 00 00 	jne	1432 <debuginfo_eip+0xbff>
e0105817:	8b 46 0c 	movl	12(%esi), %eax
e010581a:	89 08 	movl	%ecx, (%eax)
e010581c:	31 db 	xorl	%ebx, %ebx
e010581e:	8b 56 30 	movl	48(%esi), %edx
e0105821:	3b 56 28 	cmpl	40(%esi), %edx
e0105824:	0f 8d ca 00 00 00 	jge	202 <debuginfo_eip+0x744>
e010582a:	8b 46 18 	movl	24(%esi), %eax
e010582d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105833:	84 c0 	testb	%al, %al
e0105835:	0f 85 e5 04 00 00 	jne	1253 <debuginfo_eip+0xb70>
e010583b:	42 	incl	%edx
e010583c:	8b 46 0c 	movl	12(%esi), %eax
e010583f:	89 10 	movl	%edx, (%eax)
e0105841:	3b 56 28 	cmpl	40(%esi), %edx
e0105844:	0f 8d aa 00 00 00 	jge	170 <debuginfo_eip+0x744>
e010584a:	8b 46 18 	movl	24(%esi), %eax
e010584d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105853:	84 c0 	testb	%al, %al
e0105855:	0f 85 1c 05 00 00 	jne	1308 <debuginfo_eip+0xbc7>
e010585b:	8d 04 52 	leal	(%edx,%edx,2), %eax
e010585e:	8d 0c 85 70 df 10 e0 	leal	-535765136(,%eax,4), %ecx
e0105865:	89 c8 	movl	%ecx, %eax
e0105867:	c1 e8 03 	shrl	$3, %eax
e010586a:	8a 98 00 00 80 de 	movb	-562036736(%eax), %bl
e0105870:	8b 46 0c 	movl	12(%esi), %eax
e0105873:	8b 00 	movl	(%eax), %eax
e0105875:	84 db 	testb	%bl, %bl
e0105877:	0f 85 19 05 00 00 	jne	1305 <debuginfo_eip+0xbe6>
e010587d:	80 39 a0 	cmpb	$-96, (%ecx)
e0105880:	8b 5e 40 	movl	64(%esi), %ebx
e0105883:	75 77 	jne	119 <debuginfo_eip+0x74c>
e0105885:	8b 46 30 	movl	48(%esi), %eax
e0105888:	8d 04 40 	leal	(%eax,%eax,2), %eax
e010588b:	8d 0c 85 88 df 10 e0 	leal	-535765112(,%eax,4), %ecx
e0105892:	89 d0 	movl	%edx, %eax
e0105894:	89 c2 	movl	%eax, %edx
e0105896:	0f b6 83 00 00 80 de 	movzbl	-562036736(%ebx), %eax
e010589d:	84 c0 	testb	%al, %al
e010589f:	75 27 	jne	39 <debuginfo_eip+0x718>
e01058a1:	8b 46 24 	movl	36(%esi), %eax
e01058a4:	ff 00 	incl	(%eax)
e01058a6:	8d 42 01 	leal	1(%edx), %eax
e01058a9:	3b 46 28 	cmpl	40(%esi), %eax
e01058ac:	7d 66 	jge	102 <debuginfo_eip+0x764>
e01058ae:	89 ca 	movl	%ecx, %edx
e01058b0:	c1 ea 03 	shrl	$3, %edx
e01058b3:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e01058ba:	84 d2 	testb	%dl, %dl
e01058bc:	75 21 	jne	33 <debuginfo_eip+0x72f>
e01058be:	80 39 a0 	cmpb	$-96, (%ecx)
e01058c1:	8d 49 0c 	leal	12(%ecx), %ecx
e01058c4:	74 ce 	je	-50 <debuginfo_eip+0x6e4>
e01058c6:	eb 34 	jmp	52 <debuginfo_eip+0x74c>
e01058c8:	8b 5e 24 	movl	36(%esi), %ebx
e01058cb:	88 dc 	movb	%bl, %ah
e01058cd:	8b 5e 40 	movl	64(%esi), %ebx
e01058d0:	80 e4 07 	andb	$7, %ah
e01058d3:	80 c4 03 	addb	$3, %ah
e01058d6:	38 c4 	cmpb	%al, %ah
e01058d8:	7c c7 	jl	-57 <debuginfo_eip+0x6f1>
e01058da:	e9 74 05 00 00 	jmp	1396 <debuginfo_eip+0xca3>
e01058df:	88 ce 	movb	%cl, %dh
e01058e1:	80 e6 07 	andb	$7, %dh
e01058e4:	38 d6 	cmpb	%dl, %dh
e01058e6:	7c d6 	jl	-42 <debuginfo_eip+0x70e>
e01058e8:	83 ec 0c 	subl	$12, %esp
e01058eb:	51 	pushl	%ecx
e01058ec:	e8 ff 2d 00 00 	calll	11775 <__asan_report_load1>
e01058f1:	83 c4 10 	addl	$16, %esp
e01058f4:	8b 56 2c 	movl	44(%esi), %edx
e01058f7:	e9 61 fa ff ff 	jmp	-1439 <debuginfo_eip+0x1ad>
e01058fc:	8b 4e 18 	movl	24(%esi), %ecx
e01058ff:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0105905:	84 c9 	testb	%cl, %cl
e0105907:	0f 85 c1 04 00 00 	jne	1217 <debuginfo_eip+0xc1e>
e010590d:	8b 4e 0c 	movl	12(%esi), %ecx
e0105910:	89 01 	movl	%eax, (%ecx)
e0105912:	eb 17 	jmp	23 <debuginfo_eip+0x77b>
e0105914:	8b 46 18 	movl	24(%esi), %eax
e0105917:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010591d:	84 c0 	testb	%al, %al
e010591f:	0f 85 e7 04 00 00 	jne	1255 <debuginfo_eip+0xc5c>
e0105925:	42 	incl	%edx
e0105926:	8b 46 0c 	movl	12(%esi), %eax
e0105929:	89 10 	movl	%edx, (%eax)
e010592b:	8b 56 2c 	movl	44(%esi), %edx
e010592e:	31 db 	xorl	%ebx, %ebx
e0105930:	e9 28 fa ff ff 	jmp	-1496 <debuginfo_eip+0x1ad>
e0105935:	8b 4d 0c 	movl	12(%ebp), %ecx
e0105938:	80 e1 07 	andb	$7, %cl
e010593b:	80 c1 03 	addb	$3, %cl
e010593e:	38 c1 	cmpb	%al, %cl
e0105940:	8b 4d 0c 	movl	12(%ebp), %ecx
e0105943:	0f 8c 2b f9 ff ff 	jl	-1749 <debuginfo_eip+0xc4>
e0105949:	83 ec 0c 	subl	$12, %esp
e010594c:	51 	pushl	%ecx
e010594d:	e8 5e 2e 00 00 	calll	11870 <__asan_report_store4>
e0105952:	83 c4 10 	addl	$16, %esp
e0105955:	89 d9 	movl	%ebx, %ecx
e0105957:	80 e1 07 	andb	$7, %cl
e010595a:	80 c1 03 	addb	$3, %cl
e010595d:	38 c1 	cmpb	%al, %cl
e010595f:	8b 4d 0c 	movl	12(%ebp), %ecx
e0105962:	0f 8c 2b f9 ff ff 	jl	-1749 <debuginfo_eip+0xe3>
e0105968:	83 ec 0c 	subl	$12, %esp
e010596b:	53 	pushl	%ebx
e010596c:	e8 3f 2e 00 00 	calll	11839 <__asan_report_store4>
e0105971:	83 c4 10 	addl	$16, %esp
e0105974:	8b 4e 10 	movl	16(%esi), %ecx
e0105977:	80 e1 07 	andb	$7, %cl
e010597a:	80 c1 03 	addb	$3, %cl
e010597d:	38 c1 	cmpb	%al, %cl
e010597f:	8b 4d 0c 	movl	12(%ebp), %ecx
e0105982:	0f 8c 2c f9 ff ff 	jl	-1748 <debuginfo_eip+0x104>
e0105988:	83 ec 0c 	subl	$12, %esp
e010598b:	ff 76 10 	pushl	16(%esi)
e010598e:	e8 1d 2e 00 00 	calll	11805 <__asan_report_store4>
e0105993:	83 c4 10 	addl	$16, %esp
e0105996:	8b 4e 38 	movl	56(%esi), %ecx
e0105999:	80 e1 07 	andb	$7, %cl
e010599c:	80 c1 03 	addb	$3, %cl
e010599f:	38 c1 	cmpb	%al, %cl
e01059a1:	8b 4d 0c 	movl	12(%ebp), %ecx
e01059a4:	0f 8c 2e f9 ff ff 	jl	-1746 <debuginfo_eip+0x128>
e01059aa:	83 ec 0c 	subl	$12, %esp
e01059ad:	ff 76 38 	pushl	56(%esi)
e01059b0:	e8 fb 2d 00 00 	calll	11771 <__asan_report_store4>
e01059b5:	83 c4 10 	addl	$16, %esp
e01059b8:	8b 4e 0c 	movl	12(%esi), %ecx
e01059bb:	80 e1 07 	andb	$7, %cl
e01059be:	80 c1 03 	addb	$3, %cl
e01059c1:	38 c1 	cmpb	%al, %cl
e01059c3:	8b 4d 0c 	movl	12(%ebp), %ecx
e01059c6:	0f 8c 2d f9 ff ff 	jl	-1747 <debuginfo_eip+0x149>
e01059cc:	83 ec 0c 	subl	$12, %esp
e01059cf:	ff 76 0c 	pushl	12(%esi)
e01059d2:	e8 d9 2d 00 00 	calll	11737 <__asan_report_store4>
e01059d7:	83 c4 10 	addl	$16, %esp
e01059da:	89 4e 24 	movl	%ecx, 36(%esi)
e01059dd:	8b 4e 24 	movl	36(%esi), %ecx
e01059e0:	80 e1 07 	andb	$7, %cl
e01059e3:	80 c1 03 	addb	$3, %cl
e01059e6:	38 c1 	cmpb	%al, %cl
e01059e8:	8b 4e 24 	movl	36(%esi), %ecx
e01059eb:	0f 8c 27 f9 ff ff 	jl	-1753 <debuginfo_eip+0x168>
e01059f1:	83 ec 0c 	subl	$12, %esp
e01059f4:	51 	pushl	%ecx
e01059f5:	e8 b6 2d 00 00 	calll	11702 <__asan_report_store4>
e01059fa:	83 c4 10 	addl	$16, %esp
e01059fd:	89 4e 24 	movl	%ecx, 36(%esi)
e0105a00:	b9 6c df 10 e0 	movl	$3759202156, %ecx
e0105a05:	80 e1 07 	andb	$7, %cl
e0105a08:	38 c1 	cmpb	%al, %cl
e0105a0a:	8b 4e 24 	movl	36(%esi), %ecx
e0105a0d:	0f 8c 3c f9 ff ff 	jl	-1732 <debuginfo_eip+0x19f>
e0105a13:	83 ec 0c 	subl	$12, %esp
e0105a16:	68 6c df 10 e0 	pushl	$3759202156
e0105a1b:	e8 d0 2c 00 00 	calll	11472 <__asan_report_load1>
e0105a20:	83 c4 10 	addl	$16, %esp
e0105a23:	8b 4e 14 	movl	20(%esi), %ecx
e0105a26:	80 e1 07 	andb	$7, %cl
e0105a29:	80 c1 03 	addb	$3, %cl
e0105a2c:	38 c1 	cmpb	%al, %cl
e0105a2e:	8b 4e 20 	movl	32(%esi), %ecx
e0105a31:	0f 8c b8 f9 ff ff 	jl	-1608 <debuginfo_eip+0x23f>
e0105a37:	83 ec 0c 	subl	$12, %esp
e0105a3a:	ff 76 14 	pushl	20(%esi)
e0105a3d:	e8 6e 2d 00 00 	calll	11630 <__asan_report_store4>
e0105a42:	83 c4 10 	addl	$16, %esp
e0105a45:	89 d9 	movl	%ebx, %ecx
e0105a47:	80 e1 07 	andb	$7, %cl
e0105a4a:	80 c1 03 	addb	$3, %cl
e0105a4d:	38 c1 	cmpb	%al, %cl
e0105a4f:	0f 8c bf f9 ff ff 	jl	-1601 <debuginfo_eip+0x264>
e0105a55:	83 ec 0c 	subl	$12, %esp
e0105a58:	53 	pushl	%ebx
e0105a59:	e8 52 2d 00 00 	calll	11602 <__asan_report_store4>
e0105a5e:	83 c4 10 	addl	$16, %esp
e0105a61:	8b 4e 14 	movl	20(%esi), %ecx
e0105a64:	80 e1 07 	andb	$7, %cl
e0105a67:	80 c1 03 	addb	$3, %cl
e0105a6a:	38 c1 	cmpb	%al, %cl
e0105a6c:	0f 8c eb f9 ff ff 	jl	-1557 <debuginfo_eip+0x2ad>
e0105a72:	83 ec 0c 	subl	$12, %esp
e0105a75:	ff 76 14 	pushl	20(%esi)
e0105a78:	e8 13 2d 00 00 	calll	11539 <__asan_report_load4>
e0105a7d:	83 c4 10 	addl	$16, %esp
e0105a80:	89 d9 	movl	%ebx, %ecx
e0105a82:	80 e1 07 	andb	$7, %cl
e0105a85:	80 c1 03 	addb	$3, %cl
e0105a88:	38 c1 	cmpb	%al, %cl
e0105a8a:	8b 4e 20 	movl	32(%esi), %ecx
e0105a8d:	0f 8c f6 f9 ff ff 	jl	-1546 <debuginfo_eip+0x2d9>
e0105a93:	83 ec 0c 	subl	$12, %esp
e0105a96:	53 	pushl	%ebx
e0105a97:	e8 14 2d 00 00 	calll	11540 <__asan_report_store4>
e0105a9c:	83 c4 10 	addl	$16, %esp
e0105a9f:	8b 4e 34 	movl	52(%esi), %ecx
e0105aa2:	80 e1 07 	andb	$7, %cl
e0105aa5:	80 c1 03 	addb	$3, %cl
e0105aa8:	38 c1 	cmpb	%al, %cl
e0105aaa:	8b 4e 20 	movl	32(%esi), %ecx
e0105aad:	0f 8c f2 f9 ff ff 	jl	-1550 <debuginfo_eip+0x2f5>
e0105ab3:	83 ec 0c 	subl	$12, %esp
e0105ab6:	ff 76 34 	pushl	52(%esi)
e0105ab9:	e8 d2 2c 00 00 	calll	11474 <__asan_report_load4>
e0105abe:	83 c4 10 	addl	$16, %esp
e0105ac1:	8b 56 1c 	movl	28(%esi), %edx
e0105ac4:	80 e2 07 	andb	$7, %dl
e0105ac7:	80 c2 03 	addb	$3, %dl
e0105aca:	38 ca 	cmpb	%cl, %dl
e0105acc:	8b 56 1c 	movl	28(%esi), %edx
e0105acf:	0f 8c f3 f9 ff ff 	jl	-1549 <debuginfo_eip+0x318>
e0105ad5:	83 ec 0c 	subl	$12, %esp
e0105ad8:	52 	pushl	%edx
e0105ad9:	e8 d2 2c 00 00 	calll	11474 <__asan_report_store4>
e0105ade:	83 c4 10 	addl	$16, %esp
e0105ae1:	89 d9 	movl	%ebx, %ecx
e0105ae3:	80 e1 07 	andb	$7, %cl
e0105ae6:	80 c1 03 	addb	$3, %cl
e0105ae9:	38 c1 	cmpb	%al, %cl
e0105aeb:	0f 8c ff f9 ff ff 	jl	-1537 <debuginfo_eip+0x340>
e0105af1:	83 ec 0c 	subl	$12, %esp
e0105af4:	53 	pushl	%ebx
e0105af5:	e8 96 2c 00 00 	calll	11414 <__asan_report_load4>
e0105afa:	83 c4 10 	addl	$16, %esp
e0105afd:	8b 4e 1c 	movl	28(%esi), %ecx
e0105b00:	80 e1 07 	andb	$7, %cl
e0105b03:	80 c1 03 	addb	$3, %cl
e0105b06:	38 c1 	cmpb	%al, %cl
e0105b08:	8b 4e 20 	movl	32(%esi), %ecx
e0105b0b:	0f 8c f5 f9 ff ff 	jl	-1547 <debuginfo_eip+0x356>
e0105b11:	83 ec 0c 	subl	$12, %esp
e0105b14:	ff 76 1c 	pushl	28(%esi)
e0105b17:	e8 74 2c 00 00 	calll	11380 <__asan_report_load4>
e0105b1c:	83 c4 10 	addl	$16, %esp
e0105b1f:	89 da 	movl	%ebx, %edx
e0105b21:	80 e2 07 	andb	$7, %dl
e0105b24:	80 c2 03 	addb	$3, %dl
e0105b27:	38 ca 	cmpb	%cl, %dl
e0105b29:	8b 56 10 	movl	16(%esi), %edx
e0105b2c:	0f 8c ae fa ff ff 	jl	-1362 <debuginfo_eip+0x430>
e0105b32:	83 ec 0c 	subl	$12, %esp
e0105b35:	53 	pushl	%ebx
e0105b36:	e8 75 2c 00 00 	calll	11381 <__asan_report_store4>
e0105b3b:	83 c4 10 	addl	$16, %esp
e0105b3e:	89 d9 	movl	%ebx, %ecx
e0105b40:	80 e1 07 	andb	$7, %cl
e0105b43:	80 c1 03 	addb	$3, %cl
e0105b46:	38 c1 	cmpb	%al, %cl
e0105b48:	0f 8c ad fa ff ff 	jl	-1363 <debuginfo_eip+0x44b>
e0105b4e:	83 ec 0c 	subl	$12, %esp
e0105b51:	53 	pushl	%ebx
e0105b52:	e8 39 2c 00 00 	calll	11321 <__asan_report_load4>
e0105b57:	83 c4 10 	addl	$16, %esp
e0105b5a:	89 da 	movl	%ebx, %edx
e0105b5c:	80 e2 07 	andb	$7, %dl
e0105b5f:	80 c2 03 	addb	$3, %dl
e0105b62:	38 ca 	cmpb	%cl, %dl
e0105b64:	8b 56 10 	movl	16(%esi), %edx
e0105b67:	0f 8c ac fa ff ff 	jl	-1364 <debuginfo_eip+0x469>
e0105b6d:	83 ec 0c 	subl	$12, %esp
e0105b70:	53 	pushl	%ebx
e0105b71:	e8 3a 2c 00 00 	calll	11322 <__asan_report_store4>
e0105b76:	83 c4 10 	addl	$16, %esp
e0105b79:	89 d1 	movl	%edx, %ecx
e0105b7b:	80 e1 07 	andb	$7, %cl
e0105b7e:	80 c1 03 	addb	$3, %cl
e0105b81:	38 c1 	cmpb	%al, %cl
e0105b83:	0f 8c a6 fa ff ff 	jl	-1370 <debuginfo_eip+0x47f>
e0105b89:	83 ec 0c 	subl	$12, %esp
e0105b8c:	52 	pushl	%edx
e0105b8d:	e8 fe 2b 00 00 	calll	11262 <__asan_report_load4>
e0105b92:	83 c4 10 	addl	$16, %esp
e0105b95:	8b 56 10 	movl	16(%esi), %edx
e0105b98:	80 e2 07 	andb	$7, %dl
e0105b9b:	80 c2 03 	addb	$3, %dl
e0105b9e:	38 ca 	cmpb	%cl, %dl
e0105ba0:	0f 8c a6 fa ff ff 	jl	-1370 <debuginfo_eip+0x49c>
e0105ba6:	83 ec 0c 	subl	$12, %esp
e0105ba9:	ff 76 10 	pushl	16(%esi)
e0105bac:	e8 df 2b 00 00 	calll	11231 <__asan_report_load4>
e0105bb1:	83 c4 10 	addl	$16, %esp
e0105bb4:	8b 56 38 	movl	56(%esi), %edx
e0105bb7:	80 e2 07 	andb	$7, %dl
e0105bba:	80 c2 03 	addb	$3, %dl
e0105bbd:	38 ca 	cmpb	%cl, %dl
e0105bbf:	0f 8c 9d fa ff ff 	jl	-1379 <debuginfo_eip+0x4b2>
e0105bc5:	83 ec 0c 	subl	$12, %esp
e0105bc8:	ff 76 38 	pushl	56(%esi)
e0105bcb:	e8 e0 2b 00 00 	calll	11232 <__asan_report_store4>
e0105bd0:	83 c4 10 	addl	$16, %esp
e0105bd3:	89 d9 	movl	%ebx, %ecx
e0105bd5:	80 e1 07 	andb	$7, %cl
e0105bd8:	80 c1 03 	addb	$3, %cl
e0105bdb:	38 c1 	cmpb	%al, %cl
e0105bdd:	0f 8c ad fa ff ff 	jl	-1363 <debuginfo_eip+0x4e0>
e0105be3:	83 ec 0c 	subl	$12, %esp
e0105be6:	53 	pushl	%ebx
e0105be7:	e8 a4 2b 00 00 	calll	11172 <__asan_report_load4>
e0105bec:	83 c4 10 	addl	$16, %esp
e0105bef:	8b 56 0c 	movl	12(%esi), %edx
e0105bf2:	80 e2 07 	andb	$7, %dl
e0105bf5:	80 c2 03 	addb	$3, %dl
e0105bf8:	38 ca 	cmpb	%cl, %dl
e0105bfa:	8b 56 2c 	movl	44(%esi), %edx
e0105bfd:	0f 8c a8 fa ff ff 	jl	-1368 <debuginfo_eip+0x4fb>
e0105c03:	83 ec 0c 	subl	$12, %esp
e0105c06:	ff 76 0c 	pushl	12(%esi)
e0105c09:	e8 82 2b 00 00 	calll	11138 <__asan_report_load4>
e0105c0e:	83 c4 10 	addl	$16, %esp
e0105c11:	8b 4e 0c 	movl	12(%esi), %ecx
e0105c14:	80 e1 07 	andb	$7, %cl
e0105c17:	80 c1 03 	addb	$3, %cl
e0105c1a:	38 c1 	cmpb	%al, %cl
e0105c1c:	8b 4e 20 	movl	32(%esi), %ecx
e0105c1f:	0f 8c 01 f9 ff ff 	jl	-1791 <debuginfo_eip+0x376>
e0105c25:	83 ec 0c 	subl	$12, %esp
e0105c28:	ff 76 0c 	pushl	12(%esi)
e0105c2b:	e8 80 2b 00 00 	calll	11136 <__asan_report_store4>
e0105c30:	83 c4 10 	addl	$16, %esp
e0105c33:	88 ce 	movb	%cl, %dh
e0105c35:	80 e6 07 	andb	$7, %dh
e0105c38:	80 c6 03 	addb	$3, %dh
e0105c3b:	38 d6 	cmpb	%dl, %dh
e0105c3d:	0f 8c 16 f9 ff ff 	jl	-1770 <debuginfo_eip+0x3a9>
e0105c43:	83 ec 0c 	subl	$12, %esp
e0105c46:	51 	pushl	%ecx
e0105c47:	e8 44 2b 00 00 	calll	11076 <__asan_report_load4>
e0105c4c:	83 c4 10 	addl	$16, %esp
e0105c4f:	89 c2 	movl	%eax, %edx
e0105c51:	80 e2 07 	andb	$7, %dl
e0105c54:	80 c2 03 	addb	$3, %dl
e0105c57:	38 ca 	cmpb	%cl, %dl
e0105c59:	0f 8c 42 f9 ff ff 	jl	-1726 <debuginfo_eip+0x3f1>
e0105c5f:	83 ec 0c 	subl	$12, %esp
e0105c62:	50 	pushl	%eax
e0105c63:	e8 28 2b 00 00 	calll	11048 <__asan_report_load4>
e0105c68:	83 c4 10 	addl	$16, %esp
e0105c6b:	8b 56 0c 	movl	12(%esi), %edx
e0105c6e:	80 e2 07 	andb	$7, %dl
e0105c71:	80 c2 03 	addb	$3, %dl
e0105c74:	38 ca 	cmpb	%cl, %dl
e0105c76:	8b 56 30 	movl	48(%esi), %edx
e0105c79:	0f 8c 36 f9 ff ff 	jl	-1738 <debuginfo_eip+0x405>
e0105c7f:	83 ec 0c 	subl	$12, %esp
e0105c82:	ff 76 0c 	pushl	12(%esi)
e0105c85:	e8 26 2b 00 00 	calll	11046 <__asan_report_store4>
e0105c8a:	83 c4 10 	addl	$16, %esp
e0105c8d:	89 c2 	movl	%eax, %edx
e0105c8f:	80 e2 07 	andb	$7, %dl
e0105c92:	fe c2 	incb	%dl
e0105c94:	38 ca 	cmpb	%cl, %dl
e0105c96:	0f 8c 39 fa ff ff 	jl	-1479 <debuginfo_eip+0x525>
e0105c9c:	83 ec 0c 	subl	$12, %esp
e0105c9f:	50 	pushl	%eax
e0105ca0:	e8 ab 2a 00 00 	calll	10923 <__asan_report_load2>
e0105ca5:	83 c4 10 	addl	$16, %esp
e0105ca8:	89 da 	movl	%ebx, %edx
e0105caa:	80 e2 07 	andb	$7, %dl
e0105cad:	80 c2 03 	addb	$3, %dl
e0105cb0:	38 ca 	cmpb	%cl, %dl
e0105cb2:	0f 8c 31 fa ff ff 	jl	-1487 <debuginfo_eip+0x539>
e0105cb8:	83 ec 0c 	subl	$12, %esp
e0105cbb:	53 	pushl	%ebx
e0105cbc:	e8 ef 2a 00 00 	calll	10991 <__asan_report_store4>
e0105cc1:	83 c4 10 	addl	$16, %esp
e0105cc4:	8b 4e 0c 	movl	12(%esi), %ecx
e0105cc7:	80 e1 07 	andb	$7, %cl
e0105cca:	80 c1 03 	addb	$3, %cl
e0105ccd:	38 c1 	cmpb	%al, %cl
e0105ccf:	0f 8c 2a fa ff ff 	jl	-1494 <debuginfo_eip+0x54f>
e0105cd5:	83 ec 0c 	subl	$12, %esp
e0105cd8:	ff 76 0c 	pushl	12(%esi)
e0105cdb:	e8 b0 2a 00 00 	calll	10928 <__asan_report_load4>
e0105ce0:	83 c4 10 	addl	$16, %esp
e0105ce3:	8b 56 10 	movl	16(%esi), %edx
e0105ce6:	88 d6 	movb	%dl, %dh
e0105ce8:	80 e6 07 	andb	$7, %dh
e0105ceb:	80 c6 03 	addb	$3, %dh
e0105cee:	38 de 	cmpb	%bl, %dh
e0105cf0:	0f 8c 86 f8 ff ff 	jl	-1914 <debuginfo_eip+0x3cc>
e0105cf6:	83 ec 0c 	subl	$12, %esp
e0105cf9:	ff 76 10 	pushl	16(%esi)
e0105cfc:	e8 af 2a 00 00 	calll	10927 <__asan_report_store4>
e0105d01:	83 c4 10 	addl	$16, %esp
e0105d04:	89 d9 	movl	%ebx, %ecx
e0105d06:	80 e1 07 	andb	$7, %cl
e0105d09:	80 c1 03 	addb	$3, %cl
e0105d0c:	38 c1 	cmpb	%al, %cl
e0105d0e:	0f 8c 0a fa ff ff 	jl	-1526 <debuginfo_eip+0x56e>
e0105d14:	83 ec 0c 	subl	$12, %esp
e0105d17:	53 	pushl	%ebx
e0105d18:	e8 73 2a 00 00 	calll	10867 <__asan_report_load4>
e0105d1d:	83 c4 10 	addl	$16, %esp
e0105d20:	8b 4e 0c 	movl	12(%esi), %ecx
e0105d23:	80 e1 07 	andb	$7, %cl
e0105d26:	80 c1 03 	addb	$3, %cl
e0105d29:	38 c1 	cmpb	%al, %cl
e0105d2b:	0f 8c 0a fb ff ff 	jl	-1270 <debuginfo_eip+0x68b>
e0105d31:	83 ec 0c 	subl	$12, %esp
e0105d34:	ff 76 0c 	pushl	12(%esi)
e0105d37:	e8 74 2a 00 00 	calll	10868 <__asan_report_store4>
e0105d3c:	83 c4 10 	addl	$16, %esp
e0105d3f:	88 de 	movb	%bl, %dh
e0105d41:	80 e6 07 	andb	$7, %dh
e0105d44:	80 c6 03 	addb	$3, %dh
e0105d47:	38 d6 	cmpb	%dl, %dh
e0105d49:	0f 8c 6f fa ff ff 	jl	-1425 <debuginfo_eip+0x60e>
e0105d4f:	83 ec 0c 	subl	$12, %esp
e0105d52:	53 	pushl	%ebx
e0105d53:	e8 58 2a 00 00 	calll	10840 <__asan_report_store4>
e0105d58:	83 c4 10 	addl	$16, %esp
e0105d5b:	89 c2 	movl	%eax, %edx
e0105d5d:	80 e2 07 	andb	$7, %dl
e0105d60:	80 c2 03 	addb	$3, %dl
e0105d63:	38 ca 	cmpb	%cl, %dl
e0105d65:	0f 8c 6b fa ff ff 	jl	-1429 <debuginfo_eip+0x626>
e0105d6b:	83 ec 0c 	subl	$12, %esp
e0105d6e:	50 	pushl	%eax
e0105d6f:	e8 1c 2a 00 00 	calll	10780 <__asan_report_load4>
e0105d74:	83 c4 10 	addl	$16, %esp
e0105d77:	8b 4e 0c 	movl	12(%esi), %ecx
e0105d7a:	80 e1 07 	andb	$7, %cl
e0105d7d:	80 c1 03 	addb	$3, %cl
e0105d80:	38 c1 	cmpb	%al, %cl
e0105d82:	0f 8c d3 fa ff ff 	jl	-1325 <debuginfo_eip+0x6ab>
e0105d88:	83 ec 0c 	subl	$12, %esp
e0105d8b:	ff 76 0c 	pushl	12(%esi)
e0105d8e:	e8 fd 29 00 00 	calll	10749 <__asan_report_load4>
e0105d93:	83 c4 10 	addl	$16, %esp
e0105d96:	88 cf 	movb	%cl, %bh
e0105d98:	80 e7 07 	andb	$7, %bh
e0105d9b:	38 df 	cmpb	%bl, %bh
e0105d9d:	0f 8c da fa ff ff 	jl	-1318 <debuginfo_eip+0x6cd>
e0105da3:	83 ec 0c 	subl	$12, %esp
e0105da6:	51 	pushl	%ecx
e0105da7:	e8 44 29 00 00 	calll	10564 <__asan_report_load1>
e0105dac:	83 c4 10 	addl	$16, %esp
e0105daf:	8b 56 0c 	movl	12(%esi), %edx
e0105db2:	80 e2 07 	andb	$7, %dl
e0105db5:	80 c2 03 	addb	$3, %dl
e0105db8:	38 c2 	cmpb	%al, %dl
e0105dba:	0f 8c 57 fa ff ff 	jl	-1449 <debuginfo_eip+0x667>
e0105dc0:	83 ec 0c 	subl	$12, %esp
e0105dc3:	ff 76 0c 	pushl	12(%esi)
e0105dc6:	e8 e5 29 00 00 	calll	10725 <__asan_report_store4>
e0105dcb:	83 c4 10 	addl	$16, %esp
e0105dce:	8b 56 0c 	movl	12(%esi), %edx
e0105dd1:	80 e2 07 	andb	$7, %dl
e0105dd4:	80 c2 03 	addb	$3, %dl
e0105dd7:	38 ca 	cmpb	%cl, %dl
e0105dd9:	0f 8c 2e fb ff ff 	jl	-1234 <debuginfo_eip+0x75d>
e0105ddf:	83 ec 0c 	subl	$12, %esp
e0105de2:	ff 76 0c 	pushl	12(%esi)
e0105de5:	e8 c6 29 00 00 	calll	10694 <__asan_report_store4>
e0105dea:	83 c4 10 	addl	$16, %esp
e0105ded:	8b 55 0c 	movl	12(%ebp), %edx
e0105df0:	80 e2 07 	andb	$7, %dl
e0105df3:	80 c2 03 	addb	$3, %dl
e0105df6:	38 ca 	cmpb	%cl, %dl
e0105df8:	0f 8c fb f9 ff ff 	jl	-1541 <debuginfo_eip+0x649>
e0105dfe:	83 ec 0c 	subl	$12, %esp
e0105e01:	ff 75 0c 	pushl	12(%ebp)
e0105e04:	e8 a7 29 00 00 	calll	10663 <__asan_report_store4>
e0105e09:	83 c4 10 	addl	$16, %esp
e0105e0c:	8b 4e 0c 	movl	12(%esi), %ecx
e0105e0f:	80 e1 07 	andb	$7, %cl
e0105e12:	80 c1 03 	addb	$3, %cl
e0105e15:	38 c1 	cmpb	%al, %cl
e0105e17:	0f 8c 08 fb ff ff 	jl	-1272 <debuginfo_eip+0x775>
e0105e1d:	83 ec 0c 	subl	$12, %esp
e0105e20:	ff 76 0c 	pushl	12(%esi)
e0105e23:	e8 88 29 00 00 	calll	10632 <__asan_report_store4>
e0105e28:	83 c4 10 	addl	$16, %esp
e0105e2b:	e8 70 27 00 00 	calll	10096 <__asan_handle_no_return>
e0105e30:	83 ec 04 	subl	$4, %esp
e0105e33:	68 e0 d6 10 e0 	pushl	$3759199968
e0105e38:	6a 7f 	pushl	$127
e0105e3a:	68 a0 d6 10 e0 	pushl	$3759199904
e0105e3f:	e8 ec a2 ff ff 	calll	-23828 <_panic>
e0105e44:	83 c4 04 	addl	$4, %esp
e0105e47:	83 ec 0c 	subl	$12, %esp
e0105e4a:	50 	pushl	%eax
e0105e4b:	e8 a0 28 00 00 	calll	10400 <__asan_report_load1>
e0105e50:	83 c4 10 	addl	$16, %esp
e0105e53:	83 ec 0c 	subl	$12, %esp
e0105e56:	ff 76 24 	pushl	36(%esi)
e0105e59:	e8 32 29 00 00 	calll	10546 <__asan_report_load4>
e0105e5e:	83 c4 10 	addl	$16, %esp
e0105e61:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0105e6b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0105e70 stab_binsearch:
e0105e70:	55 	pushl	%ebp
e0105e71:	89 e5 	movl	%esp, %ebp
e0105e73:	53 	pushl	%ebx
e0105e74:	57 	pushl	%edi
e0105e75:	56 	pushl	%esi
e0105e76:	83 ec 2c 	subl	$44, %esp
e0105e79:	89 cb 	movl	%ecx, %ebx
e0105e7b:	89 cf 	movl	%ecx, %edi
e0105e7d:	c1 ef 03 	shrl	$3, %edi
e0105e80:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e0105e86:	84 c0 	testb	%al, %al
e0105e88:	0f 85 57 02 00 00 	jne	599 <stab_binsearch+0x275>
e0105e8e:	8b 33 	movl	(%ebx), %esi
e0105e90:	89 d0 	movl	%edx, %eax
e0105e92:	c1 e8 03 	shrl	$3, %eax
e0105e95:	89 45 e8 	movl	%eax, -24(%ebp)
e0105e98:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105e9e:	84 c0 	testb	%al, %al
e0105ea0:	0f 85 57 02 00 00 	jne	599 <stab_binsearch+0x28d>
e0105ea6:	8b 02 	movl	(%edx), %eax
e0105ea8:	39 c6 	cmpl	%eax, %esi
e0105eaa:	89 55 f0 	movl	%edx, -16(%ebp)
e0105ead:	0f 8f fc 01 00 00 	jg	508 <stab_binsearch+0x23f>
e0105eb3:	89 7d e4 	movl	%edi, -28(%ebp)
e0105eb6:	89 c7 	movl	%eax, %edi
e0105eb8:	8b 45 0c 	movl	12(%ebp), %eax
e0105ebb:	89 45 dc 	movl	%eax, -36(%ebp)
e0105ebe:	c7 45 ec 00 00 00 00 	movl	$0, -20(%ebp)
e0105ec5:	89 5d d8 	movl	%ebx, -40(%ebp)
e0105ec8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0105ed0:	89 7d e0 	movl	%edi, -32(%ebp)
e0105ed3:	8d 04 37 	leal	(%edi,%esi), %eax
e0105ed6:	89 c2 	movl	%eax, %edx
e0105ed8:	c1 ea 1f 	shrl	$31, %edx
e0105edb:	01 c2 	addl	%eax, %edx
e0105edd:	d1 fa 	sarl	%edx
e0105edf:	39 f2 	cmpl	%esi, %edx
e0105ee1:	7c 4d 	jl	77 <stab_binsearch+0xc0>
e0105ee3:	8d 04 52 	leal	(%edx,%edx,2), %eax
e0105ee6:	8d 0c 85 74 df 10 e0 	leal	-535765132(,%eax,4), %ecx
e0105eed:	89 d7 	movl	%edx, %edi
e0105eef:	90 	nop
e0105ef0:	8d 41 fc 	leal	-4(%ecx), %eax
e0105ef3:	89 c3 	movl	%eax, %ebx
e0105ef5:	c1 eb 03 	shrl	$3, %ebx
e0105ef8:	0f b6 9b 00 00 80 de 	movzbl	-562036736(%ebx), %ebx
e0105eff:	84 db 	testb	%bl, %bl
e0105f01:	75 14 	jne	20 <stab_binsearch+0xa7>
e0105f03:	0f b6 00 	movzbl	(%eax), %eax
e0105f06:	3b 45 08 	cmpl	8(%ebp), %eax
e0105f09:	74 45 	je	69 <stab_binsearch+0xe0>
e0105f0b:	83 c1 f4 	addl	$-12, %ecx
e0105f0e:	39 f7 	cmpl	%esi, %edi
e0105f10:	8d 7f ff 	leal	-1(%edi), %edi
e0105f13:	7f db 	jg	-37 <stab_binsearch+0x80>
e0105f15:	eb 19 	jmp	25 <stab_binsearch+0xc0>
e0105f17:	88 c7 	movb	%al, %bh
e0105f19:	80 e7 07 	andb	$7, %bh
e0105f1c:	38 df 	cmpb	%bl, %bh
e0105f1e:	7c e3 	jl	-29 <stab_binsearch+0x93>
e0105f20:	e9 64 02 00 00 	jmp	612 <stab_binsearch+0x319>
e0105f25:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0105f2f:	90 	nop
e0105f30:	42 	incl	%edx
e0105f31:	89 d6 	movl	%edx, %esi
e0105f33:	8b 5d d8 	movl	-40(%ebp), %ebx
e0105f36:	8b 55 f0 	movl	-16(%ebp), %edx
e0105f39:	8b 7d e0 	movl	-32(%ebp), %edi
e0105f3c:	39 fe 	cmpl	%edi, %esi
e0105f3e:	7e 90 	jle	-112 <stab_binsearch+0x60>
e0105f40:	e9 cf 00 00 00 	jmp	207 <stab_binsearch+0x1a4>
e0105f45:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0105f4f:	90 	nop
e0105f50:	89 c8 	movl	%ecx, %eax
e0105f52:	c1 e8 03 	shrl	$3, %eax
e0105f55:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105f5b:	84 c0 	testb	%al, %al
e0105f5d:	8b 5d d8 	movl	-40(%ebp), %ebx
e0105f60:	75 6b 	jne	107 <stab_binsearch+0x15d>
e0105f62:	8b 45 dc 	movl	-36(%ebp), %eax
e0105f65:	39 01 	cmpl	%eax, (%ecx)
e0105f67:	73 1b 	jae	27 <stab_binsearch+0x114>
e0105f69:	8b 45 e4 	movl	-28(%ebp), %eax
e0105f6c:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105f72:	84 c0 	testb	%al, %al
e0105f74:	75 68 	jne	104 <stab_binsearch+0x16e>
e0105f76:	89 3b 	movl	%edi, (%ebx)
e0105f78:	42 	incl	%edx
e0105f79:	c7 45 ec 01 00 00 00 	movl	$1, -20(%ebp)
e0105f80:	89 d6 	movl	%edx, %esi
e0105f82:	eb b2 	jmp	-78 <stab_binsearch+0xc6>
e0105f84:	76 24 	jbe	36 <stab_binsearch+0x13a>
e0105f86:	8b 45 e8 	movl	-24(%ebp), %eax
e0105f89:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105f8f:	84 c0 	testb	%al, %al
e0105f91:	8b 55 f0 	movl	-16(%ebp), %edx
e0105f94:	75 59 	jne	89 <stab_binsearch+0x17f>
e0105f96:	4f 	decl	%edi
e0105f97:	89 3a 	movl	%edi, (%edx)
e0105f99:	c7 45 ec 01 00 00 00 	movl	$1, -20(%ebp)
e0105fa0:	39 fe 	cmpl	%edi, %esi
e0105fa2:	0f 8e 28 ff ff ff 	jle	-216 <stab_binsearch+0x60>
e0105fa8:	eb 6a 	jmp	106 <stab_binsearch+0x1a4>
e0105faa:	8b 45 e4 	movl	-28(%ebp), %eax
e0105fad:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0105fb3:	84 c0 	testb	%al, %al
e0105fb5:	8b 55 f0 	movl	-16(%ebp), %edx
e0105fb8:	75 46 	jne	70 <stab_binsearch+0x190>
e0105fba:	89 3b 	movl	%edi, (%ebx)
e0105fbc:	ff 45 dc 	incl	-36(%ebp)
e0105fbf:	c7 45 ec 01 00 00 00 	movl	$1, -20(%ebp)
e0105fc6:	89 fe 	movl	%edi, %esi
e0105fc8:	e9 6c ff ff ff 	jmp	-148 <stab_binsearch+0xc9>
e0105fcd:	88 cc 	movb	%cl, %ah
e0105fcf:	80 e4 07 	andb	$7, %ah
e0105fd2:	80 c4 03 	addb	$3, %ah
e0105fd5:	38 c4 	cmpb	%al, %ah
e0105fd7:	7c 89 	jl	-119 <stab_binsearch+0xf2>
e0105fd9:	e9 b3 01 00 00 	jmp	435 <stab_binsearch+0x321>
e0105fde:	89 d9 	movl	%ebx, %ecx
e0105fe0:	80 e1 07 	andb	$7, %cl
e0105fe3:	80 c1 03 	addb	$3, %cl
e0105fe6:	38 c1 	cmpb	%al, %cl
e0105fe8:	7c 8c 	jl	-116 <stab_binsearch+0x106>
e0105fea:	e9 aa 01 00 00 	jmp	426 <stab_binsearch+0x329>
e0105fef:	89 d1 	movl	%edx, %ecx
e0105ff1:	80 e1 07 	andb	$7, %cl
e0105ff4:	80 c1 03 	addb	$3, %cl
e0105ff7:	38 c1 	cmpb	%al, %cl
e0105ff9:	7c 9b 	jl	-101 <stab_binsearch+0x126>
e0105ffb:	e9 a1 01 00 00 	jmp	417 <stab_binsearch+0x331>
e0106000:	89 d9 	movl	%ebx, %ecx
e0106002:	80 e1 07 	andb	$7, %cl
e0106005:	80 c1 03 	addb	$3, %cl
e0106008:	38 c1 	cmpb	%al, %cl
e010600a:	7c ae 	jl	-82 <stab_binsearch+0x14a>
e010600c:	89 1c 24 	movl	%ebx, (%esp)
e010600f:	e8 9c 27 00 00 	calll	10140 <__asan_report_store4>
e0106014:	83 7d ec 00 	cmpl	$0, -20(%ebp)
e0106018:	8b 7d e4 	movl	-28(%ebp), %edi
e010601b:	0f 84 8e 00 00 00 	je	142 <stab_binsearch+0x23f>
e0106021:	8b 45 e8 	movl	-24(%ebp), %eax
e0106024:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010602a:	84 c0 	testb	%al, %al
e010602c:	0f 85 0f 01 00 00 	jne	271 <stab_binsearch+0x2d1>
e0106032:	8b 02 	movl	(%edx), %eax
e0106034:	8a 8f 00 00 80 de 	movb	-562036736(%edi), %cl
e010603a:	84 c9 	testb	%cl, %cl
e010603c:	0f 85 17 01 00 00 	jne	279 <stab_binsearch+0x2e9>
e0106042:	3b 03 	cmpl	(%ebx), %eax
e0106044:	0f 8e 83 00 00 00 	jle	131 <stab_binsearch+0x25d>
e010604a:	8d 0c 40 	leal	(%eax,%eax,2), %ecx
e010604d:	8d 0c 8d 70 df 10 e0 	leal	-535765136(,%ecx,4), %ecx
e0106054:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010605e:	66 90 	nop
e0106060:	89 ca 	movl	%ecx, %edx
e0106062:	c1 ea 03 	shrl	$3, %edx
e0106065:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e010606c:	84 d2 	testb	%dl, %dl
e010606e:	75 1d 	jne	29 <stab_binsearch+0x21d>
e0106070:	0f b6 11 	movzbl	(%ecx), %edx
e0106073:	3b 55 08 	cmpl	8(%ebp), %edx
e0106076:	74 55 	je	85 <stab_binsearch+0x25d>
e0106078:	0f b6 97 00 00 80 de 	movzbl	-562036736(%edi), %edx
e010607f:	84 d2 	testb	%dl, %dl
e0106081:	75 18 	jne	24 <stab_binsearch+0x22b>
e0106083:	48 	decl	%eax
e0106084:	83 c1 f4 	addl	$-12, %ecx
e0106087:	3b 03 	cmpl	(%ebx), %eax
e0106089:	7f d5 	jg	-43 <stab_binsearch+0x1f0>
e010608b:	eb 40 	jmp	64 <stab_binsearch+0x25d>
e010608d:	88 ce 	movb	%cl, %dh
e010608f:	80 e6 07 	andb	$7, %dh
e0106092:	38 d6 	cmpb	%dl, %dh
e0106094:	7c da 	jl	-38 <stab_binsearch+0x200>
e0106096:	e9 0e 01 00 00 	jmp	270 <stab_binsearch+0x339>
e010609b:	88 de 	movb	%bl, %dh
e010609d:	80 e6 07 	andb	$7, %dh
e01060a0:	80 c6 03 	addb	$3, %dh
e01060a3:	38 d6 	cmpb	%dl, %dh
e01060a5:	7c dc 	jl	-36 <stab_binsearch+0x213>
e01060a7:	89 1c 24 	movl	%ebx, (%esp)
e01060aa:	e8 e1 26 00 00 	calll	9953 <__asan_report_load4>
e01060af:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e01060b5:	84 c0 	testb	%al, %al
e01060b7:	75 5c 	jne	92 <stab_binsearch+0x2a5>
e01060b9:	8b 03 	movl	(%ebx), %eax
e01060bb:	8b 4d e8 	movl	-24(%ebp), %ecx
e01060be:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01060c4:	84 c9 	testb	%cl, %cl
e01060c6:	75 61 	jne	97 <stab_binsearch+0x2b9>
e01060c8:	48 	decl	%eax
e01060c9:	89 02 	movl	%eax, (%edx)
e01060cb:	eb 10 	jmp	16 <stab_binsearch+0x26d>
e01060cd:	8a 8f 00 00 80 de 	movb	-562036736(%edi), %cl
e01060d3:	84 c9 	testb	%cl, %cl
e01060d5:	0f 85 96 00 00 00 	jne	150 <stab_binsearch+0x301>
e01060db:	89 03 	movl	%eax, (%ebx)
e01060dd:	83 c4 2c 	addl	$44, %esp
e01060e0:	5e 	popl	%esi
e01060e1:	5f 	popl	%edi
e01060e2:	5b 	popl	%ebx
e01060e3:	5d 	popl	%ebp
e01060e4:	c3 	retl
e01060e5:	89 d9 	movl	%ebx, %ecx
e01060e7:	80 e1 07 	andb	$7, %cl
e01060ea:	80 c1 03 	addb	$3, %cl
e01060ed:	38 c1 	cmpb	%al, %cl
e01060ef:	0f 8c 99 fd ff ff 	jl	-615 <stab_binsearch+0x1e>
e01060f5:	89 1c 24 	movl	%ebx, (%esp)
e01060f8:	e8 93 26 00 00 	calll	9875 <__asan_report_load4>
e01060fd:	89 d1 	movl	%edx, %ecx
e01060ff:	80 e1 07 	andb	$7, %cl
e0106102:	80 c1 03 	addb	$3, %cl
e0106105:	38 c1 	cmpb	%al, %cl
e0106107:	0f 8c 99 fd ff ff 	jl	-615 <stab_binsearch+0x36>
e010610d:	89 14 24 	movl	%edx, (%esp)
e0106110:	e8 7b 26 00 00 	calll	9851 <__asan_report_load4>
e0106115:	89 d9 	movl	%ebx, %ecx
e0106117:	80 e1 07 	andb	$7, %cl
e010611a:	80 c1 03 	addb	$3, %cl
e010611d:	38 c1 	cmpb	%al, %cl
e010611f:	7c 98 	jl	-104 <stab_binsearch+0x249>
e0106121:	89 1c 24 	movl	%ebx, (%esp)
e0106124:	e8 67 26 00 00 	calll	9831 <__asan_report_load4>
e0106129:	8b 55 f0 	movl	-16(%ebp), %edx
e010612c:	80 e2 07 	andb	$7, %dl
e010612f:	80 c2 03 	addb	$3, %dl
e0106132:	38 ca 	cmpb	%cl, %dl
e0106134:	8b 55 f0 	movl	-16(%ebp), %edx
e0106137:	7c 8f 	jl	-113 <stab_binsearch+0x258>
e0106139:	89 14 24 	movl	%edx, (%esp)
e010613c:	e8 6f 26 00 00 	calll	9839 <__asan_report_store4>
e0106141:	89 d1 	movl	%edx, %ecx
e0106143:	80 e1 07 	andb	$7, %cl
e0106146:	80 c1 03 	addb	$3, %cl
e0106149:	38 c1 	cmpb	%al, %cl
e010614b:	0f 8c e1 fe ff ff 	jl	-287 <stab_binsearch+0x1c2>
e0106151:	89 14 24 	movl	%edx, (%esp)
e0106154:	e8 37 26 00 00 	calll	9783 <__asan_report_load4>
e0106159:	89 da 	movl	%ebx, %edx
e010615b:	80 e2 07 	andb	$7, %dl
e010615e:	80 c2 03 	addb	$3, %dl
e0106161:	38 ca 	cmpb	%cl, %dl
e0106163:	0f 8c d9 fe ff ff 	jl	-295 <stab_binsearch+0x1d2>
e0106169:	89 1c 24 	movl	%ebx, (%esp)
e010616c:	e8 1f 26 00 00 	calll	9759 <__asan_report_load4>
e0106171:	89 da 	movl	%ebx, %edx
e0106173:	80 e2 07 	andb	$7, %dl
e0106176:	80 c2 03 	addb	$3, %dl
e0106179:	38 ca 	cmpb	%cl, %dl
e010617b:	0f 8c 5a ff ff ff 	jl	-166 <stab_binsearch+0x26b>
e0106181:	89 1c 24 	movl	%ebx, (%esp)
e0106184:	e8 27 26 00 00 	calll	9767 <__asan_report_store4>
e0106189:	89 04 24 	movl	%eax, (%esp)
e010618c:	e8 5f 25 00 00 	calll	9567 <__asan_report_load1>
e0106191:	89 0c 24 	movl	%ecx, (%esp)
e0106194:	e8 f7 25 00 00 	calll	9719 <__asan_report_load4>
e0106199:	89 1c 24 	movl	%ebx, (%esp)
e010619c:	e8 0f 26 00 00 	calll	9743 <__asan_report_store4>
e01061a1:	89 14 24 	movl	%edx, (%esp)
e01061a4:	e8 07 26 00 00 	calll	9735 <__asan_report_store4>
e01061a9:	89 0c 24 	movl	%ecx, (%esp)
e01061ac:	e8 3f 25 00 00 	calll	9535 <__asan_report_load1>
e01061b1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01061bb:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e01061c0 find_function:
e01061c0:	55 	pushl	%ebp
e01061c1:	89 e5 	movl	%esp, %ebp
e01061c3:	53 	pushl	%ebx
e01061c4:	57 	pushl	%edi
e01061c5:	56 	pushl	%esi
e01061c6:	83 ec 0c 	subl	$12, %esp
e01061c9:	31 c0 	xorl	%eax, %eax
e01061cb:	bb 6c df 10 e0 	movl	$3759202156, %ebx
e01061d0:	81 fb 6c df 10 e0 	cmpl	$3759202156, %ebx
e01061d6:	0f 83 23 01 00 00 	jae	291 <find_function+0x13f>
e01061dc:	ba 6d df 10 e0 	movl	$3759202157, %edx
e01061e1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01061eb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e01061f0:	8d 43 04 	leal	4(%ebx), %eax
e01061f3:	89 c1 	movl	%eax, %ecx
e01061f5:	c1 e9 03 	shrl	$3, %ecx
e01061f8:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e01061ff:	84 c9 	testb	%cl, %cl
e0106201:	0f 85 94 00 00 00 	jne	148 <find_function+0xdb>
e0106207:	80 7b 04 24 	cmpb	$36, 4(%ebx)
e010620b:	75 7d 	jne	125 <find_function+0xca>
e010620d:	89 de 	movl	%ebx, %esi
e010620f:	c1 ee 03 	shrl	$3, %esi
e0106212:	0f b6 86 00 00 80 de 	movzbl	-562036736(%esi), %eax
e0106219:	84 c0 	testb	%al, %al
e010621b:	0f 85 8e 00 00 00 	jne	142 <find_function+0xef>
e0106221:	8b 03 	movl	(%ebx), %eax
e0106223:	01 d0 	addl	%edx, %eax
e0106225:	89 04 24 	movl	%eax, (%esp)
e0106228:	c7 44 24 04 3a 00 00 00 	movl	$58, 4(%esp)
e0106230:	e8 eb 17 00 00 	calll	6123 <strfind>
e0106235:	89 c7 	movl	%eax, %edi
e0106237:	0f b6 86 00 00 80 de 	movzbl	-562036736(%esi), %eax
e010623e:	84 c0 	testb	%al, %al
e0106240:	75 7f 	jne	127 <find_function+0x101>
e0106242:	b8 6d df 10 e0 	movl	$3759202157, %eax
e0106247:	29 c7 	subl	%eax, %edi
e0106249:	2b 3b 	subl	(%ebx), %edi
e010624b:	8b 45 08 	movl	8(%ebp), %eax
e010624e:	89 04 24 	movl	%eax, (%esp)
e0106251:	e8 4a 33 00 00 	calll	13130 <__wrap_strlen>
e0106256:	39 f8 	cmpl	%edi, %eax
e0106258:	ba 6d df 10 e0 	movl	$3759202157, %edx
e010625d:	75 2b 	jne	43 <find_function+0xca>
e010625f:	0f b6 86 00 00 80 de 	movzbl	-562036736(%esi), %eax
e0106266:	84 c0 	testb	%al, %al
e0106268:	75 69 	jne	105 <find_function+0x113>
e010626a:	8b 03 	movl	(%ebx), %eax
e010626c:	01 d0 	addl	%edx, %eax
e010626e:	89 7c 24 08 	movl	%edi, 8(%esp)
e0106272:	89 44 24 04 	movl	%eax, 4(%esp)
e0106276:	8b 45 08 	movl	8(%ebp), %eax
e0106279:	89 04 24 	movl	%eax, (%esp)
e010627c:	e8 5f 16 00 00 	calll	5727 <strncmp>
e0106281:	ba 6d df 10 e0 	movl	$3759202157, %edx
e0106286:	85 c0 	testl	%eax, %eax
e0106288:	74 61 	je	97 <find_function+0x12b>
e010628a:	83 c3 0c 	addl	$12, %ebx
e010628d:	81 fb 6c df 10 e0 	cmpl	$3759202156, %ebx
e0106293:	0f 82 57 ff ff ff 	jb	-169 <find_function+0x30>
e0106299:	eb 4c 	jmp	76 <find_function+0x127>
e010629b:	89 c2 	movl	%eax, %edx
e010629d:	80 e2 07 	andb	$7, %dl
e01062a0:	38 ca 	cmpb	%cl, %dl
e01062a2:	ba 6d df 10 e0 	movl	$3759202157, %edx
e01062a7:	0f 8c 5a ff ff ff 	jl	-166 <find_function+0x47>
e01062ad:	eb 6c 	jmp	108 <find_function+0x15b>
e01062af:	89 d9 	movl	%ebx, %ecx
e01062b1:	80 e1 07 	andb	$7, %cl
e01062b4:	80 c1 03 	addb	$3, %cl
e01062b7:	38 c1 	cmpb	%al, %cl
e01062b9:	0f 8c 62 ff ff ff 	jl	-158 <find_function+0x61>
e01062bf:	eb 62 	jmp	98 <find_function+0x163>
e01062c1:	89 d9 	movl	%ebx, %ecx
e01062c3:	80 e1 07 	andb	$7, %cl
e01062c6:	80 c1 03 	addb	$3, %cl
e01062c9:	38 c1 	cmpb	%al, %cl
e01062cb:	0f 8c 71 ff ff ff 	jl	-143 <find_function+0x82>
e01062d1:	eb 58 	jmp	88 <find_function+0x16b>
e01062d3:	89 d9 	movl	%ebx, %ecx
e01062d5:	80 e1 07 	andb	$7, %cl
e01062d8:	80 c1 03 	addb	$3, %cl
e01062db:	38 c1 	cmpb	%al, %cl
e01062dd:	7c 8b 	jl	-117 <find_function+0xaa>
e01062df:	89 1c 24 	movl	%ebx, (%esp)
e01062e2:	e8 a9 24 00 00 	calll	9385 <__asan_report_load4>
e01062e7:	31 c0 	xorl	%eax, %eax
e01062e9:	eb 14 	jmp	20 <find_function+0x13f>
e01062eb:	83 c3 08 	addl	$8, %ebx
e01062ee:	89 d8 	movl	%ebx, %eax
e01062f0:	c1 e8 03 	shrl	$3, %eax
e01062f3:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01062f9:	84 c0 	testb	%al, %al
e01062fb:	75 0a 	jne	10 <find_function+0x147>
e01062fd:	8b 03 	movl	(%ebx), %eax
e01062ff:	83 c4 0c 	addl	$12, %esp
e0106302:	5e 	popl	%esi
e0106303:	5f 	popl	%edi
e0106304:	5b 	popl	%ebx
e0106305:	5d 	popl	%ebp
e0106306:	c3 	retl
e0106307:	89 d9 	movl	%ebx, %ecx
e0106309:	80 e1 07 	andb	$7, %cl
e010630c:	80 c1 03 	addb	$3, %cl
e010630f:	38 c1 	cmpb	%al, %cl
e0106311:	7c ea 	jl	-22 <find_function+0x13d>
e0106313:	89 1c 24 	movl	%ebx, (%esp)
e0106316:	e8 75 24 00 00 	calll	9333 <__asan_report_load4>
e010631b:	89 04 24 	movl	%eax, (%esp)
e010631e:	e8 cd 23 00 00 	calll	9165 <__asan_report_load1>
e0106323:	89 1c 24 	movl	%ebx, (%esp)
e0106326:	e8 65 24 00 00 	calll	9317 <__asan_report_load4>
e010632b:	89 1c 24 	movl	%ebx, (%esp)
e010632e:	e8 5d 24 00 00 	calll	9309 <__asan_report_load4>
e0106333:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010633d:	0f 1f 00 	nopl	(%eax)

00000000e0106340 asan.module_ctor:
e0106340:	83 ec 0c 	subl	$12, %esp
e0106343:	e8 b8 29 00 00 	calll	10680 <__asan_init>
e0106348:	e8 d3 2a 00 00 	calll	10963 <__asan_version_mismatch_check_v8>
e010634d:	83 ec 08 	subl	$8, %esp
e0106350:	6a 03 	pushl	$3
e0106352:	68 a0 17 12 e0 	pushl	$3759282080
e0106357:	e8 d4 29 00 00 	calll	10708 <__asan_register_globals>
e010635c:	83 c4 1c 	addl	$28, %esp
e010635f:	c3 	retl

00000000e0106360 asan.module_dtor:
e0106360:	83 ec 14 	subl	$20, %esp
e0106363:	6a 03 	pushl	$3
e0106365:	68 a0 17 12 e0 	pushl	$3759282080
e010636a:	e8 11 2a 00 00 	calll	10769 <__asan_unregister_globals>
e010636f:	83 c4 1c 	addl	$28, %esp
e0106372:	c3 	retl
e0106373:	cc 	int3
e0106374:	cc 	int3
e0106375:	cc 	int3
e0106376:	cc 	int3
e0106377:	cc 	int3
e0106378:	cc 	int3
e0106379:	cc 	int3
e010637a:	cc 	int3
e010637b:	cc 	int3
e010637c:	cc 	int3
e010637d:	cc 	int3
e010637e:	cc 	int3
e010637f:	cc 	int3

00000000e0106380 vprintfmt:
e0106380:	55 	pushl	%ebp
e0106381:	89 e5 	movl	%esp, %ebp
e0106383:	53 	pushl	%ebx
e0106384:	57 	pushl	%edi
e0106385:	56 	pushl	%esi
e0106386:	83 e4 e0 	andl	$-32, %esp
e0106389:	83 ec 60 	subl	$96, %esp
e010638c:	89 e6 	movl	%esp, %esi
e010638e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0106395:	74 0f 	je	15 <vprintfmt+0x26>
e0106397:	83 ec 0c 	subl	$12, %esp
e010639a:	6a 20 	pushl	$32
e010639c:	e8 ef 25 00 00 	calll	9711 <__asan_stack_malloc_0>
e01063a1:	83 c4 10 	addl	$16, %esp
e01063a4:	eb 02 	jmp	2 <vprintfmt+0x28>
e01063a6:	31 c0 	xorl	%eax, %eax
e01063a8:	85 c0 	testl	%eax, %eax
e01063aa:	89 46 38 	movl	%eax, 56(%esi)
e01063ad:	75 0a 	jne	10 <vprintfmt+0x39>
e01063af:	89 e0 	movl	%esp, %eax
e01063b1:	83 c0 e0 	addl	$-32, %eax
e01063b4:	83 e0 e0 	andl	$-32, %eax
e01063b7:	89 c4 	movl	%eax, %esp
e01063b9:	89 46 3c 	movl	%eax, 60(%esi)
e01063bc:	8d 50 10 	leal	16(%eax), %edx
e01063bf:	c7 00 b3 8a b5 41 	movl	$1102416563, (%eax)
e01063c5:	c7 40 04 f9 a4 10 e0 	movl	$3759187193, 4(%eax)
e01063cc:	c7 40 08 80 63 10 e0 	movl	$3759170432, 8(%eax)
e01063d3:	89 46 34 	movl	%eax, 52(%esi)
e01063d6:	c1 e8 03 	shrl	$3, %eax
e01063d9:	89 46 30 	movl	%eax, 48(%esi)
e01063dc:	c7 80 00 00 80 de f1 f1 04 f3 	movl	$4077187569, -562036736(%eax)
e01063e6:	89 d0 	movl	%edx, %eax
e01063e8:	c1 e8 03 	shrl	$3, %eax
e01063eb:	89 46 28 	movl	%eax, 40(%esi)
e01063ee:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01063f4:	84 c0 	testb	%al, %al
e01063f6:	0f 85 aa 06 00 00 	jne	1706 <vprintfmt+0x726>
e01063fc:	8b 45 14 	movl	20(%ebp), %eax
e01063ff:	8b 4d 10 	movl	16(%ebp), %ecx
e0106402:	8b 7d 0c 	movl	12(%ebp), %edi
e0106405:	89 56 14 	movl	%edx, 20(%esi)
e0106408:	89 02 	movl	%eax, (%edx)
e010640a:	eb 0c 	jmp	12 <vprintfmt+0x98>
e010640c:	0f 1f 40 00 	nopl	(%eax)
e0106410:	ff 55 08 	calll	*8(%ebp)
e0106413:	89 d9 	movl	%ebx, %ecx
e0106415:	83 c4 10 	addl	$16, %esp
e0106418:	89 c8 	movl	%ecx, %eax
e010641a:	c1 e8 03 	shrl	$3, %eax
e010641d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106423:	84 c0 	testb	%al, %al
e0106425:	0f 85 46 05 00 00 	jne	1350 <vprintfmt+0x5f1>
e010642b:	0f b6 01 	movzbl	(%ecx), %eax
e010642e:	41 	incl	%ecx
e010642f:	83 f8 25 	cmpl	$37, %eax
e0106432:	74 1c 	je	28 <vprintfmt+0xd0>
e0106434:	84 c0 	testb	%al, %al
e0106436:	0f 84 26 06 00 00 	je	1574 <vprintfmt+0x6e2>
e010643c:	83 ec 08 	subl	$8, %esp
e010643f:	57 	pushl	%edi
e0106440:	50 	pushl	%eax
e0106441:	89 cb 	movl	%ecx, %ebx
e0106443:	eb cb 	jmp	-53 <vprintfmt+0x90>
e0106445:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010644f:	90 	nop
e0106450:	c6 46 24 20 	movb	$32, 36(%esi)
e0106454:	b8 ff ff ff ff 	movl	$4294967295, %eax
e0106459:	31 d2 	xorl	%edx, %edx
e010645b:	c7 46 1c ff ff ff ff 	movl	$4294967295, 28(%esi)
e0106462:	c7 46 20 00 00 00 00 	movl	$0, 32(%esi)
e0106469:	89 46 18 	movl	%eax, 24(%esi)
e010646c:	eb 18 	jmp	24 <vprintfmt+0x106>
e010646e:	66 90 	nop
e0106470:	8b 46 18 	movl	24(%esi), %eax
e0106473:	85 c0 	testl	%eax, %eax
e0106475:	0f 48 c7 	cmovsl	%edi, %eax
e0106478:	89 46 18 	movl	%eax, 24(%esi)
e010647b:	b8 ff ff ff ff 	movl	$4294967295, %eax
e0106480:	0f 48 f8 	cmovsl	%eax, %edi
e0106483:	89 7e 1c 	movl	%edi, 28(%esi)
e0106486:	8d 59 ff 	leal	-1(%ecx), %ebx
e0106489:	eb 0f 	jmp	15 <vprintfmt+0x11a>
e010648b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0106490:	8b 46 10 	movl	16(%esi), %eax
e0106493:	40 	incl	%eax
e0106494:	43 	incl	%ebx
e0106495:	88 4e 24 	movb	%cl, 36(%esi)
e0106498:	89 c1 	movl	%eax, %ecx
e010649a:	89 c8 	movl	%ecx, %eax
e010649c:	c1 e8 03 	shrl	$3, %eax
e010649f:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01064a6:	84 c0 	testb	%al, %al
e01064a8:	89 cf 	movl	%ecx, %edi
e01064aa:	89 4e 10 	movl	%ecx, 16(%esi)
e01064ad:	75 22 	jne	34 <vprintfmt+0x151>
e01064af:	0f b6 09 	movzbl	(%ecx), %ecx
e01064b2:	88 cd 	movb	%cl, %ch
e01064b4:	80 c5 dd 	addb	$-35, %ch
e01064b7:	80 fd 55 	cmpb	$85, %ch
e01064ba:	0f 87 3b 02 00 00 	ja	571 <vprintfmt+0x37b>
e01064c0:	0f b6 c1 	movzbl	%cl, %eax
e01064c3:	0f b6 fd 	movzbl	%ch, %edi
e01064c6:	ff 24 bd 60 d7 10 e0 	jmpl	*-535767200(,%edi,4)
e01064cd:	b1 30 	movb	$48, %cl
e01064cf:	eb bf 	jmp	-65 <vprintfmt+0x110>
e01064d1:	8b 4e 10 	movl	16(%esi), %ecx
e01064d4:	80 e1 07 	andb	$7, %cl
e01064d7:	38 c1 	cmpb	%al, %cl
e01064d9:	8b 4e 10 	movl	16(%esi), %ecx
e01064dc:	7c d1 	jl	-47 <vprintfmt+0x12f>
e01064de:	e9 df 05 00 00 	jmp	1503 <vprintfmt+0x742>
e01064e3:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01064ed:	0f 1f 00 	nopl	(%eax)
e01064f0:	8b 4e 10 	movl	16(%esi), %ecx
e01064f3:	41 	incl	%ecx
e01064f4:	31 ff 	xorl	%edi, %edi
e01064f6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0106500:	89 cb 	movl	%ecx, %ebx
e0106502:	c1 e9 03 	shrl	$3, %ecx
e0106505:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e010650c:	84 c9 	testb	%cl, %cl
e010650e:	75 19 	jne	25 <vprintfmt+0x1a9>
e0106510:	8d 0c bf 	leal	(%edi,%edi,4), %ecx
e0106513:	8d 7c 48 d0 	leal	-48(%eax,%ecx,2), %edi
e0106517:	0f be 03 	movsbl	(%ebx), %eax
e010651a:	89 c1 	movl	%eax, %ecx
e010651c:	80 c1 d0 	addb	$-48, %cl
e010651f:	43 	incl	%ebx
e0106520:	80 f9 09 	cmpb	$9, %cl
e0106523:	89 d9 	movl	%ebx, %ecx
e0106525:	76 d9 	jbe	-39 <vprintfmt+0x180>
e0106527:	eb 17 	jmp	23 <vprintfmt+0x1c0>
e0106529:	88 dd 	movb	%bl, %ch
e010652b:	80 e5 07 	andb	$7, %ch
e010652e:	38 cd 	cmpb	%cl, %ch
e0106530:	7c de 	jl	-34 <vprintfmt+0x190>
e0106532:	e9 97 05 00 00 	jmp	1431 <vprintfmt+0x74e>
e0106537:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0106540:	49 	decl	%ecx
e0106541:	e9 2a ff ff ff 	jmp	-214 <vprintfmt+0xf0>
e0106546:	42 	incl	%edx
e0106547:	8b 4e 10 	movl	16(%esi), %ecx
e010654a:	41 	incl	%ecx
e010654b:	8b 46 18 	movl	24(%esi), %eax
e010654e:	89 46 18 	movl	%eax, 24(%esi)
e0106551:	e9 30 ff ff ff 	jmp	-208 <vprintfmt+0x106>
e0106556:	8b 4e 18 	movl	24(%esi), %ecx
e0106559:	85 c9 	testl	%ecx, %ecx
e010655b:	b8 00 00 00 00 	movl	$0, %eax
e0106560:	0f 48 c8 	cmovsl	%eax, %ecx
e0106563:	89 4e 18 	movl	%ecx, 24(%esi)
e0106566:	8b 4e 10 	movl	16(%esi), %ecx
e0106569:	41 	incl	%ecx
e010656a:	e9 17 ff ff ff 	jmp	-233 <vprintfmt+0x106>
e010656f:	8b 46 28 	movl	40(%esi), %eax
e0106572:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106578:	84 c0 	testb	%al, %al
e010657a:	75 34 	jne	52 <vprintfmt+0x230>
e010657c:	8b 7e 14 	movl	20(%esi), %edi
e010657f:	8b 07 	movl	(%edi), %eax
e0106581:	8d 48 04 	leal	4(%eax), %ecx
e0106584:	89 0f 	movl	%ecx, (%edi)
e0106586:	89 c1 	movl	%eax, %ecx
e0106588:	c1 e9 03 	shrl	$3, %ecx
e010658b:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0106591:	84 c9 	testb	%cl, %cl
e0106593:	75 2d 	jne	45 <vprintfmt+0x242>
e0106595:	8b 4e 10 	movl	16(%esi), %ecx
e0106598:	41 	incl	%ecx
e0106599:	8b 38 	movl	(%eax), %edi
e010659b:	e9 d0 fe ff ff 	jmp	-304 <vprintfmt+0xf0>
e01065a0:	8b 4e 10 	movl	16(%esi), %ecx
e01065a3:	41 	incl	%ecx
e01065a4:	c7 46 20 01 00 00 00 	movl	$1, 32(%esi)
e01065ab:	e9 d6 fe ff ff 	jmp	-298 <vprintfmt+0x106>
e01065b0:	8b 4e 14 	movl	20(%esi), %ecx
e01065b3:	80 e1 07 	andb	$7, %cl
e01065b6:	80 c1 03 	addb	$3, %cl
e01065b9:	38 c1 	cmpb	%al, %cl
e01065bb:	7c bf 	jl	-65 <vprintfmt+0x1fc>
e01065bd:	e9 18 05 00 00 	jmp	1304 <vprintfmt+0x75a>
e01065c2:	88 c5 	movb	%al, %ch
e01065c4:	80 e5 07 	andb	$7, %ch
e01065c7:	80 c5 03 	addb	$3, %ch
e01065ca:	38 cd 	cmpb	%cl, %ch
e01065cc:	7c c7 	jl	-57 <vprintfmt+0x215>
e01065ce:	e9 15 05 00 00 	jmp	1301 <vprintfmt+0x768>
e01065d3:	8b 4e 14 	movl	20(%esi), %ecx
e01065d6:	e8 b5 07 00 00 	calll	1973 <getuint>
e01065db:	89 46 1c 	movl	%eax, 28(%esi)
e01065de:	89 56 20 	movl	%edx, 32(%esi)
e01065e1:	bf 08 00 00 00 	movl	$8, %edi
e01065e6:	e9 91 00 00 00 	jmp	145 <vprintfmt+0x2fc>
e01065eb:	8b 4e 14 	movl	20(%esi), %ecx
e01065ee:	e8 9d 07 00 00 	calll	1949 <getuint>
e01065f3:	89 46 1c 	movl	%eax, 28(%esi)
e01065f6:	89 56 20 	movl	%edx, 32(%esi)
e01065f9:	eb 57 	jmp	87 <vprintfmt+0x2d2>
e01065fb:	83 ec 08 	subl	$8, %esp
e01065fe:	8b 45 0c 	movl	12(%ebp), %eax
e0106601:	89 c7 	movl	%eax, %edi
e0106603:	50 	pushl	%eax
e0106604:	6a 30 	pushl	$48
e0106606:	8b 45 08 	movl	8(%ebp), %eax
e0106609:	89 c3 	movl	%eax, %ebx
e010660b:	ff d0 	calll	*%eax
e010660d:	83 c4 08 	addl	$8, %esp
e0106610:	57 	pushl	%edi
e0106611:	6a 78 	pushl	$120
e0106613:	ff d3 	calll	*%ebx
e0106615:	83 c4 10 	addl	$16, %esp
e0106618:	8b 46 28 	movl	40(%esi), %eax
e010661b:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106621:	84 c0 	testb	%al, %al
e0106623:	0f 85 5c 03 00 00 	jne	860 <vprintfmt+0x605>
e0106629:	8b 56 14 	movl	20(%esi), %edx
e010662c:	8b 02 	movl	(%edx), %eax
e010662e:	8d 48 04 	leal	4(%eax), %ecx
e0106631:	89 0a 	movl	%ecx, (%edx)
e0106633:	89 c1 	movl	%eax, %ecx
e0106635:	c1 e9 03 	shrl	$3, %ecx
e0106638:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010663e:	84 c9 	testb	%cl, %cl
e0106640:	0f 85 55 03 00 00 	jne	853 <vprintfmt+0x61b>
e0106646:	8b 00 	movl	(%eax), %eax
e0106648:	89 46 1c 	movl	%eax, 28(%esi)
e010664b:	c7 46 20 00 00 00 00 	movl	$0, 32(%esi)
e0106652:	bf 10 00 00 00 	movl	$16, %edi
e0106657:	eb 23 	jmp	35 <vprintfmt+0x2fc>
e0106659:	83 ec 08 	subl	$8, %esp
e010665c:	8b 7d 0c 	movl	12(%ebp), %edi
e010665f:	57 	pushl	%edi
e0106660:	50 	pushl	%eax
e0106661:	ff 55 08 	calll	*8(%ebp)
e0106664:	83 c4 10 	addl	$16, %esp
e0106667:	eb 36 	jmp	54 <vprintfmt+0x31f>
e0106669:	8b 4e 14 	movl	20(%esi), %ecx
e010666c:	e8 1f 07 00 00 	calll	1823 <getuint>
e0106671:	89 46 1c 	movl	%eax, 28(%esi)
e0106674:	89 56 20 	movl	%edx, 32(%esi)
e0106677:	bf 0a 00 00 00 	movl	$10, %edi
e010667c:	8b 5e 18 	movl	24(%esi), %ebx
e010667f:	0f b6 46 24 	movzbl	36(%esi), %eax
e0106683:	83 ec 0c 	subl	$12, %esp
e0106686:	8b 4d 08 	movl	8(%ebp), %ecx
e0106689:	8b 55 0c 	movl	12(%ebp), %edx
e010668c:	50 	pushl	%eax
e010668d:	53 	pushl	%ebx
e010668e:	57 	pushl	%edi
e010668f:	ff 76 20 	pushl	32(%esi)
e0106692:	ff 76 1c 	pushl	28(%esi)
e0106695:	89 d7 	movl	%edx, %edi
e0106697:	e8 04 08 00 00 	calll	2052 <printnum>
e010669c:	83 c4 20 	addl	$32, %esp
e010669f:	8b 4e 10 	movl	16(%esi), %ecx
e01066a2:	41 	incl	%ecx
e01066a3:	e9 70 fd ff ff 	jmp	-656 <vprintfmt+0x98>
e01066a8:	8b 46 28 	movl	40(%esi), %eax
e01066ab:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01066b1:	84 c0 	testb	%al, %al
e01066b3:	0f 85 f7 02 00 00 	jne	759 <vprintfmt+0x630>
e01066b9:	8b 56 14 	movl	20(%esi), %edx
e01066bc:	8b 02 	movl	(%edx), %eax
e01066be:	8d 48 04 	leal	4(%eax), %ecx
e01066c1:	89 0a 	movl	%ecx, (%edx)
e01066c3:	89 c1 	movl	%eax, %ecx
e01066c5:	c1 e9 03 	shrl	$3, %ecx
e01066c8:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01066ce:	84 c9 	testb	%cl, %cl
e01066d0:	8b 5e 18 	movl	24(%esi), %ebx
e01066d3:	0f 85 ed 02 00 00 	jne	749 <vprintfmt+0x646>
e01066d9:	8b 10 	movl	(%eax), %edx
e01066db:	85 d2 	testl	%edx, %edx
e01066dd:	b8 80 d9 10 e0 	movl	$3759200640, %eax
e01066e2:	0f 44 d0 	cmovel	%eax, %edx
e01066e5:	85 db 	testl	%ebx, %ebx
e01066e7:	7e 0a 	jle	10 <vprintfmt+0x373>
e01066e9:	80 7e 24 2d 	cmpb	$45, 36(%esi)
e01066ed:	0f 85 3e 01 00 00 	jne	318 <vprintfmt+0x4b1>
e01066f3:	8b 4e 10 	movl	16(%esi), %ecx
e01066f6:	e9 7d 01 00 00 	jmp	381 <vprintfmt+0x4f8>
e01066fb:	83 ec 08 	subl	$8, %esp
e01066fe:	8b 7d 0c 	movl	12(%ebp), %edi
e0106701:	57 	pushl	%edi
e0106702:	6a 25 	pushl	$37
e0106704:	ff 55 08 	calll	*8(%ebp)
e0106707:	83 c4 10 	addl	$16, %esp
e010670a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e0106710:	89 d8 	movl	%ebx, %eax
e0106712:	c1 e8 03 	shrl	$3, %eax
e0106715:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e010671c:	84 c0 	testb	%al, %al
e010671e:	75 0a 	jne	10 <vprintfmt+0x3aa>
e0106720:	80 3b 25 	cmpb	$37, (%ebx)
e0106723:	8d 5b ff 	leal	-1(%ebx), %ebx
e0106726:	75 e8 	jne	-24 <vprintfmt+0x390>
e0106728:	eb 0e 	jmp	14 <vprintfmt+0x3b8>
e010672a:	89 d9 	movl	%ebx, %ecx
e010672c:	80 e1 07 	andb	$7, %cl
e010672f:	38 c1 	cmpb	%al, %cl
e0106731:	7c ed 	jl	-19 <vprintfmt+0x3a0>
e0106733:	e9 bc 03 00 00 	jmp	956 <vprintfmt+0x774>
e0106738:	83 c3 02 	addl	$2, %ebx
e010673b:	89 d9 	movl	%ebx, %ecx
e010673d:	e9 d6 fc ff ff 	jmp	-810 <vprintfmt+0x98>
e0106742:	8b 46 28 	movl	40(%esi), %eax
e0106745:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010674b:	84 c0 	testb	%al, %al
e010674d:	0f 85 9d 02 00 00 	jne	669 <vprintfmt+0x670>
e0106753:	8b 56 14 	movl	20(%esi), %edx
e0106756:	8b 02 	movl	(%edx), %eax
e0106758:	8d 48 04 	leal	4(%eax), %ecx
e010675b:	89 0a 	movl	%ecx, (%edx)
e010675d:	89 c1 	movl	%eax, %ecx
e010675f:	c1 e9 03 	shrl	$3, %ecx
e0106762:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0106768:	84 c9 	testb	%cl, %cl
e010676a:	8b 7d 0c 	movl	12(%ebp), %edi
e010676d:	0f 85 93 02 00 00 	jne	659 <vprintfmt+0x686>
e0106773:	8b 4e 10 	movl	16(%esi), %ecx
e0106776:	89 cb 	movl	%ecx, %ebx
e0106778:	43 	incl	%ebx
e0106779:	83 ec 08 	subl	$8, %esp
e010677c:	57 	pushl	%edi
e010677d:	ff 30 	pushl	(%eax)
e010677f:	e9 8c fc ff ff 	jmp	-884 <vprintfmt+0x90>
e0106784:	8b 4e 14 	movl	20(%esi), %ecx
e0106787:	e8 f4 04 00 00 	calll	1268 <getint>
e010678c:	89 c3 	movl	%eax, %ebx
e010678e:	89 d7 	movl	%edx, %edi
e0106790:	85 d2 	testl	%edx, %edx
e0106792:	78 73 	js	115 <vprintfmt+0x487>
e0106794:	89 5e 1c 	movl	%ebx, 28(%esi)
e0106797:	89 7e 20 	movl	%edi, 32(%esi)
e010679a:	e9 85 00 00 00 	jmp	133 <vprintfmt+0x4a4>
e010679f:	8b 46 28 	movl	40(%esi), %eax
e01067a2:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01067a8:	84 c0 	testb	%al, %al
e01067aa:	0f 85 6b 02 00 00 	jne	619 <vprintfmt+0x69b>
e01067b0:	8b 56 14 	movl	20(%esi), %edx
e01067b3:	8b 02 	movl	(%edx), %eax
e01067b5:	8d 48 04 	leal	4(%eax), %ecx
e01067b8:	89 0a 	movl	%ecx, (%edx)
e01067ba:	89 c1 	movl	%eax, %ecx
e01067bc:	c1 e9 03 	shrl	$3, %ecx
e01067bf:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01067c5:	84 c9 	testb	%cl, %cl
e01067c7:	0f 85 64 02 00 00 	jne	612 <vprintfmt+0x6b1>
e01067cd:	8b 4e 10 	movl	16(%esi), %ecx
e01067d0:	89 cb 	movl	%ecx, %ebx
e01067d2:	43 	incl	%ebx
e01067d3:	8b 08 	movl	(%eax), %ecx
e01067d5:	89 c8 	movl	%ecx, %eax
e01067d7:	f7 d8 	negl	%eax
e01067d9:	0f 4c c1 	cmovll	%ecx, %eax
e01067dc:	83 f8 07 	cmpl	$7, %eax
e01067df:	8b 7d 0c 	movl	12(%ebp), %edi
e01067e2:	7f 0a 	jg	10 <vprintfmt+0x46e>
e01067e4:	74 08 	je	8 <vprintfmt+0x46e>
e01067e6:	85 c0 	testl	%eax, %eax
e01067e8:	0f 85 5d 01 00 00 	jne	349 <vprintfmt+0x5cb>
e01067ee:	50 	pushl	%eax
e01067ef:	68 00 d9 10 e0 	pushl	$3759200512
e01067f4:	57 	pushl	%edi
e01067f5:	ff 75 08 	pushl	8(%ebp)
e01067f8:	e8 93 03 00 00 	calll	915 <printfmt>
e01067fd:	83 c4 10 	addl	$16, %esp
e0106800:	89 d9 	movl	%ebx, %ecx
e0106802:	e9 11 fc ff ff 	jmp	-1007 <vprintfmt+0x98>
e0106807:	83 ec 08 	subl	$8, %esp
e010680a:	ff 75 0c 	pushl	12(%ebp)
e010680d:	6a 2d 	pushl	$45
e010680f:	ff 55 08 	calll	*8(%ebp)
e0106812:	83 c4 10 	addl	$16, %esp
e0106815:	f7 db 	negl	%ebx
e0106817:	89 5e 1c 	movl	%ebx, 28(%esi)
e010681a:	b8 00 00 00 00 	movl	$0, %eax
e010681f:	19 f8 	sbbl	%edi, %eax
e0106821:	89 46 20 	movl	%eax, 32(%esi)
e0106824:	8b 5e 18 	movl	24(%esi), %ebx
e0106827:	bf 0a 00 00 00 	movl	$10, %edi
e010682c:	e9 4e fe ff ff 	jmp	-434 <vprintfmt+0x2ff>
e0106831:	83 ec 08 	subl	$8, %esp
e0106834:	ff 76 1c 	pushl	28(%esi)
e0106837:	89 56 2c 	movl	%edx, 44(%esi)
e010683a:	52 	pushl	%edx
e010683b:	e8 30 2d 00 00 	calll	11568 <__wrap_strnlen>
e0106840:	83 c4 10 	addl	$16, %esp
e0106843:	29 c3 	subl	%eax, %ebx
e0106845:	7e 2b 	jle	43 <vprintfmt+0x4f2>
e0106847:	0f b6 46 24 	movzbl	36(%esi), %eax
e010684b:	89 46 24 	movl	%eax, 36(%esi)
e010684e:	8b 7d 0c 	movl	12(%ebp), %edi
e0106851:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010685b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0106860:	83 ec 08 	subl	$8, %esp
e0106863:	57 	pushl	%edi
e0106864:	ff 76 24 	pushl	36(%esi)
e0106867:	ff 55 08 	calll	*8(%ebp)
e010686a:	83 c4 10 	addl	$16, %esp
e010686d:	4b 	decl	%ebx
e010686e:	7f f0 	jg	-16 <vprintfmt+0x4e0>
e0106870:	31 db 	xorl	%ebx, %ebx
e0106872:	8b 4e 10 	movl	16(%esi), %ecx
e0106875:	8b 56 2c 	movl	44(%esi), %edx
e0106878:	89 d0 	movl	%edx, %eax
e010687a:	c1 e8 03 	shrl	$3, %eax
e010687d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106883:	84 c0 	testb	%al, %al
e0106885:	0f 85 50 01 00 00 	jne	336 <vprintfmt+0x65b>
e010688b:	8a 02 	movb	(%edx), %al
e010688d:	84 c0 	testb	%al, %al
e010688f:	74 7e 	je	126 <vprintfmt+0x58f>
e0106891:	42 	incl	%edx
e0106892:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010689c:	0f 1f 40 00 	nopl	(%eax)
e01068a0:	89 d7 	movl	%edx, %edi
e01068a2:	8b 56 1c 	movl	28(%esi), %edx
e01068a5:	85 d2 	testl	%edx, %edx
e01068a7:	78 08 	js	8 <vprintfmt+0x531>
e01068a9:	85 d2 	testl	%edx, %edx
e01068ab:	74 62 	je	98 <vprintfmt+0x58f>
e01068ad:	4a 	decl	%edx
e01068ae:	89 56 1c 	movl	%edx, 28(%esi)
e01068b1:	0f be c0 	movsbl	%al, %eax
e01068b4:	83 7e 20 00 	cmpl	$0, 32(%esi)
e01068b8:	74 08 	je	8 <vprintfmt+0x542>
e01068ba:	3c 20 	cmpb	$32, %al
e01068bc:	7c 12 	jl	18 <vprintfmt+0x550>
e01068be:	3c 7f 	cmpb	$127, %al
e01068c0:	74 0e 	je	14 <vprintfmt+0x550>
e01068c2:	83 ec 08 	subl	$8, %esp
e01068c5:	ff 75 0c 	pushl	12(%ebp)
e01068c8:	50 	pushl	%eax
e01068c9:	eb 0d 	jmp	13 <vprintfmt+0x558>
e01068cb:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e01068d0:	83 ec 08 	subl	$8, %esp
e01068d3:	ff 75 0c 	pushl	12(%ebp)
e01068d6:	6a 3f 	pushl	$63
e01068d8:	ff 55 08 	calll	*8(%ebp)
e01068db:	83 c4 10 	addl	$16, %esp
e01068de:	89 fa 	movl	%edi, %edx
e01068e0:	89 f8 	movl	%edi, %eax
e01068e2:	c1 e8 03 	shrl	$3, %eax
e01068e5:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01068ec:	84 c0 	testb	%al, %al
e01068ee:	8b 4e 10 	movl	16(%esi), %ecx
e01068f1:	75 0b 	jne	11 <vprintfmt+0x57e>
e01068f3:	4b 	decl	%ebx
e01068f4:	0f b6 02 	movzbl	(%edx), %eax
e01068f7:	42 	incl	%edx
e01068f8:	84 c0 	testb	%al, %al
e01068fa:	75 a4 	jne	-92 <vprintfmt+0x520>
e01068fc:	eb 11 	jmp	17 <vprintfmt+0x58f>
e01068fe:	89 d1 	movl	%edx, %ecx
e0106900:	80 e1 07 	andb	$7, %cl
e0106903:	38 c1 	cmpb	%al, %cl
e0106905:	8b 4e 10 	movl	16(%esi), %ecx
e0106908:	7c e9 	jl	-23 <vprintfmt+0x573>
e010690a:	e9 f1 01 00 00 	jmp	497 <vprintfmt+0x780>
e010690f:	41 	incl	%ecx
e0106910:	85 db 	testl	%ebx, %ebx
e0106912:	8b 7d 0c 	movl	12(%ebp), %edi
e0106915:	0f 8e fd fa ff ff 	jle	-1283 <vprintfmt+0x98>
e010691b:	89 4e 10 	movl	%ecx, 16(%esi)
e010691e:	89 df 	movl	%ebx, %edi
e0106920:	8b 5d 08 	movl	8(%ebp), %ebx
e0106923:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010692d:	0f 1f 00 	nopl	(%eax)
e0106930:	83 ec 08 	subl	$8, %esp
e0106933:	ff 75 0c 	pushl	12(%ebp)
e0106936:	6a 20 	pushl	$32
e0106938:	ff d3 	calll	*%ebx
e010693a:	83 c4 10 	addl	$16, %esp
e010693d:	4f 	decl	%edi
e010693e:	7f f0 	jg	-16 <vprintfmt+0x5b0>
e0106940:	8b 4e 10 	movl	16(%esi), %ecx
e0106943:	8b 7d 0c 	movl	12(%ebp), %edi
e0106946:	e9 cd fa ff ff 	jmp	-1331 <vprintfmt+0x98>
e010694b:	8d 04 85 c0 d8 10 e0 	leal	-535766848(,%eax,4), %eax
e0106952:	89 c1 	movl	%eax, %ecx
e0106954:	c1 e9 03 	shrl	$3, %ecx
e0106957:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e010695d:	84 c9 	testb	%cl, %cl
e010695f:	0f 85 e1 00 00 00 	jne	225 <vprintfmt+0x6c6>
e0106965:	ff 30 	pushl	(%eax)
e0106967:	68 40 d9 10 e0 	pushl	$3759200576
e010696c:	e9 83 fe ff ff 	jmp	-381 <vprintfmt+0x474>
e0106971:	89 ca 	movl	%ecx, %edx
e0106973:	80 e1 07 	andb	$7, %cl
e0106976:	38 c1 	cmpb	%al, %cl
e0106978:	89 d1 	movl	%edx, %ecx
e010697a:	0f 8c ab fa ff ff 	jl	-1365 <vprintfmt+0xab>
e0106980:	e9 87 01 00 00 	jmp	391 <vprintfmt+0x78c>
e0106985:	8b 4e 14 	movl	20(%esi), %ecx
e0106988:	80 e1 07 	andb	$7, %cl
e010698b:	80 c1 03 	addb	$3, %cl
e010698e:	38 c1 	cmpb	%al, %cl
e0106990:	0f 8c 93 fc ff ff 	jl	-877 <vprintfmt+0x2a9>
e0106996:	e9 7d 01 00 00 	jmp	381 <vprintfmt+0x798>
e010699b:	89 c2 	movl	%eax, %edx
e010699d:	80 e2 07 	andb	$7, %dl
e01069a0:	80 c2 03 	addb	$3, %dl
e01069a3:	38 ca 	cmpb	%cl, %dl
e01069a5:	0f 8c 9b fc ff ff 	jl	-869 <vprintfmt+0x2c6>
e01069ab:	e9 76 01 00 00 	jmp	374 <vprintfmt+0x7a6>
e01069b0:	8b 4e 14 	movl	20(%esi), %ecx
e01069b3:	80 e1 07 	andb	$7, %cl
e01069b6:	80 c1 03 	addb	$3, %cl
e01069b9:	38 c1 	cmpb	%al, %cl
e01069bb:	0f 8c f8 fc ff ff 	jl	-776 <vprintfmt+0x339>
e01069c1:	e9 6c 01 00 00 	jmp	364 <vprintfmt+0x7b2>
e01069c6:	89 c2 	movl	%eax, %edx
e01069c8:	80 e2 07 	andb	$7, %dl
e01069cb:	80 c2 03 	addb	$3, %dl
e01069ce:	38 ca 	cmpb	%cl, %dl
e01069d0:	0f 8c 03 fd ff ff 	jl	-765 <vprintfmt+0x359>
e01069d6:	e9 65 01 00 00 	jmp	357 <vprintfmt+0x7c0>
e01069db:	89 d1 	movl	%edx, %ecx
e01069dd:	80 e1 07 	andb	$7, %cl
e01069e0:	38 c1 	cmpb	%al, %cl
e01069e2:	8b 4e 10 	movl	16(%esi), %ecx
e01069e5:	0f 8c a0 fe ff ff 	jl	-352 <vprintfmt+0x50b>
e01069eb:	e9 5c 01 00 00 	jmp	348 <vprintfmt+0x7cc>
e01069f0:	8b 4e 14 	movl	20(%esi), %ecx
e01069f3:	80 e1 07 	andb	$7, %cl
e01069f6:	80 c1 03 	addb	$3, %cl
e01069f9:	38 c1 	cmpb	%al, %cl
e01069fb:	0f 8c 52 fd ff ff 	jl	-686 <vprintfmt+0x3d3>
e0106a01:	e9 52 01 00 00 	jmp	338 <vprintfmt+0x7d8>
e0106a06:	89 c2 	movl	%eax, %edx
e0106a08:	80 e2 07 	andb	$7, %dl
e0106a0b:	80 c2 03 	addb	$3, %dl
e0106a0e:	38 ca 	cmpb	%cl, %dl
e0106a10:	0f 8c 5d fd ff ff 	jl	-675 <vprintfmt+0x3f3>
e0106a16:	e9 4b 01 00 00 	jmp	331 <vprintfmt+0x7e6>
e0106a1b:	8b 4e 14 	movl	20(%esi), %ecx
e0106a1e:	80 e1 07 	andb	$7, %cl
e0106a21:	80 c1 03 	addb	$3, %cl
e0106a24:	38 c1 	cmpb	%al, %cl
e0106a26:	0f 8c 84 fd ff ff 	jl	-636 <vprintfmt+0x430>
e0106a2c:	e9 41 01 00 00 	jmp	321 <vprintfmt+0x7f2>
e0106a31:	89 c2 	movl	%eax, %edx
e0106a33:	80 e2 07 	andb	$7, %dl
e0106a36:	80 c2 03 	addb	$3, %dl
e0106a39:	38 ca 	cmpb	%cl, %dl
e0106a3b:	0f 8c 8c fd ff ff 	jl	-628 <vprintfmt+0x44d>
e0106a41:	e9 3a 01 00 00 	jmp	314 <vprintfmt+0x800>
e0106a46:	89 c2 	movl	%eax, %edx
e0106a48:	80 e2 07 	andb	$7, %dl
e0106a4b:	80 c2 03 	addb	$3, %dl
e0106a4e:	38 ca 	cmpb	%cl, %dl
e0106a50:	0f 8c 0f ff ff ff 	jl	-241 <vprintfmt+0x5e5>
e0106a56:	83 ec 0c 	subl	$12, %esp
e0106a59:	50 	pushl	%eax
e0106a5a:	e8 31 1d 00 00 	calll	7473 <__asan_report_load4>
e0106a5f:	83 c4 10 	addl	$16, %esp
e0106a62:	8b 46 34 	movl	52(%esi), %eax
e0106a65:	c7 00 0e 36 e0 45 	movl	$1172321806, (%eax)
e0106a6b:	8b 46 38 	movl	56(%esi), %eax
e0106a6e:	85 c0 	testl	%eax, %eax
e0106a70:	74 1f 	je	31 <vprintfmt+0x711>
e0106a72:	8b 4e 30 	movl	48(%esi), %ecx
e0106a75:	c7 81 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%ecx)
e0106a7f:	c7 81 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%ecx)
e0106a89:	8b 40 3c 	movl	60(%eax), %eax
e0106a8c:	c6 00 00 	movb	$0, (%eax)
e0106a8f:	eb 0d 	jmp	13 <vprintfmt+0x71e>
e0106a91:	8b 46 30 	movl	48(%esi), %eax
e0106a94:	c7 80 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%eax)
e0106a9e:	8d 65 f4 	leal	-12(%ebp), %esp
e0106aa1:	5e 	popl	%esi
e0106aa2:	5f 	popl	%edi
e0106aa3:	5b 	popl	%ebx
e0106aa4:	5d 	popl	%ebp
e0106aa5:	c3 	retl
e0106aa6:	89 d1 	movl	%edx, %ecx
e0106aa8:	80 e1 07 	andb	$7, %cl
e0106aab:	80 c1 03 	addb	$3, %cl
e0106aae:	38 c1 	cmpb	%al, %cl
e0106ab0:	0f 8c 46 f9 ff ff 	jl	-1722 <vprintfmt+0x7c>
e0106ab6:	83 ec 0c 	subl	$12, %esp
e0106ab9:	52 	pushl	%edx
e0106aba:	e8 f1 1c 00 00 	calll	7409 <__asan_report_store4>
e0106abf:	83 c4 10 	addl	$16, %esp
e0106ac2:	83 ec 0c 	subl	$12, %esp
e0106ac5:	51 	pushl	%ecx
e0106ac6:	e8 25 1c 00 00 	calll	7205 <__asan_report_load1>
e0106acb:	83 c4 10 	addl	$16, %esp
e0106ace:	83 ec 0c 	subl	$12, %esp
e0106ad1:	53 	pushl	%ebx
e0106ad2:	e8 19 1c 00 00 	calll	7193 <__asan_report_load1>
e0106ad7:	83 c4 10 	addl	$16, %esp
e0106ada:	83 ec 0c 	subl	$12, %esp
e0106add:	ff 76 14 	pushl	20(%esi)
e0106ae0:	e8 ab 1c 00 00 	calll	7339 <__asan_report_load4>
e0106ae5:	83 c4 10 	addl	$16, %esp
e0106ae8:	83 ec 0c 	subl	$12, %esp
e0106aeb:	50 	pushl	%eax
e0106aec:	e8 9f 1c 00 00 	calll	7327 <__asan_report_load4>
e0106af1:	83 c4 10 	addl	$16, %esp
e0106af4:	83 ec 0c 	subl	$12, %esp
e0106af7:	53 	pushl	%ebx
e0106af8:	e8 f3 1b 00 00 	calll	7155 <__asan_report_load1>
e0106afd:	83 c4 10 	addl	$16, %esp
e0106b00:	83 ec 0c 	subl	$12, %esp
e0106b03:	52 	pushl	%edx
e0106b04:	e8 e7 1b 00 00 	calll	7143 <__asan_report_load1>
e0106b09:	83 c4 10 	addl	$16, %esp
e0106b0c:	83 ec 0c 	subl	$12, %esp
e0106b0f:	51 	pushl	%ecx
e0106b10:	e8 db 1b 00 00 	calll	7131 <__asan_report_load1>
e0106b15:	83 c4 10 	addl	$16, %esp
e0106b18:	83 ec 0c 	subl	$12, %esp
e0106b1b:	ff 76 14 	pushl	20(%esi)
e0106b1e:	e8 6d 1c 00 00 	calll	7277 <__asan_report_load4>
e0106b23:	83 c4 10 	addl	$16, %esp
e0106b26:	83 ec 0c 	subl	$12, %esp
e0106b29:	50 	pushl	%eax
e0106b2a:	e8 61 1c 00 00 	calll	7265 <__asan_report_load4>
e0106b2f:	83 c4 10 	addl	$16, %esp
e0106b32:	83 ec 0c 	subl	$12, %esp
e0106b35:	ff 76 14 	pushl	20(%esi)
e0106b38:	e8 53 1c 00 00 	calll	7251 <__asan_report_load4>
e0106b3d:	83 c4 10 	addl	$16, %esp
e0106b40:	83 ec 0c 	subl	$12, %esp
e0106b43:	50 	pushl	%eax
e0106b44:	e8 47 1c 00 00 	calll	7239 <__asan_report_load4>
e0106b49:	83 c4 10 	addl	$16, %esp
e0106b4c:	83 ec 0c 	subl	$12, %esp
e0106b4f:	52 	pushl	%edx
e0106b50:	e8 9b 1b 00 00 	calll	7067 <__asan_report_load1>
e0106b55:	83 c4 10 	addl	$16, %esp
e0106b58:	83 ec 0c 	subl	$12, %esp
e0106b5b:	ff 76 14 	pushl	20(%esi)
e0106b5e:	e8 2d 1c 00 00 	calll	7213 <__asan_report_load4>
e0106b63:	83 c4 10 	addl	$16, %esp
e0106b66:	83 ec 0c 	subl	$12, %esp
e0106b69:	50 	pushl	%eax
e0106b6a:	e8 21 1c 00 00 	calll	7201 <__asan_report_load4>
e0106b6f:	83 c4 10 	addl	$16, %esp
e0106b72:	83 ec 0c 	subl	$12, %esp
e0106b75:	ff 76 14 	pushl	20(%esi)
e0106b78:	e8 13 1c 00 00 	calll	7187 <__asan_report_load4>
e0106b7d:	83 c4 10 	addl	$16, %esp
e0106b80:	83 ec 0c 	subl	$12, %esp
e0106b83:	50 	pushl	%eax
e0106b84:	e8 07 1c 00 00 	calll	7175 <__asan_report_load4>
e0106b89:	83 c4 10 	addl	$16, %esp
e0106b8c:	0f 1f 40 00 	nopl	(%eax)

00000000e0106b90 printfmt:
e0106b90:	55 	pushl	%ebp
e0106b91:	89 e5 	movl	%esp, %ebp
e0106b93:	53 	pushl	%ebx
e0106b94:	57 	pushl	%edi
e0106b95:	56 	pushl	%esi
e0106b96:	83 e4 e0 	andl	$-32, %esp
e0106b99:	83 ec 40 	subl	$64, %esp
e0106b9c:	89 e6 	movl	%esp, %esi
e0106b9e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0106ba5:	74 0f 	je	15 <printfmt+0x26>
e0106ba7:	83 ec 0c 	subl	$12, %esp
e0106baa:	6a 20 	pushl	$32
e0106bac:	e8 df 1d 00 00 	calll	7647 <__asan_stack_malloc_0>
e0106bb1:	83 c4 10 	addl	$16, %esp
e0106bb4:	eb 02 	jmp	2 <printfmt+0x28>
e0106bb6:	31 c0 	xorl	%eax, %eax
e0106bb8:	85 c0 	testl	%eax, %eax
e0106bba:	89 46 18 	movl	%eax, 24(%esi)
e0106bbd:	89 c3 	movl	%eax, %ebx
e0106bbf:	75 0a 	jne	10 <printfmt+0x3b>
e0106bc1:	89 e3 	movl	%esp, %ebx
e0106bc3:	83 c3 e0 	addl	$-32, %ebx
e0106bc6:	83 e3 e0 	andl	$-32, %ebx
e0106bc9:	89 dc 	movl	%ebx, %esp
e0106bcb:	89 5e 1c 	movl	%ebx, 28(%esi)
e0106bce:	8d 43 10 	leal	16(%ebx), %eax
e0106bd1:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e0106bd7:	c7 43 04 14 a2 10 e0 	movl	$3759186452, 4(%ebx)
e0106bde:	c7 43 08 90 6b 10 e0 	movl	$3759172496, 8(%ebx)
e0106be5:	89 df 	movl	%ebx, %edi
e0106be7:	c1 ef 03 	shrl	$3, %edi
e0106bea:	c7 87 00 00 80 de f1 f1 f8 f3 	movl	$4093178353, -562036736(%edi)
e0106bf4:	c6 87 02 00 80 de 04 	movb	$4, -562036734(%edi)
e0106bfb:	8d 4d 14 	leal	20(%ebp), %ecx
e0106bfe:	89 4b 10 	movl	%ecx, 16(%ebx)
e0106c01:	89 c1 	movl	%eax, %ecx
e0106c03:	c1 e9 03 	shrl	$3, %ecx
e0106c06:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0106c0c:	84 c9 	testb	%cl, %cl
e0106c0e:	75 56 	jne	86 <printfmt+0xd6>
e0106c10:	ff 73 10 	pushl	16(%ebx)
e0106c13:	ff 75 10 	pushl	16(%ebp)
e0106c16:	ff 75 0c 	pushl	12(%ebp)
e0106c19:	ff 75 08 	pushl	8(%ebp)
e0106c1c:	e8 5f f7 ff ff 	calll	-2209 <vprintfmt>
e0106c21:	83 c4 10 	addl	$16, %esp
e0106c24:	c6 87 02 00 80 de f8 	movb	$-8, -562036734(%edi)
e0106c2b:	c7 03 0e 36 e0 45 	movl	$1172321806, (%ebx)
e0106c31:	8b 46 18 	movl	24(%esi), %eax
e0106c34:	85 c0 	testl	%eax, %eax
e0106c36:	74 1c 	je	28 <printfmt+0xc4>
e0106c38:	c7 87 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edi)
e0106c42:	c7 87 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edi)
e0106c4c:	8b 40 3c 	movl	60(%eax), %eax
e0106c4f:	c6 00 00 	movb	$0, (%eax)
e0106c52:	eb 0a 	jmp	10 <printfmt+0xce>
e0106c54:	c7 87 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edi)
e0106c5e:	8d 65 f4 	leal	-12(%ebp), %esp
e0106c61:	5e 	popl	%esi
e0106c62:	5f 	popl	%edi
e0106c63:	5b 	popl	%ebx
e0106c64:	5d 	popl	%ebp
e0106c65:	c3 	retl
e0106c66:	89 c2 	movl	%eax, %edx
e0106c68:	80 e2 07 	andb	$7, %dl
e0106c6b:	80 c2 03 	addb	$3, %dl
e0106c6e:	38 ca 	cmpb	%cl, %dl
e0106c70:	7c 9e 	jl	-98 <printfmt+0x80>
e0106c72:	83 ec 0c 	subl	$12, %esp
e0106c75:	50 	pushl	%eax
e0106c76:	e8 15 1b 00 00 	calll	6933 <__asan_report_load4>
e0106c7b:	83 c4 10 	addl	$16, %esp
e0106c7e:	66 90 	nop

00000000e0106c80 getint:
e0106c80:	55 	pushl	%ebp
e0106c81:	89 e5 	movl	%esp, %ebp
e0106c83:	53 	pushl	%ebx
e0106c84:	83 ec 14 	subl	$20, %esp
e0106c87:	89 c8 	movl	%ecx, %eax
e0106c89:	c1 e8 03 	shrl	$3, %eax
e0106c8c:	8a 98 00 00 80 de 	movb	-562036736(%eax), %bl
e0106c92:	84 db 	testb	%bl, %bl
e0106c94:	75 69 	jne	105 <getint+0x7f>
e0106c96:	83 fa 02 	cmpl	$2, %edx
e0106c99:	8b 11 	movl	(%ecx), %edx
e0106c9b:	7c 37 	jl	55 <getint+0x54>
e0106c9d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106ca3:	84 c0 	testb	%al, %al
e0106ca5:	75 6c 	jne	108 <getint+0x93>
e0106ca7:	8d 42 08 	leal	8(%edx), %eax
e0106caa:	89 01 	movl	%eax, (%ecx)
e0106cac:	89 d0 	movl	%edx, %eax
e0106cae:	c1 e8 03 	shrl	$3, %eax
e0106cb1:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106cb7:	84 c0 	testb	%al, %al
e0106cb9:	75 6c 	jne	108 <getint+0xa7>
e0106cbb:	8d 42 07 	leal	7(%edx), %eax
e0106cbe:	89 c1 	movl	%eax, %ecx
e0106cc0:	c1 e9 03 	shrl	$3, %ecx
e0106cc3:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0106cc9:	84 c9 	testb	%cl, %cl
e0106ccb:	75 73 	jne	115 <getint+0xc0>
e0106ccd:	8b 02 	movl	(%edx), %eax
e0106ccf:	8b 52 04 	movl	4(%edx), %edx
e0106cd2:	eb 25 	jmp	37 <getint+0x79>
e0106cd4:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106cda:	84 c0 	testb	%al, %al
e0106cdc:	75 7b 	jne	123 <getint+0xd9>
e0106cde:	8d 42 04 	leal	4(%edx), %eax
e0106ce1:	89 01 	movl	%eax, (%ecx)
e0106ce3:	89 d0 	movl	%edx, %eax
e0106ce5:	c1 e8 03 	shrl	$3, %eax
e0106ce8:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106cee:	84 c0 	testb	%al, %al
e0106cf0:	75 7f 	jne	127 <getint+0xf1>
e0106cf2:	8b 02 	movl	(%edx), %eax
e0106cf4:	89 c2 	movl	%eax, %edx
e0106cf6:	c1 fa 1f 	sarl	$31, %edx
e0106cf9:	83 c4 14 	addl	$20, %esp
e0106cfc:	5b 	popl	%ebx
e0106cfd:	5d 	popl	%ebp
e0106cfe:	c3 	retl
e0106cff:	88 cf 	movb	%cl, %bh
e0106d01:	80 e7 07 	andb	$7, %bh
e0106d04:	80 c7 03 	addb	$3, %bh
e0106d07:	38 df 	cmpb	%bl, %bh
e0106d09:	7c 8b 	jl	-117 <getint+0x16>
e0106d0b:	89 0c 24 	movl	%ecx, (%esp)
e0106d0e:	e8 7d 1a 00 00 	calll	6781 <__asan_report_load4>
e0106d13:	88 cc 	movb	%cl, %ah
e0106d15:	80 e4 07 	andb	$7, %ah
e0106d18:	80 c4 03 	addb	$3, %ah
e0106d1b:	38 c4 	cmpb	%al, %ah
e0106d1d:	7c 88 	jl	-120 <getint+0x27>
e0106d1f:	89 0c 24 	movl	%ecx, (%esp)
e0106d22:	e8 89 1a 00 00 	calll	6793 <__asan_report_store4>
e0106d27:	89 d1 	movl	%edx, %ecx
e0106d29:	80 e1 07 	andb	$7, %cl
e0106d2c:	38 c1 	cmpb	%al, %cl
e0106d2e:	7c 8b 	jl	-117 <getint+0x3b>
e0106d30:	89 14 24 	movl	%edx, (%esp)
e0106d33:	c7 44 24 04 08 00 00 00 	movl	$8, 4(%esp)
e0106d3b:	e8 10 1b 00 00 	calll	6928 <__asan_report_load_n>
e0106d40:	88 c5 	movb	%al, %ch
e0106d42:	80 e5 07 	andb	$7, %ch
e0106d45:	38 cd 	cmpb	%cl, %ch
e0106d47:	7c 84 	jl	-124 <getint+0x4d>
e0106d49:	89 04 24 	movl	%eax, (%esp)
e0106d4c:	c7 44 24 04 08 00 00 00 	movl	$8, 4(%esp)
e0106d54:	e8 f7 1a 00 00 	calll	6903 <__asan_report_load_n>
e0106d59:	88 cc 	movb	%cl, %ah
e0106d5b:	80 e4 07 	andb	$7, %ah
e0106d5e:	80 c4 03 	addb	$3, %ah
e0106d61:	38 c4 	cmpb	%al, %ah
e0106d63:	0f 8c 75 ff ff ff 	jl	-139 <getint+0x5e>
e0106d69:	89 0c 24 	movl	%ecx, (%esp)
e0106d6c:	e8 3f 1a 00 00 	calll	6719 <__asan_report_store4>
e0106d71:	89 d1 	movl	%edx, %ecx
e0106d73:	80 e1 07 	andb	$7, %cl
e0106d76:	80 c1 03 	addb	$3, %cl
e0106d79:	38 c1 	cmpb	%al, %cl
e0106d7b:	0f 8c 71 ff ff ff 	jl	-143 <getint+0x72>
e0106d81:	89 14 24 	movl	%edx, (%esp)
e0106d84:	e8 07 1a 00 00 	calll	6663 <__asan_report_load4>
e0106d89:	0f 1f 80 00 00 00 00 	nopl	(%eax)

00000000e0106d90 getuint:
e0106d90:	55 	pushl	%ebp
e0106d91:	89 e5 	movl	%esp, %ebp
e0106d93:	53 	pushl	%ebx
e0106d94:	83 ec 14 	subl	$20, %esp
e0106d97:	89 c8 	movl	%ecx, %eax
e0106d99:	c1 e8 03 	shrl	$3, %eax
e0106d9c:	8a 98 00 00 80 de 	movb	-562036736(%eax), %bl
e0106da2:	84 db 	testb	%bl, %bl
e0106da4:	75 66 	jne	102 <getuint+0x7c>
e0106da6:	83 fa 02 	cmpl	$2, %edx
e0106da9:	8b 11 	movl	(%ecx), %edx
e0106dab:	7c 37 	jl	55 <getuint+0x54>
e0106dad:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106db3:	84 c0 	testb	%al, %al
e0106db5:	75 69 	jne	105 <getuint+0x90>
e0106db7:	8d 42 08 	leal	8(%edx), %eax
e0106dba:	89 01 	movl	%eax, (%ecx)
e0106dbc:	89 d0 	movl	%edx, %eax
e0106dbe:	c1 e8 03 	shrl	$3, %eax
e0106dc1:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106dc7:	84 c0 	testb	%al, %al
e0106dc9:	75 69 	jne	105 <getuint+0xa4>
e0106dcb:	8d 42 07 	leal	7(%edx), %eax
e0106dce:	89 c1 	movl	%eax, %ecx
e0106dd0:	c1 e9 03 	shrl	$3, %ecx
e0106dd3:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0106dd9:	84 c9 	testb	%cl, %cl
e0106ddb:	75 70 	jne	112 <getuint+0xbd>
e0106ddd:	8b 02 	movl	(%edx), %eax
e0106ddf:	8b 52 04 	movl	4(%edx), %edx
e0106de2:	eb 22 	jmp	34 <getuint+0x76>
e0106de4:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106dea:	84 c0 	testb	%al, %al
e0106dec:	75 78 	jne	120 <getuint+0xd6>
e0106dee:	8d 42 04 	leal	4(%edx), %eax
e0106df1:	89 01 	movl	%eax, (%ecx)
e0106df3:	89 d0 	movl	%edx, %eax
e0106df5:	c1 e8 03 	shrl	$3, %eax
e0106df8:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0106dfe:	84 c0 	testb	%al, %al
e0106e00:	75 7c 	jne	124 <getuint+0xee>
e0106e02:	8b 02 	movl	(%edx), %eax
e0106e04:	31 d2 	xorl	%edx, %edx
e0106e06:	83 c4 14 	addl	$20, %esp
e0106e09:	5b 	popl	%ebx
e0106e0a:	5d 	popl	%ebp
e0106e0b:	c3 	retl
e0106e0c:	88 cf 	movb	%cl, %bh
e0106e0e:	80 e7 07 	andb	$7, %bh
e0106e11:	80 c7 03 	addb	$3, %bh
e0106e14:	38 df 	cmpb	%bl, %bh
e0106e16:	7c 8e 	jl	-114 <getuint+0x16>
e0106e18:	89 0c 24 	movl	%ecx, (%esp)
e0106e1b:	e8 70 19 00 00 	calll	6512 <__asan_report_load4>
e0106e20:	88 cc 	movb	%cl, %ah
e0106e22:	80 e4 07 	andb	$7, %ah
e0106e25:	80 c4 03 	addb	$3, %ah
e0106e28:	38 c4 	cmpb	%al, %ah
e0106e2a:	7c 8b 	jl	-117 <getuint+0x27>
e0106e2c:	89 0c 24 	movl	%ecx, (%esp)
e0106e2f:	e8 7c 19 00 00 	calll	6524 <__asan_report_store4>
e0106e34:	89 d1 	movl	%edx, %ecx
e0106e36:	80 e1 07 	andb	$7, %cl
e0106e39:	38 c1 	cmpb	%al, %cl
e0106e3b:	7c 8e 	jl	-114 <getuint+0x3b>
e0106e3d:	89 14 24 	movl	%edx, (%esp)
e0106e40:	c7 44 24 04 08 00 00 00 	movl	$8, 4(%esp)
e0106e48:	e8 03 1a 00 00 	calll	6659 <__asan_report_load_n>
e0106e4d:	88 c5 	movb	%al, %ch
e0106e4f:	80 e5 07 	andb	$7, %ch
e0106e52:	38 cd 	cmpb	%cl, %ch
e0106e54:	7c 87 	jl	-121 <getuint+0x4d>
e0106e56:	89 04 24 	movl	%eax, (%esp)
e0106e59:	c7 44 24 04 08 00 00 00 	movl	$8, 4(%esp)
e0106e61:	e8 ea 19 00 00 	calll	6634 <__asan_report_load_n>
e0106e66:	88 cc 	movb	%cl, %ah
e0106e68:	80 e4 07 	andb	$7, %ah
e0106e6b:	80 c4 03 	addb	$3, %ah
e0106e6e:	38 c4 	cmpb	%al, %ah
e0106e70:	0f 8c 78 ff ff ff 	jl	-136 <getuint+0x5e>
e0106e76:	89 0c 24 	movl	%ecx, (%esp)
e0106e79:	e8 32 19 00 00 	calll	6450 <__asan_report_store4>
e0106e7e:	89 d1 	movl	%edx, %ecx
e0106e80:	80 e1 07 	andb	$7, %cl
e0106e83:	80 c1 03 	addb	$3, %cl
e0106e86:	38 c1 	cmpb	%al, %cl
e0106e88:	0f 8c 74 ff ff ff 	jl	-140 <getuint+0x72>
e0106e8e:	89 14 24 	movl	%edx, (%esp)
e0106e91:	e8 fa 18 00 00 	calll	6394 <__asan_report_load4>
e0106e96:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e0106ea0 printnum:
e0106ea0:	55 	pushl	%ebp
e0106ea1:	89 e5 	movl	%esp, %ebp
e0106ea3:	53 	pushl	%ebx
e0106ea4:	57 	pushl	%edi
e0106ea5:	56 	pushl	%esi
e0106ea6:	83 ec 0c 	subl	$12, %esp
e0106ea9:	89 d7 	movl	%edx, %edi
e0106eab:	89 4d f0 	movl	%ecx, -16(%ebp)
e0106eae:	8b 55 0c 	movl	12(%ebp), %edx
e0106eb1:	8b 4d 08 	movl	8(%ebp), %ecx
e0106eb4:	8b 75 10 	movl	16(%ebp), %esi
e0106eb7:	39 f1 	cmpl	%esi, %ecx
e0106eb9:	89 d0 	movl	%edx, %eax
e0106ebb:	83 d8 00 	sbbl	$0, %eax
e0106ebe:	8b 45 18 	movl	24(%ebp), %eax
e0106ec1:	8b 5d 14 	movl	20(%ebp), %ebx
e0106ec4:	72 49 	jb	73 <printnum+0x6f>
e0106ec6:	6a 00 	pushl	$0
e0106ec8:	56 	pushl	%esi
e0106ec9:	52 	pushl	%edx
e0106eca:	51 	pushl	%ecx
e0106ecb:	89 c6 	movl	%eax, %esi
e0106ecd:	e8 fe 2d 00 00 	calll	11774 <__udivdi3>
e0106ed2:	83 c4 10 	addl	$16, %esp
e0106ed5:	89 45 ec 	movl	%eax, -20(%ebp)
e0106ed8:	89 d0 	movl	%edx, %eax
e0106eda:	4b 	decl	%ebx
e0106edb:	83 ec 0c 	subl	$12, %esp
e0106ede:	8b 4d f0 	movl	-16(%ebp), %ecx
e0106ee1:	89 fa 	movl	%edi, %edx
e0106ee3:	56 	pushl	%esi
e0106ee4:	53 	pushl	%ebx
e0106ee5:	ff 75 10 	pushl	16(%ebp)
e0106ee8:	50 	pushl	%eax
e0106ee9:	ff 75 ec 	pushl	-20(%ebp)
e0106eec:	e8 af ff ff ff 	calll	-81 <printnum>
e0106ef1:	83 c4 20 	addl	$32, %esp
e0106ef4:	eb 1c 	jmp	28 <printnum+0x72>
e0106ef6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0106f00:	83 ec 08 	subl	$8, %esp
e0106f03:	57 	pushl	%edi
e0106f04:	50 	pushl	%eax
e0106f05:	89 c6 	movl	%eax, %esi
e0106f07:	ff 55 f0 	calll	*-16(%ebp)
e0106f0a:	89 f0 	movl	%esi, %eax
e0106f0c:	83 c4 10 	addl	$16, %esp
e0106f0f:	4b 	decl	%ebx
e0106f10:	7f ee 	jg	-18 <printnum+0x60>
e0106f12:	89 fe 	movl	%edi, %esi
e0106f14:	8b 7d f0 	movl	-16(%ebp), %edi
e0106f17:	6a 00 	pushl	$0
e0106f19:	ff 75 10 	pushl	16(%ebp)
e0106f1c:	ff 75 0c 	pushl	12(%ebp)
e0106f1f:	ff 75 08 	pushl	8(%ebp)
e0106f22:	e8 79 30 00 00 	calll	12409 <__umoddi3>
e0106f27:	83 c4 10 	addl	$16, %esp
e0106f2a:	8d 80 40 db 10 e0 	leal	-535766208(%eax), %eax
e0106f30:	89 c1 	movl	%eax, %ecx
e0106f32:	c1 e9 03 	shrl	$3, %ecx
e0106f35:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0106f3b:	84 c9 	testb	%cl, %cl
e0106f3d:	75 12 	jne	18 <printnum+0xb1>
e0106f3f:	0f be 00 	movsbl	(%eax), %eax
e0106f42:	83 ec 08 	subl	$8, %esp
e0106f45:	56 	pushl	%esi
e0106f46:	50 	pushl	%eax
e0106f47:	ff d7 	calll	*%edi
e0106f49:	83 c4 1c 	addl	$28, %esp
e0106f4c:	5e 	popl	%esi
e0106f4d:	5f 	popl	%edi
e0106f4e:	5b 	popl	%ebx
e0106f4f:	5d 	popl	%ebp
e0106f50:	c3 	retl
e0106f51:	89 c2 	movl	%eax, %edx
e0106f53:	80 e2 07 	andb	$7, %dl
e0106f56:	38 ca 	cmpb	%cl, %dl
e0106f58:	7c e5 	jl	-27 <printnum+0x9f>
e0106f5a:	83 ec 0c 	subl	$12, %esp
e0106f5d:	50 	pushl	%eax
e0106f5e:	e8 8d 17 00 00 	calll	6029 <__asan_report_load1>
e0106f63:	83 c4 10 	addl	$16, %esp
e0106f66:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e0106f70 vsnprintf:
e0106f70:	55 	pushl	%ebp
e0106f71:	89 e5 	movl	%esp, %ebp
e0106f73:	53 	pushl	%ebx
e0106f74:	57 	pushl	%edi
e0106f75:	56 	pushl	%esi
e0106f76:	83 e4 e0 	andl	$-32, %esp
e0106f79:	83 ec 40 	subl	$64, %esp
e0106f7c:	89 e6 	movl	%esp, %esi
e0106f7e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0106f85:	74 0f 	je	15 <vsnprintf+0x26>
e0106f87:	83 ec 0c 	subl	$12, %esp
e0106f8a:	6a 30 	pushl	$48
e0106f8c:	e8 ff 19 00 00 	calll	6655 <__asan_stack_malloc_0>
e0106f91:	83 c4 10 	addl	$16, %esp
e0106f94:	eb 02 	jmp	2 <vsnprintf+0x28>
e0106f96:	31 c0 	xorl	%eax, %eax
e0106f98:	85 c0 	testl	%eax, %eax
e0106f9a:	89 c3 	movl	%eax, %ebx
e0106f9c:	75 0a 	jne	10 <vsnprintf+0x38>
e0106f9e:	89 e3 	movl	%esp, %ebx
e0106fa0:	83 c3 d0 	addl	$-48, %ebx
e0106fa3:	83 e3 e0 	andl	$-32, %ebx
e0106fa6:	89 dc 	movl	%ebx, %esp
e0106fa8:	89 5e 1c 	movl	%ebx, 28(%esi)
e0106fab:	8d 4b 10 	leal	16(%ebx), %ecx
e0106fae:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e0106fb4:	c7 43 04 33 a2 10 e0 	movl	$3759186483, 4(%ebx)
e0106fbb:	c7 43 08 70 6f 10 e0 	movl	$3759173488, 8(%ebx)
e0106fc2:	89 df 	movl	%ebx, %edi
e0106fc4:	c1 ef 03 	shrl	$3, %edi
e0106fc7:	c7 87 00 00 80 de f1 f1 f8 f8 	movl	$4177064433, -562036736(%edi)
e0106fd1:	c7 87 02 00 80 de 00 04 f3 f3 	movl	$4092789760, -562036734(%edi)
e0106fdb:	89 ca 	movl	%ecx, %edx
e0106fdd:	c1 ea 03 	shrl	$3, %edx
e0106fe0:	89 56 10 	movl	%edx, 16(%esi)
e0106fe3:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0106fe9:	84 d2 	testb	%dl, %dl
e0106feb:	89 4e 08 	movl	%ecx, 8(%esi)
e0106fee:	0f 85 00 01 00 00 	jne	256 <vsnprintf+0x184>
e0106ff4:	89 7e 14 	movl	%edi, 20(%esi)
e0106ff7:	89 46 18 	movl	%eax, 24(%esi)
e0106ffa:	8b 45 08 	movl	8(%ebp), %eax
e0106ffd:	89 01 	movl	%eax, (%ecx)
e0106fff:	89 cf 	movl	%ecx, %edi
e0107001:	8d 49 04 	leal	4(%ecx), %ecx
e0107004:	89 ca 	movl	%ecx, %edx
e0107006:	c1 ea 03 	shrl	$3, %edx
e0107009:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e010700f:	84 d2 	testb	%dl, %dl
e0107011:	0f 85 fd 00 00 00 	jne	253 <vsnprintf+0x1a4>
e0107017:	8b 4d 0c 	movl	12(%ebp), %ecx
e010701a:	8d 54 08 ff 	leal	-1(%eax,%ecx), %edx
e010701e:	89 57 04 	movl	%edx, 4(%edi)
e0107021:	8d 4f 08 	leal	8(%edi), %ecx
e0107024:	89 cf 	movl	%ecx, %edi
e0107026:	c1 ef 03 	shrl	$3, %edi
e0107029:	8a 97 00 00 80 de 	movb	-562036736(%edi), %dl
e010702f:	84 d2 	testb	%dl, %dl
e0107031:	0f 85 f9 00 00 00 	jne	249 <vsnprintf+0x1c0>
e0107037:	c7 01 00 00 00 00 	movl	$0, (%ecx)
e010703d:	85 c0 	testl	%eax, %eax
e010703f:	b8 fd ff ff ff 	movl	$4294967293, %eax
e0107044:	74 5e 	je	94 <vsnprintf+0x134>
e0107046:	83 7d 0c 00 	cmpl	$0, 12(%ebp)
e010704a:	7e 58 	jle	88 <vsnprintf+0x134>
e010704c:	89 4e 0c 	movl	%ecx, 12(%esi)
e010704f:	ff 75 14 	pushl	20(%ebp)
e0107052:	ff 75 10 	pushl	16(%ebp)
e0107055:	ff 76 08 	pushl	8(%esi)
e0107058:	68 b0 71 10 e0 	pushl	$3759174064
e010705d:	e8 1e f3 ff ff 	calll	-3298 <vprintfmt>
e0107062:	83 c4 10 	addl	$16, %esp
e0107065:	8b 46 10 	movl	16(%esi), %eax
e0107068:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e010706e:	84 c0 	testb	%al, %al
e0107070:	0f 85 d6 00 00 00 	jne	214 <vsnprintf+0x1dc>
e0107076:	8b 46 08 	movl	8(%esi), %eax
e0107079:	8b 00 	movl	(%eax), %eax
e010707b:	89 c1 	movl	%eax, %ecx
e010707d:	c1 e9 03 	shrl	$3, %ecx
e0107080:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0107086:	84 c9 	testb	%cl, %cl
e0107088:	8b 56 0c 	movl	12(%esi), %edx
e010708b:	0f 85 da 00 00 00 	jne	218 <vsnprintf+0x1fb>
e0107091:	c6 00 00 	movb	$0, (%eax)
e0107094:	8a 87 00 00 80 de 	movb	-562036736(%edi), %al
e010709a:	84 c0 	testb	%al, %al
e010709c:	0f 85 e5 00 00 00 	jne	229 <vsnprintf+0x217>
e01070a2:	8b 02 	movl	(%edx), %eax
e01070a4:	8b 56 14 	movl	20(%esi), %edx
e01070a7:	66 c7 82 02 00 80 de f8 f8 	movw	$63736, -562036734(%edx)
e01070b0:	c7 03 0e 36 e0 45 	movl	$1172321806, (%ebx)
e01070b6:	8b 4e 18 	movl	24(%esi), %ecx
e01070b9:	85 c9 	testl	%ecx, %ecx
e01070bb:	74 1c 	je	28 <vsnprintf+0x169>
e01070bd:	c7 82 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edx)
e01070c7:	c7 82 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edx)
e01070d1:	8b 49 3c 	movl	60(%ecx), %ecx
e01070d4:	c6 01 00 	movb	$0, (%ecx)
e01070d7:	eb 13 	jmp	19 <vsnprintf+0x17c>
e01070d9:	c7 82 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edx)
e01070e3:	66 c7 82 04 00 80 de 00 00 	movw	$0, -562036732(%edx)
e01070ec:	8d 65 f4 	leal	-12(%ebp), %esp
e01070ef:	5e 	popl	%esi
e01070f0:	5f 	popl	%edi
e01070f1:	5b 	popl	%ebx
e01070f2:	5d 	popl	%ebp
e01070f3:	c3 	retl
e01070f4:	8b 4e 08 	movl	8(%esi), %ecx
e01070f7:	80 e1 07 	andb	$7, %cl
e01070fa:	80 c1 03 	addb	$3, %cl
e01070fd:	38 d1 	cmpb	%dl, %cl
e01070ff:	8b 4e 08 	movl	8(%esi), %ecx
e0107102:	0f 8c ec fe ff ff 	jl	-276 <vsnprintf+0x84>
e0107108:	83 ec 0c 	subl	$12, %esp
e010710b:	51 	pushl	%ecx
e010710c:	e8 9f 16 00 00 	calll	5791 <__asan_report_store4>
e0107111:	83 c4 10 	addl	$16, %esp
e0107114:	88 ce 	movb	%cl, %dh
e0107116:	80 e6 07 	andb	$7, %dh
e0107119:	80 c6 03 	addb	$3, %dh
e010711c:	38 d6 	cmpb	%dl, %dh
e010711e:	0f 8c f3 fe ff ff 	jl	-269 <vsnprintf+0xa7>
e0107124:	83 ec 0c 	subl	$12, %esp
e0107127:	51 	pushl	%ecx
e0107128:	e8 83 16 00 00 	calll	5763 <__asan_report_store4>
e010712d:	83 c4 10 	addl	$16, %esp
e0107130:	88 ce 	movb	%cl, %dh
e0107132:	80 e6 07 	andb	$7, %dh
e0107135:	80 c6 03 	addb	$3, %dh
e0107138:	38 d6 	cmpb	%dl, %dh
e010713a:	0f 8c f7 fe ff ff 	jl	-265 <vsnprintf+0xc7>
e0107140:	83 ec 0c 	subl	$12, %esp
e0107143:	51 	pushl	%ecx
e0107144:	e8 67 16 00 00 	calll	5735 <__asan_report_store4>
e0107149:	83 c4 10 	addl	$16, %esp
e010714c:	8b 4e 08 	movl	8(%esi), %ecx
e010714f:	80 e1 07 	andb	$7, %cl
e0107152:	80 c1 03 	addb	$3, %cl
e0107155:	38 c1 	cmpb	%al, %cl
e0107157:	0f 8c 19 ff ff ff 	jl	-231 <vsnprintf+0x106>
e010715d:	83 ec 0c 	subl	$12, %esp
e0107160:	ff 76 08 	pushl	8(%esi)
e0107163:	e8 28 16 00 00 	calll	5672 <__asan_report_load4>
e0107168:	83 c4 10 	addl	$16, %esp
e010716b:	89 c2 	movl	%eax, %edx
e010716d:	80 e2 07 	andb	$7, %dl
e0107170:	38 ca 	cmpb	%cl, %dl
e0107172:	8b 56 0c 	movl	12(%esi), %edx
e0107175:	0f 8c 16 ff ff ff 	jl	-234 <vsnprintf+0x121>
e010717b:	83 ec 0c 	subl	$12, %esp
e010717e:	50 	pushl	%eax
e010717f:	e8 ac 15 00 00 	calll	5548 <__asan_report_store1>
e0107184:	83 c4 10 	addl	$16, %esp
e0107187:	89 d1 	movl	%edx, %ecx
e0107189:	80 e1 07 	andb	$7, %cl
e010718c:	80 c1 03 	addb	$3, %cl
e010718f:	38 c1 	cmpb	%al, %cl
e0107191:	0f 8c 0b ff ff ff 	jl	-245 <vsnprintf+0x132>
e0107197:	83 ec 0c 	subl	$12, %esp
e010719a:	52 	pushl	%edx
e010719b:	e8 f0 15 00 00 	calll	5616 <__asan_report_load4>
e01071a0:	83 c4 10 	addl	$16, %esp
e01071a3:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01071ad:	0f 1f 00 	nopl	(%eax)

00000000e01071b0 sprintputch:
e01071b0:	55 	pushl	%ebp
e01071b1:	89 e5 	movl	%esp, %ebp
e01071b3:	53 	pushl	%ebx
e01071b4:	56 	pushl	%esi
e01071b5:	83 ec 10 	subl	$16, %esp
e01071b8:	8b 5d 0c 	movl	12(%ebp), %ebx
e01071bb:	8d 4b 08 	leal	8(%ebx), %ecx
e01071be:	89 c8 	movl	%ecx, %eax
e01071c0:	c1 e8 03 	shrl	$3, %eax
e01071c3:	8a 90 00 00 80 de 	movb	-562036736(%eax), %dl
e01071c9:	84 d2 	testb	%dl, %dl
e01071cb:	75 56 	jne	86 <sprintputch+0x73>
e01071cd:	ff 43 08 	incl	8(%ebx)
e01071d0:	89 da 	movl	%ebx, %edx
e01071d2:	c1 ea 03 	shrl	$3, %edx
e01071d5:	8a 8a 00 00 80 de 	movb	-562036736(%edx), %cl
e01071db:	84 c9 	testb	%cl, %cl
e01071dd:	75 56 	jne	86 <sprintputch+0x85>
e01071df:	8b 0b 	movl	(%ebx), %ecx
e01071e1:	89 de 	movl	%ebx, %esi
e01071e3:	8d 5b 04 	leal	4(%ebx), %ebx
e01071e6:	89 d8 	movl	%ebx, %eax
e01071e8:	c1 e8 03 	shrl	$3, %eax
e01071eb:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01071f1:	84 c0 	testb	%al, %al
e01071f3:	75 52 	jne	82 <sprintputch+0x97>
e01071f5:	3b 0b 	cmpl	(%ebx), %ecx
e01071f7:	73 23 	jae	35 <sprintputch+0x6c>
e01071f9:	8a 82 00 00 80 de 	movb	-562036736(%edx), %al
e01071ff:	84 c0 	testb	%al, %al
e0107201:	75 58 	jne	88 <sprintputch+0xab>
e0107203:	8d 41 01 	leal	1(%ecx), %eax
e0107206:	89 06 	movl	%eax, (%esi)
e0107208:	89 c8 	movl	%ecx, %eax
e010720a:	c1 e8 03 	shrl	$3, %eax
e010720d:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0107213:	84 c0 	testb	%al, %al
e0107215:	75 58 	jne	88 <sprintputch+0xbf>
e0107217:	8b 45 08 	movl	8(%ebp), %eax
e010721a:	88 01 	movb	%al, (%ecx)
e010721c:	83 c4 10 	addl	$16, %esp
e010721f:	5e 	popl	%esi
e0107220:	5b 	popl	%ebx
e0107221:	5d 	popl	%ebp
e0107222:	c3 	retl
e0107223:	89 c8 	movl	%ecx, %eax
e0107225:	24 07 	andb	$7, %al
e0107227:	04 03 	addb	$3, %al
e0107229:	38 d0 	cmpb	%dl, %al
e010722b:	7c a0 	jl	-96 <sprintputch+0x1d>
e010722d:	89 0c 24 	movl	%ecx, (%esp)
e0107230:	e8 5b 15 00 00 	calll	5467 <__asan_report_load4>
e0107235:	89 d8 	movl	%ebx, %eax
e0107237:	24 07 	andb	$7, %al
e0107239:	04 03 	addb	$3, %al
e010723b:	38 c8 	cmpb	%cl, %al
e010723d:	7c a0 	jl	-96 <sprintputch+0x2f>
e010723f:	89 1c 24 	movl	%ebx, (%esp)
e0107242:	e8 49 15 00 00 	calll	5449 <__asan_report_load4>
e0107247:	88 dc 	movb	%bl, %ah
e0107249:	80 e4 07 	andb	$7, %ah
e010724c:	80 c4 03 	addb	$3, %ah
e010724f:	38 c4 	cmpb	%al, %ah
e0107251:	7c a2 	jl	-94 <sprintputch+0x45>
e0107253:	89 1c 24 	movl	%ebx, (%esp)
e0107256:	e8 35 15 00 00 	calll	5429 <__asan_report_load4>
e010725b:	89 f2 	movl	%esi, %edx
e010725d:	80 e2 07 	andb	$7, %dl
e0107260:	80 c2 03 	addb	$3, %dl
e0107263:	38 c2 	cmpb	%al, %dl
e0107265:	7c 9c 	jl	-100 <sprintputch+0x53>
e0107267:	89 34 24 	movl	%esi, (%esp)
e010726a:	e8 41 15 00 00 	calll	5441 <__asan_report_store4>
e010726f:	89 ca 	movl	%ecx, %edx
e0107271:	80 e2 07 	andb	$7, %dl
e0107274:	38 c2 	cmpb	%al, %dl
e0107276:	7c 9f 	jl	-97 <sprintputch+0x67>
e0107278:	89 0c 24 	movl	%ecx, (%esp)
e010727b:	e8 b0 14 00 00 	calll	5296 <__asan_report_store1>

00000000e0107280 snprintf:
e0107280:	55 	pushl	%ebp
e0107281:	89 e5 	movl	%esp, %ebp
e0107283:	53 	pushl	%ebx
e0107284:	57 	pushl	%edi
e0107285:	56 	pushl	%esi
e0107286:	83 e4 e0 	andl	$-32, %esp
e0107289:	83 ec 40 	subl	$64, %esp
e010728c:	89 e6 	movl	%esp, %esi
e010728e:	83 3d e0 2e 12 e0 00 	cmpl	$0, -535679264
e0107295:	74 0f 	je	15 <snprintf+0x26>
e0107297:	83 ec 0c 	subl	$12, %esp
e010729a:	6a 20 	pushl	$32
e010729c:	e8 ef 16 00 00 	calll	5871 <__asan_stack_malloc_0>
e01072a1:	83 c4 10 	addl	$16, %esp
e01072a4:	eb 02 	jmp	2 <snprintf+0x28>
e01072a6:	31 c0 	xorl	%eax, %eax
e01072a8:	85 c0 	testl	%eax, %eax
e01072aa:	89 46 18 	movl	%eax, 24(%esi)
e01072ad:	89 c3 	movl	%eax, %ebx
e01072af:	75 0a 	jne	10 <snprintf+0x3b>
e01072b1:	89 e3 	movl	%esp, %ebx
e01072b3:	83 c3 e0 	addl	$-32, %ebx
e01072b6:	83 e3 e0 	andl	$-32, %ebx
e01072b9:	89 dc 	movl	%ebx, %esp
e01072bb:	89 5e 1c 	movl	%ebx, 28(%esi)
e01072be:	8d 43 10 	leal	16(%ebx), %eax
e01072c1:	c7 03 b3 8a b5 41 	movl	$1102416563, (%ebx)
e01072c7:	c7 43 04 14 a2 10 e0 	movl	$3759186452, 4(%ebx)
e01072ce:	c7 43 08 80 72 10 e0 	movl	$3759174272, 8(%ebx)
e01072d5:	89 df 	movl	%ebx, %edi
e01072d7:	c1 ef 03 	shrl	$3, %edi
e01072da:	c7 87 00 00 80 de f1 f1 f8 f3 	movl	$4093178353, -562036736(%edi)
e01072e4:	c6 87 02 00 80 de 04 	movb	$4, -562036734(%edi)
e01072eb:	8d 4d 14 	leal	20(%ebp), %ecx
e01072ee:	89 4b 10 	movl	%ecx, 16(%ebx)
e01072f1:	89 c1 	movl	%eax, %ecx
e01072f3:	c1 e9 03 	shrl	$3, %ecx
e01072f6:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01072fc:	84 c9 	testb	%cl, %cl
e01072fe:	75 56 	jne	86 <snprintf+0xd6>
e0107300:	ff 73 10 	pushl	16(%ebx)
e0107303:	ff 75 10 	pushl	16(%ebp)
e0107306:	ff 75 0c 	pushl	12(%ebp)
e0107309:	ff 75 08 	pushl	8(%ebp)
e010730c:	e8 5f fc ff ff 	calll	-929 <vsnprintf>
e0107311:	83 c4 10 	addl	$16, %esp
e0107314:	c6 87 02 00 80 de f8 	movb	$-8, -562036734(%edi)
e010731b:	c7 03 0e 36 e0 45 	movl	$1172321806, (%ebx)
e0107321:	8b 4e 18 	movl	24(%esi), %ecx
e0107324:	85 c9 	testl	%ecx, %ecx
e0107326:	74 1c 	je	28 <snprintf+0xc4>
e0107328:	c7 87 00 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036736(%edi)
e0107332:	c7 87 04 00 80 de f5 f5 f5 f5 	movl	$4126537205, -562036732(%edi)
e010733c:	8b 49 3c 	movl	60(%ecx), %ecx
e010733f:	c6 01 00 	movb	$0, (%ecx)
e0107342:	eb 0a 	jmp	10 <snprintf+0xce>
e0107344:	c7 87 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%edi)
e010734e:	8d 65 f4 	leal	-12(%ebp), %esp
e0107351:	5e 	popl	%esi
e0107352:	5f 	popl	%edi
e0107353:	5b 	popl	%ebx
e0107354:	5d 	popl	%ebp
e0107355:	c3 	retl
e0107356:	89 c2 	movl	%eax, %edx
e0107358:	80 e2 07 	andb	$7, %dl
e010735b:	80 c2 03 	addb	$3, %dl
e010735e:	38 ca 	cmpb	%cl, %dl
e0107360:	7c 9e 	jl	-98 <snprintf+0x80>
e0107362:	83 ec 0c 	subl	$12, %esp
e0107365:	50 	pushl	%eax
e0107366:	e8 25 14 00 00 	calll	5157 <__asan_report_load4>
e010736b:	83 c4 10 	addl	$16, %esp
e010736e:	66 90 	nop

00000000e0107370 asan.module_ctor:
e0107370:	83 ec 0c 	subl	$12, %esp
e0107373:	e8 88 19 00 00 	calll	6536 <__asan_init>
e0107378:	e8 a3 1a 00 00 	calll	6819 <__asan_version_mismatch_check_v8>
e010737d:	83 ec 08 	subl	$8, %esp
e0107380:	6a 0b 	pushl	$11
e0107382:	68 00 18 12 e0 	pushl	$3759282176
e0107387:	e8 a4 19 00 00 	calll	6564 <__asan_register_globals>
e010738c:	83 c4 1c 	addl	$28, %esp
e010738f:	c3 	retl

00000000e0107390 asan.module_dtor:
e0107390:	83 ec 14 	subl	$20, %esp
e0107393:	6a 0b 	pushl	$11
e0107395:	68 00 18 12 e0 	pushl	$3759282176
e010739a:	e8 e1 19 00 00 	calll	6625 <__asan_unregister_globals>
e010739f:	83 c4 1c 	addl	$28, %esp
e01073a2:	c3 	retl
e01073a3:	cc 	int3
e01073a4:	cc 	int3
e01073a5:	cc 	int3
e01073a6:	cc 	int3
e01073a7:	cc 	int3
e01073a8:	cc 	int3
e01073a9:	cc 	int3
e01073aa:	cc 	int3
e01073ab:	cc 	int3
e01073ac:	cc 	int3
e01073ad:	cc 	int3
e01073ae:	cc 	int3
e01073af:	cc 	int3

00000000e01073b0 readline:
e01073b0:	55 	pushl	%ebp
e01073b1:	89 e5 	movl	%esp, %ebp
e01073b3:	53 	pushl	%ebx
e01073b4:	57 	pushl	%edi
e01073b5:	56 	pushl	%esi
e01073b6:	83 ec 0c 	subl	$12, %esp
e01073b9:	8b 45 08 	movl	8(%ebp), %eax
e01073bc:	85 c0 	testl	%eax, %eax
e01073be:	74 10 	je	16 <readline+0x20>
e01073c0:	89 44 24 04 	movl	%eax, 4(%esp)
e01073c4:	c7 04 24 40 dc 10 e0 	movl	$3759201344, (%esp)
e01073cb:	e8 70 cb ff ff 	calll	-13456 <cprintf>
e01073d0:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e01073d7:	e8 64 92 ff ff 	calll	-28060 <iscons>
e01073dc:	89 c6 	movl	%eax, %esi
e01073de:	e8 3d 92 ff ff 	calll	-28099 <getchar>
e01073e3:	89 c3 	movl	%eax, %ebx
e01073e5:	85 c0 	testl	%eax, %eax
e01073e7:	0f 88 9f 00 00 00 	js	159 <readline+0xdc>
e01073ed:	31 ff 	xorl	%edi, %edi
e01073ef:	90 	nop
e01073f0:	83 fb 7f 	cmpl	$127, %ebx
e01073f3:	74 05 	je	5 <readline+0x4a>
e01073f5:	83 fb 08 	cmpl	$8, %ebx
e01073f8:	75 26 	jne	38 <readline+0x70>
e01073fa:	85 ff 	testl	%edi, %edi
e01073fc:	7e 22 	jle	34 <readline+0x70>
e01073fe:	85 f6 	testl	%esi, %esi
e0107400:	74 0c 	je	12 <readline+0x5e>
e0107402:	c7 04 24 08 00 00 00 	movl	$8, (%esp)
e0107409:	e8 e2 91 ff ff 	calll	-28190 <cputchar>
e010740e:	4f 	decl	%edi
e010740f:	eb 59 	jmp	89 <readline+0xba>
e0107411:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010741b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0107420:	81 ff fe 03 00 00 	cmpl	$1022, %edi
e0107426:	7f 38 	jg	56 <readline+0xb0>
e0107428:	83 fb 20 	cmpl	$32, %ebx
e010742b:	7c 33 	jl	51 <readline+0xb0>
e010742d:	85 f6 	testl	%esi, %esi
e010742f:	74 08 	je	8 <readline+0x89>
e0107431:	89 1c 24 	movl	%ebx, (%esp)
e0107434:	e8 b7 91 ff ff 	calll	-28233 <cputchar>
e0107439:	8d 87 20 29 12 e0 	leal	-535680736(%edi), %eax
e010743f:	89 c1 	movl	%eax, %ecx
e0107441:	c1 e9 03 	shrl	$3, %ecx
e0107444:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e010744b:	84 c9 	testb	%cl, %cl
e010744d:	75 2c 	jne	44 <readline+0xcb>
e010744f:	47 	incl	%edi
e0107450:	88 18 	movb	%bl, (%eax)
e0107452:	eb 16 	jmp	22 <readline+0xba>
e0107454:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010745e:	66 90 	nop
e0107460:	83 fb 0d 	cmpl	$13, %ebx
e0107463:	74 41 	je	65 <readline+0xf6>
e0107465:	83 fb 0a 	cmpl	$10, %ebx
e0107468:	74 3c 	je	60 <readline+0xf6>
e010746a:	e8 b1 91 ff ff 	calll	-28239 <getchar>
e010746f:	89 c3 	movl	%eax, %ebx
e0107471:	85 c0 	testl	%eax, %eax
e0107473:	0f 89 77 ff ff ff 	jns	-137 <readline+0x40>
e0107479:	eb 11 	jmp	17 <readline+0xdc>
e010747b:	89 c2 	movl	%eax, %edx
e010747d:	80 e2 07 	andb	$7, %dl
e0107480:	38 ca 	cmpb	%cl, %dl
e0107482:	7c cb 	jl	-53 <readline+0x9f>
e0107484:	89 04 24 	movl	%eax, (%esp)
e0107487:	e8 a4 12 00 00 	calll	4772 <__asan_report_store1>
e010748c:	89 5c 24 04 	movl	%ebx, 4(%esp)
e0107490:	c7 04 24 80 dc 10 e0 	movl	$3759201408, (%esp)
e0107497:	e8 a4 ca ff ff 	calll	-13660 <cprintf>
e010749c:	31 c0 	xorl	%eax, %eax
e010749e:	83 c4 0c 	addl	$12, %esp
e01074a1:	5e 	popl	%esi
e01074a2:	5f 	popl	%edi
e01074a3:	5b 	popl	%ebx
e01074a4:	5d 	popl	%ebp
e01074a5:	c3 	retl
e01074a6:	85 f6 	testl	%esi, %esi
e01074a8:	74 0c 	je	12 <readline+0x106>
e01074aa:	c7 04 24 0a 00 00 00 	movl	$10, (%esp)
e01074b1:	e8 3a 91 ff ff 	calll	-28358 <cputchar>
e01074b6:	8d 87 20 29 12 e0 	leal	-535680736(%edi), %eax
e01074bc:	89 c1 	movl	%eax, %ecx
e01074be:	c1 e9 03 	shrl	$3, %ecx
e01074c1:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01074c7:	84 c9 	testb	%cl, %cl
e01074c9:	75 0a 	jne	10 <readline+0x125>
e01074cb:	c6 00 00 	movb	$0, (%eax)
e01074ce:	b8 20 29 12 e0 	movl	$3759286560, %eax
e01074d3:	eb c9 	jmp	-55 <readline+0xee>
e01074d5:	89 c2 	movl	%eax, %edx
e01074d7:	80 e2 07 	andb	$7, %dl
e01074da:	38 ca 	cmpb	%cl, %dl
e01074dc:	7c ed 	jl	-19 <readline+0x11b>
e01074de:	89 04 24 	movl	%eax, (%esp)
e01074e1:	e8 4a 12 00 00 	calll	4682 <__asan_report_store1>
e01074e6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e01074f0 asan.module_ctor:
e01074f0:	83 ec 0c 	subl	$12, %esp
e01074f3:	e8 08 18 00 00 	calll	6152 <__asan_init>
e01074f8:	e8 23 19 00 00 	calll	6435 <__asan_version_mismatch_check_v8>
e01074fd:	83 ec 08 	subl	$8, %esp
e0107500:	6a 03 	pushl	$3
e0107502:	68 60 19 12 e0 	pushl	$3759282528
e0107507:	e8 24 18 00 00 	calll	6180 <__asan_register_globals>
e010750c:	83 c4 1c 	addl	$28, %esp
e010750f:	c3 	retl

00000000e0107510 asan.module_dtor:
e0107510:	83 ec 14 	subl	$20, %esp
e0107513:	6a 03 	pushl	$3
e0107515:	68 60 19 12 e0 	pushl	$3759282528
e010751a:	e8 61 18 00 00 	calll	6241 <__asan_unregister_globals>
e010751f:	83 c4 1c 	addl	$28, %esp
e0107522:	c3 	retl
e0107523:	cc 	int3
e0107524:	cc 	int3
e0107525:	cc 	int3
e0107526:	cc 	int3
e0107527:	cc 	int3
e0107528:	cc 	int3
e0107529:	cc 	int3
e010752a:	cc 	int3
e010752b:	cc 	int3
e010752c:	cc 	int3
e010752d:	cc 	int3
e010752e:	cc 	int3
e010752f:	cc 	int3

00000000e0107530 strlen:
e0107530:	55 	pushl	%ebp
e0107531:	89 e5 	movl	%esp, %ebp
e0107533:	53 	pushl	%ebx
e0107534:	56 	pushl	%esi
e0107535:	83 ec 10 	subl	$16, %esp
e0107538:	8b 4d 08 	movl	8(%ebp), %ecx
e010753b:	89 c8 	movl	%ecx, %eax
e010753d:	c1 e8 03 	shrl	$3, %eax
e0107540:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0107546:	84 c0 	testb	%al, %al
e0107548:	75 4b 	jne	75 <strlen+0x65>
e010754a:	80 39 00 	cmpb	$0, (%ecx)
e010754d:	74 3d 	je	61 <strlen+0x5c>
e010754f:	41 	incl	%ecx
e0107550:	31 c0 	xorl	%eax, %eax
e0107552:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010755c:	0f 1f 40 00 	nopl	(%eax)
e0107560:	8d 14 01 	leal	(%ecx,%eax), %edx
e0107563:	89 d6 	movl	%edx, %esi
e0107565:	c1 ee 03 	shrl	$3, %esi
e0107568:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e010756f:	84 db 	testb	%bl, %bl
e0107571:	75 08 	jne	8 <strlen+0x4b>
e0107573:	40 	incl	%eax
e0107574:	80 3a 00 	cmpb	$0, (%edx)
e0107577:	75 e7 	jne	-25 <strlen+0x30>
e0107579:	eb 13 	jmp	19 <strlen+0x5e>
e010757b:	88 d7 	movb	%dl, %bh
e010757d:	80 e7 07 	andb	$7, %bh
e0107580:	38 df 	cmpb	%bl, %bh
e0107582:	7c ef 	jl	-17 <strlen+0x43>
e0107584:	89 14 24 	movl	%edx, (%esp)
e0107587:	e8 64 11 00 00 	calll	4452 <__asan_report_load1>
e010758c:	31 c0 	xorl	%eax, %eax
e010758e:	83 c4 10 	addl	$16, %esp
e0107591:	5e 	popl	%esi
e0107592:	5b 	popl	%ebx
e0107593:	5d 	popl	%ebp
e0107594:	c3 	retl
e0107595:	89 ca 	movl	%ecx, %edx
e0107597:	80 e2 07 	andb	$7, %dl
e010759a:	38 c2 	cmpb	%al, %dl
e010759c:	7c ac 	jl	-84 <strlen+0x1a>
e010759e:	89 0c 24 	movl	%ecx, (%esp)
e01075a1:	e8 4a 11 00 00 	calll	4426 <__asan_report_load1>
e01075a6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e01075b0 strnlen:
e01075b0:	55 	pushl	%ebp
e01075b1:	89 e5 	movl	%esp, %ebp
e01075b3:	53 	pushl	%ebx
e01075b4:	56 	pushl	%esi
e01075b5:	83 ec 10 	subl	$16, %esp
e01075b8:	8b 4d 0c 	movl	12(%ebp), %ecx
e01075bb:	85 c9 	testl	%ecx, %ecx
e01075bd:	74 41 	je	65 <strnlen+0x50>
e01075bf:	8b 75 08 	movl	8(%ebp), %esi
e01075c2:	31 c0 	xorl	%eax, %eax
e01075c4:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01075ce:	66 90 	nop
e01075d0:	8d 1c 06 	leal	(%esi,%eax), %ebx
e01075d3:	89 da 	movl	%ebx, %edx
e01075d5:	c1 ea 03 	shrl	$3, %edx
e01075d8:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e01075df:	84 d2 	testb	%dl, %dl
e01075e1:	75 0c 	jne	12 <strnlen+0x3f>
e01075e3:	80 3b 00 	cmpb	$0, (%ebx)
e01075e6:	74 1a 	je	26 <strnlen+0x52>
e01075e8:	40 	incl	%eax
e01075e9:	39 c1 	cmpl	%eax, %ecx
e01075eb:	75 e3 	jne	-29 <strnlen+0x20>
e01075ed:	eb 13 	jmp	19 <strnlen+0x52>
e01075ef:	88 de 	movb	%bl, %dh
e01075f1:	80 e6 07 	andb	$7, %dh
e01075f4:	38 d6 	cmpb	%dl, %dh
e01075f6:	7c eb 	jl	-21 <strnlen+0x33>
e01075f8:	89 1c 24 	movl	%ebx, (%esp)
e01075fb:	e8 f0 10 00 00 	calll	4336 <__asan_report_load1>
e0107600:	31 c0 	xorl	%eax, %eax
e0107602:	83 c4 10 	addl	$16, %esp
e0107605:	5e 	popl	%esi
e0107606:	5b 	popl	%ebx
e0107607:	5d 	popl	%ebp
e0107608:	c3 	retl
e0107609:	0f 1f 80 00 00 00 00 	nopl	(%eax)

00000000e0107610 strcpy:
e0107610:	55 	pushl	%ebp
e0107611:	89 e5 	movl	%esp, %ebp
e0107613:	53 	pushl	%ebx
e0107614:	57 	pushl	%edi
e0107615:	56 	pushl	%esi
e0107616:	83 ec 0c 	subl	$12, %esp
e0107619:	8b 4d 0c 	movl	12(%ebp), %ecx
e010761c:	8b 7d 08 	movl	8(%ebp), %edi
e010761f:	89 fa 	movl	%edi, %edx
e0107621:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010762b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0107630:	89 ce 	movl	%ecx, %esi
e0107632:	c1 ee 03 	shrl	$3, %esi
e0107635:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e010763c:	84 db 	testb	%bl, %bl
e010763e:	75 1d 	jne	29 <strcpy+0x4d>
e0107640:	0f b6 19 	movzbl	(%ecx), %ebx
e0107643:	89 d6 	movl	%edx, %esi
e0107645:	c1 ee 03 	shrl	$3, %esi
e0107648:	0f b6 86 00 00 80 de 	movzbl	-562036736(%esi), %eax
e010764f:	84 c0 	testb	%al, %al
e0107651:	75 15 	jne	21 <strcpy+0x58>
e0107653:	41 	incl	%ecx
e0107654:	88 1a 	movb	%bl, (%edx)
e0107656:	42 	incl	%edx
e0107657:	84 db 	testb	%bl, %bl
e0107659:	75 d5 	jne	-43 <strcpy+0x20>
e010765b:	eb 1c 	jmp	28 <strcpy+0x69>
e010765d:	88 cf 	movb	%cl, %bh
e010765f:	80 e7 07 	andb	$7, %bh
e0107662:	38 df 	cmpb	%bl, %bh
e0107664:	7c da 	jl	-38 <strcpy+0x30>
e0107666:	eb 1b 	jmp	27 <strcpy+0x73>
e0107668:	88 d7 	movb	%dl, %bh
e010766a:	80 e7 07 	andb	$7, %bh
e010766d:	38 c7 	cmpb	%al, %bh
e010766f:	7c e2 	jl	-30 <strcpy+0x43>
e0107671:	89 14 24 	movl	%edx, (%esp)
e0107674:	e8 b7 10 00 00 	calll	4279 <__asan_report_store1>
e0107679:	89 f8 	movl	%edi, %eax
e010767b:	83 c4 0c 	addl	$12, %esp
e010767e:	5e 	popl	%esi
e010767f:	5f 	popl	%edi
e0107680:	5b 	popl	%ebx
e0107681:	5d 	popl	%ebp
e0107682:	c3 	retl
e0107683:	89 0c 24 	movl	%ecx, (%esp)
e0107686:	e8 65 10 00 00 	calll	4197 <__asan_report_load1>
e010768b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0107690 strcat:
e0107690:	55 	pushl	%ebp
e0107691:	89 e5 	movl	%esp, %ebp
e0107693:	57 	pushl	%edi
e0107694:	56 	pushl	%esi
e0107695:	83 ec 10 	subl	$16, %esp
e0107698:	8b 7d 0c 	movl	12(%ebp), %edi
e010769b:	8b 75 08 	movl	8(%ebp), %esi
e010769e:	89 34 24 	movl	%esi, (%esp)
e01076a1:	e8 8a fe ff ff 	calll	-374 <strlen>
e01076a6:	01 f0 	addl	%esi, %eax
e01076a8:	89 7c 24 04 	movl	%edi, 4(%esp)
e01076ac:	89 04 24 	movl	%eax, (%esp)
e01076af:	e8 5c ff ff ff 	calll	-164 <strcpy>
e01076b4:	89 f0 	movl	%esi, %eax
e01076b6:	83 c4 10 	addl	$16, %esp
e01076b9:	5e 	popl	%esi
e01076ba:	5f 	popl	%edi
e01076bb:	5d 	popl	%ebp
e01076bc:	c3 	retl
e01076bd:	0f 1f 00 	nopl	(%eax)

00000000e01076c0 strncpy:
e01076c0:	55 	pushl	%ebp
e01076c1:	89 e5 	movl	%esp, %ebp
e01076c3:	53 	pushl	%ebx
e01076c4:	57 	pushl	%edi
e01076c5:	56 	pushl	%esi
e01076c6:	83 ec 0c 	subl	$12, %esp
e01076c9:	8b 4d 10 	movl	16(%ebp), %ecx
e01076cc:	8b 75 08 	movl	8(%ebp), %esi
e01076cf:	85 c9 	testl	%ecx, %ecx
e01076d1:	74 62 	je	98 <strncpy+0x75>
e01076d3:	8b 55 0c 	movl	12(%ebp), %edx
e01076d6:	89 f3 	movl	%esi, %ebx
e01076d8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e01076e0:	89 d0 	movl	%edx, %eax
e01076e2:	c1 e8 03 	shrl	$3, %eax
e01076e5:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e01076ec:	84 c0 	testb	%al, %al
e01076ee:	75 23 	jne	35 <strncpy+0x53>
e01076f0:	0f b6 02 	movzbl	(%edx), %eax
e01076f3:	89 df 	movl	%ebx, %edi
e01076f5:	c1 ef 03 	shrl	$3, %edi
e01076f8:	8a a7 00 00 80 de 	movb	-562036736(%edi), %ah
e01076fe:	84 e4 	testb	%ah, %ah
e0107700:	75 1c 	jne	28 <strncpy+0x5e>
e0107702:	88 03 	movb	%al, (%ebx)
e0107704:	43 	incl	%ebx
e0107705:	8d 42 01 	leal	1(%edx), %eax
e0107708:	80 3a 00 	cmpb	$0, (%edx)
e010770b:	0f 45 d0 	cmovnel	%eax, %edx
e010770e:	49 	decl	%ecx
e010770f:	75 cf 	jne	-49 <strncpy+0x20>
e0107711:	eb 22 	jmp	34 <strncpy+0x75>
e0107713:	88 d4 	movb	%dl, %ah
e0107715:	80 e4 07 	andb	$7, %ah
e0107718:	38 c4 	cmpb	%al, %ah
e010771a:	7c d4 	jl	-44 <strncpy+0x30>
e010771c:	eb 21 	jmp	33 <strncpy+0x7f>
e010771e:	88 45 f3 	movb	%al, -13(%ebp)
e0107721:	88 d8 	movb	%bl, %al
e0107723:	24 07 	andb	$7, %al
e0107725:	38 e0 	cmpb	%ah, %al
e0107727:	0f b6 45 f3 	movzbl	-13(%ebp), %eax
e010772b:	7c d5 	jl	-43 <strncpy+0x42>
e010772d:	89 1c 24 	movl	%ebx, (%esp)
e0107730:	e8 fb 0f 00 00 	calll	4091 <__asan_report_store1>
e0107735:	89 f0 	movl	%esi, %eax
e0107737:	83 c4 0c 	addl	$12, %esp
e010773a:	5e 	popl	%esi
e010773b:	5f 	popl	%edi
e010773c:	5b 	popl	%ebx
e010773d:	5d 	popl	%ebp
e010773e:	c3 	retl
e010773f:	89 14 24 	movl	%edx, (%esp)
e0107742:	e8 a9 0f 00 00 	calll	4009 <__asan_report_load1>
e0107747:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0107750 strlcpy:
e0107750:	55 	pushl	%ebp
e0107751:	89 e5 	movl	%esp, %ebp
e0107753:	53 	pushl	%ebx
e0107754:	57 	pushl	%edi
e0107755:	56 	pushl	%esi
e0107756:	83 ec 0c 	subl	$12, %esp
e0107759:	8b 7d 10 	movl	16(%ebp), %edi
e010775c:	8b 4d 08 	movl	8(%ebp), %ecx
e010775f:	85 ff 	testl	%edi, %edi
e0107761:	89 c8 	movl	%ecx, %eax
e0107763:	0f 84 7c 00 00 00 	je	124 <strlcpy+0x95>
e0107769:	83 ff 01 	cmpl	$1, %edi
e010776c:	89 c8 	movl	%ecx, %eax
e010776e:	74 5f 	je	95 <strlcpy+0x7f>
e0107770:	8b 55 0c 	movl	12(%ebp), %edx
e0107773:	be 01 00 00 00 	movl	$1, %esi
e0107778:	29 fe 	subl	%edi, %esi
e010777a:	89 c8 	movl	%ecx, %eax
e010777c:	0f 1f 40 00 	nopl	(%eax)
e0107780:	89 d7 	movl	%edx, %edi
e0107782:	c1 ef 03 	shrl	$3, %edi
e0107785:	0f b6 9f 00 00 80 de 	movzbl	-562036736(%edi), %ebx
e010778c:	84 db 	testb	%bl, %bl
e010778e:	75 1f 	jne	31 <strlcpy+0x5f>
e0107790:	0f b6 1a 	movzbl	(%edx), %ebx
e0107793:	84 db 	testb	%bl, %bl
e0107795:	74 38 	je	56 <strlcpy+0x7f>
e0107797:	89 c7 	movl	%eax, %edi
e0107799:	c1 ef 03 	shrl	$3, %edi
e010779c:	8a bf 00 00 80 de 	movb	-562036736(%edi), %bh
e01077a2:	84 ff 	testb	%bh, %bh
e01077a4:	75 14 	jne	20 <strlcpy+0x6a>
e01077a6:	42 	incl	%edx
e01077a7:	88 18 	movb	%bl, (%eax)
e01077a9:	40 	incl	%eax
e01077aa:	46 	incl	%esi
e01077ab:	75 d3 	jne	-45 <strlcpy+0x30>
e01077ad:	eb 20 	jmp	32 <strlcpy+0x7f>
e01077af:	88 d7 	movb	%dl, %bh
e01077b1:	80 e7 07 	andb	$7, %bh
e01077b4:	38 df 	cmpb	%bl, %bh
e01077b6:	7c d8 	jl	-40 <strlcpy+0x40>
e01077b8:	eb 46 	jmp	70 <strlcpy+0xb0>
e01077ba:	89 cf 	movl	%ecx, %edi
e01077bc:	89 c1 	movl	%eax, %ecx
e01077be:	80 e1 07 	andb	$7, %cl
e01077c1:	38 f9 	cmpb	%bh, %cl
e01077c3:	89 f9 	movl	%edi, %ecx
e01077c5:	7c df 	jl	-33 <strlcpy+0x56>
e01077c7:	89 04 24 	movl	%eax, (%esp)
e01077ca:	e8 61 0f 00 00 	calll	3937 <__asan_report_store1>
e01077cf:	89 ce 	movl	%ecx, %esi
e01077d1:	89 c1 	movl	%eax, %ecx
e01077d3:	c1 e9 03 	shrl	$3, %ecx
e01077d6:	8a 91 00 00 80 de 	movb	-562036736(%ecx), %dl
e01077dc:	84 d2 	testb	%dl, %dl
e01077de:	75 0f 	jne	15 <strlcpy+0x9f>
e01077e0:	c6 00 00 	movb	$0, (%eax)
e01077e3:	89 f1 	movl	%esi, %ecx
e01077e5:	29 c8 	subl	%ecx, %eax
e01077e7:	83 c4 0c 	addl	$12, %esp
e01077ea:	5e 	popl	%esi
e01077eb:	5f 	popl	%edi
e01077ec:	5b 	popl	%ebx
e01077ed:	5d 	popl	%ebp
e01077ee:	c3 	retl
e01077ef:	89 c1 	movl	%eax, %ecx
e01077f1:	80 e1 07 	andb	$7, %cl
e01077f4:	38 d1 	cmpb	%dl, %cl
e01077f6:	7c e8 	jl	-24 <strlcpy+0x90>
e01077f8:	89 04 24 	movl	%eax, (%esp)
e01077fb:	e8 30 0f 00 00 	calll	3888 <__asan_report_store1>
e0107800:	89 14 24 	movl	%edx, (%esp)
e0107803:	e8 e8 0e 00 00 	calll	3816 <__asan_report_load1>
e0107808:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0107810 strcmp:
e0107810:	55 	pushl	%ebp
e0107811:	89 e5 	movl	%esp, %ebp
e0107813:	53 	pushl	%ebx
e0107814:	56 	pushl	%esi
e0107815:	83 ec 10 	subl	$16, %esp
e0107818:	8b 45 08 	movl	8(%ebp), %eax
e010781b:	89 c1 	movl	%eax, %ecx
e010781d:	c1 e9 03 	shrl	$3, %ecx
e0107820:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0107826:	84 c9 	testb	%cl, %cl
e0107828:	0f 85 7d 00 00 00 	jne	125 <strcmp+0x9b>
e010782e:	8b 4d 0c 	movl	12(%ebp), %ecx
e0107831:	8a 10 	movb	(%eax), %dl
e0107833:	84 d2 	testb	%dl, %dl
e0107835:	74 54 	je	84 <strcmp+0x7b>
e0107837:	40 	incl	%eax
e0107838:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0107840:	89 ce 	movl	%ecx, %esi
e0107842:	c1 ee 03 	shrl	$3, %esi
e0107845:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e010784c:	84 db 	testb	%bl, %bl
e010784e:	75 1f 	jne	31 <strcmp+0x5f>
e0107850:	3a 11 	cmpb	(%ecx), %dl
e0107852:	75 39 	jne	57 <strcmp+0x7d>
e0107854:	89 c2 	movl	%eax, %edx
e0107856:	c1 ea 03 	shrl	$3, %edx
e0107859:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0107860:	84 d2 	testb	%dl, %dl
e0107862:	75 16 	jne	22 <strcmp+0x6a>
e0107864:	41 	incl	%ecx
e0107865:	0f b6 10 	movzbl	(%eax), %edx
e0107868:	40 	incl	%eax
e0107869:	84 d2 	testb	%dl, %dl
e010786b:	75 d3 	jne	-45 <strcmp+0x30>
e010786d:	eb 1c 	jmp	28 <strcmp+0x7b>
e010786f:	88 cf 	movb	%cl, %bh
e0107871:	80 e7 07 	andb	$7, %bh
e0107874:	38 df 	cmpb	%bl, %bh
e0107876:	7c d8 	jl	-40 <strcmp+0x40>
e0107878:	eb 57 	jmp	87 <strcmp+0xc1>
e010787a:	88 c6 	movb	%al, %dh
e010787c:	80 e6 07 	andb	$7, %dh
e010787f:	38 d6 	cmpb	%dl, %dh
e0107881:	7c e1 	jl	-31 <strcmp+0x54>
e0107883:	89 04 24 	movl	%eax, (%esp)
e0107886:	e8 65 0e 00 00 	calll	3685 <__asan_report_load1>
e010788b:	31 d2 	xorl	%edx, %edx
e010788d:	89 c8 	movl	%ecx, %eax
e010788f:	c1 e8 03 	shrl	$3, %eax
e0107892:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0107898:	84 c0 	testb	%al, %al
e010789a:	75 24 	jne	36 <strcmp+0xb0>
e010789c:	0f b6 c2 	movzbl	%dl, %eax
e010789f:	0f b6 09 	movzbl	(%ecx), %ecx
e01078a2:	29 c8 	subl	%ecx, %eax
e01078a4:	83 c4 10 	addl	$16, %esp
e01078a7:	5e 	popl	%esi
e01078a8:	5b 	popl	%ebx
e01078a9:	5d 	popl	%ebp
e01078aa:	c3 	retl
e01078ab:	89 c2 	movl	%eax, %edx
e01078ad:	80 e2 07 	andb	$7, %dl
e01078b0:	38 ca 	cmpb	%cl, %dl
e01078b2:	0f 8c 76 ff ff ff 	jl	-138 <strcmp+0x1e>
e01078b8:	89 04 24 	movl	%eax, (%esp)
e01078bb:	e8 30 0e 00 00 	calll	3632 <__asan_report_load1>
e01078c0:	88 cc 	movb	%cl, %ah
e01078c2:	80 e4 07 	andb	$7, %ah
e01078c5:	38 c4 	cmpb	%al, %ah
e01078c7:	7c d3 	jl	-45 <strcmp+0x8c>
e01078c9:	89 0c 24 	movl	%ecx, (%esp)
e01078cc:	e8 1f 0e 00 00 	calll	3615 <__asan_report_load1>
e01078d1:	89 0c 24 	movl	%ecx, (%esp)
e01078d4:	e8 17 0e 00 00 	calll	3607 <__asan_report_load1>
e01078d9:	0f 1f 80 00 00 00 00 	nopl	(%eax)

00000000e01078e0 strncmp:
e01078e0:	55 	pushl	%ebp
e01078e1:	89 e5 	movl	%esp, %ebp
e01078e3:	53 	pushl	%ebx
e01078e4:	57 	pushl	%edi
e01078e5:	56 	pushl	%esi
e01078e6:	83 ec 0c 	subl	$12, %esp
e01078e9:	8b 75 10 	movl	16(%ebp), %esi
e01078ec:	c7 45 f0 00 00 00 00 	movl	$0, -16(%ebp)
e01078f3:	85 f6 	testl	%esi, %esi
e01078f5:	74 7c 	je	124 <strncmp+0x93>
e01078f7:	8b 4d 0c 	movl	12(%ebp), %ecx
e01078fa:	8b 5d 08 	movl	8(%ebp), %ebx
e01078fd:	0f 1f 00 	nopl	(%eax)
e0107900:	89 da 	movl	%ebx, %edx
e0107902:	c1 ea 03 	shrl	$3, %edx
e0107905:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e010790c:	84 d2 	testb	%dl, %dl
e010790e:	75 21 	jne	33 <strncmp+0x51>
e0107910:	0f b6 13 	movzbl	(%ebx), %edx
e0107913:	85 d2 	testl	%edx, %edx
e0107915:	74 43 	je	67 <strncmp+0x7a>
e0107917:	89 cf 	movl	%ecx, %edi
e0107919:	c1 ef 03 	shrl	$3, %edi
e010791c:	8a a7 00 00 80 de 	movb	-562036736(%edi), %ah
e0107922:	84 e4 	testb	%ah, %ah
e0107924:	75 16 	jne	22 <strncmp+0x5c>
e0107926:	3a 11 	cmpb	(%ecx), %dl
e0107928:	75 30 	jne	48 <strncmp+0x7a>
e010792a:	43 	incl	%ebx
e010792b:	41 	incl	%ecx
e010792c:	4e 	decl	%esi
e010792d:	75 d1 	jne	-47 <strncmp+0x20>
e010792f:	eb 42 	jmp	66 <strncmp+0x93>
e0107931:	88 de 	movb	%bl, %dh
e0107933:	80 e6 07 	andb	$7, %dh
e0107936:	38 d6 	cmpb	%dl, %dh
e0107938:	7c d6 	jl	-42 <strncmp+0x30>
e010793a:	eb 53 	jmp	83 <strncmp+0xaf>
e010793c:	88 e0 	movb	%ah, %al
e010793e:	89 d7 	movl	%edx, %edi
e0107940:	89 ca 	movl	%ecx, %edx
e0107942:	80 e2 07 	andb	$7, %dl
e0107945:	38 e2 	cmpb	%ah, %dl
e0107947:	89 fa 	movl	%edi, %edx
e0107949:	c7 45 f0 00 00 00 00 	movl	$0, -16(%ebp)
e0107950:	7c d4 	jl	-44 <strncmp+0x46>
e0107952:	89 0c 24 	movl	%ecx, (%esp)
e0107955:	e8 96 0d 00 00 	calll	3478 <__asan_report_load1>
e010795a:	89 d0 	movl	%edx, %eax
e010795c:	89 ca 	movl	%ecx, %edx
e010795e:	c1 ea 03 	shrl	$3, %edx
e0107961:	8a 92 00 00 80 de 	movb	-562036736(%edx), %dl
e0107967:	84 d2 	testb	%dl, %dl
e0107969:	75 13 	jne	19 <strncmp+0x9e>
e010796b:	0f b6 09 	movzbl	(%ecx), %ecx
e010796e:	29 c8 	subl	%ecx, %eax
e0107970:	89 45 f0 	movl	%eax, -16(%ebp)
e0107973:	8b 45 f0 	movl	-16(%ebp), %eax
e0107976:	83 c4 0c 	addl	$12, %esp
e0107979:	5e 	popl	%esi
e010797a:	5f 	popl	%edi
e010797b:	5b 	popl	%ebx
e010797c:	5d 	popl	%ebp
e010797d:	c3 	retl
e010797e:	88 ce 	movb	%cl, %dh
e0107980:	80 e6 07 	andb	$7, %dh
e0107983:	38 d6 	cmpb	%dl, %dh
e0107985:	7c e4 	jl	-28 <strncmp+0x8b>
e0107987:	89 0c 24 	movl	%ecx, (%esp)
e010798a:	e8 61 0d 00 00 	calll	3425 <__asan_report_load1>
e010798f:	89 1c 24 	movl	%ebx, (%esp)
e0107992:	e8 59 0d 00 00 	calll	3417 <__asan_report_load1>
e0107997:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e01079a0 strchr:
e01079a0:	55 	pushl	%ebp
e01079a1:	89 e5 	movl	%esp, %ebp
e01079a3:	53 	pushl	%ebx
e01079a4:	56 	pushl	%esi
e01079a5:	83 ec 10 	subl	$16, %esp
e01079a8:	8b 4d 08 	movl	8(%ebp), %ecx
e01079ab:	89 c8 	movl	%ecx, %eax
e01079ad:	c1 e8 03 	shrl	$3, %eax
e01079b0:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01079b6:	84 c0 	testb	%al, %al
e01079b8:	75 4d 	jne	77 <strchr+0x67>
e01079ba:	8a 31 	movb	(%ecx), %dh
e01079bc:	31 c0 	xorl	%eax, %eax
e01079be:	84 f6 	testb	%dh, %dh
e01079c0:	74 3e 	je	62 <strchr+0x60>
e01079c2:	8a 55 0c 	movb	12(%ebp), %dl
e01079c5:	41 	incl	%ecx
e01079c6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01079d0:	38 d6 	cmpb	%dl, %dh
e01079d2:	74 29 	je	41 <strchr+0x5d>
e01079d4:	89 ce 	movl	%ecx, %esi
e01079d6:	c1 ee 03 	shrl	$3, %esi
e01079d9:	8a b6 00 00 80 de 	movb	-562036736(%esi), %dh
e01079df:	84 f6 	testb	%dh, %dh
e01079e1:	75 09 	jne	9 <strchr+0x4c>
e01079e3:	8a 31 	movb	(%ecx), %dh
e01079e5:	41 	incl	%ecx
e01079e6:	84 f6 	testb	%dh, %dh
e01079e8:	75 e6 	jne	-26 <strchr+0x30>
e01079ea:	eb 14 	jmp	20 <strchr+0x60>
e01079ec:	89 cb 	movl	%ecx, %ebx
e01079ee:	80 e3 07 	andb	$7, %bl
e01079f1:	38 f3 	cmpb	%dh, %bl
e01079f3:	7c ee 	jl	-18 <strchr+0x43>
e01079f5:	89 0c 24 	movl	%ecx, (%esp)
e01079f8:	e8 f3 0c 00 00 	calll	3315 <__asan_report_load1>
e01079fd:	49 	decl	%ecx
e01079fe:	89 c8 	movl	%ecx, %eax
e0107a00:	83 c4 10 	addl	$16, %esp
e0107a03:	5e 	popl	%esi
e0107a04:	5b 	popl	%ebx
e0107a05:	5d 	popl	%ebp
e0107a06:	c3 	retl
e0107a07:	89 ca 	movl	%ecx, %edx
e0107a09:	80 e2 07 	andb	$7, %dl
e0107a0c:	38 c2 	cmpb	%al, %dl
e0107a0e:	7c aa 	jl	-86 <strchr+0x1a>
e0107a10:	89 0c 24 	movl	%ecx, (%esp)
e0107a13:	e8 d8 0c 00 00 	calll	3288 <__asan_report_load1>
e0107a18:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0107a20 strfind:
e0107a20:	55 	pushl	%ebp
e0107a21:	89 e5 	movl	%esp, %ebp
e0107a23:	83 ec 08 	subl	$8, %esp
e0107a26:	8a 4d 0c 	movb	12(%ebp), %cl
e0107a29:	8b 45 08 	movl	8(%ebp), %eax
e0107a2c:	0f 1f 40 00 	nopl	(%eax)
e0107a30:	89 c2 	movl	%eax, %edx
e0107a32:	c1 ea 03 	shrl	$3, %edx
e0107a35:	0f b6 92 00 00 80 de 	movzbl	-562036736(%edx), %edx
e0107a3c:	84 d2 	testb	%dl, %dl
e0107a3e:	75 0e 	jne	14 <strfind+0x2e>
e0107a40:	0f b6 10 	movzbl	(%eax), %edx
e0107a43:	40 	incl	%eax
e0107a44:	84 d2 	testb	%dl, %dl
e0107a46:	74 17 	je	23 <strfind+0x3f>
e0107a48:	38 ca 	cmpb	%cl, %dl
e0107a4a:	75 e4 	jne	-28 <strfind+0x10>
e0107a4c:	eb 11 	jmp	17 <strfind+0x3f>
e0107a4e:	88 c5 	movb	%al, %ch
e0107a50:	80 e5 07 	andb	$7, %ch
e0107a53:	38 d5 	cmpb	%dl, %ch
e0107a55:	7c e9 	jl	-23 <strfind+0x20>
e0107a57:	89 04 24 	movl	%eax, (%esp)
e0107a5a:	e8 91 0c 00 00 	calll	3217 <__asan_report_load1>
e0107a5f:	48 	decl	%eax
e0107a60:	83 c4 08 	addl	$8, %esp
e0107a63:	5d 	popl	%ebp
e0107a64:	c3 	retl
e0107a65:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0107a6f:	90 	nop

00000000e0107a70 memset:
e0107a70:	57 	pushl	%edi
e0107a71:	56 	pushl	%esi
e0107a72:	8b 4c 24 14 	movl	20(%esp), %ecx
e0107a76:	8b 7c 24 0c 	movl	12(%esp), %edi
e0107a7a:	85 c9 	testl	%ecx, %ecx
e0107a7c:	74 2c 	je	44 <memset+0x3a>
e0107a7e:	8b 44 24 10 	movl	16(%esp), %eax
e0107a82:	89 fa 	movl	%edi, %edx
e0107a84:	09 ca 	orl	%ecx, %edx
e0107a86:	f6 c2 03 	testb	$3, %dl
e0107a89:	74 05 	je	5 <memset+0x20>
e0107a8b:	fc 	cld
e0107a8c:	f3 aa 	rep		stosb	%al, %es:(%edi)
e0107a8e:	eb 1a 	jmp	26 <memset+0x3a>
e0107a90:	0f b6 d0 	movzbl	%al, %edx
e0107a93:	c1 e0 18 	shll	$24, %eax
e0107a96:	89 d6 	movl	%edx, %esi
e0107a98:	09 d0 	orl	%edx, %eax
e0107a9a:	c1 e2 10 	shll	$16, %edx
e0107a9d:	c1 e6 08 	shll	$8, %esi
e0107aa0:	09 d0 	orl	%edx, %eax
e0107aa2:	09 f0 	orl	%esi, %eax
e0107aa4:	c1 e9 02 	shrl	$2, %ecx
e0107aa7:	fc 	cld
e0107aa8:	f3 ab 	rep		stosl	%eax, %es:(%edi)
e0107aaa:	89 f8 	movl	%edi, %eax
e0107aac:	5e 	popl	%esi
e0107aad:	5f 	popl	%edi
e0107aae:	c3 	retl
e0107aaf:	90 	nop

00000000e0107ab0 memmove:
e0107ab0:	53 	pushl	%ebx
e0107ab1:	57 	pushl	%edi
e0107ab2:	56 	pushl	%esi
e0107ab3:	8b 4c 24 18 	movl	24(%esp), %ecx
e0107ab7:	8b 5c 24 14 	movl	20(%esp), %ebx
e0107abb:	8b 44 24 10 	movl	16(%esp), %eax
e0107abf:	39 c3 	cmpl	%eax, %ebx
e0107ac1:	73 22 	jae	34 <memmove+0x35>
e0107ac3:	8d 14 0b 	leal	(%ebx,%ecx), %edx
e0107ac6:	39 c2 	cmpl	%eax, %edx
e0107ac8:	76 1b 	jbe	27 <memmove+0x35>
e0107aca:	8d 3c 08 	leal	(%eax,%ecx), %edi
e0107acd:	f6 c2 03 	testb	$3, %dl
e0107ad0:	75 09 	jne	9 <memmove+0x2b>
e0107ad2:	89 fb 	movl	%edi, %ebx
e0107ad4:	09 cb 	orl	%ecx, %ebx
e0107ad6:	f6 c3 03 	testb	$3, %bl
e0107ad9:	74 2f 	je	47 <memmove+0x5a>
e0107adb:	4f 	decl	%edi
e0107adc:	4a 	decl	%edx
e0107add:	89 d6 	movl	%edx, %esi
e0107adf:	fd 	std
e0107ae0:	f3 a4 	rep		movsb	(%esi), %es:(%edi)
e0107ae2:	fc 	cld
e0107ae3:	eb 15 	jmp	21 <memmove+0x4a>
e0107ae5:	f6 c3 03 	testb	$3, %bl
e0107ae8:	75 09 	jne	9 <memmove+0x43>
e0107aea:	89 c2 	movl	%eax, %edx
e0107aec:	09 ca 	orl	%ecx, %edx
e0107aee:	f6 c2 03 	testb	$3, %dl
e0107af1:	74 0b 	je	11 <memmove+0x4e>
e0107af3:	89 c7 	movl	%eax, %edi
e0107af5:	89 de 	movl	%ebx, %esi
e0107af7:	fc 	cld
e0107af8:	f3 a4 	rep		movsb	(%esi), %es:(%edi)
e0107afa:	5e 	popl	%esi
e0107afb:	5f 	popl	%edi
e0107afc:	5b 	popl	%ebx
e0107afd:	c3 	retl
e0107afe:	c1 e9 02 	shrl	$2, %ecx
e0107b01:	89 c7 	movl	%eax, %edi
e0107b03:	89 de 	movl	%ebx, %esi
e0107b05:	fc 	cld
e0107b06:	f3 a5 	rep		movsl	(%esi), %es:(%edi)
e0107b08:	eb f0 	jmp	-16 <memmove+0x4a>
e0107b0a:	83 c7 fc 	addl	$-4, %edi
e0107b0d:	83 c2 fc 	addl	$-4, %edx
e0107b10:	c1 e9 02 	shrl	$2, %ecx
e0107b13:	89 d6 	movl	%edx, %esi
e0107b15:	fd 	std
e0107b16:	f3 a5 	rep		movsl	(%esi), %es:(%edi)
e0107b18:	fc 	cld
e0107b19:	eb df 	jmp	-33 <memmove+0x4a>
e0107b1b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0107b20 memcpy:
e0107b20:	eb 8e 	jmp	-114 <memmove>
e0107b22:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0107b2c:	0f 1f 40 00 	nopl	(%eax)

00000000e0107b30 memcmp:
e0107b30:	55 	pushl	%ebp
e0107b31:	89 e5 	movl	%esp, %ebp
e0107b33:	53 	pushl	%ebx
e0107b34:	57 	pushl	%edi
e0107b35:	56 	pushl	%esi
e0107b36:	83 ec 0c 	subl	$12, %esp
e0107b39:	8b 75 10 	movl	16(%ebp), %esi
e0107b3c:	31 c0 	xorl	%eax, %eax
e0107b3e:	85 f6 	testl	%esi, %esi
e0107b40:	74 69 	je	105 <memcmp+0x7b>
e0107b42:	8b 55 0c 	movl	12(%ebp), %edx
e0107b45:	8b 5d 08 	movl	8(%ebp), %ebx
e0107b48:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0107b50:	89 d8 	movl	%ebx, %eax
e0107b52:	c1 e8 03 	shrl	$3, %eax
e0107b55:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0107b5c:	84 c0 	testb	%al, %al
e0107b5e:	75 25 	jne	37 <memcmp+0x55>
e0107b60:	0f b6 3b 	movzbl	(%ebx), %edi
e0107b63:	89 d0 	movl	%edx, %eax
e0107b65:	c1 e8 03 	shrl	$3, %eax
e0107b68:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0107b6f:	84 c0 	testb	%al, %al
e0107b71:	75 1d 	jne	29 <memcmp+0x60>
e0107b73:	0f b6 02 	movzbl	(%edx), %eax
e0107b76:	89 f9 	movl	%edi, %ecx
e0107b78:	38 c1 	cmpb	%al, %cl
e0107b7a:	75 25 	jne	37 <memcmp+0x71>
e0107b7c:	4e 	decl	%esi
e0107b7d:	43 	incl	%ebx
e0107b7e:	42 	incl	%edx
e0107b7f:	85 f6 	testl	%esi, %esi
e0107b81:	75 cd 	jne	-51 <memcmp+0x20>
e0107b83:	eb 24 	jmp	36 <memcmp+0x79>
e0107b85:	88 dc 	movb	%bl, %ah
e0107b87:	80 e4 07 	andb	$7, %ah
e0107b8a:	38 c4 	cmpb	%al, %ah
e0107b8c:	7c d2 	jl	-46 <memcmp+0x30>
e0107b8e:	eb 23 	jmp	35 <memcmp+0x83>
e0107b90:	88 d4 	movb	%dl, %ah
e0107b92:	80 e4 07 	andb	$7, %ah
e0107b95:	38 c4 	cmpb	%al, %ah
e0107b97:	7c da 	jl	-38 <memcmp+0x43>
e0107b99:	89 14 24 	movl	%edx, (%esp)
e0107b9c:	e8 4f 0b 00 00 	calll	2895 <__asan_report_load1>
e0107ba1:	89 fe 	movl	%edi, %esi
e0107ba3:	29 c6 	subl	%eax, %esi
e0107ba5:	89 f0 	movl	%esi, %eax
e0107ba7:	eb 02 	jmp	2 <memcmp+0x7b>
e0107ba9:	31 c0 	xorl	%eax, %eax
e0107bab:	83 c4 0c 	addl	$12, %esp
e0107bae:	5e 	popl	%esi
e0107baf:	5f 	popl	%edi
e0107bb0:	5b 	popl	%ebx
e0107bb1:	5d 	popl	%ebp
e0107bb2:	c3 	retl
e0107bb3:	89 1c 24 	movl	%ebx, (%esp)
e0107bb6:	e8 35 0b 00 00 	calll	2869 <__asan_report_load1>
e0107bbb:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0107bc0 memfind:
e0107bc0:	55 	pushl	%ebp
e0107bc1:	89 e5 	movl	%esp, %ebp
e0107bc3:	53 	pushl	%ebx
e0107bc4:	56 	pushl	%esi
e0107bc5:	83 ec 10 	subl	$16, %esp
e0107bc8:	8b 45 08 	movl	8(%ebp), %eax
e0107bcb:	8b 4d 10 	movl	16(%ebp), %ecx
e0107bce:	85 c9 	testl	%ecx, %ecx
e0107bd0:	7e 3a 	jle	58 <memfind+0x4c>
e0107bd2:	8b 55 0c 	movl	12(%ebp), %edx
e0107bd5:	01 c1 	addl	%eax, %ecx
e0107bd7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)
e0107be0:	89 c6 	movl	%eax, %esi
e0107be2:	c1 ee 03 	shrl	$3, %esi
e0107be5:	0f b6 9e 00 00 80 de 	movzbl	-562036736(%esi), %ebx
e0107bec:	84 db 	testb	%bl, %bl
e0107bee:	75 0b 	jne	11 <memfind+0x3b>
e0107bf0:	38 10 	cmpb	%dl, (%eax)
e0107bf2:	74 18 	je	24 <memfind+0x4c>
e0107bf4:	40 	incl	%eax
e0107bf5:	39 c8 	cmpl	%ecx, %eax
e0107bf7:	72 e7 	jb	-25 <memfind+0x20>
e0107bf9:	eb 11 	jmp	17 <memfind+0x4c>
e0107bfb:	88 c7 	movb	%al, %bh
e0107bfd:	80 e7 07 	andb	$7, %bh
e0107c00:	38 df 	cmpb	%bl, %bh
e0107c02:	7c ec 	jl	-20 <memfind+0x30>
e0107c04:	89 04 24 	movl	%eax, (%esp)
e0107c07:	e8 e4 0a 00 00 	calll	2788 <__asan_report_load1>
e0107c0c:	83 c4 10 	addl	$16, %esp
e0107c0f:	5e 	popl	%esi
e0107c10:	5b 	popl	%ebx
e0107c11:	5d 	popl	%ebp
e0107c12:	c3 	retl
e0107c13:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0107c1d:	0f 1f 00 	nopl	(%eax)

00000000e0107c20 strtol:
e0107c20:	55 	pushl	%ebp
e0107c21:	89 e5 	movl	%esp, %ebp
e0107c23:	53 	pushl	%ebx
e0107c24:	57 	pushl	%edi
e0107c25:	56 	pushl	%esi
e0107c26:	83 ec 0c 	subl	$12, %esp
e0107c29:	8b 75 10 	movl	16(%ebp), %esi
e0107c2c:	8b 45 08 	movl	8(%ebp), %eax
e0107c2f:	eb 10 	jmp	16 <strtol+0x21>
e0107c31:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0107c3b:	0f 1f 44 00 00 	nopl	(%eax,%eax)
e0107c40:	40 	incl	%eax
e0107c41:	89 c1 	movl	%eax, %ecx
e0107c43:	c1 e9 03 	shrl	$3, %ecx
e0107c46:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0107c4d:	84 c9 	testb	%cl, %cl
e0107c4f:	75 15 	jne	21 <strtol+0x46>
e0107c51:	0f b6 08 	movzbl	(%eax), %ecx
e0107c54:	80 c1 f7 	addb	$-9, %cl
e0107c57:	80 f9 24 	cmpb	$36, %cl
e0107c5a:	77 1c 	ja	28 <strtol+0x58>
e0107c5c:	0f b6 c9 	movzbl	%cl, %ecx
e0107c5f:	ff 24 8d fc dc 10 e0 	jmpl	*-535765764(,%ecx,4)
e0107c66:	89 c2 	movl	%eax, %edx
e0107c68:	80 e2 07 	andb	$7, %dl
e0107c6b:	38 ca 	cmpb	%cl, %dl
e0107c6d:	7c e2 	jl	-30 <strtol+0x31>
e0107c6f:	89 04 24 	movl	%eax, (%esp)
e0107c72:	e8 79 0a 00 00 	calll	2681 <__asan_report_load1>
e0107c77:	40 	incl	%eax
e0107c78:	31 d2 	xorl	%edx, %edx
e0107c7a:	eb 06 	jmp	6 <strtol+0x62>
e0107c7c:	40 	incl	%eax
e0107c7d:	ba 01 00 00 00 	movl	$1, %edx
e0107c82:	89 f1 	movl	%esi, %ecx
e0107c84:	83 c9 10 	orl	$16, %ecx
e0107c87:	83 f9 10 	cmpl	$16, %ecx
e0107c8a:	89 55 f0 	movl	%edx, -16(%ebp)
e0107c8d:	75 3d 	jne	61 <strtol+0xac>
e0107c8f:	89 c1 	movl	%eax, %ecx
e0107c91:	c1 e9 03 	shrl	$3, %ecx
e0107c94:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0107c9a:	84 c9 	testb	%cl, %cl
e0107c9c:	0f 85 e8 00 00 00 	jne	232 <strtol+0x16a>
e0107ca2:	80 38 30 	cmpb	$48, (%eax)
e0107ca5:	75 25 	jne	37 <strtol+0xac>
e0107ca7:	8d 48 01 	leal	1(%eax), %ecx
e0107caa:	89 cf 	movl	%ecx, %edi
e0107cac:	c1 ef 03 	shrl	$3, %edi
e0107caf:	8a 9f 00 00 80 de 	movb	-562036736(%edi), %bl
e0107cb5:	84 db 	testb	%bl, %bl
e0107cb7:	0f 85 fa 00 00 00 	jne	250 <strtol+0x197>
e0107cbd:	80 39 78 	cmpb	$120, (%ecx)
e0107cc0:	75 0a 	jne	10 <strtol+0xac>
e0107cc2:	83 c0 02 	addl	$2, %eax
e0107cc5:	bf 10 00 00 00 	movl	$16, %edi
e0107cca:	eb 2e 	jmp	46 <strtol+0xda>
e0107ccc:	85 f6 	testl	%esi, %esi
e0107cce:	75 20 	jne	32 <strtol+0xd0>
e0107cd0:	89 c1 	movl	%eax, %ecx
e0107cd2:	c1 e9 03 	shrl	$3, %ecx
e0107cd5:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0107cdb:	84 c9 	testb	%cl, %cl
e0107cdd:	0f 85 e9 00 00 00 	jne	233 <strtol+0x1ac>
e0107ce3:	80 38 30 	cmpb	$48, (%eax)
e0107ce6:	75 08 	jne	8 <strtol+0xd0>
e0107ce8:	40 	incl	%eax
e0107ce9:	bf 08 00 00 00 	movl	$8, %edi
e0107cee:	eb 0a 	jmp	10 <strtol+0xda>
e0107cf0:	85 f6 	testl	%esi, %esi
e0107cf2:	bf 0a 00 00 00 	movl	$10, %edi
e0107cf7:	0f 45 fe 	cmovnel	%esi, %edi
e0107cfa:	31 f6 	xorl	%esi, %esi
e0107cfc:	eb 08 	jmp	8 <strtol+0xe6>
e0107cfe:	66 90 	nop
e0107d00:	40 	incl	%eax
e0107d01:	0f af f7 	imull	%edi, %esi
e0107d04:	01 ce 	addl	%ecx, %esi
e0107d06:	89 c1 	movl	%eax, %ecx
e0107d08:	c1 e9 03 	shrl	$3, %ecx
e0107d0b:	0f b6 89 00 00 80 de 	movzbl	-562036736(%ecx), %ecx
e0107d12:	84 c9 	testb	%cl, %cl
e0107d14:	75 38 	jne	56 <strtol+0x12e>
e0107d16:	0f be 18 	movsbl	(%eax), %ebx
e0107d19:	89 da 	movl	%ebx, %edx
e0107d1b:	80 c2 d0 	addb	$-48, %dl
e0107d1e:	b9 d0 ff ff ff 	movl	$4294967248, %ecx
e0107d23:	80 fa 0a 	cmpb	$10, %dl
e0107d26:	72 1e 	jb	30 <strtol+0x126>
e0107d28:	89 da 	movl	%ebx, %edx
e0107d2a:	80 c2 9f 	addb	$-97, %dl
e0107d2d:	b9 a9 ff ff ff 	movl	$4294967209, %ecx
e0107d32:	80 fa 1a 	cmpb	$26, %dl
e0107d35:	72 0f 	jb	15 <strtol+0x126>
e0107d37:	89 da 	movl	%ebx, %edx
e0107d39:	80 c2 bf 	addb	$-65, %dl
e0107d3c:	b9 c9 ff ff ff 	movl	$4294967241, %ecx
e0107d41:	80 fa 19 	cmpb	$25, %dl
e0107d44:	77 19 	ja	25 <strtol+0x13f>
e0107d46:	01 d9 	addl	%ebx, %ecx
e0107d48:	39 f9 	cmpl	%edi, %ecx
e0107d4a:	7c b4 	jl	-76 <strtol+0xe0>
e0107d4c:	eb 11 	jmp	17 <strtol+0x13f>
e0107d4e:	88 c5 	movb	%al, %ch
e0107d50:	80 e5 07 	andb	$7, %ch
e0107d53:	38 cd 	cmpb	%cl, %ch
e0107d55:	7c bf 	jl	-65 <strtol+0xf6>
e0107d57:	89 04 24 	movl	%eax, (%esp)
e0107d5a:	e8 91 09 00 00 	calll	2449 <__asan_report_load1>
e0107d5f:	8b 55 0c 	movl	12(%ebp), %edx
e0107d62:	85 d2 	testl	%edx, %edx
e0107d64:	74 11 	je	17 <strtol+0x157>
e0107d66:	89 d1 	movl	%edx, %ecx
e0107d68:	c1 e9 03 	shrl	$3, %ecx
e0107d6b:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e0107d71:	84 c9 	testb	%cl, %cl
e0107d73:	75 2a 	jne	42 <strtol+0x17f>
e0107d75:	89 02 	movl	%eax, (%edx)
e0107d77:	89 f0 	movl	%esi, %eax
e0107d79:	f7 d8 	negl	%eax
e0107d7b:	83 7d f0 00 	cmpl	$0, -16(%ebp)
e0107d7f:	0f 44 c6 	cmovel	%esi, %eax
e0107d82:	83 c4 0c 	addl	$12, %esp
e0107d85:	5e 	popl	%esi
e0107d86:	5f 	popl	%edi
e0107d87:	5b 	popl	%ebx
e0107d88:	5d 	popl	%ebp
e0107d89:	c3 	retl
e0107d8a:	88 c5 	movb	%al, %ch
e0107d8c:	80 e5 07 	andb	$7, %ch
e0107d8f:	38 cd 	cmpb	%cl, %ch
e0107d91:	0f 8c 0b ff ff ff 	jl	-245 <strtol+0x82>
e0107d97:	89 04 24 	movl	%eax, (%esp)
e0107d9a:	e8 51 09 00 00 	calll	2385 <__asan_report_load1>
e0107d9f:	8b 55 0c 	movl	12(%ebp), %edx
e0107da2:	80 e2 07 	andb	$7, %dl
e0107da5:	80 c2 03 	addb	$3, %dl
e0107da8:	38 ca 	cmpb	%cl, %dl
e0107daa:	8b 55 0c 	movl	12(%ebp), %edx
e0107dad:	7c c6 	jl	-58 <strtol+0x155>
e0107daf:	89 14 24 	movl	%edx, (%esp)
e0107db2:	e8 f9 09 00 00 	calll	2553 <__asan_report_store4>
e0107db7:	88 cf 	movb	%cl, %bh
e0107db9:	80 e7 07 	andb	$7, %bh
e0107dbc:	38 df 	cmpb	%bl, %bh
e0107dbe:	0f 8c f9 fe ff ff 	jl	-263 <strtol+0x9d>
e0107dc4:	89 0c 24 	movl	%ecx, (%esp)
e0107dc7:	e8 24 09 00 00 	calll	2340 <__asan_report_load1>
e0107dcc:	88 c5 	movb	%al, %ch
e0107dce:	80 e5 07 	andb	$7, %ch
e0107dd1:	38 cd 	cmpb	%cl, %ch
e0107dd3:	0f 8c 0a ff ff ff 	jl	-246 <strtol+0xc3>
e0107dd9:	89 04 24 	movl	%eax, (%esp)
e0107ddc:	e8 0f 09 00 00 	calll	2319 <__asan_report_load1>
e0107de1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0107deb:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0107df0 asan.module_ctor:
e0107df0:	83 ec 0c 	subl	$12, %esp
e0107df3:	e8 08 0f 00 00 	calll	3848 <__asan_init>
e0107df8:	e8 23 10 00 00 	calll	4131 <__asan_version_mismatch_check_v8>
e0107dfd:	83 c4 0c 	addl	$12, %esp
e0107e00:	c3 	retl
e0107e01:	cc 	int3
e0107e02:	cc 	int3
e0107e03:	cc 	int3
e0107e04:	cc 	int3
e0107e05:	cc 	int3
e0107e06:	cc 	int3
e0107e07:	cc 	int3
e0107e08:	cc 	int3
e0107e09:	cc 	int3
e0107e0a:	cc 	int3
e0107e0b:	cc 	int3
e0107e0c:	cc 	int3
e0107e0d:	cc 	int3
e0107e0e:	cc 	int3
e0107e0f:	cc 	int3

00000000e0107e10 tsc_calibrate:
e0107e10:	55 	pushl	%ebp
e0107e11:	89 e5 	movl	%esp, %ebp
e0107e13:	57 	pushl	%edi
e0107e14:	56 	pushl	%esi
e0107e15:	83 ec 10 	subl	$16, %esp
e0107e18:	31 f6 	xorl	%esi, %esi
e0107e1a:	bf a8 3b 12 e0 	movl	$3759291304, %edi
e0107e1f:	c1 ef 03 	shrl	$3, %edi
e0107e22:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0107e2c:	0f 1f 40 00 	nopl	(%eax)
e0107e30:	e8 eb 00 00 00 	calll	235 <quick_pit_calibrate>
e0107e35:	0f b6 8f 00 00 80 de 	movzbl	-562036736(%edi), %ecx
e0107e3c:	84 c9 	testb	%cl, %cl
e0107e3e:	75 11 	jne	17 <tsc_calibrate+0x41>
e0107e40:	a3 a8 3b 12 e0 	movl	%eax, 3759291304
e0107e45:	85 c0 	testl	%eax, %eax
e0107e47:	75 4d 	jne	77 <tsc_calibrate+0x86>
e0107e49:	46 	incl	%esi
e0107e4a:	83 fe 64 	cmpl	$100, %esi
e0107e4d:	72 e1 	jb	-31 <tsc_calibrate+0x20>
e0107e4f:	eb 1b 	jmp	27 <tsc_calibrate+0x5c>
e0107e51:	ba a8 3b 12 e0 	movl	$3759291304, %edx
e0107e56:	80 e2 07 	andb	$7, %dl
e0107e59:	80 c2 03 	addb	$3, %dl
e0107e5c:	38 ca 	cmpb	%cl, %dl
e0107e5e:	7c e0 	jl	-32 <tsc_calibrate+0x30>
e0107e60:	c7 04 24 a8 3b 12 e0 	movl	$3759291304, (%esp)
e0107e67:	e8 44 09 00 00 	calll	2372 <__asan_report_store4>
e0107e6c:	75 28 	jne	40 <tsc_calibrate+0x86>
e0107e6e:	b8 a8 3b 12 e0 	movl	$3759291304, %eax
e0107e73:	c1 e8 03 	shrl	$3, %eax
e0107e76:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0107e7c:	84 c0 	testb	%al, %al
e0107e7e:	75 78 	jne	120 <tsc_calibrate+0xe8>
e0107e80:	c7 05 a8 3b 12 e0 a0 25 26 00 	movl	$2500000, -535675992
e0107e8a:	c7 04 24 a0 dd 10 e0 	movl	$3759201696, (%esp)
e0107e91:	e8 aa c0 ff ff 	calll	-16214 <cprintf>
e0107e96:	b8 a8 3b 12 e0 	movl	$3759291304, %eax
e0107e9b:	c1 e8 03 	shrl	$3, %eax
e0107e9e:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e0107ea4:	84 c0 	testb	%al, %al
e0107ea6:	75 35 	jne	53 <tsc_calibrate+0xcd>
e0107ea8:	8b 0d a8 3b 12 e0 	movl	-535675992, %ecx
e0107eae:	ba d3 4d 62 10 	movl	$274877907, %edx
e0107eb3:	89 c8 	movl	%ecx, %eax
e0107eb5:	f7 e2 	mull	%edx
e0107eb7:	c1 ea 06 	shrl	$6, %edx
e0107eba:	69 c2 e8 03 00 00 	imull	$1000, %edx, %eax
e0107ec0:	29 c1 	subl	%eax, %ecx
e0107ec2:	89 54 24 04 	movl	%edx, 4(%esp)
e0107ec6:	89 4c 24 08 	movl	%ecx, 8(%esp)
e0107eca:	c7 04 24 00 de 10 e0 	movl	$3759201792, (%esp)
e0107ed1:	e8 6a c0 ff ff 	calll	-16278 <cprintf>
e0107ed6:	83 c4 10 	addl	$16, %esp
e0107ed9:	5e 	popl	%esi
e0107eda:	5f 	popl	%edi
e0107edb:	5d 	popl	%ebp
e0107edc:	c3 	retl
e0107edd:	b9 a8 3b 12 e0 	movl	$3759291304, %ecx
e0107ee2:	80 e1 07 	andb	$7, %cl
e0107ee5:	80 c1 03 	addb	$3, %cl
e0107ee8:	38 c1 	cmpb	%al, %cl
e0107eea:	7c bc 	jl	-68 <tsc_calibrate+0x98>
e0107eec:	c7 04 24 a8 3b 12 e0 	movl	$3759291304, (%esp)
e0107ef3:	e8 98 08 00 00 	calll	2200 <__asan_report_load4>
e0107ef8:	b9 a8 3b 12 e0 	movl	$3759291304, %ecx
e0107efd:	80 e1 07 	andb	$7, %cl
e0107f00:	80 c1 03 	addb	$3, %cl
e0107f03:	38 c1 	cmpb	%al, %cl
e0107f05:	0f 8c 75 ff ff ff 	jl	-139 <tsc_calibrate+0x70>
e0107f0b:	c7 04 24 a8 3b 12 e0 	movl	$3759291304, (%esp)
e0107f12:	e8 99 08 00 00 	calll	2201 <__asan_report_store4>
e0107f17:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0107f20 quick_pit_calibrate:
e0107f20:	55 	pushl	%ebp
e0107f21:	89 e5 	movl	%esp, %ebp
e0107f23:	53 	pushl	%ebx
e0107f24:	57 	pushl	%edi
e0107f25:	56 	pushl	%esi
e0107f26:	83 e4 e0 	andl	$-32, %esp
e0107f29:	81 ec e0 00 00 00 	subl	$224, %esp
e0107f2f:	8d 74 24 50 	leal	80(%esp), %esi
e0107f33:	8d bc 24 90 00 00 00 	leal	144(%esp), %edi
e0107f3a:	c7 44 24 40 b3 8a b5 41 	movl	$1102416563, 64(%esp)
e0107f42:	c7 44 24 44 3f a2 10 e0 	movl	$3759186495, 68(%esp)
e0107f4a:	c7 44 24 48 20 7f 10 e0 	movl	$3759177504, 72(%esp)
e0107f52:	8d 44 24 40 	leal	64(%esp), %eax
e0107f56:	c1 e8 03 	shrl	$3, %eax
e0107f59:	c7 80 00 00 80 de f1 f1 f8 f2 	movl	$4076401137, -562036736(%eax)
e0107f63:	c7 80 04 00 80 de f2 f2 f8 f2 	movl	$4076401394, -562036732(%eax)
e0107f6d:	c7 80 08 00 80 de f2 f2 f8 f2 	movl	$4076401394, -562036728(%eax)
e0107f77:	66 c7 80 0c 00 80 de f8 f3 	movw	$62456, -562036724(%eax)
e0107f80:	c6 80 02 00 80 de 00 	movb	$0, -562036734(%eax)
e0107f87:	c6 80 06 00 80 de 00 	movb	$0, -562036730(%eax)
e0107f8e:	c6 80 0a 00 80 de 04 	movb	$4, -562036726(%eax)
e0107f95:	89 44 24 34 	movl	%eax, 52(%esp)
e0107f99:	c6 80 0c 00 80 de 04 	movb	$4, -562036724(%eax)
e0107fa0:	ba 61 00 00 00 	movl	$97, %edx
e0107fa5:	ec 	inb	%dx, %al
e0107fa6:	24 fc 	andb	$-4, %al
e0107fa8:	0c 01 	orb	$1, %al
e0107faa:	ba 61 00 00 00 	movl	$97, %edx
e0107faf:	ee 	outb	%al, %dx
e0107fb0:	b0 b0 	movb	$-80, %al
e0107fb2:	ba 43 00 00 00 	movl	$67, %edx
e0107fb7:	ee 	outb	%al, %dx
e0107fb8:	b0 ff 	movb	$-1, %al
e0107fba:	ba 42 00 00 00 	movl	$66, %edx
e0107fbf:	ee 	outb	%al, %dx
e0107fc0:	b0 ff 	movb	$-1, %al
e0107fc2:	ba 42 00 00 00 	movl	$66, %edx
e0107fc7:	ee 	outb	%al, %dx
e0107fc8:	31 db 	xorl	%ebx, %ebx
e0107fca:	31 c9 	xorl	%ecx, %ecx
e0107fcc:	e8 5f 03 00 00 	calll	863 <pit_verify_msb>
e0107fd1:	89 3c 24 	movl	%edi, (%esp)
e0107fd4:	b9 ff 00 00 00 	movl	$255, %ecx
e0107fd9:	89 f2 	movl	%esi, %edx
e0107fdb:	e8 70 03 00 00 	calll	880 <pit_expect_msb>
e0107fe0:	85 c0 	testl	%eax, %eax
e0107fe2:	0f 84 c2 01 00 00 	je	450 <quick_pit_calibrate+0x28a>
e0107fe8:	8d 74 24 70 	leal	112(%esp), %esi
e0107fec:	bf 01 00 00 00 	movl	$1, %edi
e0107ff1:	b0 fd 	movb	$-3, %al
e0107ff3:	bb 00 e8 03 00 	movl	$256000, %ebx
e0107ff8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)
e0108000:	88 44 24 23 	movb	%al, 35(%esp)
e0108004:	fe c0 	incb	%al
e0108006:	8d 8c 24 a0 00 00 00 	leal	160(%esp), %ecx
e010800d:	89 0c 24 	movl	%ecx, (%esp)
e0108010:	0f b6 c8 	movzbl	%al, %ecx
e0108013:	89 f2 	movl	%esi, %edx
e0108015:	e8 36 03 00 00 	calll	822 <pit_expect_msb>
e010801a:	85 c0 	testl	%eax, %eax
e010801c:	0f 84 fa 00 00 00 	je	250 <quick_pit_calibrate+0x1fc>
e0108022:	89 7c 24 24 	movl	%edi, 36(%esp)
e0108026:	8d 44 24 50 	leal	80(%esp), %eax
e010802a:	c1 e8 03 	shrl	$3, %eax
e010802d:	80 b8 00 00 80 de 00 	cmpb	$0, -562036736(%eax)
e0108034:	0f 85 c9 01 00 00 	jne	457 <quick_pit_calibrate+0x2e3>
e010803a:	89 f7 	movl	%esi, %edi
e010803c:	c1 ef 03 	shrl	$3, %edi
e010803f:	80 bf 00 00 80 de 00 	cmpb	$0, -562036736(%edi)
e0108046:	0f 85 c3 01 00 00 	jne	451 <quick_pit_calibrate+0x2ef>
e010804c:	8b 54 24 70 	movl	112(%esp), %edx
e0108050:	8b 74 24 74 	movl	116(%esp), %esi
e0108054:	2b 54 24 50 	subl	80(%esp), %edx
e0108058:	1b 74 24 54 	sbbl	84(%esp), %esi
e010805c:	89 54 24 70 	movl	%edx, 112(%esp)
e0108060:	89 74 24 74 	movl	%esi, 116(%esp)
e0108064:	8d 84 24 90 00 00 00 	leal	144(%esp), %eax
e010806b:	c1 e8 03 	shrl	$3, %eax
e010806e:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0108075:	84 c0 	testb	%al, %al
e0108077:	75 6d 	jne	109 <quick_pit_calibrate+0x1c6>
e0108079:	89 7c 24 38 	movl	%edi, 56(%esp)
e010807d:	89 5c 24 28 	movl	%ebx, 40(%esp)
e0108081:	8b 9c 24 90 00 00 00 	movl	144(%esp), %ebx
e0108088:	8d 84 24 a0 00 00 00 	leal	160(%esp), %eax
e010808f:	c1 e8 03 	shrl	$3, %eax
e0108092:	0f b6 80 00 00 80 de 	movzbl	-562036736(%eax), %eax
e0108099:	84 c0 	testb	%al, %al
e010809b:	75 5f 	jne	95 <quick_pit_calibrate+0x1dc>
e010809d:	8b bc 24 a0 00 00 00 	movl	160(%esp), %edi
e01080a4:	8d 04 1f 	leal	(%edi,%ebx), %eax
e01080a7:	89 f1 	movl	%esi, %ecx
e01080a9:	0f a4 d1 15 	shldl	$21, %edx, %ecx
e01080ad:	89 54 24 3c 	movl	%edx, 60(%esp)
e01080b1:	89 f2 	movl	%esi, %edx
e01080b3:	c1 ea 0b 	shrl	$11, %edx
e01080b6:	39 c8 	cmpl	%ecx, %eax
e01080b8:	b8 00 00 00 00 	movl	$0, %eax
e01080bd:	19 d0 	sbbl	%edx, %eax
e01080bf:	72 62 	jb	98 <quick_pit_calibrate+0x203>
e01080c1:	8b 7c 24 24 	movl	36(%esp), %edi
e01080c5:	47 	incl	%edi
e01080c6:	0f b6 44 24 23 	movzbl	35(%esp), %eax
e01080cb:	fe c8 	decb	%al
e01080cd:	8b 5c 24 28 	movl	40(%esp), %ebx
e01080d1:	81 c3 00 e8 03 00 	addl	$256000, %ebx
e01080d7:	83 ff 75 	cmpl	$117, %edi
e01080da:	8d 74 24 70 	leal	112(%esp), %esi
e01080de:	0f 82 1c ff ff ff 	jb	-228 <quick_pit_calibrate+0xe0>
e01080e4:	eb 36 	jmp	54 <quick_pit_calibrate+0x1fc>
e01080e6:	8d 8c 24 90 00 00 00 	leal	144(%esp), %ecx
e01080ed:	80 e1 07 	andb	$7, %cl
e01080f0:	80 c1 03 	addb	$3, %cl
e01080f3:	38 c1 	cmpb	%al, %cl
e01080f5:	7c 82 	jl	-126 <quick_pit_calibrate+0x159>
e01080f7:	e9 1b 01 00 00 	jmp	283 <quick_pit_calibrate+0x2f7>
e01080fc:	8d 8c 24 a0 00 00 00 	leal	160(%esp), %ecx
e0108103:	80 e1 07 	andb	$7, %cl
e0108106:	80 c1 03 	addb	$3, %cl
e0108109:	38 c1 	cmpb	%al, %cl
e010810b:	7c 90 	jl	-112 <quick_pit_calibrate+0x17d>
e010810d:	8d 84 24 a0 00 00 00 	leal	160(%esp), %eax
e0108114:	89 04 24 	movl	%eax, (%esp)
e0108117:	e8 74 06 00 00 	calll	1652 <__asan_report_load4>
e010811c:	31 db 	xorl	%ebx, %ebx
e010811e:	e9 87 00 00 00 	jmp	135 <quick_pit_calibrate+0x28a>
e0108123:	89 7c 24 2c 	movl	%edi, 44(%esp)
e0108127:	89 5c 24 30 	movl	%ebx, 48(%esp)
e010812b:	89 74 24 24 	movl	%esi, 36(%esp)
e010812f:	0f b6 4c 24 23 	movzbl	35(%esp), %ecx
e0108134:	e8 f7 01 00 00 	calll	503 <pit_verify_msb>
e0108139:	85 c0 	testl	%eax, %eax
e010813b:	bb 00 00 00 00 	movl	$0, %ebx
e0108140:	74 68 	je	104 <quick_pit_calibrate+0x28a>
e0108142:	8b 44 24 2c 	movl	44(%esp), %eax
e0108146:	2b 44 24 30 	subl	48(%esp), %eax
e010814a:	89 c2 	movl	%eax, %edx
e010814c:	c1 ea 1f 	shrl	$31, %edx
e010814f:	01 c2 	addl	%eax, %edx
e0108151:	89 d1 	movl	%edx, %ecx
e0108153:	d1 f9 	sarl	%ecx
e0108155:	c1 fa 1f 	sarl	$31, %edx
e0108158:	8b 44 24 3c 	movl	60(%esp), %eax
e010815c:	01 c8 	addl	%ecx, %eax
e010815e:	8b 4c 24 24 	movl	36(%esp), %ecx
e0108162:	11 d1 	adcl	%edx, %ecx
e0108164:	69 c9 de 34 12 00 	imull	$1193182, %ecx, %ecx
e010816a:	ba de 34 12 00 	movl	$1193182, %edx
e010816f:	f7 e2 	mull	%edx
e0108171:	01 ca 	addl	%ecx, %edx
e0108173:	8b 4c 24 28 	movl	40(%esp), %ecx
e0108177:	89 4c 24 08 	movl	%ecx, 8(%esp)
e010817b:	89 04 24 	movl	%eax, (%esp)
e010817e:	89 54 24 04 	movl	%edx, 4(%esp)
e0108182:	c7 44 24 0c 00 00 00 00 	movl	$0, 12(%esp)
e010818a:	e8 41 1b 00 00 	calll	6977 <__udivdi3>
e010818f:	8b 4c 24 38 	movl	56(%esp), %ecx
e0108193:	80 b9 00 00 80 de 00 	cmpb	$0, -562036736(%ecx)
e010819a:	0f 85 86 00 00 00 	jne	134 <quick_pit_calibrate+0x306>
e01081a0:	89 44 24 70 	movl	%eax, 112(%esp)
e01081a4:	89 54 24 74 	movl	%edx, 116(%esp)
e01081a8:	89 c3 	movl	%eax, %ebx
e01081aa:	8b 44 24 34 	movl	52(%esp), %eax
e01081ae:	c6 80 0c 00 80 de f8 	movb	$-8, -562036724(%eax)
e01081b5:	c6 80 0a 00 80 de f8 	movb	$-8, -562036726(%eax)
e01081bc:	c6 80 06 00 80 de f8 	movb	$-8, -562036730(%eax)
e01081c3:	c6 80 02 00 80 de f8 	movb	$-8, -562036734(%eax)
e01081ca:	c7 44 24 40 0e 36 e0 45 	movl	$1172321806, 64(%esp)
e01081d2:	c7 80 00 00 80 de 00 00 00 00 	movl	$0, -562036736(%eax)
e01081dc:	c7 80 04 00 80 de 00 00 00 00 	movl	$0, -562036732(%eax)
e01081e6:	c7 80 08 00 80 de 00 00 00 00 	movl	$0, -562036728(%eax)
e01081f0:	66 c7 80 0c 00 80 de 00 00 	movw	$0, -562036724(%eax)
e01081f9:	89 d8 	movl	%ebx, %eax
e01081fb:	8d 65 f4 	leal	-12(%ebp), %esp
e01081fe:	5e 	popl	%esi
e01081ff:	5f 	popl	%edi
e0108200:	5b 	popl	%ebx
e0108201:	5d 	popl	%ebp
e0108202:	c3 	retl
e0108203:	8d 44 24 50 	leal	80(%esp), %eax
e0108207:	89 04 24 	movl	%eax, (%esp)
e010820a:	e8 c1 05 00 00 	calll	1473 <__asan_report_load8>
e010820f:	89 34 24 	movl	%esi, (%esp)
e0108212:	e8 b9 05 00 00 	calll	1465 <__asan_report_load8>
e0108217:	8d 84 24 90 00 00 00 	leal	144(%esp), %eax
e010821e:	89 04 24 	movl	%eax, (%esp)
e0108221:	e8 6a 05 00 00 	calll	1386 <__asan_report_load4>
e0108226:	8d 44 24 70 	leal	112(%esp), %eax
e010822a:	89 04 24 	movl	%eax, (%esp)
e010822d:	e8 be 05 00 00 	calll	1470 <__asan_report_store8>
e0108232:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010823c:	0f 1f 40 00 	nopl	(%eax)

00000000e0108240 print_time:
e0108240:	55 	pushl	%ebp
e0108241:	89 e5 	movl	%esp, %ebp
e0108243:	83 ec 08 	subl	$8, %esp
e0108246:	83 ec 08 	subl	$8, %esp
e0108249:	ff 75 08 	pushl	8(%ebp)
e010824c:	68 60 de 10 e0 	pushl	$3759201888
e0108251:	e8 ea bc ff ff 	calll	-17174 <cprintf>
e0108256:	83 c4 18 	addl	$24, %esp
e0108259:	5d 	popl	%ebp
e010825a:	c3 	retl
e010825b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108260 print_timer_error:
e0108260:	55 	pushl	%ebp
e0108261:	89 e5 	movl	%esp, %ebp
e0108263:	83 ec 08 	subl	$8, %esp
e0108266:	c7 04 24 a0 de 10 e0 	movl	$3759201952, (%esp)
e010826d:	e8 ce bc ff ff 	calll	-17202 <cprintf>
e0108272:	83 c4 08 	addl	$8, %esp
e0108275:	5d 	popl	%ebp
e0108276:	c3 	retl
e0108277:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0108280 timer_start:
e0108280:	c6 05 20 2e 12 e0 01 	movb	$1, -535679456
e0108287:	0f 31 	rdtsc
e0108289:	89 15 64 2e 12 e0 	movl	%edx, -535679388
e010828f:	a3 60 2e 12 e0 	movl	%eax, 3759287904
e0108294:	c3 	retl
e0108295:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010829f:	90 	nop

00000000e01082a0 timer_stop:
e01082a0:	55 	pushl	%ebp
e01082a1:	89 e5 	movl	%esp, %ebp
e01082a3:	53 	pushl	%ebx
e01082a4:	50 	pushl	%eax
e01082a5:	80 3d 20 2e 12 e0 00 	cmpb	$0, -535679456
e01082ac:	74 59 	je	89 <timer_stop+0x67>
e01082ae:	0f 31 	rdtsc
e01082b0:	2b 05 60 2e 12 e0 	subl	-535679392, %eax
e01082b6:	1b 15 64 2e 12 e0 	sbbl	-535679388, %edx
e01082bc:	b9 a8 3b 12 e0 	movl	$3759291304, %ecx
e01082c1:	c1 e9 03 	shrl	$3, %ecx
e01082c4:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01082ca:	84 c9 	testb	%cl, %cl
e01082cc:	75 43 	jne	67 <timer_stop+0x71>
e01082ce:	6a 00 	pushl	$0
e01082d0:	ff 35 a8 3b 12 e0 	pushl	-535675992
e01082d6:	52 	pushl	%edx
e01082d7:	50 	pushl	%eax
e01082d8:	e8 f3 19 00 00 	calll	6643 <__udivdi3>
e01082dd:	83 c4 10 	addl	$16, %esp
e01082e0:	6a 00 	pushl	$0
e01082e2:	68 e8 03 00 00 	pushl	$1000
e01082e7:	52 	pushl	%edx
e01082e8:	50 	pushl	%eax
e01082e9:	e8 e2 19 00 00 	calll	6626 <__udivdi3>
e01082ee:	83 c4 04 	addl	$4, %esp
e01082f1:	50 	pushl	%eax
e01082f2:	e8 49 ff ff ff 	calll	-183 <print_time>
e01082f7:	83 c4 10 	addl	$16, %esp
e01082fa:	c6 05 20 2e 12 e0 00 	movb	$0, -535679456
e0108301:	83 c4 04 	addl	$4, %esp
e0108304:	5b 	popl	%ebx
e0108305:	5d 	popl	%ebp
e0108306:	c3 	retl
e0108307:	83 c4 04 	addl	$4, %esp
e010830a:	5b 	popl	%ebx
e010830b:	5d 	popl	%ebp
e010830c:	e9 4f ff ff ff 	jmp	-177 <print_timer_error>
e0108311:	bb a8 3b 12 e0 	movl	$3759291304, %ebx
e0108316:	80 e3 07 	andb	$7, %bl
e0108319:	80 c3 03 	addb	$3, %bl
e010831c:	38 cb 	cmpb	%cl, %bl
e010831e:	7c ae 	jl	-82 <timer_stop+0x2e>
e0108320:	83 ec 0c 	subl	$12, %esp
e0108323:	68 a8 3b 12 e0 	pushl	$3759291304
e0108328:	e8 63 04 00 00 	calll	1123 <__asan_report_load4>
e010832d:	83 c4 10 	addl	$16, %esp

00000000e0108330 pit_verify_msb:
e0108330:	ba 42 00 00 00 	movl	$66, %edx
e0108335:	ec 	inb	%dx, %al
e0108336:	ba 42 00 00 00 	movl	$66, %edx
e010833b:	ec 	inb	%dx, %al
e010833c:	31 d2 	xorl	%edx, %edx
e010833e:	38 c8 	cmpb	%cl, %al
e0108340:	0f 94 c2 	sete	%dl
e0108343:	89 d0 	movl	%edx, %eax
e0108345:	c3 	retl
e0108346:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e0108350 pit_expect_msb:
e0108350:	55 	pushl	%ebp
e0108351:	89 e5 	movl	%esp, %ebp
e0108353:	53 	pushl	%ebx
e0108354:	57 	pushl	%edi
e0108355:	56 	pushl	%esi
e0108356:	83 ec 1c 	subl	$28, %esp
e0108359:	89 55 f0 	movl	%edx, -16(%ebp)
e010835c:	89 cb 	movl	%ecx, %ebx
e010835e:	e8 cd ff ff ff 	calll	-51 <pit_verify_msb>
e0108363:	85 c0 	testl	%eax, %eax
e0108365:	74 3a 	je	58 <pit_expect_msb+0x51>
e0108367:	b9 01 00 00 00 	movl	$1, %ecx
e010836c:	0f b6 c3 	movzbl	%bl, %eax
e010836f:	89 45 ec 	movl	%eax, -20(%ebp)
e0108372:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010837c:	0f 1f 40 00 	nopl	(%eax)
e0108380:	89 cb 	movl	%ecx, %ebx
e0108382:	0f 31 	rdtsc
e0108384:	89 c6 	movl	%eax, %esi
e0108386:	89 d7 	movl	%edx, %edi
e0108388:	81 f9 50 c3 00 00 	cmpl	$50000, %ecx
e010838e:	73 17 	jae	23 <pit_expect_msb+0x57>
e0108390:	8b 4d ec 	movl	-20(%ebp), %ecx
e0108393:	e8 98 ff ff ff 	calll	-104 <pit_verify_msb>
e0108398:	8d 4b 01 	leal	1(%ebx), %ecx
e010839b:	85 c0 	testl	%eax, %eax
e010839d:	75 e1 	jne	-31 <pit_expect_msb+0x30>
e010839f:	eb 06 	jmp	6 <pit_expect_msb+0x57>
e01083a1:	31 db 	xorl	%ebx, %ebx
e01083a3:	31 f6 	xorl	%esi, %esi
e01083a5:	31 ff 	xorl	%edi, %edi
e01083a7:	0f 31 	rdtsc
e01083a9:	8b 55 08 	movl	8(%ebp), %edx
e01083ac:	89 d1 	movl	%edx, %ecx
e01083ae:	c1 e9 03 	shrl	$3, %ecx
e01083b1:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01083b7:	84 c9 	testb	%cl, %cl
e01083b9:	75 3d 	jne	61 <pit_expect_msb+0xa8>
e01083bb:	29 f0 	subl	%esi, %eax
e01083bd:	89 02 	movl	%eax, (%edx)
e01083bf:	8b 55 f0 	movl	-16(%ebp), %edx
e01083c2:	89 d0 	movl	%edx, %eax
e01083c4:	c1 e8 03 	shrl	$3, %eax
e01083c7:	8a 80 00 00 80 de 	movb	-562036736(%eax), %al
e01083cd:	84 c0 	testb	%al, %al
e01083cf:	75 3f 	jne	63 <pit_expect_msb+0xc0>
e01083d1:	8d 42 07 	leal	7(%edx), %eax
e01083d4:	89 c1 	movl	%eax, %ecx
e01083d6:	c1 e9 03 	shrl	$3, %ecx
e01083d9:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01083df:	84 c9 	testb	%cl, %cl
e01083e1:	75 46 	jne	70 <pit_expect_msb+0xd9>
e01083e3:	89 32 	movl	%esi, (%edx)
e01083e5:	89 7a 04 	movl	%edi, 4(%edx)
e01083e8:	31 c0 	xorl	%eax, %eax
e01083ea:	83 fb 05 	cmpl	$5, %ebx
e01083ed:	0f 97 c0 	seta	%al
e01083f0:	83 c4 1c 	addl	$28, %esp
e01083f3:	5e 	popl	%esi
e01083f4:	5f 	popl	%edi
e01083f5:	5b 	popl	%ebx
e01083f6:	5d 	popl	%ebp
e01083f7:	c3 	retl
e01083f8:	8b 55 08 	movl	8(%ebp), %edx
e01083fb:	80 e2 07 	andb	$7, %dl
e01083fe:	80 c2 03 	addb	$3, %dl
e0108401:	38 ca 	cmpb	%cl, %dl
e0108403:	8b 55 08 	movl	8(%ebp), %edx
e0108406:	7c b3 	jl	-77 <pit_expect_msb+0x6b>
e0108408:	89 14 24 	movl	%edx, (%esp)
e010840b:	e8 a0 03 00 00 	calll	928 <__asan_report_store4>
e0108410:	89 d1 	movl	%edx, %ecx
e0108412:	80 e1 07 	andb	$7, %cl
e0108415:	38 c1 	cmpb	%al, %cl
e0108417:	7c b8 	jl	-72 <pit_expect_msb+0x81>
e0108419:	89 14 24 	movl	%edx, (%esp)
e010841c:	c7 44 24 04 08 00 00 00 	movl	$8, 4(%esp)
e0108424:	e8 47 04 00 00 	calll	1095 <__asan_report_store_n>
e0108429:	89 c2 	movl	%eax, %edx
e010842b:	80 e2 07 	andb	$7, %dl
e010842e:	38 ca 	cmpb	%cl, %dl
e0108430:	8b 55 f0 	movl	-16(%ebp), %edx
e0108433:	7c ae 	jl	-82 <pit_expect_msb+0x93>
e0108435:	89 04 24 	movl	%eax, (%esp)
e0108438:	c7 44 24 04 08 00 00 00 	movl	$8, 4(%esp)
e0108440:	e8 2b 04 00 00 	calll	1067 <__asan_report_store_n>
e0108445:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010844f:	90 	nop

00000000e0108450 asan.module_ctor:
e0108450:	83 ec 0c 	subl	$12, %esp
e0108453:	e8 a8 08 00 00 	calll	2216 <__asan_init>
e0108458:	e8 c3 09 00 00 	calll	2499 <__asan_version_mismatch_check_v8>
e010845d:	83 ec 08 	subl	$8, %esp
e0108460:	6a 06 	pushl	$6
e0108462:	68 c0 19 12 e0 	pushl	$3759282624
e0108467:	e8 c4 08 00 00 	calll	2244 <__asan_register_globals>
e010846c:	83 c4 1c 	addl	$28, %esp
e010846f:	c3 	retl

00000000e0108470 asan.module_dtor:
e0108470:	83 ec 14 	subl	$20, %esp
e0108473:	6a 06 	pushl	$6
e0108475:	68 c0 19 12 e0 	pushl	$3759282624
e010847a:	e8 01 09 00 00 	calll	2305 <__asan_unregister_globals>
e010847f:	83 c4 1c 	addl	$28, %esp
e0108482:	c3 	retl
e0108483:	cc 	int3
e0108484:	cc 	int3
e0108485:	cc 	int3
e0108486:	cc 	int3
e0108487:	cc 	int3
e0108488:	cc 	int3
e0108489:	cc 	int3
e010848a:	cc 	int3
e010848b:	cc 	int3
e010848c:	cc 	int3
e010848d:	cc 	int3
e010848e:	cc 	int3
e010848f:	cc 	int3

00000000e0108490 __spin_initlock:
e0108490:	55 	pushl	%ebp
e0108491:	89 e5 	movl	%esp, %ebp
e0108493:	83 ec 08 	subl	$8, %esp
e0108496:	8b 45 08 	movl	8(%ebp), %eax
e0108499:	89 c1 	movl	%eax, %ecx
e010849b:	c1 e9 03 	shrl	$3, %ecx
e010849e:	8a 89 00 00 80 de 	movb	-562036736(%ecx), %cl
e01084a4:	84 c9 	testb	%cl, %cl
e01084a6:	75 0b 	jne	11 <__spin_initlock+0x23>
e01084a8:	c7 00 00 00 00 00 	movl	$0, (%eax)
e01084ae:	83 c4 08 	addl	$8, %esp
e01084b1:	5d 	popl	%ebp
e01084b2:	c3 	retl
e01084b3:	89 c2 	movl	%eax, %edx
e01084b5:	80 e2 07 	andb	$7, %dl
e01084b8:	80 c2 03 	addb	$3, %dl
e01084bb:	38 ca 	cmpb	%cl, %dl
e01084bd:	7c e9 	jl	-23 <__spin_initlock+0x18>
e01084bf:	89 04 24 	movl	%eax, (%esp)
e01084c2:	e8 e9 02 00 00 	calll	745 <__asan_report_store4>
e01084c7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e01084d0 spin_lock:
e01084d0:	55 	pushl	%ebp
e01084d1:	89 e5 	movl	%esp, %ebp
e01084d3:	56 	pushl	%esi
e01084d4:	50 	pushl	%eax
e01084d5:	8b 75 08 	movl	8(%ebp), %esi
e01084d8:	eb 08 	jmp	8 <spin_lock+0x12>
e01084da:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)
e01084e0:	f3 90 	pause
e01084e2:	89 f1 	movl	%esi, %ecx
e01084e4:	ba 01 00 00 00 	movl	$1, %edx
e01084e9:	e8 12 00 00 00 	calll	18 <xchg>
e01084ee:	85 c0 	testl	%eax, %eax
e01084f0:	75 ee 	jne	-18 <spin_lock+0x10>
e01084f2:	83 c4 04 	addl	$4, %esp
e01084f5:	5e 	popl	%esi
e01084f6:	5d 	popl	%ebp
e01084f7:	c3 	retl
e01084f8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0108500 xchg:
e0108500:	89 d0 	movl	%edx, %eax
e0108502:	f0 	lock
e0108503:	87 01 	xchgl	%eax, (%ecx)
e0108505:	c3 	retl
e0108506:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e0108510 spin_unlock:
e0108510:	8b 4c 24 04 	movl	4(%esp), %ecx
e0108514:	31 d2 	xorl	%edx, %edx
e0108516:	eb e8 	jmp	-24 <xchg>
e0108518:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0108520 asan.module_ctor:
e0108520:	83 ec 0c 	subl	$12, %esp
e0108523:	e8 d8 07 00 00 	calll	2008 <__asan_init>
e0108528:	e8 f3 08 00 00 	calll	2291 <__asan_version_mismatch_check_v8>
e010852d:	83 ec 08 	subl	$8, %esp
e0108530:	6a 01 	pushl	$1
e0108532:	68 80 1a 12 e0 	pushl	$3759282816
e0108537:	e8 f4 07 00 00 	calll	2036 <__asan_register_globals>
e010853c:	83 c4 1c 	addl	$28, %esp
e010853f:	c3 	retl

00000000e0108540 asan.module_dtor:
e0108540:	83 ec 14 	subl	$20, %esp
e0108543:	6a 01 	pushl	$1
e0108545:	68 80 1a 12 e0 	pushl	$3759282816
e010854a:	e8 31 08 00 00 	calll	2097 <__asan_unregister_globals>
e010854f:	83 c4 1c 	addl	$28, %esp
e0108552:	c3 	retl
e0108553:	cc 	int3
e0108554:	cc 	int3
e0108555:	cc 	int3
e0108556:	cc 	int3
e0108557:	cc 	int3
e0108558:	cc 	int3
e0108559:	cc 	int3
e010855a:	cc 	int3
e010855b:	cc 	int3
e010855c:	cc 	int3
e010855d:	cc 	int3
e010855e:	cc 	int3
e010855f:	cc 	int3

00000000e0108560 __asan_load_cxx_array_cookie:
e0108560:	55 	pushl	%ebp
e0108561:	89 e5 	movl	%esp, %ebp
e0108563:	83 ec 08 	subl	$8, %esp
e0108566:	b9 0a a5 10 e0 	movl	$3759187210, %ecx
e010856b:	e8 00 00 00 00 	calll	0 <asan_internal_unsupported>

00000000e0108570 asan_internal_unsupported:
e0108570:	55 	pushl	%ebp
e0108571:	89 e5 	movl	%esp, %ebp
e0108573:	83 ec 08 	subl	$8, %esp
e0108576:	6a 00 	pushl	$0
e0108578:	6a 00 	pushl	$0
e010857a:	6a 00 	pushl	$0
e010857c:	51 	pushl	%ecx
e010857d:	e8 ee 11 00 00 	calll	4590 <platform_asan_fatal>
e0108582:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010858c:	0f 1f 40 00 	nopl	(%eax)

00000000e0108590 __asan_poison_cxx_array_cookie:
e0108590:	55 	pushl	%ebp
e0108591:	89 e5 	movl	%esp, %ebp
e0108593:	83 ec 08 	subl	$8, %esp
e0108596:	b9 bc a1 10 e0 	movl	$3759186364, %ecx
e010859b:	e8 d0 ff ff ff 	calll	-48 <asan_internal_unsupported>

00000000e01085a0 __asan_handle_no_return:
e01085a0:	e9 0b 0d 00 00 	jmp	3339 <asan_internal_fakestack_unpoison>
e01085a5:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01085af:	90 	nop

00000000e01085b0 __asan_load1:
e01085b0:	55 	pushl	%ebp
e01085b1:	89 e5 	movl	%esp, %ebp
e01085b3:	83 ec 08 	subl	$8, %esp
e01085b6:	83 ec 04 	subl	$4, %esp
e01085b9:	6a 01 	pushl	$1
e01085bb:	6a 01 	pushl	$1
e01085bd:	ff 75 08 	pushl	8(%ebp)
e01085c0:	e8 5b 0a 00 00 	calll	2651 <asan_internal_check_range>
e01085c5:	83 c4 18 	addl	$24, %esp
e01085c8:	5d 	popl	%ebp
e01085c9:	c3 	retl
e01085ca:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e01085d0 __asan_load2:
e01085d0:	55 	pushl	%ebp
e01085d1:	89 e5 	movl	%esp, %ebp
e01085d3:	83 ec 08 	subl	$8, %esp
e01085d6:	83 ec 04 	subl	$4, %esp
e01085d9:	6a 01 	pushl	$1
e01085db:	6a 02 	pushl	$2
e01085dd:	ff 75 08 	pushl	8(%ebp)
e01085e0:	e8 3b 0a 00 00 	calll	2619 <asan_internal_check_range>
e01085e5:	83 c4 18 	addl	$24, %esp
e01085e8:	5d 	popl	%ebp
e01085e9:	c3 	retl
e01085ea:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e01085f0 __asan_load4:
e01085f0:	55 	pushl	%ebp
e01085f1:	89 e5 	movl	%esp, %ebp
e01085f3:	83 ec 08 	subl	$8, %esp
e01085f6:	83 ec 04 	subl	$4, %esp
e01085f9:	6a 01 	pushl	$1
e01085fb:	6a 04 	pushl	$4
e01085fd:	ff 75 08 	pushl	8(%ebp)
e0108600:	e8 1b 0a 00 00 	calll	2587 <asan_internal_check_range>
e0108605:	83 c4 18 	addl	$24, %esp
e0108608:	5d 	popl	%ebp
e0108609:	c3 	retl
e010860a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e0108610 __asan_load8:
e0108610:	55 	pushl	%ebp
e0108611:	89 e5 	movl	%esp, %ebp
e0108613:	83 ec 08 	subl	$8, %esp
e0108616:	83 ec 04 	subl	$4, %esp
e0108619:	6a 01 	pushl	$1
e010861b:	6a 08 	pushl	$8
e010861d:	ff 75 08 	pushl	8(%ebp)
e0108620:	e8 fb 09 00 00 	calll	2555 <asan_internal_check_range>
e0108625:	83 c4 18 	addl	$24, %esp
e0108628:	5d 	popl	%ebp
e0108629:	c3 	retl
e010862a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e0108630 __asan_load16:
e0108630:	55 	pushl	%ebp
e0108631:	89 e5 	movl	%esp, %ebp
e0108633:	83 ec 08 	subl	$8, %esp
e0108636:	83 ec 04 	subl	$4, %esp
e0108639:	6a 01 	pushl	$1
e010863b:	6a 10 	pushl	$16
e010863d:	ff 75 08 	pushl	8(%ebp)
e0108640:	e8 db 09 00 00 	calll	2523 <asan_internal_check_range>
e0108645:	83 c4 18 	addl	$24, %esp
e0108648:	5d 	popl	%ebp
e0108649:	c3 	retl
e010864a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e0108650 __asan_store1:
e0108650:	55 	pushl	%ebp
e0108651:	89 e5 	movl	%esp, %ebp
e0108653:	83 ec 08 	subl	$8, %esp
e0108656:	83 ec 04 	subl	$4, %esp
e0108659:	6a 02 	pushl	$2
e010865b:	6a 01 	pushl	$1
e010865d:	ff 75 08 	pushl	8(%ebp)
e0108660:	e8 bb 09 00 00 	calll	2491 <asan_internal_check_range>
e0108665:	83 c4 18 	addl	$24, %esp
e0108668:	5d 	popl	%ebp
e0108669:	c3 	retl
e010866a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e0108670 __asan_store2:
e0108670:	55 	pushl	%ebp
e0108671:	89 e5 	movl	%esp, %ebp
e0108673:	83 ec 08 	subl	$8, %esp
e0108676:	83 ec 04 	subl	$4, %esp
e0108679:	6a 02 	pushl	$2
e010867b:	6a 02 	pushl	$2
e010867d:	ff 75 08 	pushl	8(%ebp)
e0108680:	e8 9b 09 00 00 	calll	2459 <asan_internal_check_range>
e0108685:	83 c4 18 	addl	$24, %esp
e0108688:	5d 	popl	%ebp
e0108689:	c3 	retl
e010868a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e0108690 __asan_store4:
e0108690:	55 	pushl	%ebp
e0108691:	89 e5 	movl	%esp, %ebp
e0108693:	83 ec 08 	subl	$8, %esp
e0108696:	83 ec 04 	subl	$4, %esp
e0108699:	6a 02 	pushl	$2
e010869b:	6a 04 	pushl	$4
e010869d:	ff 75 08 	pushl	8(%ebp)
e01086a0:	e8 7b 09 00 00 	calll	2427 <asan_internal_check_range>
e01086a5:	83 c4 18 	addl	$24, %esp
e01086a8:	5d 	popl	%ebp
e01086a9:	c3 	retl
e01086aa:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e01086b0 __asan_store8:
e01086b0:	55 	pushl	%ebp
e01086b1:	89 e5 	movl	%esp, %ebp
e01086b3:	83 ec 08 	subl	$8, %esp
e01086b6:	83 ec 04 	subl	$4, %esp
e01086b9:	6a 02 	pushl	$2
e01086bb:	6a 08 	pushl	$8
e01086bd:	ff 75 08 	pushl	8(%ebp)
e01086c0:	e8 5b 09 00 00 	calll	2395 <asan_internal_check_range>
e01086c5:	83 c4 18 	addl	$24, %esp
e01086c8:	5d 	popl	%ebp
e01086c9:	c3 	retl
e01086ca:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e01086d0 __asan_store16:
e01086d0:	55 	pushl	%ebp
e01086d1:	89 e5 	movl	%esp, %ebp
e01086d3:	83 ec 08 	subl	$8, %esp
e01086d6:	83 ec 04 	subl	$4, %esp
e01086d9:	6a 02 	pushl	$2
e01086db:	6a 10 	pushl	$16
e01086dd:	ff 75 08 	pushl	8(%ebp)
e01086e0:	e8 3b 09 00 00 	calll	2363 <asan_internal_check_range>
e01086e5:	83 c4 18 	addl	$24, %esp
e01086e8:	5d 	popl	%ebp
e01086e9:	c3 	retl
e01086ea:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e01086f0 __asan_report_load1:
e01086f0:	55 	pushl	%ebp
e01086f1:	89 e5 	movl	%esp, %ebp
e01086f3:	83 ec 08 	subl	$8, %esp
e01086f6:	8b 4d 08 	movl	8(%ebp), %ecx
e01086f9:	c7 04 24 01 00 00 00 	movl	$1, (%esp)
e0108700:	ba 01 00 00 00 	movl	$1, %edx
e0108705:	e8 06 00 00 00 	calll	6 <asan_internal_invalid_access>
e010870a:	83 ec 04 	subl	$4, %esp
e010870d:	0f 1f 00 	nopl	(%eax)

00000000e0108710 asan_internal_invalid_access:
e0108710:	55 	pushl	%ebp
e0108711:	89 e5 	movl	%esp, %ebp
e0108713:	83 ec 08 	subl	$8, %esp
e0108716:	ff 75 08 	pushl	8(%ebp)
e0108719:	52 	pushl	%edx
e010871a:	51 	pushl	%ecx
e010871b:	68 42 a3 10 e0 	pushl	$3759186754
e0108720:	e8 4b 10 00 00 	calll	4171 <platform_asan_fatal>
e0108725:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010872f:	90 	nop

00000000e0108730 __asan_report_store1:
e0108730:	55 	pushl	%ebp
e0108731:	89 e5 	movl	%esp, %ebp
e0108733:	83 ec 08 	subl	$8, %esp
e0108736:	8b 4d 08 	movl	8(%ebp), %ecx
e0108739:	c7 04 24 02 00 00 00 	movl	$2, (%esp)
e0108740:	ba 01 00 00 00 	movl	$1, %edx
e0108745:	e8 c6 ff ff ff 	calll	-58 <asan_internal_invalid_access>
e010874a:	83 ec 04 	subl	$4, %esp
e010874d:	0f 1f 00 	nopl	(%eax)

00000000e0108750 __asan_report_load2:
e0108750:	55 	pushl	%ebp
e0108751:	89 e5 	movl	%esp, %ebp
e0108753:	83 ec 08 	subl	$8, %esp
e0108756:	8b 4d 08 	movl	8(%ebp), %ecx
e0108759:	c7 04 24 01 00 00 00 	movl	$1, (%esp)
e0108760:	ba 02 00 00 00 	movl	$2, %edx
e0108765:	e8 a6 ff ff ff 	calll	-90 <asan_internal_invalid_access>
e010876a:	83 ec 04 	subl	$4, %esp
e010876d:	0f 1f 00 	nopl	(%eax)

00000000e0108770 __asan_report_store2:
e0108770:	55 	pushl	%ebp
e0108771:	89 e5 	movl	%esp, %ebp
e0108773:	83 ec 08 	subl	$8, %esp
e0108776:	8b 4d 08 	movl	8(%ebp), %ecx
e0108779:	c7 04 24 02 00 00 00 	movl	$2, (%esp)
e0108780:	ba 02 00 00 00 	movl	$2, %edx
e0108785:	e8 86 ff ff ff 	calll	-122 <asan_internal_invalid_access>
e010878a:	83 ec 04 	subl	$4, %esp
e010878d:	0f 1f 00 	nopl	(%eax)

00000000e0108790 __asan_report_load4:
e0108790:	55 	pushl	%ebp
e0108791:	89 e5 	movl	%esp, %ebp
e0108793:	83 ec 08 	subl	$8, %esp
e0108796:	8b 4d 08 	movl	8(%ebp), %ecx
e0108799:	c7 04 24 01 00 00 00 	movl	$1, (%esp)
e01087a0:	ba 04 00 00 00 	movl	$4, %edx
e01087a5:	e8 66 ff ff ff 	calll	-154 <asan_internal_invalid_access>
e01087aa:	83 ec 04 	subl	$4, %esp
e01087ad:	0f 1f 00 	nopl	(%eax)

00000000e01087b0 __asan_report_store4:
e01087b0:	55 	pushl	%ebp
e01087b1:	89 e5 	movl	%esp, %ebp
e01087b3:	83 ec 08 	subl	$8, %esp
e01087b6:	8b 4d 08 	movl	8(%ebp), %ecx
e01087b9:	c7 04 24 02 00 00 00 	movl	$2, (%esp)
e01087c0:	ba 04 00 00 00 	movl	$4, %edx
e01087c5:	e8 46 ff ff ff 	calll	-186 <asan_internal_invalid_access>
e01087ca:	83 ec 04 	subl	$4, %esp
e01087cd:	0f 1f 00 	nopl	(%eax)

00000000e01087d0 __asan_report_load8:
e01087d0:	55 	pushl	%ebp
e01087d1:	89 e5 	movl	%esp, %ebp
e01087d3:	83 ec 08 	subl	$8, %esp
e01087d6:	8b 4d 08 	movl	8(%ebp), %ecx
e01087d9:	c7 04 24 01 00 00 00 	movl	$1, (%esp)
e01087e0:	ba 08 00 00 00 	movl	$8, %edx
e01087e5:	e8 26 ff ff ff 	calll	-218 <asan_internal_invalid_access>
e01087ea:	83 ec 04 	subl	$4, %esp
e01087ed:	0f 1f 00 	nopl	(%eax)

00000000e01087f0 __asan_report_store8:
e01087f0:	55 	pushl	%ebp
e01087f1:	89 e5 	movl	%esp, %ebp
e01087f3:	83 ec 08 	subl	$8, %esp
e01087f6:	8b 4d 08 	movl	8(%ebp), %ecx
e01087f9:	c7 04 24 02 00 00 00 	movl	$2, (%esp)
e0108800:	ba 08 00 00 00 	movl	$8, %edx
e0108805:	e8 06 ff ff ff 	calll	-250 <asan_internal_invalid_access>
e010880a:	83 ec 04 	subl	$4, %esp
e010880d:	0f 1f 00 	nopl	(%eax)

00000000e0108810 __asan_report_load16:
e0108810:	55 	pushl	%ebp
e0108811:	89 e5 	movl	%esp, %ebp
e0108813:	83 ec 08 	subl	$8, %esp
e0108816:	8b 4d 08 	movl	8(%ebp), %ecx
e0108819:	c7 04 24 01 00 00 00 	movl	$1, (%esp)
e0108820:	ba 10 00 00 00 	movl	$16, %edx
e0108825:	e8 e6 fe ff ff 	calll	-282 <asan_internal_invalid_access>
e010882a:	83 ec 04 	subl	$4, %esp
e010882d:	0f 1f 00 	nopl	(%eax)

00000000e0108830 __asan_report_store16:
e0108830:	55 	pushl	%ebp
e0108831:	89 e5 	movl	%esp, %ebp
e0108833:	83 ec 08 	subl	$8, %esp
e0108836:	8b 4d 08 	movl	8(%ebp), %ecx
e0108839:	c7 04 24 02 00 00 00 	movl	$2, (%esp)
e0108840:	ba 10 00 00 00 	movl	$16, %edx
e0108845:	e8 c6 fe ff ff 	calll	-314 <asan_internal_invalid_access>
e010884a:	83 ec 04 	subl	$4, %esp
e010884d:	0f 1f 00 	nopl	(%eax)

00000000e0108850 __asan_report_load_n:
e0108850:	55 	pushl	%ebp
e0108851:	89 e5 	movl	%esp, %ebp
e0108853:	83 ec 08 	subl	$8, %esp
e0108856:	8b 4d 08 	movl	8(%ebp), %ecx
e0108859:	8b 55 0c 	movl	12(%ebp), %edx
e010885c:	c7 04 24 01 00 00 00 	movl	$1, (%esp)
e0108863:	e8 a8 fe ff ff 	calll	-344 <asan_internal_invalid_access>
e0108868:	83 ec 04 	subl	$4, %esp
e010886b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108870 __asan_report_store_n:
e0108870:	55 	pushl	%ebp
e0108871:	89 e5 	movl	%esp, %ebp
e0108873:	83 ec 08 	subl	$8, %esp
e0108876:	8b 4d 08 	movl	8(%ebp), %ecx
e0108879:	8b 55 0c 	movl	12(%ebp), %edx
e010887c:	c7 04 24 02 00 00 00 	movl	$2, (%esp)
e0108883:	e8 88 fe ff ff 	calll	-376 <asan_internal_invalid_access>
e0108888:	83 ec 04 	subl	$4, %esp
e010888b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108890 __asan_loadN:
e0108890:	55 	pushl	%ebp
e0108891:	89 e5 	movl	%esp, %ebp
e0108893:	83 ec 08 	subl	$8, %esp
e0108896:	83 ec 04 	subl	$4, %esp
e0108899:	6a 01 	pushl	$1
e010889b:	ff 75 0c 	pushl	12(%ebp)
e010889e:	ff 75 08 	pushl	8(%ebp)
e01088a1:	e8 7a 07 00 00 	calll	1914 <asan_internal_check_range>
e01088a6:	83 c4 18 	addl	$24, %esp
e01088a9:	5d 	popl	%ebp
e01088aa:	c3 	retl
e01088ab:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e01088b0 __asan_storeN:
e01088b0:	55 	pushl	%ebp
e01088b1:	89 e5 	movl	%esp, %ebp
e01088b3:	83 ec 08 	subl	$8, %esp
e01088b6:	83 ec 04 	subl	$4, %esp
e01088b9:	6a 02 	pushl	$2
e01088bb:	ff 75 0c 	pushl	12(%ebp)
e01088be:	ff 75 08 	pushl	8(%ebp)
e01088c1:	e8 5a 07 00 00 	calll	1882 <asan_internal_check_range>
e01088c6:	83 c4 18 	addl	$24, %esp
e01088c9:	5d 	popl	%ebp
e01088ca:	c3 	retl
e01088cb:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e01088d0 __asan_set_shadow_00:
e01088d0:	55 	pushl	%ebp
e01088d1:	89 e5 	movl	%esp, %ebp
e01088d3:	83 ec 08 	subl	$8, %esp
e01088d6:	83 ec 04 	subl	$4, %esp
e01088d9:	ff 75 0c 	pushl	12(%ebp)
e01088dc:	6a 00 	pushl	$0
e01088de:	ff 75 08 	pushl	8(%ebp)
e01088e1:	e8 8a f1 ff ff 	calll	-3702 <memset>
e01088e6:	83 c4 18 	addl	$24, %esp
e01088e9:	5d 	popl	%ebp
e01088ea:	c3 	retl
e01088eb:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e01088f0 __asan_set_shadow_f1:
e01088f0:	55 	pushl	%ebp
e01088f1:	89 e5 	movl	%esp, %ebp
e01088f3:	83 ec 08 	subl	$8, %esp
e01088f6:	83 ec 04 	subl	$4, %esp
e01088f9:	ff 75 0c 	pushl	12(%ebp)
e01088fc:	68 f1 00 00 00 	pushl	$241
e0108901:	ff 75 08 	pushl	8(%ebp)
e0108904:	e8 67 f1 ff ff 	calll	-3737 <memset>
e0108909:	83 c4 18 	addl	$24, %esp
e010890c:	5d 	popl	%ebp
e010890d:	c3 	retl
e010890e:	66 90 	nop

00000000e0108910 __asan_set_shadow_f2:
e0108910:	55 	pushl	%ebp
e0108911:	89 e5 	movl	%esp, %ebp
e0108913:	83 ec 08 	subl	$8, %esp
e0108916:	83 ec 04 	subl	$4, %esp
e0108919:	ff 75 0c 	pushl	12(%ebp)
e010891c:	68 f2 00 00 00 	pushl	$242
e0108921:	ff 75 08 	pushl	8(%ebp)
e0108924:	e8 47 f1 ff ff 	calll	-3769 <memset>
e0108929:	83 c4 18 	addl	$24, %esp
e010892c:	5d 	popl	%ebp
e010892d:	c3 	retl
e010892e:	66 90 	nop

00000000e0108930 __asan_set_shadow_f3:
e0108930:	55 	pushl	%ebp
e0108931:	89 e5 	movl	%esp, %ebp
e0108933:	83 ec 08 	subl	$8, %esp
e0108936:	83 ec 04 	subl	$4, %esp
e0108939:	ff 75 0c 	pushl	12(%ebp)
e010893c:	68 f3 00 00 00 	pushl	$243
e0108941:	ff 75 08 	pushl	8(%ebp)
e0108944:	e8 27 f1 ff ff 	calll	-3801 <memset>
e0108949:	83 c4 18 	addl	$24, %esp
e010894c:	5d 	popl	%ebp
e010894d:	c3 	retl
e010894e:	66 90 	nop

00000000e0108950 __asan_set_shadow_f5:
e0108950:	55 	pushl	%ebp
e0108951:	89 e5 	movl	%esp, %ebp
e0108953:	83 ec 08 	subl	$8, %esp
e0108956:	83 ec 04 	subl	$4, %esp
e0108959:	ff 75 0c 	pushl	12(%ebp)
e010895c:	68 f5 00 00 00 	pushl	$245
e0108961:	ff 75 08 	pushl	8(%ebp)
e0108964:	e8 07 f1 ff ff 	calll	-3833 <memset>
e0108969:	83 c4 18 	addl	$24, %esp
e010896c:	5d 	popl	%ebp
e010896d:	c3 	retl
e010896e:	66 90 	nop

00000000e0108970 __asan_set_shadow_f8:
e0108970:	55 	pushl	%ebp
e0108971:	89 e5 	movl	%esp, %ebp
e0108973:	83 ec 08 	subl	$8, %esp
e0108976:	83 ec 04 	subl	$4, %esp
e0108979:	ff 75 0c 	pushl	12(%ebp)
e010897c:	68 f8 00 00 00 	pushl	$248
e0108981:	ff 75 08 	pushl	8(%ebp)
e0108984:	e8 e7 f0 ff ff 	calll	-3865 <memset>
e0108989:	83 c4 18 	addl	$24, %esp
e010898c:	5d 	popl	%ebp
e010898d:	c3 	retl
e010898e:	66 90 	nop

00000000e0108990 __asan_stack_malloc_0:
e0108990:	55 	pushl	%ebp
e0108991:	89 e5 	movl	%esp, %ebp
e0108993:	83 ec 08 	subl	$8, %esp
e0108996:	83 ec 0c 	subl	$12, %esp
e0108999:	ff 75 08 	pushl	8(%ebp)
e010899c:	6a 50 	pushl	$80
e010899e:	6a 00 	pushl	$0
e01089a0:	68 f0 2e 12 e0 	pushl	$3759288048
e01089a5:	68 e4 2e 12 e0 	pushl	$3759288036
e01089aa:	e8 b1 07 00 00 	calll	1969 <asan_internal_fakestack_alloc>
e01089af:	83 c4 28 	addl	$40, %esp
e01089b2:	5d 	popl	%ebp
e01089b3:	c3 	retl
e01089b4:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01089be:	66 90 	nop

00000000e01089c0 __asan_stack_free_0:
e01089c0:	55 	pushl	%ebp
e01089c1:	89 e5 	movl	%esp, %ebp
e01089c3:	83 ec 08 	subl	$8, %esp
e01089c6:	83 ec 04 	subl	$4, %esp
e01089c9:	ff 75 0c 	pushl	12(%ebp)
e01089cc:	ff 75 08 	pushl	8(%ebp)
e01089cf:	6a 50 	pushl	$80
e01089d1:	e8 aa 08 00 00 	calll	2218 <asan_internal_fakestack_free>
e01089d6:	83 c4 18 	addl	$24, %esp
e01089d9:	5d 	popl	%ebp
e01089da:	c3 	retl
e01089db:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e01089e0 __asan_stack_malloc_1:
e01089e0:	55 	pushl	%ebp
e01089e1:	89 e5 	movl	%esp, %ebp
e01089e3:	83 ec 08 	subl	$8, %esp
e01089e6:	83 ec 0c 	subl	$12, %esp
e01089e9:	ff 75 08 	pushl	8(%ebp)
e01089ec:	68 90 00 00 00 	pushl	$144
e01089f1:	6a 00 	pushl	$0
e01089f3:	68 00 2f 12 e0 	pushl	$3759288064
e01089f8:	68 f4 2e 12 e0 	pushl	$3759288052
e01089fd:	e8 5e 07 00 00 	calll	1886 <asan_internal_fakestack_alloc>
e0108a02:	83 c4 28 	addl	$40, %esp
e0108a05:	5d 	popl	%ebp
e0108a06:	c3 	retl
e0108a07:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0108a10 __asan_stack_free_1:
e0108a10:	55 	pushl	%ebp
e0108a11:	89 e5 	movl	%esp, %ebp
e0108a13:	83 ec 08 	subl	$8, %esp
e0108a16:	83 ec 04 	subl	$4, %esp
e0108a19:	ff 75 0c 	pushl	12(%ebp)
e0108a1c:	ff 75 08 	pushl	8(%ebp)
e0108a1f:	68 90 00 00 00 	pushl	$144
e0108a24:	e8 57 08 00 00 	calll	2135 <asan_internal_fakestack_free>
e0108a29:	83 c4 18 	addl	$24, %esp
e0108a2c:	5d 	popl	%ebp
e0108a2d:	c3 	retl
e0108a2e:	66 90 	nop

00000000e0108a30 __asan_stack_malloc_2:
e0108a30:	55 	pushl	%ebp
e0108a31:	89 e5 	movl	%esp, %ebp
e0108a33:	83 ec 08 	subl	$8, %esp
e0108a36:	83 ec 0c 	subl	$12, %esp
e0108a39:	ff 75 08 	pushl	8(%ebp)
e0108a3c:	68 10 01 00 00 	pushl	$272
e0108a41:	6a 00 	pushl	$0
e0108a43:	68 10 2f 12 e0 	pushl	$3759288080
e0108a48:	68 04 2f 12 e0 	pushl	$3759288068
e0108a4d:	e8 0e 07 00 00 	calll	1806 <asan_internal_fakestack_alloc>
e0108a52:	83 c4 28 	addl	$40, %esp
e0108a55:	5d 	popl	%ebp
e0108a56:	c3 	retl
e0108a57:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0108a60 __asan_stack_free_2:
e0108a60:	55 	pushl	%ebp
e0108a61:	89 e5 	movl	%esp, %ebp
e0108a63:	83 ec 08 	subl	$8, %esp
e0108a66:	83 ec 04 	subl	$4, %esp
e0108a69:	ff 75 0c 	pushl	12(%ebp)
e0108a6c:	ff 75 08 	pushl	8(%ebp)
e0108a6f:	68 10 01 00 00 	pushl	$272
e0108a74:	e8 07 08 00 00 	calll	2055 <asan_internal_fakestack_free>
e0108a79:	83 c4 18 	addl	$24, %esp
e0108a7c:	5d 	popl	%ebp
e0108a7d:	c3 	retl
e0108a7e:	66 90 	nop

00000000e0108a80 __asan_stack_malloc_3:
e0108a80:	55 	pushl	%ebp
e0108a81:	89 e5 	movl	%esp, %ebp
e0108a83:	83 ec 08 	subl	$8, %esp
e0108a86:	83 ec 0c 	subl	$12, %esp
e0108a89:	ff 75 08 	pushl	8(%ebp)
e0108a8c:	68 10 02 00 00 	pushl	$528
e0108a91:	6a 00 	pushl	$0
e0108a93:	68 20 2f 12 e0 	pushl	$3759288096
e0108a98:	68 14 2f 12 e0 	pushl	$3759288084
e0108a9d:	e8 be 06 00 00 	calll	1726 <asan_internal_fakestack_alloc>
e0108aa2:	83 c4 28 	addl	$40, %esp
e0108aa5:	5d 	popl	%ebp
e0108aa6:	c3 	retl
e0108aa7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0108ab0 __asan_stack_free_3:
e0108ab0:	55 	pushl	%ebp
e0108ab1:	89 e5 	movl	%esp, %ebp
e0108ab3:	83 ec 08 	subl	$8, %esp
e0108ab6:	83 ec 04 	subl	$4, %esp
e0108ab9:	ff 75 0c 	pushl	12(%ebp)
e0108abc:	ff 75 08 	pushl	8(%ebp)
e0108abf:	68 10 02 00 00 	pushl	$528
e0108ac4:	e8 b7 07 00 00 	calll	1975 <asan_internal_fakestack_free>
e0108ac9:	83 c4 18 	addl	$24, %esp
e0108acc:	5d 	popl	%ebp
e0108acd:	c3 	retl
e0108ace:	66 90 	nop

00000000e0108ad0 __asan_stack_malloc_4:
e0108ad0:	55 	pushl	%ebp
e0108ad1:	89 e5 	movl	%esp, %ebp
e0108ad3:	83 ec 08 	subl	$8, %esp
e0108ad6:	83 ec 0c 	subl	$12, %esp
e0108ad9:	ff 75 08 	pushl	8(%ebp)
e0108adc:	68 10 04 00 00 	pushl	$1040
e0108ae1:	6a 00 	pushl	$0
e0108ae3:	68 30 2f 12 e0 	pushl	$3759288112
e0108ae8:	68 24 2f 12 e0 	pushl	$3759288100
e0108aed:	e8 6e 06 00 00 	calll	1646 <asan_internal_fakestack_alloc>
e0108af2:	83 c4 28 	addl	$40, %esp
e0108af5:	5d 	popl	%ebp
e0108af6:	c3 	retl
e0108af7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0108b00 __asan_stack_free_4:
e0108b00:	55 	pushl	%ebp
e0108b01:	89 e5 	movl	%esp, %ebp
e0108b03:	83 ec 08 	subl	$8, %esp
e0108b06:	83 ec 04 	subl	$4, %esp
e0108b09:	ff 75 0c 	pushl	12(%ebp)
e0108b0c:	ff 75 08 	pushl	8(%ebp)
e0108b0f:	68 10 04 00 00 	pushl	$1040
e0108b14:	e8 67 07 00 00 	calll	1895 <asan_internal_fakestack_free>
e0108b19:	83 c4 18 	addl	$24, %esp
e0108b1c:	5d 	popl	%ebp
e0108b1d:	c3 	retl
e0108b1e:	66 90 	nop

00000000e0108b20 __asan_stack_malloc_5:
e0108b20:	55 	pushl	%ebp
e0108b21:	89 e5 	movl	%esp, %ebp
e0108b23:	83 ec 08 	subl	$8, %esp
e0108b26:	83 ec 0c 	subl	$12, %esp
e0108b29:	ff 75 08 	pushl	8(%ebp)
e0108b2c:	68 10 08 00 00 	pushl	$2064
e0108b31:	6a 00 	pushl	$0
e0108b33:	68 40 2f 12 e0 	pushl	$3759288128
e0108b38:	68 34 2f 12 e0 	pushl	$3759288116
e0108b3d:	e8 1e 06 00 00 	calll	1566 <asan_internal_fakestack_alloc>
e0108b42:	83 c4 28 	addl	$40, %esp
e0108b45:	5d 	popl	%ebp
e0108b46:	c3 	retl
e0108b47:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0108b50 __asan_stack_free_5:
e0108b50:	55 	pushl	%ebp
e0108b51:	89 e5 	movl	%esp, %ebp
e0108b53:	83 ec 08 	subl	$8, %esp
e0108b56:	83 ec 04 	subl	$4, %esp
e0108b59:	ff 75 0c 	pushl	12(%ebp)
e0108b5c:	ff 75 08 	pushl	8(%ebp)
e0108b5f:	68 10 08 00 00 	pushl	$2064
e0108b64:	e8 17 07 00 00 	calll	1815 <asan_internal_fakestack_free>
e0108b69:	83 c4 18 	addl	$24, %esp
e0108b6c:	5d 	popl	%ebp
e0108b6d:	c3 	retl
e0108b6e:	66 90 	nop

00000000e0108b70 __asan_stack_malloc_6:
e0108b70:	55 	pushl	%ebp
e0108b71:	89 e5 	movl	%esp, %ebp
e0108b73:	83 ec 08 	subl	$8, %esp
e0108b76:	83 ec 0c 	subl	$12, %esp
e0108b79:	ff 75 08 	pushl	8(%ebp)
e0108b7c:	68 10 10 00 00 	pushl	$4112
e0108b81:	6a 00 	pushl	$0
e0108b83:	68 50 2f 12 e0 	pushl	$3759288144
e0108b88:	68 44 2f 12 e0 	pushl	$3759288132
e0108b8d:	e8 ce 05 00 00 	calll	1486 <asan_internal_fakestack_alloc>
e0108b92:	83 c4 28 	addl	$40, %esp
e0108b95:	5d 	popl	%ebp
e0108b96:	c3 	retl
e0108b97:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0108ba0 __asan_stack_free_6:
e0108ba0:	55 	pushl	%ebp
e0108ba1:	89 e5 	movl	%esp, %ebp
e0108ba3:	83 ec 08 	subl	$8, %esp
e0108ba6:	83 ec 04 	subl	$4, %esp
e0108ba9:	ff 75 0c 	pushl	12(%ebp)
e0108bac:	ff 75 08 	pushl	8(%ebp)
e0108baf:	68 10 10 00 00 	pushl	$4112
e0108bb4:	e8 c7 06 00 00 	calll	1735 <asan_internal_fakestack_free>
e0108bb9:	83 c4 18 	addl	$24, %esp
e0108bbc:	5d 	popl	%ebp
e0108bbd:	c3 	retl
e0108bbe:	66 90 	nop

00000000e0108bc0 __asan_stack_malloc_7:
e0108bc0:	55 	pushl	%ebp
e0108bc1:	89 e5 	movl	%esp, %ebp
e0108bc3:	83 ec 08 	subl	$8, %esp
e0108bc6:	83 ec 0c 	subl	$12, %esp
e0108bc9:	ff 75 08 	pushl	8(%ebp)
e0108bcc:	68 10 20 00 00 	pushl	$8208
e0108bd1:	6a 00 	pushl	$0
e0108bd3:	68 60 2f 12 e0 	pushl	$3759288160
e0108bd8:	68 54 2f 12 e0 	pushl	$3759288148
e0108bdd:	e8 7e 05 00 00 	calll	1406 <asan_internal_fakestack_alloc>
e0108be2:	83 c4 28 	addl	$40, %esp
e0108be5:	5d 	popl	%ebp
e0108be6:	c3 	retl
e0108be7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0108bf0 __asan_stack_free_7:
e0108bf0:	55 	pushl	%ebp
e0108bf1:	89 e5 	movl	%esp, %ebp
e0108bf3:	83 ec 08 	subl	$8, %esp
e0108bf6:	83 ec 04 	subl	$4, %esp
e0108bf9:	ff 75 0c 	pushl	12(%ebp)
e0108bfc:	ff 75 08 	pushl	8(%ebp)
e0108bff:	68 10 20 00 00 	pushl	$8208
e0108c04:	e8 77 06 00 00 	calll	1655 <asan_internal_fakestack_free>
e0108c09:	83 c4 18 	addl	$24, %esp
e0108c0c:	5d 	popl	%ebp
e0108c0d:	c3 	retl
e0108c0e:	66 90 	nop

00000000e0108c10 __asan_stack_malloc_8:
e0108c10:	55 	pushl	%ebp
e0108c11:	89 e5 	movl	%esp, %ebp
e0108c13:	83 ec 08 	subl	$8, %esp
e0108c16:	83 ec 0c 	subl	$12, %esp
e0108c19:	ff 75 08 	pushl	8(%ebp)
e0108c1c:	68 10 40 00 00 	pushl	$16400
e0108c21:	6a 00 	pushl	$0
e0108c23:	68 70 2f 12 e0 	pushl	$3759288176
e0108c28:	68 64 2f 12 e0 	pushl	$3759288164
e0108c2d:	e8 2e 05 00 00 	calll	1326 <asan_internal_fakestack_alloc>
e0108c32:	83 c4 28 	addl	$40, %esp
e0108c35:	5d 	popl	%ebp
e0108c36:	c3 	retl
e0108c37:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0108c40 __asan_stack_free_8:
e0108c40:	55 	pushl	%ebp
e0108c41:	89 e5 	movl	%esp, %ebp
e0108c43:	83 ec 08 	subl	$8, %esp
e0108c46:	83 ec 04 	subl	$4, %esp
e0108c49:	ff 75 0c 	pushl	12(%ebp)
e0108c4c:	ff 75 08 	pushl	8(%ebp)
e0108c4f:	68 10 40 00 00 	pushl	$16400
e0108c54:	e8 27 06 00 00 	calll	1575 <asan_internal_fakestack_free>
e0108c59:	83 c4 18 	addl	$24, %esp
e0108c5c:	5d 	popl	%ebp
e0108c5d:	c3 	retl
e0108c5e:	66 90 	nop

00000000e0108c60 __asan_stack_malloc_9:
e0108c60:	55 	pushl	%ebp
e0108c61:	89 e5 	movl	%esp, %ebp
e0108c63:	83 ec 08 	subl	$8, %esp
e0108c66:	83 ec 0c 	subl	$12, %esp
e0108c69:	ff 75 08 	pushl	8(%ebp)
e0108c6c:	68 10 80 00 00 	pushl	$32784
e0108c71:	6a 00 	pushl	$0
e0108c73:	68 80 2f 12 e0 	pushl	$3759288192
e0108c78:	68 74 2f 12 e0 	pushl	$3759288180
e0108c7d:	e8 de 04 00 00 	calll	1246 <asan_internal_fakestack_alloc>
e0108c82:	83 c4 28 	addl	$40, %esp
e0108c85:	5d 	popl	%ebp
e0108c86:	c3 	retl
e0108c87:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0108c90 __asan_stack_free_9:
e0108c90:	55 	pushl	%ebp
e0108c91:	89 e5 	movl	%esp, %ebp
e0108c93:	83 ec 08 	subl	$8, %esp
e0108c96:	83 ec 04 	subl	$4, %esp
e0108c99:	ff 75 0c 	pushl	12(%ebp)
e0108c9c:	ff 75 08 	pushl	8(%ebp)
e0108c9f:	68 10 80 00 00 	pushl	$32784
e0108ca4:	e8 d7 05 00 00 	calll	1495 <asan_internal_fakestack_free>
e0108ca9:	83 c4 18 	addl	$24, %esp
e0108cac:	5d 	popl	%ebp
e0108cad:	c3 	retl
e0108cae:	66 90 	nop

00000000e0108cb0 __asan_stack_malloc_10:
e0108cb0:	55 	pushl	%ebp
e0108cb1:	89 e5 	movl	%esp, %ebp
e0108cb3:	83 ec 08 	subl	$8, %esp
e0108cb6:	83 ec 0c 	subl	$12, %esp
e0108cb9:	ff 75 08 	pushl	8(%ebp)
e0108cbc:	68 10 00 01 00 	pushl	$65552
e0108cc1:	6a 00 	pushl	$0
e0108cc3:	68 90 2f 12 e0 	pushl	$3759288208
e0108cc8:	68 84 2f 12 e0 	pushl	$3759288196
e0108ccd:	e8 8e 04 00 00 	calll	1166 <asan_internal_fakestack_alloc>
e0108cd2:	83 c4 28 	addl	$40, %esp
e0108cd5:	5d 	popl	%ebp
e0108cd6:	c3 	retl
e0108cd7:	66 0f 1f 84 00 00 00 00 00 	nopw	(%eax,%eax)

00000000e0108ce0 __asan_stack_free_10:
e0108ce0:	55 	pushl	%ebp
e0108ce1:	89 e5 	movl	%esp, %ebp
e0108ce3:	83 ec 08 	subl	$8, %esp
e0108ce6:	83 ec 04 	subl	$4, %esp
e0108ce9:	ff 75 0c 	pushl	12(%ebp)
e0108cec:	ff 75 08 	pushl	8(%ebp)
e0108cef:	68 10 00 01 00 	pushl	$65552
e0108cf4:	e8 87 05 00 00 	calll	1415 <asan_internal_fakestack_free>
e0108cf9:	83 c4 18 	addl	$24, %esp
e0108cfc:	5d 	popl	%ebp
e0108cfd:	c3 	retl
e0108cfe:	66 90 	nop

00000000e0108d00 __asan_init:
e0108d00:	80 3d 94 2f 12 e0 00 	cmpb	$0, -535679084
e0108d07:	74 01 	je	1 <__asan_init+0xa>
e0108d09:	c3 	retl
e0108d0a:	55 	pushl	%ebp
e0108d0b:	89 e5 	movl	%esp, %ebp
e0108d0d:	83 ec 08 	subl	$8, %esp
e0108d10:	e8 7b 09 00 00 	calll	2427 <platform_asan_init>
e0108d15:	c6 05 94 2f 12 e0 01 	movb	$1, -535679084
e0108d1c:	83 c4 08 	addl	$8, %esp
e0108d1f:	5d 	popl	%ebp
e0108d20:	c3 	retl
e0108d21:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108d2b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108d30 __asan_register_globals:
e0108d30:	55 	pushl	%ebp
e0108d31:	89 e5 	movl	%esp, %ebp
e0108d33:	57 	pushl	%edi
e0108d34:	56 	pushl	%esi
e0108d35:	8b 75 0c 	movl	12(%ebp), %esi
e0108d38:	85 f6 	testl	%esi, %esi
e0108d3a:	74 38 	je	56 <__asan_register_globals+0x44>
e0108d3c:	8b 7d 08 	movl	8(%ebp), %edi
e0108d3f:	83 c7 08 	addl	$8, %edi
e0108d42:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108d4c:	0f 1f 40 00 	nopl	(%eax)
e0108d50:	8b 47 fc 	movl	-4(%edi), %eax
e0108d53:	8b 0f 	movl	(%edi), %ecx
e0108d55:	8b 57 f8 	movl	-8(%edi), %edx
e0108d58:	01 c2 	addl	%eax, %edx
e0108d5a:	29 c1 	subl	%eax, %ecx
e0108d5c:	83 ec 04 	subl	$4, %esp
e0108d5f:	68 f9 00 00 00 	pushl	$249
e0108d64:	51 	pushl	%ecx
e0108d65:	52 	pushl	%edx
e0108d66:	e8 25 02 00 00 	calll	549 <asan_internal_fill_range>
e0108d6b:	83 c4 10 	addl	$16, %esp
e0108d6e:	83 c7 20 	addl	$32, %edi
e0108d71:	4e 	decl	%esi
e0108d72:	75 dc 	jne	-36 <__asan_register_globals+0x20>
e0108d74:	5e 	popl	%esi
e0108d75:	5f 	popl	%edi
e0108d76:	5d 	popl	%ebp
e0108d77:	c3 	retl
e0108d78:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0108d80 __asan_unregister_globals:
e0108d80:	55 	pushl	%ebp
e0108d81:	89 e5 	movl	%esp, %ebp
e0108d83:	57 	pushl	%edi
e0108d84:	56 	pushl	%esi
e0108d85:	8b 75 0c 	movl	12(%ebp), %esi
e0108d88:	85 f6 	testl	%esi, %esi
e0108d8a:	74 35 	je	53 <__asan_unregister_globals+0x41>
e0108d8c:	8b 7d 08 	movl	8(%ebp), %edi
e0108d8f:	83 c7 08 	addl	$8, %edi
e0108d92:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108d9c:	0f 1f 40 00 	nopl	(%eax)
e0108da0:	8b 47 fc 	movl	-4(%edi), %eax
e0108da3:	8b 0f 	movl	(%edi), %ecx
e0108da5:	8b 57 f8 	movl	-8(%edi), %edx
e0108da8:	01 c2 	addl	%eax, %edx
e0108daa:	29 c1 	subl	%eax, %ecx
e0108dac:	83 ec 04 	subl	$4, %esp
e0108daf:	6a 00 	pushl	$0
e0108db1:	51 	pushl	%ecx
e0108db2:	52 	pushl	%edx
e0108db3:	e8 d8 01 00 00 	calll	472 <asan_internal_fill_range>
e0108db8:	83 c4 10 	addl	$16, %esp
e0108dbb:	83 c7 20 	addl	$32, %edi
e0108dbe:	4e 	decl	%esi
e0108dbf:	75 df 	jne	-33 <__asan_unregister_globals+0x20>
e0108dc1:	5e 	popl	%esi
e0108dc2:	5f 	popl	%edi
e0108dc3:	5d 	popl	%ebp
e0108dc4:	c3 	retl
e0108dc5:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108dcf:	90 	nop

00000000e0108dd0 __asan_register_image_globals:
e0108dd0:	c3 	retl
e0108dd1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108ddb:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108de0 __asan_unregister_image_globals:
e0108de0:	c3 	retl
e0108de1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108deb:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108df0 __asan_init_v5:
e0108df0:	c3 	retl
e0108df1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108dfb:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108e00 __asan_before_dynamic_init:
e0108e00:	c3 	retl
e0108e01:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e0b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108e10 __asan_after_dynamic_init:
e0108e10:	c3 	retl
e0108e11:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e1b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108e20 __asan_version_mismatch_check_v8:
e0108e20:	c3 	retl
e0108e21:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e2b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108e30 __asan_alloca_poison:
e0108e30:	c3 	retl
e0108e31:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e3b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108e40 __asan_allocas_unpoison:
e0108e40:	c3 	retl
e0108e41:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e4b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108e50 __sanitizer_ptr_sub:
e0108e50:	c3 	retl
e0108e51:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e5b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108e60 __sanitizer_ptr_cmp:
e0108e60:	c3 	retl
e0108e61:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e6b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108e70 __asan_poison_stack_memory:
e0108e70:	c3 	retl
e0108e71:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e7b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108e80 __asan_unpoison_stack_memory:
e0108e80:	c3 	retl
e0108e81:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e8b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108e90 __sanitizer_annotate_contiguous_container:
e0108e90:	c3 	retl
e0108e91:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108e9b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0108ea0 asan.module_ctor:
e0108ea0:	83 ec 0c 	subl	$12, %esp
e0108ea3:	e8 58 fe ff ff 	calll	-424 <__asan_init>
e0108ea8:	e8 73 ff ff ff 	calll	-141 <__asan_version_mismatch_check_v8>
e0108ead:	83 c4 0c 	addl	$12, %esp
e0108eb0:	c3 	retl
e0108eb1:	cc 	int3
e0108eb2:	cc 	int3
e0108eb3:	cc 	int3
e0108eb4:	cc 	int3
e0108eb5:	cc 	int3
e0108eb6:	cc 	int3
e0108eb7:	cc 	int3
e0108eb8:	cc 	int3
e0108eb9:	cc 	int3
e0108eba:	cc 	int3
e0108ebb:	cc 	int3
e0108ebc:	cc 	int3
e0108ebd:	cc 	int3
e0108ebe:	cc 	int3
e0108ebf:	cc 	int3

00000000e0108ec0 asan_internal_range_poisoned:
e0108ec0:	55 	pushl	%ebp
e0108ec1:	53 	pushl	%ebx
e0108ec2:	57 	pushl	%edi
e0108ec3:	56 	pushl	%esi
e0108ec4:	83 ec 10 	subl	$16, %esp
e0108ec7:	8a 44 24 30 	movb	48(%esp), %al
e0108ecb:	88 44 24 03 	movb	%al, 3(%esp)
e0108ecf:	8b 4c 24 28 	movl	40(%esp), %ecx
e0108ed3:	8d 71 07 	leal	7(%ecx), %esi
e0108ed6:	c1 ee 03 	shrl	$3, %esi
e0108ed9:	0f 84 9e 00 00 00 	je	158 <asan_internal_range_poisoned+0xbd>
e0108edf:	8b 5c 24 24 	movl	36(%esp), %ebx
e0108ee3:	89 df 	movl	%ebx, %edi
e0108ee5:	83 e7 f8 	andl	$-8, %edi
e0108ee8:	c1 eb 03 	shrl	$3, %ebx
e0108eeb:	03 1d a0 2f 12 e0 	addl	-535679072, %ebx
e0108ef1:	8b 2d 98 2f 12 e0 	movl	-535679080, %ebp
e0108ef7:	a1 9c 2f 12 e0 	movl	3759288220, %eax
e0108efc:	89 44 24 0c 	movl	%eax, 12(%esp)
e0108f00:	a1 a4 2f 12 e0 	movl	3759288228, %eax
e0108f05:	89 44 24 08 	movl	%eax, 8(%esp)
e0108f09:	31 d2 	xorl	%edx, %edx
e0108f0b:	a1 a8 2f 12 e0 	movl	3759288232, %eax
e0108f10:	89 44 24 04 	movl	%eax, 4(%esp)
e0108f14:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108f1e:	66 90 	nop
e0108f20:	8d 04 13 	leal	(%ebx,%edx), %eax
e0108f23:	39 e8 	cmpl	%ebp, %eax
e0108f25:	72 06 	jb	6 <asan_internal_range_poisoned+0x6d>
e0108f27:	3b 44 24 0c 	cmpl	12(%esp), %eax
e0108f2b:	72 0c 	jb	12 <asan_internal_range_poisoned+0x79>
e0108f2d:	3b 44 24 08 	cmpl	8(%esp), %eax
e0108f31:	72 2e 	jb	46 <asan_internal_range_poisoned+0xa1>
e0108f33:	3b 44 24 04 	cmpl	4(%esp), %eax
e0108f37:	73 28 	jae	40 <asan_internal_range_poisoned+0xa1>
e0108f39:	0f b6 00 	movzbl	(%eax), %eax
e0108f3c:	80 7c 24 30 00 	cmpb	$0, 48(%esp)
e0108f41:	74 0d 	je	13 <asan_internal_range_poisoned+0x90>
e0108f43:	3c 08 	cmpb	$8, %al
e0108f45:	76 16 	jbe	22 <asan_internal_range_poisoned+0x9d>
e0108f47:	eb 18 	jmp	24 <asan_internal_range_poisoned+0xa1>
e0108f49:	0f 1f 80 00 00 00 00 	nopl	(%eax)
e0108f50:	84 c0 	testb	%al, %al
e0108f52:	74 0d 	je	13 <asan_internal_range_poisoned+0xa1>
e0108f54:	3c 07 	cmpb	$7, %al
e0108f56:	77 16 	ja	22 <asan_internal_range_poisoned+0xae>
e0108f58:	83 f9 08 	cmpl	$8, %ecx
e0108f5b:	77 11 	ja	17 <asan_internal_range_poisoned+0xae>
e0108f5d:	39 c1 	cmpl	%eax, %ecx
e0108f5f:	77 0d 	ja	13 <asan_internal_range_poisoned+0xae>
e0108f61:	42 	incl	%edx
e0108f62:	83 c1 f8 	addl	$-8, %ecx
e0108f65:	83 c7 08 	addl	$8, %edi
e0108f68:	39 f2 	cmpl	%esi, %edx
e0108f6a:	72 b4 	jb	-76 <asan_internal_range_poisoned+0x60>
e0108f6c:	eb 0f 	jmp	15 <asan_internal_range_poisoned+0xbd>
e0108f6e:	8b 44 24 2c 	movl	44(%esp), %eax
e0108f72:	85 c0 	testl	%eax, %eax
e0108f74:	74 02 	je	2 <asan_internal_range_poisoned+0xb8>
e0108f76:	89 38 	movl	%edi, (%eax)
e0108f78:	80 74 24 03 01 	xorb	$1, 3(%esp)
e0108f7d:	8a 44 24 03 	movb	3(%esp), %al
e0108f81:	83 c4 10 	addl	$16, %esp
e0108f84:	5e 	popl	%esi
e0108f85:	5f 	popl	%edi
e0108f86:	5b 	popl	%ebx
e0108f87:	5d 	popl	%ebp
e0108f88:	c3 	retl
e0108f89:	0f 1f 80 00 00 00 00 	nopl	(%eax)

00000000e0108f90 asan_internal_fill_range:
e0108f90:	53 	pushl	%ebx
e0108f91:	56 	pushl	%esi
e0108f92:	50 	pushl	%eax
e0108f93:	8b 44 24 14 	movl	20(%esp), %eax
e0108f97:	8b 4c 24 10 	movl	16(%esp), %ecx
e0108f9b:	89 ce 	movl	%ecx, %esi
e0108f9d:	83 e6 07 	andl	$7, %esi
e0108fa0:	74 0f 	je	15 <asan_internal_fill_range+0x21>
e0108fa2:	ba 08 00 00 00 	movl	$8, %edx
e0108fa7:	29 f2 	subl	%esi, %edx
e0108fa9:	39 c2 	cmpl	%eax, %edx
e0108fab:	73 65 	jae	101 <asan_internal_fill_range+0x82>
e0108fad:	01 d1 	addl	%edx, %ecx
e0108faf:	29 d0 	subl	%edx, %eax
e0108fb1:	8d 50 07 	leal	7(%eax), %edx
e0108fb4:	c1 ea 03 	shrl	$3, %edx
e0108fb7:	74 59 	je	89 <asan_internal_fill_range+0x82>
e0108fb9:	8a 5c 24 18 	movb	24(%esp), %bl
e0108fbd:	c1 e9 03 	shrl	$3, %ecx
e0108fc0:	03 0d a0 2f 12 e0 	addl	-535679072, %ecx
e0108fc6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0108fd0:	3b 0d 98 2f 12 e0 	cmpl	-535679080, %ecx
e0108fd6:	72 08 	jb	8 <asan_internal_fill_range+0x50>
e0108fd8:	3b 0d 9c 2f 12 e0 	cmpl	-535679076, %ecx
e0108fde:	72 10 	jb	16 <asan_internal_fill_range+0x60>
e0108fe0:	3b 0d a4 2f 12 e0 	cmpl	-535679068, %ecx
e0108fe6:	72 23 	jb	35 <asan_internal_fill_range+0x7b>
e0108fe8:	3b 0d a8 2f 12 e0 	cmpl	-535679064, %ecx
e0108fee:	73 1b 	jae	27 <asan_internal_fill_range+0x7b>
e0108ff0:	83 f8 07 	cmpl	$7, %eax
e0108ff3:	88 df 	movb	%bl, %bh
e0108ff5:	77 02 	ja	2 <asan_internal_fill_range+0x69>
e0108ff7:	88 c7 	movb	%al, %bh
e0108ff9:	88 7c 24 03 	movb	%bh, 3(%esp)
e0108ffd:	84 db 	testb	%bl, %bl
e0108fff:	88 df 	movb	%bl, %bh
e0109001:	74 04 	je	4 <asan_internal_fill_range+0x77>
e0109003:	8a 5c 24 03 	movb	3(%esp), %bl
e0109007:	88 19 	movb	%bl, (%ecx)
e0109009:	88 fb 	movb	%bh, %bl
e010900b:	83 c0 f8 	addl	$-8, %eax
e010900e:	41 	incl	%ecx
e010900f:	4a 	decl	%edx
e0109010:	75 be 	jne	-66 <asan_internal_fill_range+0x40>
e0109012:	83 c4 04 	addl	$4, %esp
e0109015:	5e 	popl	%esi
e0109016:	5b 	popl	%ebx
e0109017:	c3 	retl
e0109018:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0109020 asan_internal_check_range:
e0109020:	55 	pushl	%ebp
e0109021:	89 e5 	movl	%esp, %ebp
e0109023:	56 	pushl	%esi
e0109024:	50 	pushl	%eax
e0109025:	80 3d 94 2f 12 e0 00 	cmpb	$0, -535679084
e010902c:	74 19 	je	25 <asan_internal_check_range+0x27>
e010902e:	8b 75 0c 	movl	12(%ebp), %esi
e0109031:	8d 45 f8 	leal	-8(%ebp), %eax
e0109034:	6a 00 	pushl	$0
e0109036:	50 	pushl	%eax
e0109037:	56 	pushl	%esi
e0109038:	ff 75 08 	pushl	8(%ebp)
e010903b:	e8 80 fe ff ff 	calll	-384 <asan_internal_range_poisoned>
e0109040:	83 c4 10 	addl	$16, %esp
e0109043:	84 c0 	testb	%al, %al
e0109045:	75 06 	jne	6 <asan_internal_check_range+0x2d>
e0109047:	83 c4 04 	addl	$4, %esp
e010904a:	5e 	popl	%esi
e010904b:	5d 	popl	%ebp
e010904c:	c3 	retl
e010904d:	8b 4d f8 	movl	-8(%ebp), %ecx
e0109050:	83 ec 0c 	subl	$12, %esp
e0109053:	89 f2 	movl	%esi, %edx
e0109055:	ff 75 10 	pushl	16(%ebp)
e0109058:	e8 03 00 00 00 	calll	3 <asan_internal_invalid_access>
e010905d:	83 c4 0c 	addl	$12, %esp

00000000e0109060 asan_internal_invalid_access:
e0109060:	55 	pushl	%ebp
e0109061:	89 e5 	movl	%esp, %ebp
e0109063:	83 ec 08 	subl	$8, %esp
e0109066:	ff 75 08 	pushl	8(%ebp)
e0109069:	52 	pushl	%edx
e010906a:	51 	pushl	%ecx
e010906b:	68 42 a3 10 e0 	pushl	$3759186754
e0109070:	e8 fb 06 00 00 	calll	1787 <platform_asan_fatal>
e0109075:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010907f:	90 	nop

00000000e0109080 asan_internal_alloc_init:
e0109080:	55 	pushl	%ebp
e0109081:	89 e5 	movl	%esp, %ebp
e0109083:	83 ec 08 	subl	$8, %esp
e0109086:	8b 45 08 	movl	8(%ebp), %eax
e0109089:	8b 10 	movl	(%eax), %edx
e010908b:	85 d2 	testl	%edx, %edx
e010908d:	74 1b 	je	27 <asan_internal_alloc_init+0x2a>
e010908f:	8b 4d 0c 	movl	12(%ebp), %ecx
e0109092:	83 c2 07 	addl	$7, %edx
e0109095:	83 e2 f8 	andl	$-8, %edx
e0109098:	89 10 	movl	%edx, (%eax)
e010909a:	83 39 07 	cmpl	$7, (%ecx)
e010909d:	77 06 	ja	6 <asan_internal_alloc_init+0x25>
e010909f:	c7 01 08 00 00 00 	movl	$8, (%ecx)
e01090a5:	83 c4 08 	addl	$8, %esp
e01090a8:	5d 	popl	%ebp
e01090a9:	c3 	retl
e01090aa:	e8 01 00 00 00 	calll	1 <asan_internal_unsupported>
e01090af:	90 	nop

00000000e01090b0 asan_internal_unsupported:
e01090b0:	55 	pushl	%ebp
e01090b1:	89 e5 	movl	%esp, %ebp
e01090b3:	83 ec 08 	subl	$8, %esp
e01090b6:	6a 00 	pushl	$0
e01090b8:	6a 00 	pushl	$0
e01090ba:	6a 00 	pushl	$0
e01090bc:	68 89 a1 10 e0 	pushl	$3759186313
e01090c1:	e8 aa 06 00 00 	calll	1706 <platform_asan_fatal>
e01090c6:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e01090d0 asan_internal_alloc_poison:
e01090d0:	55 	pushl	%ebp
e01090d1:	89 e5 	movl	%esp, %ebp
e01090d3:	53 	pushl	%ebx
e01090d4:	57 	pushl	%edi
e01090d5:	56 	pushl	%esi
e01090d6:	83 ec 0c 	subl	$12, %esp
e01090d9:	8b 45 14 	movl	20(%ebp), %eax
e01090dc:	8b 7d 10 	movl	16(%ebp), %edi
e01090df:	8b 75 08 	movl	8(%ebp), %esi
e01090e2:	8d 1c 47 	leal	(%edi,%eax,2), %ebx
e01090e5:	8d 45 f0 	leal	-16(%ebp), %eax
e01090e8:	6a 01 	pushl	$1
e01090ea:	50 	pushl	%eax
e01090eb:	53 	pushl	%ebx
e01090ec:	56 	pushl	%esi
e01090ed:	e8 ce fd ff ff 	calll	-562 <asan_internal_range_poisoned>
e01090f2:	83 c4 10 	addl	$16, %esp
e01090f5:	84 c0 	testb	%al, %al
e01090f7:	74 48 	je	72 <asan_internal_alloc_poison+0x71>
e01090f9:	83 ec 04 	subl	$4, %esp
e01090fc:	68 e9 00 00 00 	pushl	$233
e0109101:	8b 5d 14 	movl	20(%ebp), %ebx
e0109104:	53 	pushl	%ebx
e0109105:	56 	pushl	%esi
e0109106:	e8 85 fe ff ff 	calll	-379 <asan_internal_fill_range>
e010910b:	83 c4 10 	addl	$16, %esp
e010910e:	01 de 	addl	%ebx, %esi
e0109110:	83 ec 04 	subl	$4, %esp
e0109113:	6a 00 	pushl	$0
e0109115:	ff 75 0c 	pushl	12(%ebp)
e0109118:	56 	pushl	%esi
e0109119:	e8 72 fe ff ff 	calll	-398 <asan_internal_fill_range>
e010911e:	83 c4 10 	addl	$16, %esp
e0109121:	8b 45 0c 	movl	12(%ebp), %eax
e0109124:	01 c6 	addl	%eax, %esi
e0109126:	29 c7 	subl	%eax, %edi
e0109128:	01 df 	addl	%ebx, %edi
e010912a:	83 ec 04 	subl	$4, %esp
e010912d:	68 e9 00 00 00 	pushl	$233
e0109132:	57 	pushl	%edi
e0109133:	56 	pushl	%esi
e0109134:	e8 57 fe ff ff 	calll	-425 <asan_internal_fill_range>
e0109139:	83 c4 1c 	addl	$28, %esp
e010913c:	5e 	popl	%esi
e010913d:	5f 	popl	%edi
e010913e:	5b 	popl	%ebx
e010913f:	5d 	popl	%ebp
e0109140:	c3 	retl
e0109141:	6a 00 	pushl	$0
e0109143:	53 	pushl	%ebx
e0109144:	ff 75 f0 	pushl	-16(%ebp)
e0109147:	68 27 a5 10 e0 	pushl	$3759187239
e010914c:	e8 1f 06 00 00 	calll	1567 <platform_asan_fatal>
e0109151:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010915b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0109160 asan_internal_fakestack_alloc:
e0109160:	55 	pushl	%ebp
e0109161:	89 e5 	movl	%esp, %ebp
e0109163:	53 	pushl	%ebx
e0109164:	57 	pushl	%edi
e0109165:	56 	pushl	%esi
e0109166:	83 ec 0c 	subl	$12, %esp
e0109169:	c7 45 f0 00 00 00 00 	movl	$0, -16(%ebp)
e0109170:	83 ec 0c 	subl	$12, %esp
e0109173:	8d 45 f0 	leal	-16(%ebp), %eax
e0109176:	31 f6 	xorl	%esi, %esi
e0109178:	50 	pushl	%eax
e0109179:	e8 22 0a 00 00 	calll	2594 <platform_asan_fakestack_enter>
e010917e:	83 c4 10 	addl	$16, %esp
e0109181:	84 c0 	testb	%al, %al
e0109183:	0f 84 bf 00 00 00 	je	191 <asan_internal_fakestack_alloc+0xe8>
e0109189:	8b 7d 10 	movl	16(%ebp), %edi
e010918c:	8b 4d 08 	movl	8(%ebp), %ecx
e010918f:	8b 5d f0 	movl	-16(%ebp), %ebx
e0109192:	83 ec 0c 	subl	$12, %esp
e0109195:	89 da 	movl	%ebx, %edx
e0109197:	57 	pushl	%edi
e0109198:	e8 c3 00 00 00 	calll	195 <asan_internal_fakestack_get_t_configs>
e010919d:	83 c4 10 	addl	$16, %esp
e01091a0:	89 c6 	movl	%eax, %esi
e01091a2:	83 ec 08 	subl	$8, %esp
e01091a5:	8b 4d 0c 	movl	12(%ebp), %ecx
e01091a8:	89 da 	movl	%ebx, %edx
e01091aa:	8b 45 14 	movl	20(%ebp), %eax
e01091ad:	89 c3 	movl	%eax, %ebx
e01091af:	50 	pushl	%eax
e01091b0:	57 	pushl	%edi
e01091b1:	e8 ba 00 00 00 	calll	186 <asan_internal_fakestack_get_t_entries>
e01091b6:	83 c4 10 	addl	$16, %esp
e01091b9:	31 c9 	xorl	%ecx, %ecx
e01091bb:	85 ff 	testl	%edi, %edi
e01091bd:	74 0c 	je	12 <asan_internal_fakestack_alloc+0x6b>
e01091bf:	90 	nop
e01091c0:	80 3c ce 00 	cmpb	$0, (%esi,%ecx,8)
e01091c4:	74 05 	je	5 <asan_internal_fakestack_alloc+0x6b>
e01091c6:	41 	incl	%ecx
e01091c7:	39 f9 	cmpl	%edi, %ecx
e01091c9:	72 f5 	jb	-11 <asan_internal_fakestack_alloc+0x60>
e01091cb:	39 f9 	cmpl	%edi, %ecx
e01091cd:	75 09 	jne	9 <asan_internal_fakestack_alloc+0x78>
e01091cf:	e8 dc 09 00 00 	calll	2524 <platform_asan_fakestack_leave>
e01091d4:	31 f6 	xorl	%esi, %esi
e01091d6:	eb 70 	jmp	112 <asan_internal_fakestack_alloc+0xe8>
e01091d8:	8b 55 18 	movl	24(%ebp), %edx
e01091db:	89 cf 	movl	%ecx, %edi
e01091dd:	0f af fb 	imull	%ebx, %edi
e01091e0:	c6 04 ce 01 	movb	$1, (%esi,%ecx,8)
e01091e4:	89 54 ce 04 	movl	%edx, 4(%esi,%ecx,8)
e01091e8:	8d 0c ce 	leal	(%esi,%ecx,8), %ecx
e01091eb:	89 4d ec 	movl	%ecx, -20(%ebp)
e01091ee:	8d 1c 07 	leal	(%edi,%eax), %ebx
e01091f1:	83 ec 04 	subl	$4, %esp
e01091f4:	68 f1 00 00 00 	pushl	$241
e01091f9:	6a 10 	pushl	$16
e01091fb:	53 	pushl	%ebx
e01091fc:	89 c6 	movl	%eax, %esi
e01091fe:	e8 8d fd ff ff 	calll	-627 <asan_internal_fill_range>
e0109203:	83 c4 10 	addl	$16, %esp
e0109206:	8d 74 37 10 	leal	16(%edi,%esi), %esi
e010920a:	83 ec 04 	subl	$4, %esp
e010920d:	6a 00 	pushl	$0
e010920f:	8b 7d 18 	movl	24(%ebp), %edi
e0109212:	57 	pushl	%edi
e0109213:	56 	pushl	%esi
e0109214:	e8 77 fd ff ff 	calll	-649 <asan_internal_fill_range>
e0109219:	83 c4 10 	addl	$16, %esp
e010921c:	8d 44 1f 10 	leal	16(%edi,%ebx), %eax
e0109220:	89 fa 	movl	%edi, %edx
e0109222:	8b 7d 14 	movl	20(%ebp), %edi
e0109225:	8d 4f f0 	leal	-16(%edi), %ecx
e0109228:	29 d1 	subl	%edx, %ecx
e010922a:	83 ec 04 	subl	$4, %esp
e010922d:	68 f3 00 00 00 	pushl	$243
e0109232:	51 	pushl	%ecx
e0109233:	50 	pushl	%eax
e0109234:	e8 57 fd ff ff 	calll	-681 <asan_internal_fill_range>
e0109239:	83 c4 10 	addl	$16, %esp
e010923c:	8b 45 ec 	movl	-20(%ebp), %eax
e010923f:	89 44 1f fc 	movl	%eax, -4(%edi,%ebx)
e0109243:	e8 68 09 00 00 	calll	2408 <platform_asan_fakestack_leave>
e0109248:	89 f0 	movl	%esi, %eax
e010924a:	83 c4 0c 	addl	$12, %esp
e010924d:	5e 	popl	%esi
e010924e:	5f 	popl	%edi
e010924f:	5b 	popl	%ebx
e0109250:	5d 	popl	%ebp
e0109251:	c3 	retl
e0109252:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010925c:	0f 1f 40 00 	nopl	(%eax)

00000000e0109260 asan_internal_fakestack_get_t_configs:
e0109260:	0f af 54 24 04 	imull	4(%esp), %edx
e0109265:	8d 04 d1 	leal	(%ecx,%edx,8), %eax
e0109268:	c3 	retl
e0109269:	0f 1f 80 00 00 00 00 	nopl	(%eax)

00000000e0109270 asan_internal_fakestack_get_t_entries:
e0109270:	0f af 54 24 04 	imull	4(%esp), %edx
e0109275:	0f af 54 24 08 	imull	8(%esp), %edx
e010927a:	8d 04 0a 	leal	(%edx,%ecx), %eax
e010927d:	c3 	retl
e010927e:	66 90 	nop

00000000e0109280 asan_internal_fakestack_free:
e0109280:	55 	pushl	%ebp
e0109281:	89 e5 	movl	%esp, %ebp
e0109283:	83 ec 08 	subl	$8, %esp
e0109286:	8b 45 10 	movl	16(%ebp), %eax
e0109289:	8b 4d 0c 	movl	12(%ebp), %ecx
e010928c:	8b 55 08 	movl	8(%ebp), %edx
e010928f:	8b 54 0a ec 	movl	-20(%edx,%ecx), %edx
e0109293:	c6 02 00 	movb	$0, (%edx)
e0109296:	83 ec 04 	subl	$4, %esp
e0109299:	68 f5 00 00 00 	pushl	$245
e010929e:	50 	pushl	%eax
e010929f:	51 	pushl	%ecx
e01092a0:	e8 eb fc ff ff 	calll	-789 <asan_internal_fill_range>
e01092a5:	83 c4 18 	addl	$24, %esp
e01092a8:	5d 	popl	%ebp
e01092a9:	c3 	retl
e01092aa:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e01092b0 asan_internal_fakestack_unpoison:
e01092b0:	c3 	retl
e01092b1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01092bb:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e01092c0 asan.module_ctor:
e01092c0:	83 ec 0c 	subl	$12, %esp
e01092c3:	e8 38 fa ff ff 	calll	-1480 <__asan_init>
e01092c8:	e8 53 fb ff ff 	calll	-1197 <__asan_version_mismatch_check_v8>
e01092cd:	83 c4 0c 	addl	$12, %esp
e01092d0:	c3 	retl
e01092d1:	cc 	int3
e01092d2:	cc 	int3
e01092d3:	cc 	int3
e01092d4:	cc 	int3
e01092d5:	cc 	int3
e01092d6:	cc 	int3
e01092d7:	cc 	int3
e01092d8:	cc 	int3
e01092d9:	cc 	int3
e01092da:	cc 	int3
e01092db:	cc 	int3
e01092dc:	cc 	int3
e01092dd:	cc 	int3
e01092de:	cc 	int3
e01092df:	cc 	int3

00000000e01092e0 __wrap_memcpy:
e01092e0:	55 	pushl	%ebp
e01092e1:	89 e5 	movl	%esp, %ebp
e01092e3:	57 	pushl	%edi
e01092e4:	56 	pushl	%esi
e01092e5:	8b 75 08 	movl	8(%ebp), %esi
e01092e8:	8b 7d 10 	movl	16(%ebp), %edi
e01092eb:	83 ec 04 	subl	$4, %esp
e01092ee:	6a 20 	pushl	$32
e01092f0:	57 	pushl	%edi
e01092f1:	ff 75 0c 	pushl	12(%ebp)
e01092f4:	e8 27 fd ff ff 	calll	-729 <asan_internal_check_range>
e01092f9:	83 c4 0c 	addl	$12, %esp
e01092fc:	6a 40 	pushl	$64
e01092fe:	57 	pushl	%edi
e01092ff:	56 	pushl	%esi
e0109300:	e8 1b fd ff ff 	calll	-741 <asan_internal_check_range>
e0109305:	83 c4 10 	addl	$16, %esp
e0109308:	5e 	popl	%esi
e0109309:	5f 	popl	%edi
e010930a:	5d 	popl	%ebp
e010930b:	e9 10 e8 ff ff 	jmp	-6128 <memcpy>

00000000e0109310 __wrap_memset:
e0109310:	55 	pushl	%ebp
e0109311:	89 e5 	movl	%esp, %ebp
e0109313:	83 ec 08 	subl	$8, %esp
e0109316:	83 ec 04 	subl	$4, %esp
e0109319:	6a 40 	pushl	$64
e010931b:	ff 75 10 	pushl	16(%ebp)
e010931e:	ff 75 08 	pushl	8(%ebp)
e0109321:	e8 fa fc ff ff 	calll	-774 <asan_internal_check_range>
e0109326:	83 c4 18 	addl	$24, %esp
e0109329:	5d 	popl	%ebp
e010932a:	e9 41 e7 ff ff 	jmp	-6335 <memset>
e010932f:	90 	nop

00000000e0109330 __wrap_memmove:
e0109330:	55 	pushl	%ebp
e0109331:	89 e5 	movl	%esp, %ebp
e0109333:	57 	pushl	%edi
e0109334:	56 	pushl	%esi
e0109335:	8b 75 0c 	movl	12(%ebp), %esi
e0109338:	8b 7d 10 	movl	16(%ebp), %edi
e010933b:	83 ec 04 	subl	$4, %esp
e010933e:	6a 20 	pushl	$32
e0109340:	57 	pushl	%edi
e0109341:	ff 75 08 	pushl	8(%ebp)
e0109344:	e8 d7 fc ff ff 	calll	-809 <asan_internal_check_range>
e0109349:	83 c4 0c 	addl	$12, %esp
e010934c:	6a 40 	pushl	$64
e010934e:	57 	pushl	%edi
e010934f:	56 	pushl	%esi
e0109350:	e8 cb fc ff ff 	calll	-821 <asan_internal_check_range>
e0109355:	83 c4 10 	addl	$16, %esp
e0109358:	5e 	popl	%esi
e0109359:	5f 	popl	%edi
e010935a:	5d 	popl	%ebp
e010935b:	e9 50 e7 ff ff 	jmp	-6320 <memmove>

00000000e0109360 __wrap_bcopy:
e0109360:	55 	pushl	%ebp
e0109361:	89 e5 	movl	%esp, %ebp
e0109363:	57 	pushl	%edi
e0109364:	56 	pushl	%esi
e0109365:	8b 75 0c 	movl	12(%ebp), %esi
e0109368:	8b 7d 10 	movl	16(%ebp), %edi
e010936b:	83 ec 04 	subl	$4, %esp
e010936e:	6a 20 	pushl	$32
e0109370:	57 	pushl	%edi
e0109371:	ff 75 08 	pushl	8(%ebp)
e0109374:	e8 a7 fc ff ff 	calll	-857 <asan_internal_check_range>
e0109379:	83 c4 0c 	addl	$12, %esp
e010937c:	6a 40 	pushl	$64
e010937e:	57 	pushl	%edi
e010937f:	56 	pushl	%esi
e0109380:	e8 9b fc ff ff 	calll	-869 <asan_internal_check_range>
e0109385:	e8 46 02 00 00 	calll	582 <__real_bcopy>
e010938a:	83 c4 04 	addl	$4, %esp
e010938d:	0f 1f 00 	nopl	(%eax)

00000000e0109390 __wrap_bzero:
e0109390:	55 	pushl	%ebp
e0109391:	89 e5 	movl	%esp, %ebp
e0109393:	83 ec 18 	subl	$24, %esp
e0109396:	8b 45 08 	movl	8(%ebp), %eax
e0109399:	8b 4d 0c 	movl	12(%ebp), %ecx
e010939c:	89 4c 24 04 	movl	%ecx, 4(%esp)
e01093a0:	89 04 24 	movl	%eax, (%esp)
e01093a3:	c7 44 24 08 40 00 00 00 	movl	$64, 8(%esp)
e01093ab:	e8 70 fc ff ff 	calll	-912 <asan_internal_check_range>
e01093b0:	e8 4b 02 00 00 	calll	587 <__real_bzero>
e01093b5:	83 ec 08 	subl	$8, %esp
e01093b8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e01093c0 __wrap_bcmp:
e01093c0:	55 	pushl	%ebp
e01093c1:	89 e5 	movl	%esp, %ebp
e01093c3:	57 	pushl	%edi
e01093c4:	56 	pushl	%esi
e01093c5:	8b 75 0c 	movl	12(%ebp), %esi
e01093c8:	8b 7d 10 	movl	16(%ebp), %edi
e01093cb:	83 ec 04 	subl	$4, %esp
e01093ce:	6a 20 	pushl	$32
e01093d0:	57 	pushl	%edi
e01093d1:	ff 75 08 	pushl	8(%ebp)
e01093d4:	e8 47 fc ff ff 	calll	-953 <asan_internal_check_range>
e01093d9:	83 c4 0c 	addl	$12, %esp
e01093dc:	6a 20 	pushl	$32
e01093de:	57 	pushl	%edi
e01093df:	56 	pushl	%esi
e01093e0:	e8 3b fc ff ff 	calll	-965 <asan_internal_check_range>
e01093e5:	e8 26 02 00 00 	calll	550 <__real_bcmp>
e01093ea:	83 c4 04 	addl	$4, %esp
e01093ed:	0f 1f 00 	nopl	(%eax)

00000000e01093f0 __wrap_memcmp:
e01093f0:	55 	pushl	%ebp
e01093f1:	89 e5 	movl	%esp, %ebp
e01093f3:	57 	pushl	%edi
e01093f4:	56 	pushl	%esi
e01093f5:	8b 75 0c 	movl	12(%ebp), %esi
e01093f8:	8b 7d 10 	movl	16(%ebp), %edi
e01093fb:	83 ec 04 	subl	$4, %esp
e01093fe:	6a 20 	pushl	$32
e0109400:	57 	pushl	%edi
e0109401:	ff 75 08 	pushl	8(%ebp)
e0109404:	e8 17 fc ff ff 	calll	-1001 <asan_internal_check_range>
e0109409:	83 c4 0c 	addl	$12, %esp
e010940c:	6a 20 	pushl	$32
e010940e:	57 	pushl	%edi
e010940f:	56 	pushl	%esi
e0109410:	e8 0b fc ff ff 	calll	-1013 <asan_internal_check_range>
e0109415:	83 c4 10 	addl	$16, %esp
e0109418:	5e 	popl	%esi
e0109419:	5f 	popl	%edi
e010941a:	5d 	popl	%ebp
e010941b:	e9 10 e7 ff ff 	jmp	-6384 <memcmp>

00000000e0109420 __wrap_strcat:
e0109420:	55 	pushl	%ebp
e0109421:	89 e5 	movl	%esp, %ebp
e0109423:	53 	pushl	%ebx
e0109424:	57 	pushl	%edi
e0109425:	56 	pushl	%esi
e0109426:	83 ec 0c 	subl	$12, %esp
e0109429:	8b 7d 0c 	movl	12(%ebp), %edi
e010942c:	8b 5d 08 	movl	8(%ebp), %ebx
e010942f:	89 1c 24 	movl	%ebx, (%esp)
e0109432:	e8 f9 e0 ff ff 	calll	-7943 <strlen>
e0109437:	89 c6 	movl	%eax, %esi
e0109439:	89 3c 24 	movl	%edi, (%esp)
e010943c:	e8 ef e0 ff ff 	calll	-7953 <strlen>
e0109441:	8d 44 06 01 	leal	1(%esi,%eax), %eax
e0109445:	89 44 24 04 	movl	%eax, 4(%esp)
e0109449:	89 1c 24 	movl	%ebx, (%esp)
e010944c:	c7 44 24 08 00 01 00 00 	movl	$256, 8(%esp)
e0109454:	e8 c7 fb ff ff 	calll	-1081 <asan_internal_check_range>
e0109459:	83 c4 0c 	addl	$12, %esp
e010945c:	5e 	popl	%esi
e010945d:	5f 	popl	%edi
e010945e:	5b 	popl	%ebx
e010945f:	5d 	popl	%ebp
e0109460:	e9 2b e2 ff ff 	jmp	-7637 <strcat>
e0109465:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010946f:	90 	nop

00000000e0109470 __wrap_strcpy:
e0109470:	55 	pushl	%ebp
e0109471:	89 e5 	movl	%esp, %ebp
e0109473:	56 	pushl	%esi
e0109474:	50 	pushl	%eax
e0109475:	8b 75 08 	movl	8(%ebp), %esi
e0109478:	83 ec 0c 	subl	$12, %esp
e010947b:	ff 75 0c 	pushl	12(%ebp)
e010947e:	e8 ad e0 ff ff 	calll	-8019 <strlen>
e0109483:	83 c4 10 	addl	$16, %esp
e0109486:	40 	incl	%eax
e0109487:	83 ec 04 	subl	$4, %esp
e010948a:	68 00 01 00 00 	pushl	$256
e010948f:	50 	pushl	%eax
e0109490:	56 	pushl	%esi
e0109491:	e8 8a fb ff ff 	calll	-1142 <asan_internal_check_range>
e0109496:	83 c4 14 	addl	$20, %esp
e0109499:	5e 	popl	%esi
e010949a:	5d 	popl	%ebp
e010949b:	e9 70 e1 ff ff 	jmp	-7824 <strcpy>

00000000e01094a0 __wrap_strlcpy:
e01094a0:	55 	pushl	%ebp
e01094a1:	89 e5 	movl	%esp, %ebp
e01094a3:	83 ec 18 	subl	$24, %esp
e01094a6:	8b 45 08 	movl	8(%ebp), %eax
e01094a9:	8b 4d 10 	movl	16(%ebp), %ecx
e01094ac:	89 4c 24 04 	movl	%ecx, 4(%esp)
e01094b0:	89 04 24 	movl	%eax, (%esp)
e01094b3:	c7 44 24 08 00 01 00 00 	movl	$256, 8(%esp)
e01094bb:	e8 60 fb ff ff 	calll	-1184 <asan_internal_check_range>
e01094c0:	e8 5b 01 00 00 	calll	347 <__real_bcmp+0x10>
e01094c5:	83 ec 0c 	subl	$12, %esp
e01094c8:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e01094d0 __wrap_strncpy:
e01094d0:	55 	pushl	%ebp
e01094d1:	89 e5 	movl	%esp, %ebp
e01094d3:	83 ec 08 	subl	$8, %esp
e01094d6:	83 ec 04 	subl	$4, %esp
e01094d9:	68 00 01 00 00 	pushl	$256
e01094de:	ff 75 10 	pushl	16(%ebp)
e01094e1:	ff 75 08 	pushl	8(%ebp)
e01094e4:	e8 37 fb ff ff 	calll	-1225 <asan_internal_check_range>
e01094e9:	83 c4 18 	addl	$24, %esp
e01094ec:	5d 	popl	%ebp
e01094ed:	e9 ce e1 ff ff 	jmp	-7730 <strncpy>
e01094f2:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01094fc:	0f 1f 40 00 	nopl	(%eax)

00000000e0109500 __wrap_strlcat:
e0109500:	55 	pushl	%ebp
e0109501:	89 e5 	movl	%esp, %ebp
e0109503:	83 ec 18 	subl	$24, %esp
e0109506:	8b 45 08 	movl	8(%ebp), %eax
e0109509:	8b 4d 10 	movl	16(%ebp), %ecx
e010950c:	89 4c 24 04 	movl	%ecx, 4(%esp)
e0109510:	89 04 24 	movl	%eax, (%esp)
e0109513:	c7 44 24 08 00 01 00 00 	movl	$256, 8(%esp)
e010951b:	e8 00 fb ff ff 	calll	-1280 <asan_internal_check_range>
e0109520:	e8 0b 01 00 00 	calll	267 <__real_strlcat>
e0109525:	83 ec 0c 	subl	$12, %esp
e0109528:	0f 1f 84 00 00 00 00 00 	nopl	(%eax,%eax)

00000000e0109530 __wrap_strncat:
e0109530:	55 	pushl	%ebp
e0109531:	89 e5 	movl	%esp, %ebp
e0109533:	57 	pushl	%edi
e0109534:	56 	pushl	%esi
e0109535:	83 ec 10 	subl	$16, %esp
e0109538:	8b 75 10 	movl	16(%ebp), %esi
e010953b:	8b 7d 08 	movl	8(%ebp), %edi
e010953e:	89 3c 24 	movl	%edi, (%esp)
e0109541:	e8 ea df ff ff 	calll	-8214 <strlen>
e0109546:	8d 44 06 01 	leal	1(%esi,%eax), %eax
e010954a:	89 44 24 04 	movl	%eax, 4(%esp)
e010954e:	89 3c 24 	movl	%edi, (%esp)
e0109551:	c7 44 24 08 00 01 00 00 	movl	$256, 8(%esp)
e0109559:	e8 c2 fa ff ff 	calll	-1342 <asan_internal_check_range>
e010955e:	e8 dd 00 00 00 	calll	221 <__real_strlcat+0x10>
e0109563:	83 ec 0c 	subl	$12, %esp
e0109566:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)

00000000e0109570 __wrap_strnlen:
e0109570:	55 	pushl	%ebp
e0109571:	89 e5 	movl	%esp, %ebp
e0109573:	83 ec 08 	subl	$8, %esp
e0109576:	83 ec 04 	subl	$4, %esp
e0109579:	68 80 00 00 00 	pushl	$128
e010957e:	ff 75 0c 	pushl	12(%ebp)
e0109581:	ff 75 08 	pushl	8(%ebp)
e0109584:	e8 97 fa ff ff 	calll	-1385 <asan_internal_check_range>
e0109589:	83 c4 18 	addl	$24, %esp
e010958c:	5d 	popl	%ebp
e010958d:	e9 1e e0 ff ff 	jmp	-8162 <strnlen>
e0109592:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e010959c:	0f 1f 40 00 	nopl	(%eax)

00000000e01095a0 __wrap_strlen:
e01095a0:	55 	pushl	%ebp
e01095a1:	89 e5 	movl	%esp, %ebp
e01095a3:	57 	pushl	%edi
e01095a4:	56 	pushl	%esi
e01095a5:	8b 7d 08 	movl	8(%ebp), %edi
e01095a8:	83 ec 0c 	subl	$12, %esp
e01095ab:	57 	pushl	%edi
e01095ac:	e8 7f df ff ff 	calll	-8321 <strlen>
e01095b1:	83 c4 10 	addl	$16, %esp
e01095b4:	89 c6 	movl	%eax, %esi
e01095b6:	40 	incl	%eax
e01095b7:	83 ec 04 	subl	$4, %esp
e01095ba:	68 80 00 00 00 	pushl	$128
e01095bf:	50 	pushl	%eax
e01095c0:	57 	pushl	%edi
e01095c1:	e8 5a fa ff ff 	calll	-1446 <asan_internal_check_range>
e01095c6:	83 c4 10 	addl	$16, %esp
e01095c9:	89 f0 	movl	%esi, %eax
e01095cb:	5e 	popl	%esi
e01095cc:	5f 	popl	%edi
e01095cd:	5d 	popl	%ebp
e01095ce:	c3 	retl
e01095cf:	90 	nop

00000000e01095d0 __real_bcopy:
e01095d0:	55 	pushl	%ebp
e01095d1:	89 e5 	movl	%esp, %ebp
e01095d3:	83 ec 08 	subl	$8, %esp
e01095d6:	b9 20 a4 10 e0 	movl	$3759186976, %ecx
e01095db:	e8 00 00 00 00 	calll	0 <asan_internal_unsupported>

00000000e01095e0 asan_internal_unsupported:
e01095e0:	55 	pushl	%ebp
e01095e1:	89 e5 	movl	%esp, %ebp
e01095e3:	83 ec 08 	subl	$8, %esp
e01095e6:	6a 00 	pushl	$0
e01095e8:	6a 00 	pushl	$0
e01095ea:	6a 00 	pushl	$0
e01095ec:	51 	pushl	%ecx
e01095ed:	e8 7e 01 00 00 	calll	382 <platform_asan_fatal>
e01095f2:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e01095fc:	0f 1f 40 00 	nopl	(%eax)

00000000e0109600 __real_bzero:
e0109600:	55 	pushl	%ebp
e0109601:	89 e5 	movl	%esp, %ebp
e0109603:	83 ec 08 	subl	$8, %esp
e0109606:	b9 7a a3 10 e0 	movl	$3759186810, %ecx
e010960b:	e8 d0 ff ff ff 	calll	-48 <asan_internal_unsupported>

00000000e0109610 __real_bcmp:
e0109610:	55 	pushl	%ebp
e0109611:	89 e5 	movl	%esp, %ebp
e0109613:	83 ec 08 	subl	$8, %esp
e0109616:	b9 51 a3 10 e0 	movl	$3759186769, %ecx
e010961b:	e8 c0 ff ff ff 	calll	-64 <asan_internal_unsupported>
e0109620:	55 	pushl	%ebp
e0109621:	89 e5 	movl	%esp, %ebp
e0109623:	83 ec 08 	subl	$8, %esp
e0109626:	b9 56 a4 10 e0 	movl	$3759187030, %ecx
e010962b:	e8 b0 ff ff ff 	calll	-80 <asan_internal_unsupported>

00000000e0109630 __real_strlcat:
e0109630:	55 	pushl	%ebp
e0109631:	89 e5 	movl	%esp, %ebp
e0109633:	83 ec 08 	subl	$8, %esp
e0109636:	b9 c7 a2 10 e0 	movl	$3759186631, %ecx
e010963b:	e8 a0 ff ff ff 	calll	-96 <asan_internal_unsupported>
e0109640:	55 	pushl	%ebp
e0109641:	89 e5 	movl	%esp, %ebp
e0109643:	83 ec 08 	subl	$8, %esp
e0109646:	b9 5d a3 10 e0 	movl	$3759186781, %ecx
e010964b:	e8 90 ff ff ff 	calll	-112 <asan_internal_unsupported>

00000000e0109650 asan.module_ctor:
e0109650:	83 ec 0c 	subl	$12, %esp
e0109653:	e8 a8 f6 ff ff 	calll	-2392 <__asan_init>
e0109658:	e8 c3 f7 ff ff 	calll	-2109 <__asan_version_mismatch_check_v8>
e010965d:	83 c4 0c 	addl	$12, %esp
e0109660:	c3 	retl
e0109661:	cc 	int3
e0109662:	cc 	int3
e0109663:	cc 	int3
e0109664:	cc 	int3
e0109665:	cc 	int3
e0109666:	cc 	int3
e0109667:	cc 	int3
e0109668:	cc 	int3
e0109669:	cc 	int3
e010966a:	cc 	int3
e010966b:	cc 	int3
e010966c:	cc 	int3
e010966d:	cc 	int3
e010966e:	cc 	int3
e010966f:	cc 	int3

00000000e0109670 platform_abort:
e0109670:	55 	pushl	%ebp
e0109671:	89 e5 	movl	%esp, %ebp
e0109673:	83 ec 08 	subl	$8, %esp
e0109676:	83 ec 04 	subl	$4, %esp
e0109679:	68 ff a3 10 e0 	pushl	$3759186943
e010967e:	6a 00 	pushl	$0
e0109680:	68 7b a4 10 e0 	pushl	$3759187067
e0109685:	e8 a6 6a ff ff 	calll	-38234 <_panic>
e010968a:	83 c4 04 	addl	$4, %esp
e010968d:	0f 1f 00 	nopl	(%eax)

00000000e0109690 platform_asan_init:
e0109690:	55 	pushl	%ebp
e0109691:	89 e5 	movl	%esp, %ebp
e0109693:	83 ec 08 	subl	$8, %esp
e0109696:	c7 05 98 2f 12 e0 00 00 00 fa 	movl	$4194304000, -535679080
e01096a0:	c7 05 9c 2f 12 e0 00 00 80 fb 	movl	$4219469824, -535679076
e01096aa:	c7 05 a0 2f 12 e0 00 00 80 de 	movl	$3732930560, -535679072
e01096b4:	83 ec 04 	subl	$4, %esp
e01096b7:	68 00 00 80 01 	pushl	$25165824
e01096bc:	68 f9 00 00 00 	pushl	$249
e01096c1:	68 00 00 00 fa 	pushl	$4194304000
e01096c6:	e8 15 05 00 00 	calll	1301 <__nosan_memset>
e01096cb:	83 c4 10 	addl	$16, %esp
e01096ce:	b8 00 e0 10 e0 	movl	$3759202304, %eax
e01096d3:	b9 a0 1a 12 e0 	movl	$3759282848, %ecx
e01096d8:	29 c1 	subl	%eax, %ecx
e01096da:	83 ec 04 	subl	$4, %esp
e01096dd:	6a 00 	pushl	$0
e01096df:	51 	pushl	%ecx
e01096e0:	68 00 e0 10 e0 	pushl	$3759202304
e01096e5:	e8 a6 f8 ff ff 	calll	-1882 <asan_internal_fill_range>
e01096ea:	83 c4 10 	addl	$16, %esp
e01096ed:	b8 e0 9f 10 e0 	movl	$3759185888, %eax
e01096f2:	b9 6c df 10 e0 	movl	$3759202156, %ecx
e01096f7:	29 c1 	subl	%eax, %ecx
e01096f9:	83 ec 04 	subl	$4, %esp
e01096fc:	6a 00 	pushl	$0
e01096fe:	51 	pushl	%ecx
e01096ff:	68 e0 9f 10 e0 	pushl	$3759185888
e0109704:	e8 87 f8 ff ff 	calll	-1913 <asan_internal_fill_range>
e0109709:	83 c4 10 	addl	$16, %esp
e010970c:	b8 40 1b 12 e0 	movl	$3759283008, %eax
e0109711:	b9 00 40 12 e0 	movl	$3759292416, %ecx
e0109716:	29 c1 	subl	%eax, %ecx
e0109718:	83 ec 04 	subl	$4, %esp
e010971b:	6a 00 	pushl	$0
e010971d:	51 	pushl	%ecx
e010971e:	68 40 1b 12 e0 	pushl	$3759283008
e0109723:	e8 68 f8 ff ff 	calll	-1944 <asan_internal_fill_range>
e0109728:	83 c4 10 	addl	$16, %esp
e010972b:	b8 00 e0 10 e0 	movl	$3759202304, %eax
e0109730:	b9 00 60 11 e0 	movl	$3759235072, %ecx
e0109735:	29 c1 	subl	%eax, %ecx
e0109737:	83 ec 04 	subl	$4, %esp
e010973a:	6a 00 	pushl	$0
e010973c:	51 	pushl	%ecx
e010973d:	68 00 e0 10 e0 	pushl	$3759202304
e0109742:	e8 49 f8 ff ff 	calll	-1975 <asan_internal_fill_range>
e0109747:	83 c4 18 	addl	$24, %esp
e010974a:	5d 	popl	%ebp
e010974b:	c3 	retl
e010974c:	0f 1f 40 00 	nopl	(%eax)

00000000e0109750 platform_asan_unpoison:
e0109750:	55 	pushl	%ebp
e0109751:	89 e5 	movl	%esp, %ebp
e0109753:	83 ec 08 	subl	$8, %esp
e0109756:	83 ec 04 	subl	$4, %esp
e0109759:	6a 00 	pushl	$0
e010975b:	ff 75 0c 	pushl	12(%ebp)
e010975e:	ff 75 08 	pushl	8(%ebp)
e0109761:	e8 2a f8 ff ff 	calll	-2006 <asan_internal_fill_range>
e0109766:	83 c4 18 	addl	$24, %esp
e0109769:	5d 	popl	%ebp
e010976a:	c3 	retl
e010976b:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0109770 platform_asan_fatal:
e0109770:	55 	pushl	%ebp
e0109771:	89 e5 	movl	%esp, %ebp
e0109773:	56 	pushl	%esi
e0109774:	50 	pushl	%eax
e0109775:	83 ec 0c 	subl	$12, %esp
e0109778:	ff 75 14 	pushl	20(%ebp)
e010977b:	ff 75 10 	pushl	16(%ebp)
e010977e:	ff 75 0c 	pushl	12(%ebp)
e0109781:	ff 75 08 	pushl	8(%ebp)
e0109784:	68 e6 a2 10 e0 	pushl	$3759186662
e0109789:	e8 b2 a7 ff ff 	calll	-22606 <cprintf>
e010978e:	83 c4 20 	addl	$32, %esp
e0109791:	8b 75 04 	movl	4(%ebp), %esi
e0109794:	85 f6 	testl	%esi, %esi
e0109796:	74 3a 	je	58 <platform_asan_fatal+0x62>
e0109798:	83 ec 04 	subl	$4, %esp
e010979b:	56 	pushl	%esi
e010979c:	6a 00 	pushl	$0
e010979e:	68 f0 a3 10 e0 	pushl	$3759186928
e01097a3:	e8 98 a7 ff ff 	calll	-22632 <cprintf>
e01097a8:	83 c4 10 	addl	$16, %esp
e01097ab:	83 7d 00 00 	cmpl	$0, (%ebp)
e01097af:	74 1d 	je	29 <platform_asan_fatal+0x5e>
e01097b1:	8b 45 00 	movl	(%ebp), %eax
e01097b4:	8b 70 04 	movl	4(%eax), %esi
e01097b7:	85 f6 	testl	%esi, %esi
e01097b9:	74 17 	je	23 <platform_asan_fatal+0x62>
e01097bb:	83 ec 04 	subl	$4, %esp
e01097be:	56 	pushl	%esi
e01097bf:	6a 01 	pushl	$1
e01097c1:	68 f0 a3 10 e0 	pushl	$3759186928
e01097c6:	e8 75 a7 ff ff 	calll	-22667 <cprintf>
e01097cb:	83 c4 10 	addl	$16, %esp
e01097ce:	85 f6 	testl	%esi, %esi
e01097d0:	75 05 	jne	5 <platform_asan_fatal+0x67>
e01097d2:	e8 99 fe ff ff 	calll	-359 <platform_abort>
e01097d7:	8b 45 00 	movl	(%ebp), %eax
e01097da:	83 38 00 	cmpl	$0, (%eax)
e01097dd:	74 1f 	je	31 <platform_asan_fatal+0x8e>
e01097df:	8b 45 00 	movl	(%ebp), %eax
e01097e2:	8b 00 	movl	(%eax), %eax
e01097e4:	8b 40 04 	movl	4(%eax), %eax
e01097e7:	85 c0 	testl	%eax, %eax
e01097e9:	74 e7 	je	-25 <platform_asan_fatal+0x62>
e01097eb:	83 ec 04 	subl	$4, %esp
e01097ee:	50 	pushl	%eax
e01097ef:	6a 02 	pushl	$2
e01097f1:	68 f0 a3 10 e0 	pushl	$3759186928
e01097f6:	e8 45 a7 ff ff 	calll	-22715 <cprintf>
e01097fb:	83 c4 10 	addl	$16, %esp
e01097fe:	8b 45 00 	movl	(%ebp), %eax
e0109801:	8b 00 	movl	(%eax), %eax
e0109803:	83 38 00 	cmpl	$0, (%eax)
e0109806:	74 21 	je	33 <platform_asan_fatal+0xb9>
e0109808:	8b 45 00 	movl	(%ebp), %eax
e010980b:	8b 00 	movl	(%eax), %eax
e010980d:	8b 00 	movl	(%eax), %eax
e010980f:	8b 40 04 	movl	4(%eax), %eax
e0109812:	85 c0 	testl	%eax, %eax
e0109814:	74 bc 	je	-68 <platform_asan_fatal+0x62>
e0109816:	83 ec 04 	subl	$4, %esp
e0109819:	50 	pushl	%eax
e010981a:	6a 03 	pushl	$3
e010981c:	68 f0 a3 10 e0 	pushl	$3759186928
e0109821:	e8 1a a7 ff ff 	calll	-22758 <cprintf>
e0109826:	83 c4 10 	addl	$16, %esp
e0109829:	8b 45 00 	movl	(%ebp), %eax
e010982c:	8b 00 	movl	(%eax), %eax
e010982e:	8b 00 	movl	(%eax), %eax
e0109830:	83 38 00 	cmpl	$0, (%eax)
e0109833:	74 23 	je	35 <platform_asan_fatal+0xe8>
e0109835:	8b 45 00 	movl	(%ebp), %eax
e0109838:	8b 00 	movl	(%eax), %eax
e010983a:	8b 00 	movl	(%eax), %eax
e010983c:	8b 00 	movl	(%eax), %eax
e010983e:	8b 40 04 	movl	4(%eax), %eax
e0109841:	85 c0 	testl	%eax, %eax
e0109843:	74 8d 	je	-115 <platform_asan_fatal+0x62>
e0109845:	83 ec 04 	subl	$4, %esp
e0109848:	50 	pushl	%eax
e0109849:	6a 04 	pushl	$4
e010984b:	68 f0 a3 10 e0 	pushl	$3759186928
e0109850:	e8 eb a6 ff ff 	calll	-22805 <cprintf>
e0109855:	83 c4 10 	addl	$16, %esp
e0109858:	8b 45 00 	movl	(%ebp), %eax
e010985b:	8b 00 	movl	(%eax), %eax
e010985d:	8b 00 	movl	(%eax), %eax
e010985f:	8b 00 	movl	(%eax), %eax
e0109861:	83 38 00 	cmpl	$0, (%eax)
e0109864:	74 29 	je	41 <platform_asan_fatal+0x11f>
e0109866:	8b 45 00 	movl	(%ebp), %eax
e0109869:	8b 00 	movl	(%eax), %eax
e010986b:	8b 00 	movl	(%eax), %eax
e010986d:	8b 00 	movl	(%eax), %eax
e010986f:	8b 00 	movl	(%eax), %eax
e0109871:	8b 40 04 	movl	4(%eax), %eax
e0109874:	85 c0 	testl	%eax, %eax
e0109876:	0f 84 56 ff ff ff 	je	-170 <platform_asan_fatal+0x62>
e010987c:	83 ec 04 	subl	$4, %esp
e010987f:	50 	pushl	%eax
e0109880:	6a 05 	pushl	$5
e0109882:	68 f0 a3 10 e0 	pushl	$3759186928
e0109887:	e8 b4 a6 ff ff 	calll	-22860 <cprintf>
e010988c:	83 c4 10 	addl	$16, %esp
e010988f:	8b 45 00 	movl	(%ebp), %eax
e0109892:	8b 00 	movl	(%eax), %eax
e0109894:	8b 00 	movl	(%eax), %eax
e0109896:	8b 00 	movl	(%eax), %eax
e0109898:	8b 00 	movl	(%eax), %eax
e010989a:	83 38 00 	cmpl	$0, (%eax)
e010989d:	74 2b 	je	43 <platform_asan_fatal+0x15a>
e010989f:	8b 45 00 	movl	(%ebp), %eax
e01098a2:	8b 00 	movl	(%eax), %eax
e01098a4:	8b 00 	movl	(%eax), %eax
e01098a6:	8b 00 	movl	(%eax), %eax
e01098a8:	8b 00 	movl	(%eax), %eax
e01098aa:	8b 00 	movl	(%eax), %eax
e01098ac:	8b 40 04 	movl	4(%eax), %eax
e01098af:	85 c0 	testl	%eax, %eax
e01098b1:	0f 84 1b ff ff ff 	je	-229 <platform_asan_fatal+0x62>
e01098b7:	83 ec 04 	subl	$4, %esp
e01098ba:	50 	pushl	%eax
e01098bb:	6a 06 	pushl	$6
e01098bd:	68 f0 a3 10 e0 	pushl	$3759186928
e01098c2:	e8 79 a6 ff ff 	calll	-22919 <cprintf>
e01098c7:	83 c4 10 	addl	$16, %esp
e01098ca:	8b 45 00 	movl	(%ebp), %eax
e01098cd:	8b 00 	movl	(%eax), %eax
e01098cf:	8b 00 	movl	(%eax), %eax
e01098d1:	8b 00 	movl	(%eax), %eax
e01098d3:	8b 00 	movl	(%eax), %eax
e01098d5:	8b 00 	movl	(%eax), %eax
e01098d7:	83 38 00 	cmpl	$0, (%eax)
e01098da:	74 2d 	je	45 <platform_asan_fatal+0x199>
e01098dc:	8b 45 00 	movl	(%ebp), %eax
e01098df:	8b 00 	movl	(%eax), %eax
e01098e1:	8b 00 	movl	(%eax), %eax
e01098e3:	8b 00 	movl	(%eax), %eax
e01098e5:	8b 00 	movl	(%eax), %eax
e01098e7:	8b 00 	movl	(%eax), %eax
e01098e9:	8b 00 	movl	(%eax), %eax
e01098eb:	8b 40 04 	movl	4(%eax), %eax
e01098ee:	85 c0 	testl	%eax, %eax
e01098f0:	0f 84 dc fe ff ff 	je	-292 <platform_asan_fatal+0x62>
e01098f6:	83 ec 04 	subl	$4, %esp
e01098f9:	50 	pushl	%eax
e01098fa:	6a 07 	pushl	$7
e01098fc:	68 f0 a3 10 e0 	pushl	$3759186928
e0109901:	e8 3a a6 ff ff 	calll	-22982 <cprintf>
e0109906:	83 c4 10 	addl	$16, %esp
e0109909:	8b 45 00 	movl	(%ebp), %eax
e010990c:	8b 00 	movl	(%eax), %eax
e010990e:	8b 00 	movl	(%eax), %eax
e0109910:	8b 00 	movl	(%eax), %eax
e0109912:	8b 00 	movl	(%eax), %eax
e0109914:	8b 00 	movl	(%eax), %eax
e0109916:	8b 00 	movl	(%eax), %eax
e0109918:	83 38 00 	cmpl	$0, (%eax)
e010991b:	74 2f 	je	47 <platform_asan_fatal+0x1dc>
e010991d:	8b 45 00 	movl	(%ebp), %eax
e0109920:	8b 00 	movl	(%eax), %eax
e0109922:	8b 00 	movl	(%eax), %eax
e0109924:	8b 00 	movl	(%eax), %eax
e0109926:	8b 00 	movl	(%eax), %eax
e0109928:	8b 00 	movl	(%eax), %eax
e010992a:	8b 00 	movl	(%eax), %eax
e010992c:	8b 00 	movl	(%eax), %eax
e010992e:	8b 40 04 	movl	4(%eax), %eax
e0109931:	85 c0 	testl	%eax, %eax
e0109933:	0f 84 99 fe ff ff 	je	-359 <platform_asan_fatal+0x62>
e0109939:	83 ec 04 	subl	$4, %esp
e010993c:	50 	pushl	%eax
e010993d:	6a 08 	pushl	$8
e010993f:	68 f0 a3 10 e0 	pushl	$3759186928
e0109944:	e8 f7 a5 ff ff 	calll	-23049 <cprintf>
e0109949:	83 c4 10 	addl	$16, %esp
e010994c:	8b 45 00 	movl	(%ebp), %eax
e010994f:	8b 00 	movl	(%eax), %eax
e0109951:	8b 00 	movl	(%eax), %eax
e0109953:	8b 00 	movl	(%eax), %eax
e0109955:	8b 00 	movl	(%eax), %eax
e0109957:	8b 00 	movl	(%eax), %eax
e0109959:	8b 00 	movl	(%eax), %eax
e010995b:	8b 00 	movl	(%eax), %eax
e010995d:	83 38 00 	cmpl	$0, (%eax)
e0109960:	74 31 	je	49 <platform_asan_fatal+0x223>
e0109962:	8b 45 00 	movl	(%ebp), %eax
e0109965:	8b 00 	movl	(%eax), %eax
e0109967:	8b 00 	movl	(%eax), %eax
e0109969:	8b 00 	movl	(%eax), %eax
e010996b:	8b 00 	movl	(%eax), %eax
e010996d:	8b 00 	movl	(%eax), %eax
e010996f:	8b 00 	movl	(%eax), %eax
e0109971:	8b 00 	movl	(%eax), %eax
e0109973:	8b 00 	movl	(%eax), %eax
e0109975:	8b 40 04 	movl	4(%eax), %eax
e0109978:	85 c0 	testl	%eax, %eax
e010997a:	0f 84 52 fe ff ff 	je	-430 <platform_asan_fatal+0x62>
e0109980:	83 ec 04 	subl	$4, %esp
e0109983:	50 	pushl	%eax
e0109984:	6a 09 	pushl	$9
e0109986:	68 f0 a3 10 e0 	pushl	$3759186928
e010998b:	e8 b0 a5 ff ff 	calll	-23120 <cprintf>
e0109990:	83 c4 10 	addl	$16, %esp
e0109993:	8b 45 00 	movl	(%ebp), %eax
e0109996:	8b 00 	movl	(%eax), %eax
e0109998:	8b 00 	movl	(%eax), %eax
e010999a:	8b 00 	movl	(%eax), %eax
e010999c:	8b 00 	movl	(%eax), %eax
e010999e:	8b 00 	movl	(%eax), %eax
e01099a0:	8b 00 	movl	(%eax), %eax
e01099a2:	8b 00 	movl	(%eax), %eax
e01099a4:	8b 00 	movl	(%eax), %eax
e01099a6:	83 38 00 	cmpl	$0, (%eax)
e01099a9:	74 33 	je	51 <platform_asan_fatal+0x26e>
e01099ab:	8b 45 00 	movl	(%ebp), %eax
e01099ae:	8b 00 	movl	(%eax), %eax
e01099b0:	8b 00 	movl	(%eax), %eax
e01099b2:	8b 00 	movl	(%eax), %eax
e01099b4:	8b 00 	movl	(%eax), %eax
e01099b6:	8b 00 	movl	(%eax), %eax
e01099b8:	8b 00 	movl	(%eax), %eax
e01099ba:	8b 00 	movl	(%eax), %eax
e01099bc:	8b 00 	movl	(%eax), %eax
e01099be:	8b 00 	movl	(%eax), %eax
e01099c0:	8b 40 04 	movl	4(%eax), %eax
e01099c3:	85 c0 	testl	%eax, %eax
e01099c5:	0f 84 07 fe ff ff 	je	-505 <platform_asan_fatal+0x62>
e01099cb:	83 ec 04 	subl	$4, %esp
e01099ce:	50 	pushl	%eax
e01099cf:	6a 0a 	pushl	$10
e01099d1:	68 f0 a3 10 e0 	pushl	$3759186928
e01099d6:	e8 65 a5 ff ff 	calll	-23195 <cprintf>
e01099db:	83 c4 10 	addl	$16, %esp
e01099de:	8b 45 00 	movl	(%ebp), %eax
e01099e1:	8b 00 	movl	(%eax), %eax
e01099e3:	8b 00 	movl	(%eax), %eax
e01099e5:	8b 00 	movl	(%eax), %eax
e01099e7:	8b 00 	movl	(%eax), %eax
e01099e9:	8b 00 	movl	(%eax), %eax
e01099eb:	8b 00 	movl	(%eax), %eax
e01099ed:	8b 00 	movl	(%eax), %eax
e01099ef:	8b 00 	movl	(%eax), %eax
e01099f1:	8b 00 	movl	(%eax), %eax
e01099f3:	83 38 00 	cmpl	$0, (%eax)
e01099f6:	74 35 	je	53 <platform_asan_fatal+0x2bd>
e01099f8:	8b 45 00 	movl	(%ebp), %eax
e01099fb:	8b 00 	movl	(%eax), %eax
e01099fd:	8b 00 	movl	(%eax), %eax
e01099ff:	8b 00 	movl	(%eax), %eax
e0109a01:	8b 00 	movl	(%eax), %eax
e0109a03:	8b 00 	movl	(%eax), %eax
e0109a05:	8b 00 	movl	(%eax), %eax
e0109a07:	8b 00 	movl	(%eax), %eax
e0109a09:	8b 00 	movl	(%eax), %eax
e0109a0b:	8b 00 	movl	(%eax), %eax
e0109a0d:	8b 00 	movl	(%eax), %eax
e0109a0f:	8b 40 04 	movl	4(%eax), %eax
e0109a12:	85 c0 	testl	%eax, %eax
e0109a14:	0f 84 b8 fd ff ff 	je	-584 <platform_asan_fatal+0x62>
e0109a1a:	83 ec 04 	subl	$4, %esp
e0109a1d:	50 	pushl	%eax
e0109a1e:	6a 0b 	pushl	$11
e0109a20:	68 f0 a3 10 e0 	pushl	$3759186928
e0109a25:	e8 16 a5 ff ff 	calll	-23274 <cprintf>
e0109a2a:	83 c4 10 	addl	$16, %esp
e0109a2d:	8b 45 00 	movl	(%ebp), %eax
e0109a30:	8b 00 	movl	(%eax), %eax
e0109a32:	8b 00 	movl	(%eax), %eax
e0109a34:	8b 00 	movl	(%eax), %eax
e0109a36:	8b 00 	movl	(%eax), %eax
e0109a38:	8b 00 	movl	(%eax), %eax
e0109a3a:	8b 00 	movl	(%eax), %eax
e0109a3c:	8b 00 	movl	(%eax), %eax
e0109a3e:	8b 00 	movl	(%eax), %eax
e0109a40:	8b 00 	movl	(%eax), %eax
e0109a42:	8b 00 	movl	(%eax), %eax
e0109a44:	83 38 00 	cmpl	$0, (%eax)
e0109a47:	74 37 	je	55 <platform_asan_fatal+0x310>
e0109a49:	8b 45 00 	movl	(%ebp), %eax
e0109a4c:	8b 00 	movl	(%eax), %eax
e0109a4e:	8b 00 	movl	(%eax), %eax
e0109a50:	8b 00 	movl	(%eax), %eax
e0109a52:	8b 00 	movl	(%eax), %eax
e0109a54:	8b 00 	movl	(%eax), %eax
e0109a56:	8b 00 	movl	(%eax), %eax
e0109a58:	8b 00 	movl	(%eax), %eax
e0109a5a:	8b 00 	movl	(%eax), %eax
e0109a5c:	8b 00 	movl	(%eax), %eax
e0109a5e:	8b 00 	movl	(%eax), %eax
e0109a60:	8b 00 	movl	(%eax), %eax
e0109a62:	8b 40 04 	movl	4(%eax), %eax
e0109a65:	85 c0 	testl	%eax, %eax
e0109a67:	0f 84 65 fd ff ff 	je	-667 <platform_asan_fatal+0x62>
e0109a6d:	83 ec 04 	subl	$4, %esp
e0109a70:	50 	pushl	%eax
e0109a71:	6a 0c 	pushl	$12
e0109a73:	68 f0 a3 10 e0 	pushl	$3759186928
e0109a78:	e8 c3 a4 ff ff 	calll	-23357 <cprintf>
e0109a7d:	83 c4 10 	addl	$16, %esp
e0109a80:	8b 45 00 	movl	(%ebp), %eax
e0109a83:	8b 00 	movl	(%eax), %eax
e0109a85:	8b 00 	movl	(%eax), %eax
e0109a87:	8b 00 	movl	(%eax), %eax
e0109a89:	8b 00 	movl	(%eax), %eax
e0109a8b:	8b 00 	movl	(%eax), %eax
e0109a8d:	8b 00 	movl	(%eax), %eax
e0109a8f:	8b 00 	movl	(%eax), %eax
e0109a91:	8b 00 	movl	(%eax), %eax
e0109a93:	8b 00 	movl	(%eax), %eax
e0109a95:	8b 00 	movl	(%eax), %eax
e0109a97:	8b 00 	movl	(%eax), %eax
e0109a99:	83 38 00 	cmpl	$0, (%eax)
e0109a9c:	74 39 	je	57 <platform_asan_fatal+0x367>
e0109a9e:	8b 45 00 	movl	(%ebp), %eax
e0109aa1:	8b 00 	movl	(%eax), %eax
e0109aa3:	8b 00 	movl	(%eax), %eax
e0109aa5:	8b 00 	movl	(%eax), %eax
e0109aa7:	8b 00 	movl	(%eax), %eax
e0109aa9:	8b 00 	movl	(%eax), %eax
e0109aab:	8b 00 	movl	(%eax), %eax
e0109aad:	8b 00 	movl	(%eax), %eax
e0109aaf:	8b 00 	movl	(%eax), %eax
e0109ab1:	8b 00 	movl	(%eax), %eax
e0109ab3:	8b 00 	movl	(%eax), %eax
e0109ab5:	8b 00 	movl	(%eax), %eax
e0109ab7:	8b 00 	movl	(%eax), %eax
e0109ab9:	8b 40 04 	movl	4(%eax), %eax
e0109abc:	85 c0 	testl	%eax, %eax
e0109abe:	0f 84 0e fd ff ff 	je	-754 <platform_asan_fatal+0x62>
e0109ac4:	83 ec 04 	subl	$4, %esp
e0109ac7:	50 	pushl	%eax
e0109ac8:	6a 0d 	pushl	$13
e0109aca:	68 f0 a3 10 e0 	pushl	$3759186928
e0109acf:	e8 6c a4 ff ff 	calll	-23444 <cprintf>
e0109ad4:	83 c4 10 	addl	$16, %esp
e0109ad7:	8b 45 00 	movl	(%ebp), %eax
e0109ada:	8b 00 	movl	(%eax), %eax
e0109adc:	8b 00 	movl	(%eax), %eax
e0109ade:	8b 00 	movl	(%eax), %eax
e0109ae0:	8b 00 	movl	(%eax), %eax
e0109ae2:	8b 00 	movl	(%eax), %eax
e0109ae4:	8b 00 	movl	(%eax), %eax
e0109ae6:	8b 00 	movl	(%eax), %eax
e0109ae8:	8b 00 	movl	(%eax), %eax
e0109aea:	8b 00 	movl	(%eax), %eax
e0109aec:	8b 00 	movl	(%eax), %eax
e0109aee:	8b 00 	movl	(%eax), %eax
e0109af0:	8b 00 	movl	(%eax), %eax
e0109af2:	83 38 00 	cmpl	$0, (%eax)
e0109af5:	74 3b 	je	59 <platform_asan_fatal+0x3c2>
e0109af7:	8b 45 00 	movl	(%ebp), %eax
e0109afa:	8b 00 	movl	(%eax), %eax
e0109afc:	8b 00 	movl	(%eax), %eax
e0109afe:	8b 00 	movl	(%eax), %eax
e0109b00:	8b 00 	movl	(%eax), %eax
e0109b02:	8b 00 	movl	(%eax), %eax
e0109b04:	8b 00 	movl	(%eax), %eax
e0109b06:	8b 00 	movl	(%eax), %eax
e0109b08:	8b 00 	movl	(%eax), %eax
e0109b0a:	8b 00 	movl	(%eax), %eax
e0109b0c:	8b 00 	movl	(%eax), %eax
e0109b0e:	8b 00 	movl	(%eax), %eax
e0109b10:	8b 00 	movl	(%eax), %eax
e0109b12:	8b 00 	movl	(%eax), %eax
e0109b14:	8b 40 04 	movl	4(%eax), %eax
e0109b17:	85 c0 	testl	%eax, %eax
e0109b19:	0f 84 b3 fc ff ff 	je	-845 <platform_asan_fatal+0x62>
e0109b1f:	83 ec 04 	subl	$4, %esp
e0109b22:	50 	pushl	%eax
e0109b23:	6a 0e 	pushl	$14
e0109b25:	68 f0 a3 10 e0 	pushl	$3759186928
e0109b2a:	e8 11 a4 ff ff 	calll	-23535 <cprintf>
e0109b2f:	83 c4 10 	addl	$16, %esp
e0109b32:	8b 45 00 	movl	(%ebp), %eax
e0109b35:	8b 00 	movl	(%eax), %eax
e0109b37:	8b 00 	movl	(%eax), %eax
e0109b39:	8b 00 	movl	(%eax), %eax
e0109b3b:	8b 00 	movl	(%eax), %eax
e0109b3d:	8b 00 	movl	(%eax), %eax
e0109b3f:	8b 00 	movl	(%eax), %eax
e0109b41:	8b 00 	movl	(%eax), %eax
e0109b43:	8b 00 	movl	(%eax), %eax
e0109b45:	8b 00 	movl	(%eax), %eax
e0109b47:	8b 00 	movl	(%eax), %eax
e0109b49:	8b 00 	movl	(%eax), %eax
e0109b4b:	8b 00 	movl	(%eax), %eax
e0109b4d:	8b 00 	movl	(%eax), %eax
e0109b4f:	83 38 00 	cmpl	$0, (%eax)
e0109b52:	0f 84 7a fc ff ff 	je	-902 <platform_asan_fatal+0x62>
e0109b58:	8b 45 00 	movl	(%ebp), %eax
e0109b5b:	8b 00 	movl	(%eax), %eax
e0109b5d:	8b 00 	movl	(%eax), %eax
e0109b5f:	8b 00 	movl	(%eax), %eax
e0109b61:	8b 00 	movl	(%eax), %eax
e0109b63:	8b 00 	movl	(%eax), %eax
e0109b65:	8b 00 	movl	(%eax), %eax
e0109b67:	8b 00 	movl	(%eax), %eax
e0109b69:	8b 00 	movl	(%eax), %eax
e0109b6b:	8b 00 	movl	(%eax), %eax
e0109b6d:	8b 00 	movl	(%eax), %eax
e0109b6f:	8b 00 	movl	(%eax), %eax
e0109b71:	8b 00 	movl	(%eax), %eax
e0109b73:	8b 00 	movl	(%eax), %eax
e0109b75:	8b 00 	movl	(%eax), %eax
e0109b77:	8b 40 04 	movl	4(%eax), %eax
e0109b7a:	85 c0 	testl	%eax, %eax
e0109b7c:	0f 84 50 fc ff ff 	je	-944 <platform_asan_fatal+0x62>
e0109b82:	83 ec 04 	subl	$4, %esp
e0109b85:	50 	pushl	%eax
e0109b86:	6a 0f 	pushl	$15
e0109b88:	68 f0 a3 10 e0 	pushl	$3759186928
e0109b8d:	e8 ae a3 ff ff 	calll	-23634 <cprintf>
e0109b92:	83 c4 10 	addl	$16, %esp
e0109b95:	e8 d6 fa ff ff 	calll	-1322 <platform_abort>
e0109b9a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e0109ba0 platform_asan_fakestack_enter:
e0109ba0:	b0 01 	movb	$1, %al
e0109ba2:	c3 	retl
e0109ba3:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0109bad:	0f 1f 00 	nopl	(%eax)

00000000e0109bb0 platform_asan_fakestack_leave:
e0109bb0:	c3 	retl
e0109bb1:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0109bbb:	0f 1f 44 00 00 	nopl	(%eax,%eax)

00000000e0109bc0 asan.module_ctor:
e0109bc0:	83 ec 0c 	subl	$12, %esp
e0109bc3:	e8 38 f1 ff ff 	calll	-3784 <__asan_init>
e0109bc8:	e8 53 f2 ff ff 	calll	-3501 <__asan_version_mismatch_check_v8>
e0109bcd:	83 c4 0c 	addl	$12, %esp
e0109bd0:	c3 	retl
e0109bd1:	cc 	int3
e0109bd2:	cc 	int3
e0109bd3:	cc 	int3
e0109bd4:	cc 	int3
e0109bd5:	cc 	int3
e0109bd6:	cc 	int3
e0109bd7:	cc 	int3
e0109bd8:	cc 	int3
e0109bd9:	cc 	int3
e0109bda:	cc 	int3
e0109bdb:	cc 	int3
e0109bdc:	cc 	int3
e0109bdd:	cc 	int3
e0109bde:	cc 	int3
e0109bdf:	cc 	int3

00000000e0109be0 __nosan_memset:
e0109be0:	56 	pushl	%esi
e0109be1:	8b 4c 24 10 	movl	16(%esp), %ecx
e0109be5:	8b 44 24 08 	movl	8(%esp), %eax
e0109be9:	85 c9 	testl	%ecx, %ecx
e0109beb:	74 1b 	je	27 <__nosan_memset+0x28>
e0109bed:	8b 54 24 0c 	movl	12(%esp), %edx
e0109bf1:	89 c6 	movl	%eax, %esi
e0109bf3:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0109bfd:	0f 1f 00 	nopl	(%eax)
e0109c00:	49 	decl	%ecx
e0109c01:	88 16 	movb	%dl, (%esi)
e0109c03:	8d 76 01 	leal	1(%esi), %esi
e0109c06:	75 f8 	jne	-8 <__nosan_memset+0x20>
e0109c08:	5e 	popl	%esi
e0109c09:	c3 	retl
e0109c0a:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e0109c10 __nosan_memcpy:
e0109c10:	53 	pushl	%ebx
e0109c11:	56 	pushl	%esi
e0109c12:	8b 4c 24 14 	movl	20(%esp), %ecx
e0109c16:	8b 44 24 0c 	movl	12(%esp), %eax
e0109c1a:	85 c9 	testl	%ecx, %ecx
e0109c1c:	74 1e 	je	30 <__nosan_memcpy+0x2c>
e0109c1e:	8b 54 24 10 	movl	16(%esp), %edx
e0109c22:	31 f6 	xorl	%esi, %esi
e0109c24:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0109c2e:	66 90 	nop
e0109c30:	0f b6 1c 32 	movzbl	(%edx,%esi), %ebx
e0109c34:	88 1c 30 	movb	%bl, (%eax,%esi)
e0109c37:	46 	incl	%esi
e0109c38:	39 f1 	cmpl	%esi, %ecx
e0109c3a:	75 f4 	jne	-12 <__nosan_memcpy+0x20>
e0109c3c:	5e 	popl	%esi
e0109c3d:	5b 	popl	%ebx
e0109c3e:	c3 	retl
e0109c3f:	90 	nop

00000000e0109c40 asan.module_ctor:
e0109c40:	83 ec 0c 	subl	$12, %esp
e0109c43:	e8 b8 f0 ff ff 	calll	-3912 <__asan_init>
e0109c48:	e8 d3 f1 ff ff 	calll	-3629 <__asan_version_mismatch_check_v8>
e0109c4d:	83 c4 0c 	addl	$12, %esp
e0109c50:	c3 	retl
e0109c51:	cc 	int3
e0109c52:	cc 	int3
e0109c53:	cc 	int3
e0109c54:	cc 	int3
e0109c55:	cc 	int3
e0109c56:	cc 	int3
e0109c57:	cc 	int3
e0109c58:	cc 	int3
e0109c59:	cc 	int3
e0109c5a:	cc 	int3
e0109c5b:	cc 	int3
e0109c5c:	cc 	int3
e0109c5d:	cc 	int3
e0109c5e:	cc 	int3
e0109c5f:	cc 	int3

00000000e0109c60 asan_force_use_wrapped_lib_symbols:
e0109c60:	55 	pushl	%ebp
e0109c61:	89 e5 	movl	%esp, %ebp
e0109c63:	83 ec 08 	subl	$8, %esp
e0109c66:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x8>
e0109c68:	e8 73 f6 ff ff 	calll	-2445 <__wrap_memcpy>
e0109c6d:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0xf>
e0109c6f:	e8 9c f6 ff ff 	calll	-2404 <__wrap_memset>
e0109c74:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x16>
e0109c76:	e8 b5 f6 ff ff 	calll	-2379 <__wrap_memmove>
e0109c7b:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x1d>
e0109c7d:	e8 6e f7 ff ff 	calll	-2194 <__wrap_memcmp>
e0109c82:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x24>
e0109c84:	e8 97 f7 ff ff 	calll	-2153 <__wrap_strcat>
e0109c89:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x2b>
e0109c8b:	e8 e0 f7 ff ff 	calll	-2080 <__wrap_strcpy>
e0109c90:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x32>
e0109c92:	e8 99 f8 ff ff 	calll	-1895 <__wrap_strncat>
e0109c97:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x39>
e0109c99:	e8 d2 f8 ff ff 	calll	-1838 <__wrap_strnlen>
e0109c9e:	eb 00 	jmp	0 <asan_force_use_wrapped_lib_symbols+0x40>
e0109ca0:	e8 fb f8 ff ff 	calll	-1797 <__wrap_strlen>
e0109ca5:	83 c4 08 	addl	$8, %esp
e0109ca8:	5d 	popl	%ebp
e0109ca9:	c3 	retl
e0109caa:	66 0f 1f 44 00 00 	nopw	(%eax,%eax)

00000000e0109cb0 asan.module_ctor:
e0109cb0:	83 ec 0c 	subl	$12, %esp
e0109cb3:	e8 48 f0 ff ff 	calll	-4024 <__asan_init>
e0109cb8:	e8 63 f1 ff ff 	calll	-3741 <__asan_version_mismatch_check_v8>
e0109cbd:	83 c4 0c 	addl	$12, %esp
e0109cc0:	c3 	retl
e0109cc1:	cc 	int3
e0109cc2:	cc 	int3
e0109cc3:	cc 	int3
e0109cc4:	cc 	int3
e0109cc5:	cc 	int3
e0109cc6:	cc 	int3
e0109cc7:	cc 	int3
e0109cc8:	cc 	int3
e0109cc9:	cc 	int3
e0109cca:	cc 	int3
e0109ccb:	cc 	int3
e0109ccc:	cc 	int3
e0109ccd:	cc 	int3
e0109cce:	cc 	int3
e0109ccf:	cc 	int3

00000000e0109cd0 __udivdi3:
e0109cd0:	83 ec 18 	subl	$24, %esp
e0109cd3:	6a 00 	pushl	$0
e0109cd5:	ff 74 24 2c 	pushl	44(%esp)
e0109cd9:	ff 74 24 2c 	pushl	44(%esp)
e0109cdd:	ff 74 24 2c 	pushl	44(%esp)
e0109ce1:	ff 74 24 2c 	pushl	44(%esp)
e0109ce5:	e8 06 00 00 00 	calll	6 <__udivmoddi4>
e0109cea:	83 c4 2c 	addl	$44, %esp
e0109ced:	c3 	retl
e0109cee:	cc 	int3
e0109cef:	cc 	int3

00000000e0109cf0 __udivmoddi4:
e0109cf0:	55 	pushl	%ebp
e0109cf1:	53 	pushl	%ebx
e0109cf2:	57 	pushl	%edi
e0109cf3:	56 	pushl	%esi
e0109cf4:	83 ec 0c 	subl	$12, %esp
e0109cf7:	8b 54 24 2c 	movl	44(%esp), %edx
e0109cfb:	8b 4c 24 28 	movl	40(%esp), %ecx
e0109cff:	8b 6c 24 24 	movl	36(%esp), %ebp
e0109d03:	8b 7c 24 20 	movl	32(%esp), %edi
e0109d07:	8b 74 24 30 	movl	48(%esp), %esi
e0109d0b:	85 ed 	testl	%ebp, %ebp
e0109d0d:	74 35 	je	53 <__udivmoddi4+0x54>
e0109d0f:	85 c9 	testl	%ecx, %ecx
e0109d11:	74 4f 	je	79 <__udivmoddi4+0x72>
e0109d13:	85 d2 	testl	%edx, %edx
e0109d15:	0f 84 aa 00 00 00 	je	170 <__udivmoddi4+0xd5>
e0109d1b:	0f bd ca 	bsrl	%edx, %ecx
e0109d1e:	83 f1 1f 	xorl	$31, %ecx
e0109d21:	0f bd c5 	bsrl	%ebp, %eax
e0109d24:	83 f0 1f 	xorl	$31, %eax
e0109d27:	29 c1 	subl	%eax, %ecx
e0109d29:	83 f9 20 	cmpl	$32, %ecx
e0109d2c:	0f 82 04 01 00 00 	jb	260 <__udivmoddi4+0x146>
e0109d32:	85 f6 	testl	%esi, %esi
e0109d34:	0f 84 2c 01 00 00 	je	300 <__udivmoddi4+0x176>
e0109d3a:	89 3e 	movl	%edi, (%esi)
e0109d3c:	89 6e 04 	movl	%ebp, 4(%esi)
e0109d3f:	e9 22 01 00 00 	jmp	290 <__udivmoddi4+0x176>
e0109d44:	85 d2 	testl	%edx, %edx
e0109d46:	0f 84 c8 00 00 00 	je	200 <__udivmoddi4+0x124>
e0109d4c:	85 f6 	testl	%esi, %esi
e0109d4e:	0f 84 12 01 00 00 	je	274 <__udivmoddi4+0x176>
e0109d54:	89 3e 	movl	%edi, (%esi)
e0109d56:	c7 46 04 00 00 00 00 	movl	$0, 4(%esi)
e0109d5d:	e9 04 01 00 00 	jmp	260 <__udivmoddi4+0x176>
e0109d62:	85 d2 	testl	%edx, %edx
e0109d64:	0f 84 eb 00 00 00 	je	235 <__udivmoddi4+0x165>
e0109d6a:	85 ff 	testl	%edi, %edi
e0109d6c:	0f 84 ac 01 00 00 	je	428 <__udivmoddi4+0x22e>
e0109d72:	8d 42 ff 	leal	-1(%edx), %eax
e0109d75:	85 d0 	testl	%edx, %eax
e0109d77:	0f 84 e4 01 00 00 	je	484 <__udivmoddi4+0x271>
e0109d7d:	0f bd ca 	bsrl	%edx, %ecx
e0109d80:	83 f1 1f 	xorl	$31, %ecx
e0109d83:	0f bd c5 	bsrl	%ebp, %eax
e0109d86:	83 f0 1f 	xorl	$31, %eax
e0109d89:	29 c1 	subl	%eax, %ecx
e0109d8b:	83 f9 1f 	cmpl	$31, %ecx
e0109d8e:	73 a2 	jae	-94 <__udivmoddi4+0x42>
e0109d90:	8d 59 01 	leal	1(%ecx), %ebx
e0109d93:	b2 1f 	movb	$31, %dl
e0109d95:	28 ca 	subb	%cl, %dl
e0109d97:	89 f8 	movl	%edi, %eax
e0109d99:	89 d1 	movl	%edx, %ecx
e0109d9b:	d3 e0 	shll	%cl, %eax
e0109d9d:	89 44 24 08 	movl	%eax, 8(%esp)
e0109da1:	89 f8 	movl	%edi, %eax
e0109da3:	89 ef 	movl	%ebp, %edi
e0109da5:	89 d9 	movl	%ebx, %ecx
e0109da7:	d3 ef 	shrl	%cl, %edi
e0109da9:	89 d1 	movl	%edx, %ecx
e0109dab:	d3 e5 	shll	%cl, %ebp
e0109dad:	89 5c 24 04 	movl	%ebx, 4(%esp)
e0109db1:	89 d9 	movl	%ebx, %ecx
e0109db3:	d3 e8 	shrl	%cl, %eax
e0109db5:	09 c5 	orl	%eax, %ebp
e0109db7:	89 ee 	movl	%ebp, %esi
e0109db9:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0109dc0:	e9 d7 00 00 00 	jmp	215 <__udivmoddi4+0x1ac>
e0109dc5:	8d 41 ff 	leal	-1(%ecx), %eax
e0109dc8:	85 c8 	testl	%ecx, %eax
e0109dca:	0f 84 6f 01 00 00 	je	367 <__udivmoddi4+0x24f>
e0109dd0:	0f bd c1 	bsrl	%ecx, %eax
e0109dd3:	83 f0 1f 	xorl	$31, %eax
e0109dd6:	83 c0 21 	addl	$33, %eax
e0109dd9:	0f bd cd 	bsrl	%ebp, %ecx
e0109ddc:	83 f1 1f 	xorl	$31, %ecx
e0109ddf:	29 c8 	subl	%ecx, %eax
e0109de1:	83 f8 20 	cmpl	$32, %eax
e0109de4:	74 58 	je	88 <__udivmoddi4+0x14e>
e0109de6:	83 f8 1f 	cmpl	$31, %eax
e0109de9:	89 44 24 04 	movl	%eax, 4(%esp)
e0109ded:	0f 87 84 01 00 00 	ja	388 <__udivmoddi4+0x287>
e0109df3:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0109dfa:	89 c1 	movl	%eax, %ecx
e0109dfc:	f6 d9 	negb	%cl
e0109dfe:	89 fa 	movl	%edi, %edx
e0109e00:	d3 e2 	shll	%cl, %edx
e0109e02:	89 c1 	movl	%eax, %ecx
e0109e04:	89 fe 	movl	%edi, %esi
e0109e06:	89 ef 	movl	%ebp, %edi
e0109e08:	d3 ef 	shrl	%cl, %edi
e0109e0a:	0f ad ee 	shrdl	%cl, %ebp, %esi
e0109e0d:	89 d0 	movl	%edx, %eax
e0109e0f:	e9 8c 00 00 00 	jmp	140 <__udivmoddi4+0x1b0>
e0109e14:	85 f6 	testl	%esi, %esi
e0109e16:	74 0f 	je	15 <__udivmoddi4+0x137>
e0109e18:	89 f8 	movl	%edi, %eax
e0109e1a:	31 d2 	xorl	%edx, %edx
e0109e1c:	f7 f1 	divl	%ecx
e0109e1e:	89 16 	movl	%edx, (%esi)
e0109e20:	c7 46 04 00 00 00 00 	movl	$0, 4(%esi)
e0109e27:	31 ed 	xorl	%ebp, %ebp
e0109e29:	89 f8 	movl	%edi, %eax
e0109e2b:	31 d2 	xorl	%edx, %edx
e0109e2d:	f7 f1 	divl	%ecx
e0109e2f:	89 c7 	movl	%eax, %edi
e0109e31:	e9 dc 00 00 00 	jmp	220 <__udivmoddi4+0x222>
e0109e36:	8d 59 01 	leal	1(%ecx), %ebx
e0109e39:	83 fb 20 	cmpl	$32, %ebx
e0109e3c:	75 31 	jne	49 <__udivmoddi4+0x17f>
e0109e3e:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0109e45:	89 ee 	movl	%ebp, %esi
e0109e47:	89 f8 	movl	%edi, %eax
e0109e49:	c7 44 24 04 20 00 00 00 	movl	$32, 4(%esp)
e0109e51:	31 ff 	xorl	%edi, %edi
e0109e53:	eb 4b 	jmp	75 <__udivmoddi4+0x1b0>
e0109e55:	85 f6 	testl	%esi, %esi
e0109e57:	74 0d 	je	13 <__udivmoddi4+0x176>
e0109e59:	c7 46 04 00 00 00 00 	movl	$0, 4(%esi)
e0109e60:	c7 06 00 00 00 00 	movl	$0, (%esi)
e0109e66:	31 ff 	xorl	%edi, %edi
e0109e68:	31 ed 	xorl	%ebp, %ebp
e0109e6a:	e9 a3 00 00 00 	jmp	163 <__udivmoddi4+0x222>
e0109e6f:	c7 04 24 00 00 00 00 	movl	$0, (%esp)
e0109e76:	b2 1f 	movb	$31, %dl
e0109e78:	28 ca 	subb	%cl, %dl
e0109e7a:	89 f8 	movl	%edi, %eax
e0109e7c:	89 d1 	movl	%edx, %ecx
e0109e7e:	d3 e0 	shll	%cl, %eax
e0109e80:	89 44 24 08 	movl	%eax, 8(%esp)
e0109e84:	89 f8 	movl	%edi, %eax
e0109e86:	89 ef 	movl	%ebp, %edi
e0109e88:	89 d9 	movl	%ebx, %ecx
e0109e8a:	d3 ef 	shrl	%cl, %edi
e0109e8c:	89 d1 	movl	%edx, %ecx
e0109e8e:	d3 e5 	shll	%cl, %ebp
e0109e90:	89 5c 24 04 	movl	%ebx, 4(%esp)
e0109e94:	89 d9 	movl	%ebx, %ecx
e0109e96:	d3 e8 	shrl	%cl, %eax
e0109e98:	09 c5 	orl	%eax, %ebp
e0109e9a:	89 ee 	movl	%ebp, %esi
e0109e9c:	8b 44 24 08 	movl	8(%esp), %eax
e0109ea0:	31 c9 	xorl	%ecx, %ecx
e0109ea2:	8b 2c 24 	movl	(%esp), %ebp
e0109ea5:	66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%eax,%eax)
e0109eaf:	90 	nop
e0109eb0:	0f a4 f7 01 	shldl	$1, %esi, %edi
e0109eb4:	0f a4 c6 01 	shldl	$1, %eax, %esi
e0109eb8:	0f a4 e8 01 	shldl	$1, %ebp, %eax
e0109ebc:	01 ed 	addl	%ebp, %ebp
e0109ebe:	09 cd 	orl	%ecx, %ebp
e0109ec0:	89 fa 	movl	%edi, %edx
e0109ec2:	f7 d2 	notl	%edx
e0109ec4:	89 f1 	movl	%esi, %ecx
e0109ec6:	f7 d1 	notl	%ecx
e0109ec8:	8b 5c 24 28 	movl	40(%esp), %ebx
e0109ecc:	01 d9 	addl	%ebx, %ecx
e0109ece:	8b 4c 24 2c 	movl	44(%esp), %ecx
e0109ed2:	11 ca 	adcl	%ecx, %edx
e0109ed4:	c1 fa 1f 	sarl	$31, %edx
e0109ed7:	89 d1 	movl	%edx, %ecx
e0109ed9:	83 e1 01 	andl	$1, %ecx
e0109edc:	89 d3 	movl	%edx, %ebx
e0109ede:	23 5c 24 2c 	andl	44(%esp), %ebx
e0109ee2:	23 54 24 28 	andl	40(%esp), %edx
e0109ee6:	29 d6 	subl	%edx, %esi
e0109ee8:	19 df 	sbbl	%ebx, %edi
e0109eea:	ff 4c 24 04 	decl	4(%esp)
e0109eee:	75 c0 	jne	-64 <__udivmoddi4+0x1c0>
e0109ef0:	89 f3 	movl	%esi, %ebx
e0109ef2:	89 ea 	movl	%ebp, %edx
e0109ef4:	c1 ea 1f 	shrl	$31, %edx
e0109ef7:	8d 74 2d 00 	leal	(%ebp,%ebp), %esi
e0109efb:	8d 2c 42 	leal	(%edx,%eax,2), %ebp
e0109efe:	8b 44 24 30 	movl	48(%esp), %eax
e0109f02:	85 c0 	testl	%eax, %eax
e0109f04:	74 05 	je	5 <__udivmoddi4+0x21b>
e0109f06:	89 18 	movl	%ebx, (%eax)
e0109f08:	89 78 04 	movl	%edi, 4(%eax)
e0109f0b:	83 e6 fe 	andl	$-2, %esi
e0109f0e:	09 ce 	orl	%ecx, %esi
e0109f10:	89 f7 	movl	%esi, %edi
e0109f12:	89 f8 	movl	%edi, %eax
e0109f14:	89 ea 	movl	%ebp, %edx
e0109f16:	83 c4 0c 	addl	$12, %esp
e0109f19:	5e 	popl	%esi
e0109f1a:	5f 	popl	%edi
e0109f1b:	5b 	popl	%ebx
e0109f1c:	5d 	popl	%ebp
e0109f1d:	c3 	retl
e0109f1e:	85 f6 	testl	%esi, %esi
e0109f20:	89 d1 	movl	%edx, %ecx
e0109f22:	74 0f 	je	15 <__udivmoddi4+0x243>
e0109f24:	89 e8 	movl	%ebp, %eax
e0109f26:	31 d2 	xorl	%edx, %edx
e0109f28:	f7 f1 	divl	%ecx
e0109f2a:	89 56 04 	movl	%edx, 4(%esi)
e0109f2d:	c7 06 00 00 00 00 	movl	$0, (%esi)
e0109f33:	89 e8 	movl	%ebp, %eax
e0109f35:	31 d2 	xorl	%edx, %edx
e0109f37:	f7 f1 	divl	%ecx
e0109f39:	89 c7 	movl	%eax, %edi
e0109f3b:	31 ed 	xorl	%ebp, %ebp
e0109f3d:	eb d3 	jmp	-45 <__udivmoddi4+0x222>
e0109f3f:	85 f6 	testl	%esi, %esi
e0109f41:	74 0b 	je	11 <__udivmoddi4+0x25e>
e0109f43:	21 f8 	andl	%edi, %eax
e0109f45:	89 06 	movl	%eax, (%esi)
e0109f47:	c7 46 04 00 00 00 00 	movl	$0, 4(%esi)
e0109f4e:	83 f9 01 	cmpl	$1, %ecx
e0109f51:	74 bf 	je	-65 <__udivmoddi4+0x222>
e0109f53:	0f bc c9 	bsfl	%ecx, %ecx
e0109f56:	89 e8 	movl	%ebp, %eax
e0109f58:	d3 e8 	shrl	%cl, %eax
e0109f5a:	0f ad ef 	shrdl	%cl, %ebp, %edi
e0109f5d:	89 c5 	movl	%eax, %ebp
e0109f5f:	eb b1 	jmp	-79 <__udivmoddi4+0x222>
e0109f61:	85 f6 	testl	%esi, %esi
e0109f63:	74 07 	je	7 <__udivmoddi4+0x27c>
e0109f65:	21 e8 	andl	%ebp, %eax
e0109f67:	89 3e 	movl	%edi, (%esi)
e0109f69:	89 46 04 	movl	%eax, 4(%esi)
e0109f6c:	0f bc ca 	bsfl	%edx, %ecx
e0109f6f:	d3 ed 	shrl	%cl, %ebp
e0109f71:	89 ef 	movl	%ebp, %edi
e0109f73:	31 ed 	xorl	%ebp, %ebp
e0109f75:	eb 9b 	jmp	-101 <__udivmoddi4+0x222>
e0109f77:	89 c1 	movl	%eax, %ecx
e0109f79:	f6 d9 	negb	%cl
e0109f7b:	89 fa 	movl	%edi, %edx
e0109f7d:	d3 e2 	shll	%cl, %edx
e0109f7f:	89 14 24 	movl	%edx, (%esp)
e0109f82:	89 ea 	movl	%ebp, %edx
e0109f84:	d3 e2 	shll	%cl, %edx
e0109f86:	89 c1 	movl	%eax, %ecx
e0109f88:	d3 ef 	shrl	%cl, %edi
e0109f8a:	09 d7 	orl	%edx, %edi
e0109f8c:	89 c1 	movl	%eax, %ecx
e0109f8e:	89 f8 	movl	%edi, %eax
e0109f90:	d3 ed 	shrl	%cl, %ebp
e0109f92:	89 ee 	movl	%ebp, %esi
e0109f94:	e9 b8 fe ff ff 	jmp	-328 <__udivmoddi4+0x161>
e0109f99:	cc 	int3
e0109f9a:	cc 	int3
e0109f9b:	cc 	int3
e0109f9c:	cc 	int3
e0109f9d:	cc 	int3
e0109f9e:	cc 	int3
e0109f9f:	cc 	int3

00000000e0109fa0 __umoddi3:
e0109fa0:	83 ec 18 	subl	$24, %esp
e0109fa3:	8d 44 24 0c 	leal	12(%esp), %eax
e0109fa7:	50 	pushl	%eax
e0109fa8:	ff 74 24 2c 	pushl	44(%esp)
e0109fac:	ff 74 24 2c 	pushl	44(%esp)
e0109fb0:	ff 74 24 2c 	pushl	44(%esp)
e0109fb4:	ff 74 24 2c 	pushl	44(%esp)
e0109fb8:	e8 33 fd ff ff 	calll	-717 <__udivmoddi4>
e0109fbd:	83 c4 20 	addl	$32, %esp
e0109fc0:	8b 04 24 	movl	(%esp), %eax
e0109fc3:	8b 54 24 04 	movl	4(%esp), %edx
e0109fc7:	83 c4 0c 	addl	$12, %esp
e0109fca:	c3 	retl
e0109fcb:	cc 	int3
