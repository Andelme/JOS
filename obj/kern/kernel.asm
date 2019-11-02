
obj/kern/kernel:     file format elf32-i386


Disassembly of section .text:

e0100000 <__text_start>:
.globl		_start
_start = RELOC(entry)

.globl entry
entry:
    cli
e0100000:	02 b0 ad 1b 00 00    	add    0x1bad(%eax),%dh
e0100006:	00 00                	add    %al,(%eax)
e0100008:	fe 4f 52             	decb   0x52(%edi)
e010000b:	e4                   	.byte 0xe4

e010000c <entry>:
e010000c:	fa                   	cli    
	movw	$0x1234,0x472			# warm boot
e010000d:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
e0100014:	34 12 
	# sufficient until we set up our real page table in mem_init
	# in lab 2.

	# Load the physical address of entry_pgdir into cr3.  entry_pgdir
	# is defined in entrypgdir.c.
	movl	$(RELOC(entry_pgdir)), %eax
e0100016:	b8 00 70 11 00       	mov    $0x117000,%eax
	movl	%eax, %cr3
e010001b:	0f 22 d8             	mov    %eax,%cr3
	# Turn on paging.
	movl	%cr0, %eax
e010001e:	0f 20 c0             	mov    %cr0,%eax
	orl	$(CR0_PE|CR0_PG|CR0_WP), %eax
e0100021:	0d 01 00 01 80       	or     $0x80010001,%eax
	movl	%eax, %cr0
e0100026:	0f 22 c0             	mov    %eax,%cr0

	# Now paging is enabled, but we're still running at a low EIP
	# (why is this okay?).  Jump up above KERNBASE before entering
	# C code.
	mov	$relocated, %eax
e0100029:	b8 30 00 10 e0       	mov    $0xe0100030,%eax
	jmp	*%eax
e010002e:	ff e0                	jmp    *%eax

e0100030 <relocated>:
relocated:

	# Clear the frame pointer register (EBP)
	# so that once we get into debugging C code,
	# stack backtraces will be terminated properly.
	movl	$0x0,%ebp			# nuke frame pointer
e0100030:	bd 00 00 00 00       	mov    $0x0,%ebp

	# Set the stack pointer
	movl	$(bootstacktop),%esp
e0100035:	bc 00 70 11 e0       	mov    $0xe0117000,%esp

	# now to C code
	call	i386_init
e010003a:	e8 02 00 00 00       	call   e0100041 <i386_init>

e010003f <spin>:

	# Should never get here, but in case we do, just spin.
spin:	jmp	spin
e010003f:	eb fe                	jmp    e010003f <spin>

e0100041 <i386_init>:
#include <kern/picirq.h>
#include <kern/kclock.h>

void
i386_init(void)
{
e0100041:	55                   	push   %ebp
e0100042:	89 e5                	mov    %esp,%ebp
e0100044:	53                   	push   %ebx
e0100045:	83 ec 04             	sub    $0x4,%esp
e0100048:	ba 00 d0 11 e0       	mov    $0xe011d000,%edx
e010004d:	81 ea 60 b3 11 e0    	sub    $0xe011b360,%edx
	extern char edata[], end[];

	// Before doing anything else, complete the ELF loading process.
	// Clear the uninitialized global data (BSS) section of our program.
	// This ensures that all static/global variables start out zero.
	for (size_t i = 0; i < end - edata; i++)
e0100053:	b8 00 00 00 00       	mov    $0x0,%eax
e0100058:	eb 08                	jmp    e0100062 <i386_init+0x21>
		edata[i] = 0;
e010005a:	c6 80 60 b3 11 e0 00 	movb   $0x0,-0x1fee4ca0(%eax)
	for (size_t i = 0; i < end - edata; i++)
e0100061:	40                   	inc    %eax
e0100062:	39 d0                	cmp    %edx,%eax
e0100064:	75 f4                	jne    e010005a <i386_init+0x19>

	// Perform global constructor initialisation (e.g. asan)
	// This must be done as early as possible
	extern void (*__ctors_start)();
	extern void (*__ctors_end)();
	void (**ctor)() = &__ctors_start;
e0100066:	bb 60 b3 11 e0       	mov    $0xe011b360,%ebx
e010006b:	eb 05                	jmp    e0100072 <i386_init+0x31>
	while (ctor < &__ctors_end) {
		(*ctor)();
e010006d:	ff 13                	call   *(%ebx)
		ctor++;
e010006f:	83 c3 04             	add    $0x4,%ebx
	while (ctor < &__ctors_end) {
e0100072:	81 fb 60 b3 11 e0    	cmp    $0xe011b360,%ebx
e0100078:	72 f3                	jb     e010006d <i386_init+0x2c>
	}

	// Initialize the console.
	// Can't call cprintf until after we do this!
	cons_init();
e010007a:	e8 b2 04 00 00       	call   e0100531 <cons_init>

	tsc_calibrate();
e010007f:	e8 ab 2b 00 00       	call   e0102c2f <tsc_calibrate>

	cprintf("6828 decimal is %o octal!\n", 6828);
e0100084:	83 ec 08             	sub    $0x8,%esp
e0100087:	68 ac 1a 00 00       	push   $0x1aac
e010008c:	68 e0 30 10 e0       	push   $0xe01030e0
e0100091:	e8 70 19 00 00       	call   e0101a06 <cprintf>
	cprintf("END: %p\n", end);
e0100096:	83 c4 08             	add    $0x8,%esp
e0100099:	68 00 d0 11 e0       	push   $0xe011d000
e010009e:	68 fb 30 10 e0       	push   $0xe01030fb
e01000a3:	e8 5e 19 00 00       	call   e0101a06 <cprintf>

#ifndef CONFIG_KSPACE
	// Lab 6 memory management initialization functions
	mem_init();
e01000a8:	e8 1c 0b 00 00       	call   e0100bc9 <mem_init>
#endif

	// user environment initialization functions
	env_init();
e01000ad:	e8 98 14 00 00       	call   e010154a <env_init>

	clock_idt_init();
e01000b2:	e8 63 19 00 00       	call   e0101a1a <clock_idt_init>

	pic_init();
e01000b7:	e8 62 18 00 00       	call   e010191e <pic_init>
	rtc_init();
e01000bc:	e8 66 17 00 00       	call   e0101827 <rtc_init>
    irq_setmask_8259A(~(~irq_mask_8259A | (1 << IRQ_CLOCK))); 
e01000c1:	66 a1 54 b3 11 e0    	mov    0xe011b354,%ax
e01000c7:	25 ff fe 00 00       	and    $0xfeff,%eax
e01000cc:	89 04 24             	mov    %eax,(%esp)
e01000cf:	e8 c9 17 00 00       	call   e010189d <irq_setmask_8259A>
    monitor(NULL);
e01000d4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
e01000db:	e8 ba 07 00 00       	call   e010089a <monitor>
	ENV_CREATE_KERNEL_TYPE(prog_test4);
	ENV_CREATE_KERNEL_TYPE(prog_test5);
	ENV_CREATE_KERNEL_TYPE(prog_test6);
#endif
	// Schedule and run the first user environment!
	sched_yield();
e01000e0:	e8 45 1d 00 00       	call   e0101e2a <sched_yield>

e01000e5 <_panic>:
 * Panic is called on unresolvable fatal errors.
 * It prints "panic: mesg", and then enters the kernel monitor.
 */
void
_panic(const char *file, int line, const char *fmt,...)
{
e01000e5:	55                   	push   %ebp
e01000e6:	89 e5                	mov    %esp,%ebp
e01000e8:	56                   	push   %esi
e01000e9:	53                   	push   %ebx
e01000ea:	8b 75 10             	mov    0x10(%ebp),%esi
	va_list ap;

	if (panicstr)
e01000ed:	83 3d f0 c1 11 e0 00 	cmpl   $0x0,0xe011c1f0
e01000f4:	74 0f                	je     e0100105 <_panic+0x20>
	va_end(ap);

dead:
	/* break into the kernel monitor */
	while (1)
		monitor(NULL);
e01000f6:	83 ec 0c             	sub    $0xc,%esp
e01000f9:	6a 00                	push   $0x0
e01000fb:	e8 9a 07 00 00       	call   e010089a <monitor>
e0100100:	83 c4 10             	add    $0x10,%esp
e0100103:	eb f1                	jmp    e01000f6 <_panic+0x11>
	panicstr = fmt;
e0100105:	89 35 f0 c1 11 e0    	mov    %esi,0xe011c1f0
	__asm __volatile("cli; cld");
e010010b:	fa                   	cli    
e010010c:	fc                   	cld    
	va_start(ap, fmt);
e010010d:	8d 5d 14             	lea    0x14(%ebp),%ebx
	cprintf("kernel panic at %s:%d: ", file, line);
e0100110:	83 ec 04             	sub    $0x4,%esp
e0100113:	ff 75 0c             	pushl  0xc(%ebp)
e0100116:	ff 75 08             	pushl  0x8(%ebp)
e0100119:	68 04 31 10 e0       	push   $0xe0103104
e010011e:	e8 e3 18 00 00       	call   e0101a06 <cprintf>
	vcprintf(fmt, ap);
e0100123:	83 c4 08             	add    $0x8,%esp
e0100126:	53                   	push   %ebx
e0100127:	56                   	push   %esi
e0100128:	e8 b3 18 00 00       	call   e01019e0 <vcprintf>
	cprintf("\n");
e010012d:	c7 04 24 40 31 10 e0 	movl   $0xe0103140,(%esp)
e0100134:	e8 cd 18 00 00       	call   e0101a06 <cprintf>
e0100139:	83 c4 10             	add    $0x10,%esp
e010013c:	eb b8                	jmp    e01000f6 <_panic+0x11>

e010013e <_warn>:
}

/* like panic, but don't */
void
_warn(const char *file, int line, const char *fmt,...)
{
e010013e:	55                   	push   %ebp
e010013f:	89 e5                	mov    %esp,%ebp
e0100141:	53                   	push   %ebx
e0100142:	83 ec 08             	sub    $0x8,%esp
	va_list ap;

	va_start(ap, fmt);
e0100145:	8d 5d 14             	lea    0x14(%ebp),%ebx
	cprintf("kernel warning at %s:%d: ", file, line);
e0100148:	ff 75 0c             	pushl  0xc(%ebp)
e010014b:	ff 75 08             	pushl  0x8(%ebp)
e010014e:	68 1c 31 10 e0       	push   $0xe010311c
e0100153:	e8 ae 18 00 00       	call   e0101a06 <cprintf>
	vcprintf(fmt, ap);
e0100158:	83 c4 08             	add    $0x8,%esp
e010015b:	53                   	push   %ebx
e010015c:	ff 75 10             	pushl  0x10(%ebp)
e010015f:	e8 7c 18 00 00       	call   e01019e0 <vcprintf>
	cprintf("\n");
e0100164:	c7 04 24 40 31 10 e0 	movl   $0xe0103140,(%esp)
e010016b:	e8 96 18 00 00       	call   e0101a06 <cprintf>
	va_end(ap);
}
e0100170:	83 c4 10             	add    $0x10,%esp
e0100173:	8b 5d fc             	mov    -0x4(%ebp),%ebx
e0100176:	c9                   	leave  
e0100177:	c3                   	ret    

e0100178 <serial_proc_data>:

static bool serial_exists;

static int
serial_proc_data(void)
{
e0100178:	55                   	push   %ebp
e0100179:	89 e5                	mov    %esp,%ebp

static __inline uint8_t
inb(int port)
{
	uint8_t data;
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e010017b:	ba fd 03 00 00       	mov    $0x3fd,%edx
e0100180:	ec                   	in     (%dx),%al
	if (!(inb(COM1+COM_LSR) & COM_LSR_DATA))
e0100181:	a8 01                	test   $0x1,%al
e0100183:	74 0b                	je     e0100190 <serial_proc_data+0x18>
e0100185:	ba f8 03 00 00       	mov    $0x3f8,%edx
e010018a:	ec                   	in     (%dx),%al
		return -1;
	return inb(COM1+COM_RX);
e010018b:	0f b6 c0             	movzbl %al,%eax
}
e010018e:	5d                   	pop    %ebp
e010018f:	c3                   	ret    
		return -1;
e0100190:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
e0100195:	eb f7                	jmp    e010018e <serial_proc_data+0x16>

e0100197 <cons_intr>:

// called by device interrupt routines to feed input characters
// into the circular console input buffer.
static void
cons_intr(int (*proc)(void))
{
e0100197:	55                   	push   %ebp
e0100198:	89 e5                	mov    %esp,%ebp
e010019a:	53                   	push   %ebx
e010019b:	83 ec 04             	sub    $0x4,%esp
e010019e:	89 c3                	mov    %eax,%ebx
	int c;

	while ((c = (*proc)()) != -1) {
e01001a0:	ff d3                	call   *%ebx
e01001a2:	83 f8 ff             	cmp    $0xffffffff,%eax
e01001a5:	74 2d                	je     e01001d4 <cons_intr+0x3d>
		if (c == 0)
e01001a7:	85 c0                	test   %eax,%eax
e01001a9:	74 f5                	je     e01001a0 <cons_intr+0x9>
			continue;
		cons.buf[cons.wpos++] = c;
e01001ab:	8b 0d 84 b5 11 e0    	mov    0xe011b584,%ecx
e01001b1:	8d 51 01             	lea    0x1(%ecx),%edx
e01001b4:	89 15 84 b5 11 e0    	mov    %edx,0xe011b584
e01001ba:	88 81 80 b3 11 e0    	mov    %al,-0x1fee4c80(%ecx)
		if (cons.wpos == CONSBUFSIZE)
e01001c0:	81 fa 00 02 00 00    	cmp    $0x200,%edx
e01001c6:	75 d8                	jne    e01001a0 <cons_intr+0x9>
			cons.wpos = 0;
e01001c8:	c7 05 84 b5 11 e0 00 	movl   $0x0,0xe011b584
e01001cf:	00 00 00 
e01001d2:	eb cc                	jmp    e01001a0 <cons_intr+0x9>
	}
}
e01001d4:	83 c4 04             	add    $0x4,%esp
e01001d7:	5b                   	pop    %ebx
e01001d8:	5d                   	pop    %ebp
e01001d9:	c3                   	ret    

e01001da <kbd_proc_data>:
{
e01001da:	55                   	push   %ebp
e01001db:	89 e5                	mov    %esp,%ebp
e01001dd:	53                   	push   %ebx
e01001de:	83 ec 04             	sub    $0x4,%esp
e01001e1:	ba 64 00 00 00       	mov    $0x64,%edx
e01001e6:	ec                   	in     (%dx),%al
	if ((inb(KBSTATP) & KBS_DIB) == 0)
e01001e7:	a8 01                	test   $0x1,%al
e01001e9:	0f 84 e9 00 00 00    	je     e01002d8 <kbd_proc_data+0xfe>
e01001ef:	ba 60 00 00 00       	mov    $0x60,%edx
e01001f4:	ec                   	in     (%dx),%al
e01001f5:	88 c2                	mov    %al,%dl
	if (data == 0xE0) {
e01001f7:	3c e0                	cmp    $0xe0,%al
e01001f9:	0f 84 8a 00 00 00    	je     e0100289 <kbd_proc_data+0xaf>
	} else if (data & 0x80) {
e01001ff:	84 c0                	test   %al,%al
e0100201:	0f 88 95 00 00 00    	js     e010029c <kbd_proc_data+0xc2>
	} else if (shift & E0ESC) {
e0100207:	8b 0d 60 b3 11 e0    	mov    0xe011b360,%ecx
e010020d:	f6 c1 40             	test   $0x40,%cl
e0100210:	74 0e                	je     e0100220 <kbd_proc_data+0x46>
		data |= 0x80;
e0100212:	83 c8 80             	or     $0xffffff80,%eax
e0100215:	88 c2                	mov    %al,%dl
		shift &= ~E0ESC;
e0100217:	83 e1 bf             	and    $0xffffffbf,%ecx
e010021a:	89 0d 60 b3 11 e0    	mov    %ecx,0xe011b360
	shift |= shiftcode[data];
e0100220:	0f b6 d2             	movzbl %dl,%edx
e0100223:	0f b6 82 80 32 10 e0 	movzbl -0x1fefcd80(%edx),%eax
e010022a:	0b 05 60 b3 11 e0    	or     0xe011b360,%eax
	shift ^= togglecode[data];
e0100230:	0f b6 8a 80 31 10 e0 	movzbl -0x1fefce80(%edx),%ecx
e0100237:	31 c8                	xor    %ecx,%eax
e0100239:	a3 60 b3 11 e0       	mov    %eax,0xe011b360
	c = charcode[shift & (CTL | SHIFT)][data];
e010023e:	89 c1                	mov    %eax,%ecx
e0100240:	83 e1 03             	and    $0x3,%ecx
e0100243:	8b 0c 8d 60 31 10 e0 	mov    -0x1fefcea0(,%ecx,4),%ecx
e010024a:	8a 14 11             	mov    (%ecx,%edx,1),%dl
e010024d:	0f b6 da             	movzbl %dl,%ebx
	if (shift & CAPSLOCK) {
e0100250:	a8 08                	test   $0x8,%al
e0100252:	74 0d                	je     e0100261 <kbd_proc_data+0x87>
		if ('a' <= c && c <= 'z')
e0100254:	89 da                	mov    %ebx,%edx
e0100256:	8d 4b 9f             	lea    -0x61(%ebx),%ecx
e0100259:	83 f9 19             	cmp    $0x19,%ecx
e010025c:	77 6d                	ja     e01002cb <kbd_proc_data+0xf1>
			c += 'A' - 'a';
e010025e:	83 eb 20             	sub    $0x20,%ebx
	if (!(~shift & (CTL | ALT)) && c == KEY_DEL) {
e0100261:	f7 d0                	not    %eax
e0100263:	a8 06                	test   $0x6,%al
e0100265:	75 2e                	jne    e0100295 <kbd_proc_data+0xbb>
e0100267:	81 fb e9 00 00 00    	cmp    $0xe9,%ebx
e010026d:	75 26                	jne    e0100295 <kbd_proc_data+0xbb>
		cprintf("Rebooting!\n");
e010026f:	83 ec 0c             	sub    $0xc,%esp
e0100272:	68 36 31 10 e0       	push   $0xe0103136
e0100277:	e8 8a 17 00 00       	call   e0101a06 <cprintf>
}

static __inline void
outb(int port, uint8_t data)
{
	__asm __volatile("outb %0,%w1" : : "a" (data), "d" (port));
e010027c:	b0 03                	mov    $0x3,%al
e010027e:	ba 92 00 00 00       	mov    $0x92,%edx
e0100283:	ee                   	out    %al,(%dx)
e0100284:	83 c4 10             	add    $0x10,%esp
e0100287:	eb 0c                	jmp    e0100295 <kbd_proc_data+0xbb>
		shift |= E0ESC;
e0100289:	83 0d 60 b3 11 e0 40 	orl    $0x40,0xe011b360
		return 0;
e0100290:	bb 00 00 00 00       	mov    $0x0,%ebx
}
e0100295:	89 d8                	mov    %ebx,%eax
e0100297:	8b 5d fc             	mov    -0x4(%ebp),%ebx
e010029a:	c9                   	leave  
e010029b:	c3                   	ret    
		data = (shift & E0ESC ? data : data & 0x7F);
e010029c:	8b 0d 60 b3 11 e0    	mov    0xe011b360,%ecx
e01002a2:	f6 c1 40             	test   $0x40,%cl
e01002a5:	75 05                	jne    e01002ac <kbd_proc_data+0xd2>
e01002a7:	83 e0 7f             	and    $0x7f,%eax
e01002aa:	88 c2                	mov    %al,%dl
		shift &= ~(shiftcode[data] | E0ESC);
e01002ac:	0f b6 d2             	movzbl %dl,%edx
e01002af:	8a 82 80 32 10 e0    	mov    -0x1fefcd80(%edx),%al
e01002b5:	83 c8 40             	or     $0x40,%eax
e01002b8:	0f b6 c0             	movzbl %al,%eax
e01002bb:	f7 d0                	not    %eax
e01002bd:	21 c8                	and    %ecx,%eax
e01002bf:	a3 60 b3 11 e0       	mov    %eax,0xe011b360
		return 0;
e01002c4:	bb 00 00 00 00       	mov    $0x0,%ebx
e01002c9:	eb ca                	jmp    e0100295 <kbd_proc_data+0xbb>
		else if ('A' <= c && c <= 'Z')
e01002cb:	83 ea 41             	sub    $0x41,%edx
e01002ce:	83 fa 19             	cmp    $0x19,%edx
e01002d1:	77 8e                	ja     e0100261 <kbd_proc_data+0x87>
			c += 'a' - 'A';
e01002d3:	83 c3 20             	add    $0x20,%ebx
e01002d6:	eb 89                	jmp    e0100261 <kbd_proc_data+0x87>
		return -1;
e01002d8:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
e01002dd:	eb b6                	jmp    e0100295 <kbd_proc_data+0xbb>

e01002df <cons_putc>:
}

// output a character to the console
static void
cons_putc(int c)
{
e01002df:	55                   	push   %ebp
e01002e0:	89 e5                	mov    %esp,%ebp
e01002e2:	57                   	push   %edi
e01002e3:	56                   	push   %esi
e01002e4:	53                   	push   %ebx
e01002e5:	83 ec 1c             	sub    $0x1c,%esp
e01002e8:	89 c7                	mov    %eax,%edi
e01002ea:	bb 01 32 00 00       	mov    $0x3201,%ebx
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e01002ef:	be fd 03 00 00       	mov    $0x3fd,%esi
e01002f4:	b9 84 00 00 00       	mov    $0x84,%ecx
e01002f9:	eb 06                	jmp    e0100301 <cons_putc+0x22>
e01002fb:	89 ca                	mov    %ecx,%edx
e01002fd:	ec                   	in     (%dx),%al
e01002fe:	ec                   	in     (%dx),%al
e01002ff:	ec                   	in     (%dx),%al
e0100300:	ec                   	in     (%dx),%al
e0100301:	89 f2                	mov    %esi,%edx
e0100303:	ec                   	in     (%dx),%al
	for (i = 0;
e0100304:	a8 20                	test   $0x20,%al
e0100306:	75 03                	jne    e010030b <cons_putc+0x2c>
	     !(inb(COM1 + COM_LSR) & COM_LSR_TXRDY) && i < 12800;
e0100308:	4b                   	dec    %ebx
e0100309:	75 f0                	jne    e01002fb <cons_putc+0x1c>
	outb(COM1 + COM_TX, c);
e010030b:	89 f8                	mov    %edi,%eax
e010030d:	88 45 e7             	mov    %al,-0x19(%ebp)
	__asm __volatile("outb %0,%w1" : : "a" (data), "d" (port));
e0100310:	ba f8 03 00 00       	mov    $0x3f8,%edx
e0100315:	ee                   	out    %al,(%dx)
e0100316:	bb 01 32 00 00       	mov    $0x3201,%ebx
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e010031b:	be 79 03 00 00       	mov    $0x379,%esi
e0100320:	b9 84 00 00 00       	mov    $0x84,%ecx
e0100325:	eb 06                	jmp    e010032d <cons_putc+0x4e>
e0100327:	89 ca                	mov    %ecx,%edx
e0100329:	ec                   	in     (%dx),%al
e010032a:	ec                   	in     (%dx),%al
e010032b:	ec                   	in     (%dx),%al
e010032c:	ec                   	in     (%dx),%al
e010032d:	89 f2                	mov    %esi,%edx
e010032f:	ec                   	in     (%dx),%al
	for (i = 0; !(inb(0x378+1) & 0x80) && i < 12800; i++)
e0100330:	84 c0                	test   %al,%al
e0100332:	78 03                	js     e0100337 <cons_putc+0x58>
e0100334:	4b                   	dec    %ebx
e0100335:	75 f0                	jne    e0100327 <cons_putc+0x48>
	__asm __volatile("outb %0,%w1" : : "a" (data), "d" (port));
e0100337:	ba 78 03 00 00       	mov    $0x378,%edx
e010033c:	8a 45 e7             	mov    -0x19(%ebp),%al
e010033f:	ee                   	out    %al,(%dx)
e0100340:	ba 7a 03 00 00       	mov    $0x37a,%edx
e0100345:	b0 0d                	mov    $0xd,%al
e0100347:	ee                   	out    %al,(%dx)
e0100348:	b0 08                	mov    $0x8,%al
e010034a:	ee                   	out    %al,(%dx)
	if (!(c & ~0xFF))
e010034b:	f7 c7 00 ff ff ff    	test   $0xffffff00,%edi
e0100351:	75 06                	jne    e0100359 <cons_putc+0x7a>
		c |= 0x0700;
e0100353:	81 cf 00 07 00 00    	or     $0x700,%edi
	switch (c & 0xff) {
e0100359:	89 f8                	mov    %edi,%eax
e010035b:	0f b6 c0             	movzbl %al,%eax
e010035e:	83 f8 09             	cmp    $0x9,%eax
e0100361:	0f 84 b1 00 00 00    	je     e0100418 <cons_putc+0x139>
e0100367:	83 f8 09             	cmp    $0x9,%eax
e010036a:	7e 70                	jle    e01003dc <cons_putc+0xfd>
e010036c:	83 f8 0a             	cmp    $0xa,%eax
e010036f:	0f 84 96 00 00 00    	je     e010040b <cons_putc+0x12c>
e0100375:	83 f8 0d             	cmp    $0xd,%eax
e0100378:	0f 85 d1 00 00 00    	jne    e010044f <cons_putc+0x170>
		crt_pos -= (crt_pos % CRT_COLS);
e010037e:	66 8b 0d 88 b5 11 e0 	mov    0xe011b588,%cx
e0100385:	bb 50 00 00 00       	mov    $0x50,%ebx
e010038a:	89 c8                	mov    %ecx,%eax
e010038c:	ba 00 00 00 00       	mov    $0x0,%edx
e0100391:	66 f7 f3             	div    %bx
e0100394:	29 d1                	sub    %edx,%ecx
e0100396:	66 89 0d 88 b5 11 e0 	mov    %cx,0xe011b588
	if (crt_pos >= CRT_SIZE) {
e010039d:	66 81 3d 88 b5 11 e0 	cmpw   $0x7cf,0xe011b588
e01003a4:	cf 07 
e01003a6:	0f 87 c5 00 00 00    	ja     e0100471 <cons_putc+0x192>
	outb(addr_6845, 14);
e01003ac:	8b 0d 90 b5 11 e0    	mov    0xe011b590,%ecx
e01003b2:	b0 0e                	mov    $0xe,%al
e01003b4:	89 ca                	mov    %ecx,%edx
e01003b6:	ee                   	out    %al,(%dx)
	outb(addr_6845 + 1, (uint8_t) ((unsigned) crt_pos >> 8U));
e01003b7:	8d 59 01             	lea    0x1(%ecx),%ebx
e01003ba:	66 a1 88 b5 11 e0    	mov    0xe011b588,%ax
e01003c0:	66 c1 e8 08          	shr    $0x8,%ax
e01003c4:	89 da                	mov    %ebx,%edx
e01003c6:	ee                   	out    %al,(%dx)
e01003c7:	b0 0f                	mov    $0xf,%al
e01003c9:	89 ca                	mov    %ecx,%edx
e01003cb:	ee                   	out    %al,(%dx)
e01003cc:	a0 88 b5 11 e0       	mov    0xe011b588,%al
e01003d1:	89 da                	mov    %ebx,%edx
e01003d3:	ee                   	out    %al,(%dx)
	serial_putc(c);
	lpt_putc(c);
	cga_putc(c);
}
e01003d4:	8d 65 f4             	lea    -0xc(%ebp),%esp
e01003d7:	5b                   	pop    %ebx
e01003d8:	5e                   	pop    %esi
e01003d9:	5f                   	pop    %edi
e01003da:	5d                   	pop    %ebp
e01003db:	c3                   	ret    
	switch (c & 0xff) {
e01003dc:	83 f8 08             	cmp    $0x8,%eax
e01003df:	75 6e                	jne    e010044f <cons_putc+0x170>
		if (crt_pos > 0) {
e01003e1:	66 a1 88 b5 11 e0    	mov    0xe011b588,%ax
e01003e7:	66 85 c0             	test   %ax,%ax
e01003ea:	74 c0                	je     e01003ac <cons_putc+0xcd>
			crt_pos--;
e01003ec:	48                   	dec    %eax
e01003ed:	66 a3 88 b5 11 e0    	mov    %ax,0xe011b588
			crt_buf[crt_pos] = (c & ~0xff) | ' ';
e01003f3:	0f b7 c0             	movzwl %ax,%eax
e01003f6:	81 e7 00 ff ff ff    	and    $0xffffff00,%edi
e01003fc:	83 cf 20             	or     $0x20,%edi
e01003ff:	8b 15 8c b5 11 e0    	mov    0xe011b58c,%edx
e0100405:	66 89 3c 42          	mov    %di,(%edx,%eax,2)
e0100409:	eb 92                	jmp    e010039d <cons_putc+0xbe>
		crt_pos += CRT_COLS;
e010040b:	66 83 05 88 b5 11 e0 	addw   $0x50,0xe011b588
e0100412:	50 
e0100413:	e9 66 ff ff ff       	jmp    e010037e <cons_putc+0x9f>
		cons_putc(' ');
e0100418:	b8 20 00 00 00       	mov    $0x20,%eax
e010041d:	e8 bd fe ff ff       	call   e01002df <cons_putc>
		cons_putc(' ');
e0100422:	b8 20 00 00 00       	mov    $0x20,%eax
e0100427:	e8 b3 fe ff ff       	call   e01002df <cons_putc>
		cons_putc(' ');
e010042c:	b8 20 00 00 00       	mov    $0x20,%eax
e0100431:	e8 a9 fe ff ff       	call   e01002df <cons_putc>
		cons_putc(' ');
e0100436:	b8 20 00 00 00       	mov    $0x20,%eax
e010043b:	e8 9f fe ff ff       	call   e01002df <cons_putc>
		cons_putc(' ');
e0100440:	b8 20 00 00 00       	mov    $0x20,%eax
e0100445:	e8 95 fe ff ff       	call   e01002df <cons_putc>
e010044a:	e9 4e ff ff ff       	jmp    e010039d <cons_putc+0xbe>
		crt_buf[crt_pos++] = c;		/* write the character */
e010044f:	66 a1 88 b5 11 e0    	mov    0xe011b588,%ax
e0100455:	8d 50 01             	lea    0x1(%eax),%edx
e0100458:	66 89 15 88 b5 11 e0 	mov    %dx,0xe011b588
e010045f:	0f b7 c0             	movzwl %ax,%eax
e0100462:	8b 15 8c b5 11 e0    	mov    0xe011b58c,%edx
e0100468:	66 89 3c 42          	mov    %di,(%edx,%eax,2)
e010046c:	e9 2c ff ff ff       	jmp    e010039d <cons_putc+0xbe>
		memmove(crt_buf, crt_buf + CRT_COLS, (CRT_SIZE - CRT_COLS) * sizeof(uint16_t));
e0100471:	a1 8c b5 11 e0       	mov    0xe011b58c,%eax
e0100476:	83 ec 04             	sub    $0x4,%esp
e0100479:	68 00 0f 00 00       	push   $0xf00
e010047e:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
e0100484:	52                   	push   %edx
e0100485:	50                   	push   %eax
e0100486:	e8 10 26 00 00       	call   e0102a9b <memmove>
			crt_buf[i] = 0x0700 | ' ';
e010048b:	8b 15 8c b5 11 e0    	mov    0xe011b58c,%edx
e0100491:	8d 82 00 0f 00 00    	lea    0xf00(%edx),%eax
e0100497:	81 c2 a0 0f 00 00    	add    $0xfa0,%edx
e010049d:	83 c4 10             	add    $0x10,%esp
e01004a0:	66 c7 00 20 07       	movw   $0x720,(%eax)
e01004a5:	83 c0 02             	add    $0x2,%eax
		for (i = CRT_SIZE - CRT_COLS; i < CRT_SIZE; i++)
e01004a8:	39 d0                	cmp    %edx,%eax
e01004aa:	75 f4                	jne    e01004a0 <cons_putc+0x1c1>
		crt_pos -= CRT_COLS;
e01004ac:	66 83 2d 88 b5 11 e0 	subw   $0x50,0xe011b588
e01004b3:	50 
e01004b4:	e9 f3 fe ff ff       	jmp    e01003ac <cons_putc+0xcd>

e01004b9 <serial_intr>:
	if (serial_exists)
e01004b9:	80 3d 94 b5 11 e0 00 	cmpb   $0x0,0xe011b594
e01004c0:	75 01                	jne    e01004c3 <serial_intr+0xa>
e01004c2:	c3                   	ret    
{
e01004c3:	55                   	push   %ebp
e01004c4:	89 e5                	mov    %esp,%ebp
e01004c6:	83 ec 08             	sub    $0x8,%esp
		cons_intr(serial_proc_data);
e01004c9:	b8 78 01 10 e0       	mov    $0xe0100178,%eax
e01004ce:	e8 c4 fc ff ff       	call   e0100197 <cons_intr>
}
e01004d3:	c9                   	leave  
e01004d4:	c3                   	ret    

e01004d5 <kbd_intr>:
{
e01004d5:	55                   	push   %ebp
e01004d6:	89 e5                	mov    %esp,%ebp
e01004d8:	83 ec 08             	sub    $0x8,%esp
	cons_intr(kbd_proc_data);
e01004db:	b8 da 01 10 e0       	mov    $0xe01001da,%eax
e01004e0:	e8 b2 fc ff ff       	call   e0100197 <cons_intr>
}
e01004e5:	c9                   	leave  
e01004e6:	c3                   	ret    

e01004e7 <cons_getc>:
{
e01004e7:	55                   	push   %ebp
e01004e8:	89 e5                	mov    %esp,%ebp
e01004ea:	83 ec 08             	sub    $0x8,%esp
	serial_intr();
e01004ed:	e8 c7 ff ff ff       	call   e01004b9 <serial_intr>
	kbd_intr();
e01004f2:	e8 de ff ff ff       	call   e01004d5 <kbd_intr>
	if (cons.rpos != cons.wpos) {
e01004f7:	a1 80 b5 11 e0       	mov    0xe011b580,%eax
e01004fc:	3b 05 84 b5 11 e0    	cmp    0xe011b584,%eax
e0100502:	74 26                	je     e010052a <cons_getc+0x43>
		c = cons.buf[cons.rpos++];
e0100504:	8d 50 01             	lea    0x1(%eax),%edx
e0100507:	89 15 80 b5 11 e0    	mov    %edx,0xe011b580
e010050d:	0f b6 80 80 b3 11 e0 	movzbl -0x1fee4c80(%eax),%eax
		if (cons.rpos == CONSBUFSIZE)
e0100514:	81 fa 00 02 00 00    	cmp    $0x200,%edx
e010051a:	74 02                	je     e010051e <cons_getc+0x37>
}
e010051c:	c9                   	leave  
e010051d:	c3                   	ret    
			cons.rpos = 0;
e010051e:	c7 05 80 b5 11 e0 00 	movl   $0x0,0xe011b580
e0100525:	00 00 00 
e0100528:	eb f2                	jmp    e010051c <cons_getc+0x35>
	return 0;
e010052a:	b8 00 00 00 00       	mov    $0x0,%eax
e010052f:	eb eb                	jmp    e010051c <cons_getc+0x35>

e0100531 <cons_init>:

// initialize the console devices
void
cons_init(void)
{
e0100531:	55                   	push   %ebp
e0100532:	89 e5                	mov    %esp,%ebp
e0100534:	57                   	push   %edi
e0100535:	56                   	push   %esi
e0100536:	53                   	push   %ebx
e0100537:	83 ec 0c             	sub    $0xc,%esp
	was = *cp;                            // CGA_BUF has fixed address.
e010053a:	66 8b 15 00 80 0b e0 	mov    0xe00b8000,%dx
	*cp = (uint16_t) 0xA55A;
e0100541:	66 c7 05 00 80 0b e0 	movw   $0xa55a,0xe00b8000
e0100548:	5a a5 
	if (*cp != 0xA55A) {
e010054a:	66 a1 00 80 0b e0    	mov    0xe00b8000,%ax
e0100550:	66 3d 5a a5          	cmp    $0xa55a,%ax
e0100554:	0f 84 a2 00 00 00    	je     e01005fc <cons_init+0xcb>
		addr_6845 = MONO_BASE;                 // MONO_BASE has fixed address.
e010055a:	c7 05 90 b5 11 e0 b4 	movl   $0x3b4,0xe011b590
e0100561:	03 00 00 
		cp = (uint16_t*) (KERNBASE + MONO_BUF); // Addressing lower bytes higher KERTOP mapping.
e0100564:	be 00 00 0b e0       	mov    $0xe00b0000,%esi
	outb(addr_6845, 14);
e0100569:	8b 3d 90 b5 11 e0    	mov    0xe011b590,%edi
e010056f:	b0 0e                	mov    $0xe,%al
e0100571:	89 fa                	mov    %edi,%edx
e0100573:	ee                   	out    %al,(%dx)
	pos = inb(addr_6845 + 1) << 8;
e0100574:	8d 4f 01             	lea    0x1(%edi),%ecx
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e0100577:	89 ca                	mov    %ecx,%edx
e0100579:	ec                   	in     (%dx),%al
e010057a:	0f b6 c0             	movzbl %al,%eax
e010057d:	c1 e0 08             	shl    $0x8,%eax
e0100580:	89 c3                	mov    %eax,%ebx
	__asm __volatile("outb %0,%w1" : : "a" (data), "d" (port));
e0100582:	b0 0f                	mov    $0xf,%al
e0100584:	89 fa                	mov    %edi,%edx
e0100586:	ee                   	out    %al,(%dx)
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e0100587:	89 ca                	mov    %ecx,%edx
e0100589:	ec                   	in     (%dx),%al
	crt_buf = (uint16_t*) cp;
e010058a:	89 35 8c b5 11 e0    	mov    %esi,0xe011b58c
	pos |= inb(addr_6845 + 1);
e0100590:	0f b6 c0             	movzbl %al,%eax
e0100593:	09 d8                	or     %ebx,%eax
	crt_pos = pos;
e0100595:	66 a3 88 b5 11 e0    	mov    %ax,0xe011b588
	__asm __volatile("outb %0,%w1" : : "a" (data), "d" (port));
e010059b:	b1 00                	mov    $0x0,%cl
e010059d:	bb fa 03 00 00       	mov    $0x3fa,%ebx
e01005a2:	88 c8                	mov    %cl,%al
e01005a4:	89 da                	mov    %ebx,%edx
e01005a6:	ee                   	out    %al,(%dx)
e01005a7:	bf fb 03 00 00       	mov    $0x3fb,%edi
e01005ac:	b0 80                	mov    $0x80,%al
e01005ae:	89 fa                	mov    %edi,%edx
e01005b0:	ee                   	out    %al,(%dx)
e01005b1:	b0 0c                	mov    $0xc,%al
e01005b3:	ba f8 03 00 00       	mov    $0x3f8,%edx
e01005b8:	ee                   	out    %al,(%dx)
e01005b9:	be f9 03 00 00       	mov    $0x3f9,%esi
e01005be:	88 c8                	mov    %cl,%al
e01005c0:	89 f2                	mov    %esi,%edx
e01005c2:	ee                   	out    %al,(%dx)
e01005c3:	b0 03                	mov    $0x3,%al
e01005c5:	89 fa                	mov    %edi,%edx
e01005c7:	ee                   	out    %al,(%dx)
e01005c8:	ba fc 03 00 00       	mov    $0x3fc,%edx
e01005cd:	88 c8                	mov    %cl,%al
e01005cf:	ee                   	out    %al,(%dx)
e01005d0:	b0 01                	mov    $0x1,%al
e01005d2:	89 f2                	mov    %esi,%edx
e01005d4:	ee                   	out    %al,(%dx)
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e01005d5:	ba fd 03 00 00       	mov    $0x3fd,%edx
e01005da:	ec                   	in     (%dx),%al
e01005db:	88 c1                	mov    %al,%cl
	serial_exists = (inb(COM1+COM_LSR) != 0xFF);
e01005dd:	3c ff                	cmp    $0xff,%al
e01005df:	0f 95 05 94 b5 11 e0 	setne  0xe011b594
e01005e6:	89 da                	mov    %ebx,%edx
e01005e8:	ec                   	in     (%dx),%al
e01005e9:	ba f8 03 00 00       	mov    $0x3f8,%edx
e01005ee:	ec                   	in     (%dx),%al
	cga_init();
	kbd_init();
	serial_init();

	if (!serial_exists)
e01005ef:	80 f9 ff             	cmp    $0xff,%cl
e01005f2:	74 23                	je     e0100617 <cons_init+0xe6>
		cprintf("Serial port does not exist!\n");
}
e01005f4:	8d 65 f4             	lea    -0xc(%ebp),%esp
e01005f7:	5b                   	pop    %ebx
e01005f8:	5e                   	pop    %esi
e01005f9:	5f                   	pop    %edi
e01005fa:	5d                   	pop    %ebp
e01005fb:	c3                   	ret    
		*cp = was;
e01005fc:	66 89 15 00 80 0b e0 	mov    %dx,0xe00b8000
		addr_6845 = CGA_BASE;
e0100603:	c7 05 90 b5 11 e0 d4 	movl   $0x3d4,0xe011b590
e010060a:	03 00 00 
	cp = (uint16_t*) (KERNBASE + CGA_BUF); // Addressing lower bytes througth higher KERNBASE mapping.
e010060d:	be 00 80 0b e0       	mov    $0xe00b8000,%esi
e0100612:	e9 52 ff ff ff       	jmp    e0100569 <cons_init+0x38>
		cprintf("Serial port does not exist!\n");
e0100617:	83 ec 0c             	sub    $0xc,%esp
e010061a:	68 42 31 10 e0       	push   $0xe0103142
e010061f:	e8 e2 13 00 00       	call   e0101a06 <cprintf>
e0100624:	83 c4 10             	add    $0x10,%esp
}
e0100627:	eb cb                	jmp    e01005f4 <cons_init+0xc3>

e0100629 <cputchar>:

// `High'-level console I/O.  Used by readline and cprintf.

void
cputchar(int c)
{
e0100629:	55                   	push   %ebp
e010062a:	89 e5                	mov    %esp,%ebp
e010062c:	83 ec 08             	sub    $0x8,%esp
	cons_putc(c);
e010062f:	8b 45 08             	mov    0x8(%ebp),%eax
e0100632:	e8 a8 fc ff ff       	call   e01002df <cons_putc>
}
e0100637:	c9                   	leave  
e0100638:	c3                   	ret    

e0100639 <getchar>:

int
getchar(void)
{
e0100639:	55                   	push   %ebp
e010063a:	89 e5                	mov    %esp,%ebp
e010063c:	83 ec 08             	sub    $0x8,%esp
	int c;

	while ((c = cons_getc()) == 0)
e010063f:	e8 a3 fe ff ff       	call   e01004e7 <cons_getc>
e0100644:	85 c0                	test   %eax,%eax
e0100646:	74 f7                	je     e010063f <getchar+0x6>
		/* do nothing */;
	return c;
}
e0100648:	c9                   	leave  
e0100649:	c3                   	ret    

e010064a <iscons>:

int
iscons(int fdnum)
{
e010064a:	55                   	push   %ebp
e010064b:	89 e5                	mov    %esp,%ebp
	// used by readline
	return 1;
}
e010064d:	b8 01 00 00 00       	mov    $0x1,%eax
e0100652:	5d                   	pop    %ebp
e0100653:	c3                   	ret    

e0100654 <mon_help>:

/***** Implementations of basic kernel monitor commands *****/

int
mon_help(int argc, char **argv, struct Trapframe *tf)
{
e0100654:	55                   	push   %ebp
e0100655:	89 e5                	mov    %esp,%ebp
e0100657:	56                   	push   %esi
e0100658:	53                   	push   %ebx
e0100659:	bb 40 36 10 e0       	mov    $0xe0103640,%ebx
e010065e:	be 88 36 10 e0       	mov    $0xe0103688,%esi
	int i;

	for (i = 0; i < NCOMMANDS; i++)
		cprintf("%s - %s\n", commands[i].name, commands[i].desc);
e0100663:	83 ec 04             	sub    $0x4,%esp
e0100666:	ff 73 04             	pushl  0x4(%ebx)
e0100669:	ff 33                	pushl  (%ebx)
e010066b:	68 80 33 10 e0       	push   $0xe0103380
e0100670:	e8 91 13 00 00       	call   e0101a06 <cprintf>
e0100675:	83 c3 0c             	add    $0xc,%ebx
	for (i = 0; i < NCOMMANDS; i++)
e0100678:	83 c4 10             	add    $0x10,%esp
e010067b:	39 f3                	cmp    %esi,%ebx
e010067d:	75 e4                	jne    e0100663 <mon_help+0xf>
	return 0;
}
e010067f:	b8 00 00 00 00       	mov    $0x0,%eax
e0100684:	8d 65 f8             	lea    -0x8(%ebp),%esp
e0100687:	5b                   	pop    %ebx
e0100688:	5e                   	pop    %esi
e0100689:	5d                   	pop    %ebp
e010068a:	c3                   	ret    

e010068b <mon_kerninfo>:

int
mon_kerninfo(int argc, char **argv, struct Trapframe *tf)
{
e010068b:	55                   	push   %ebp
e010068c:	89 e5                	mov    %esp,%ebp
e010068e:	83 ec 14             	sub    $0x14,%esp
	extern char _start[], entry[], etext[], edata[], end[];

	cprintf("Special kernel symbols:\n");
e0100691:	68 89 33 10 e0       	push   $0xe0103389
e0100696:	e8 6b 13 00 00       	call   e0101a06 <cprintf>
	cprintf("  _start                  %08x (phys)\n", (uint32_t)_start);
e010069b:	83 c4 08             	add    $0x8,%esp
e010069e:	68 0c 00 10 00       	push   $0x10000c
e01006a3:	68 ac 34 10 e0       	push   $0xe01034ac
e01006a8:	e8 59 13 00 00       	call   e0101a06 <cprintf>
	cprintf("  entry  %08x (virt)  %08x (phys)\n",
e01006ad:	83 c4 0c             	add    $0xc,%esp
e01006b0:	68 0c 00 10 00       	push   $0x10000c
e01006b5:	68 0c 00 10 e0       	push   $0xe010000c
e01006ba:	68 d4 34 10 e0       	push   $0xe01034d4
e01006bf:	e8 42 13 00 00       	call   e0101a06 <cprintf>
            (uint32_t)entry, (uint32_t)entry - KERNBASE);
	cprintf("  etext  %08x (virt)  %08x (phys)\n",
e01006c4:	83 c4 0c             	add    $0xc,%esp
e01006c7:	68 cc 30 10 00       	push   $0x1030cc
e01006cc:	68 cc 30 10 e0       	push   $0xe01030cc
e01006d1:	68 f8 34 10 e0       	push   $0xe01034f8
e01006d6:	e8 2b 13 00 00       	call   e0101a06 <cprintf>
            (uint32_t)etext, (uint32_t)etext - KERNBASE);
	cprintf("  edata  %08x (virt)  %08x (phys)\n",
e01006db:	83 c4 0c             	add    $0xc,%esp
e01006de:	68 60 b3 11 00       	push   $0x11b360
e01006e3:	68 60 b3 11 e0       	push   $0xe011b360
e01006e8:	68 1c 35 10 e0       	push   $0xe010351c
e01006ed:	e8 14 13 00 00       	call   e0101a06 <cprintf>
            (uint32_t)edata, (uint32_t)edata - KERNBASE);
	cprintf("  end    %08x (virt)  %08x (phys)\n",
e01006f2:	83 c4 0c             	add    $0xc,%esp
e01006f5:	68 00 d0 11 00       	push   $0x11d000
e01006fa:	68 00 d0 11 e0       	push   $0xe011d000
e01006ff:	68 40 35 10 e0       	push   $0xe0103540
e0100704:	e8 fd 12 00 00       	call   e0101a06 <cprintf>
            (uint32_t)end, (uint32_t)end - KERNBASE);
	cprintf("Kernel executable memory footprint: %dKB\n",
e0100709:	83 c4 08             	add    $0x8,%esp
            (uint32_t)ROUNDUP(end - entry, 1024) / 1024);
e010070c:	b8 ff d3 11 e0       	mov    $0xe011d3ff,%eax
e0100711:	2d 0c 00 10 e0       	sub    $0xe010000c,%eax
	cprintf("Kernel executable memory footprint: %dKB\n",
e0100716:	c1 e8 0a             	shr    $0xa,%eax
e0100719:	50                   	push   %eax
e010071a:	68 64 35 10 e0       	push   $0xe0103564
e010071f:	e8 e2 12 00 00       	call   e0101a06 <cprintf>
	return 0;
}
e0100724:	b8 00 00 00 00       	mov    $0x0,%eax
e0100729:	c9                   	leave  
e010072a:	c3                   	ret    

e010072b <mon_backtrace>:

int
mon_backtrace(int argc, char **argv, struct Trapframe *tf)
{
e010072b:	55                   	push   %ebp
e010072c:	89 e5                	mov    %esp,%ebp
e010072e:	56                   	push   %esi
e010072f:	53                   	push   %ebx
e0100730:	83 ec 2c             	sub    $0x2c,%esp

static __inline uint32_t
read_ebp(void)
{
	uint32_t ebp;
	__asm __volatile("movl %%ebp,%0" : "=r" (ebp));
e0100733:	89 eb                	mov    %ebp,%ebx
	uint32_t *pebp;
	struct Eipdebuginfo info;
	pebp = (uint32_t*) read_ebp();
	cprintf("Stack backtrace:\n");
e0100735:	68 a2 33 10 e0       	push   $0xe01033a2
e010073a:	e8 c7 12 00 00       	call   e0101a06 <cprintf>
	while (pebp) {
e010073f:	83 c4 10             	add    $0x10,%esp
		debuginfo_eip(pebp[1], &info);
e0100742:	8d 75 e0             	lea    -0x20(%ebp),%esi
	while (pebp) {
e0100745:	eb 4e                	jmp    e0100795 <mon_backtrace+0x6a>
		debuginfo_eip(pebp[1], &info);
e0100747:	83 ec 08             	sub    $0x8,%esp
e010074a:	56                   	push   %esi
e010074b:	ff 73 04             	pushl  0x4(%ebx)
e010074e:	e8 48 18 00 00       	call   e0101f9b <debuginfo_eip>
		cprintf("ebp %08x  eip %08x  args %08x %08x %08x %08x %08x\n", (uint32_t) pebp, 
e0100753:	ff 73 18             	pushl  0x18(%ebx)
e0100756:	ff 73 14             	pushl  0x14(%ebx)
e0100759:	ff 73 10             	pushl  0x10(%ebx)
e010075c:	ff 73 0c             	pushl  0xc(%ebx)
e010075f:	ff 73 08             	pushl  0x8(%ebx)
e0100762:	ff 73 04             	pushl  0x4(%ebx)
e0100765:	53                   	push   %ebx
e0100766:	68 90 35 10 e0       	push   $0xe0103590
e010076b:	e8 96 12 00 00       	call   e0101a06 <cprintf>
			pebp[1], pebp[2], pebp[3], pebp[4], pebp[5], pebp[6]);
		cprintf("\t%s:%d: %.*s+%u\n", info.eip_file, info.eip_line, info.eip_fn_namelen, info.eip_fn_name, pebp[1] - info.eip_fn_addr);
e0100770:	83 c4 28             	add    $0x28,%esp
e0100773:	8b 43 04             	mov    0x4(%ebx),%eax
e0100776:	2b 45 f0             	sub    -0x10(%ebp),%eax
e0100779:	50                   	push   %eax
e010077a:	ff 75 e8             	pushl  -0x18(%ebp)
e010077d:	ff 75 ec             	pushl  -0x14(%ebp)
e0100780:	ff 75 e4             	pushl  -0x1c(%ebp)
e0100783:	ff 75 e0             	pushl  -0x20(%ebp)
e0100786:	68 b4 33 10 e0       	push   $0xe01033b4
e010078b:	e8 76 12 00 00       	call   e0101a06 <cprintf>
		pebp = (uint32_t*) *pebp;
e0100790:	8b 1b                	mov    (%ebx),%ebx
e0100792:	83 c4 20             	add    $0x20,%esp
	while (pebp) {
e0100795:	85 db                	test   %ebx,%ebx
e0100797:	75 ae                	jne    e0100747 <mon_backtrace+0x1c>
	}
	return 0;
}
e0100799:	b8 00 00 00 00       	mov    $0x0,%eax
e010079e:	8d 65 f8             	lea    -0x8(%ebp),%esp
e01007a1:	5b                   	pop    %ebx
e01007a2:	5e                   	pop    %esi
e01007a3:	5d                   	pop    %ebp
e01007a4:	c3                   	ret    

e01007a5 <mon_timer_start>:

int
mon_timer_start(int argc, char **argv, struct Trapframe *tf)
{
e01007a5:	55                   	push   %ebp
e01007a6:	89 e5                	mov    %esp,%ebp
e01007a8:	83 ec 08             	sub    $0x8,%esp
    timer_start();
e01007ab:	e8 7d 26 00 00       	call   e0102e2d <timer_start>
    return 0;
}
e01007b0:	b8 00 00 00 00       	mov    $0x0,%eax
e01007b5:	c9                   	leave  
e01007b6:	c3                   	ret    

e01007b7 <mon_timer_stop>:

int
mon_timer_stop(int argc, char **argv, struct Trapframe *tf)
{
e01007b7:	55                   	push   %ebp
e01007b8:	89 e5                	mov    %esp,%ebp
e01007ba:	83 ec 08             	sub    $0x8,%esp
    timer_stop();
e01007bd:	e8 84 26 00 00       	call   e0102e46 <timer_stop>
    return 0;
}
e01007c2:	b8 00 00 00 00       	mov    $0x0,%eax
e01007c7:	c9                   	leave  
e01007c8:	c3                   	ret    

e01007c9 <mon_pplist>:

int
mon_pplist(int argc, char **argv, struct Trapframe *tf)
{
e01007c9:	55                   	push   %ebp
e01007ca:	89 e5                	mov    %esp,%ebp
e01007cc:	57                   	push   %edi
e01007cd:	56                   	push   %esi
e01007ce:	53                   	push   %ebx
e01007cf:	83 ec 0c             	sub    $0xc,%esp
	size_t i;
	int is_cur_free;

	for (i = 1; i <= npages; ++i) {
e01007d2:	bb 01 00 00 00       	mov    $0x1,%ebx
e01007d7:	eb 6a                	jmp    e0100843 <mon_pplist+0x7a>
        is_cur_free = is_page_free(&pages[i - 1]);
		cprintf("%d", i);
		if (i < npages && !(is_page_free(&pages[i]) ^ is_cur_free)) {
e01007d9:	83 c6 08             	add    $0x8,%esi
e01007dc:	83 ec 0c             	sub    $0xc,%esp
e01007df:	89 f0                	mov    %esi,%eax
e01007e1:	03 05 fc c1 11 e0    	add    0xe011c1fc,%eax
e01007e7:	50                   	push   %eax
e01007e8:	e8 8d 02 00 00       	call   e0100a7a <is_page_free>
e01007ed:	83 c4 10             	add    $0x10,%esp
e01007f0:	39 f8                	cmp    %edi,%eax
e01007f2:	0f 85 8a 00 00 00    	jne    e0100882 <mon_pplist+0xb9>
e01007f8:	eb 01                	jmp    e01007fb <mon_pplist+0x32>
			while (i < npages && !(is_page_free(&pages[i]) ^ is_cur_free)) {
                ++i;
e01007fa:	43                   	inc    %ebx
			while (i < npages && !(is_page_free(&pages[i]) ^ is_cur_free)) {
e01007fb:	39 1d f4 c1 11 e0    	cmp    %ebx,0xe011c1f4
e0100801:	76 1b                	jbe    e010081e <mon_pplist+0x55>
e0100803:	83 ec 0c             	sub    $0xc,%esp
e0100806:	89 f0                	mov    %esi,%eax
e0100808:	03 05 fc c1 11 e0    	add    0xe011c1fc,%eax
e010080e:	50                   	push   %eax
e010080f:	e8 66 02 00 00       	call   e0100a7a <is_page_free>
e0100814:	83 c6 08             	add    $0x8,%esi
e0100817:	83 c4 10             	add    $0x10,%esp
e010081a:	39 f8                	cmp    %edi,%eax
e010081c:	74 dc                	je     e01007fa <mon_pplist+0x31>
            }
			cprintf("..%d", i);
e010081e:	83 ec 08             	sub    $0x8,%esp
e0100821:	53                   	push   %ebx
e0100822:	68 d8 33 10 e0       	push   $0xe01033d8
e0100827:	e8 da 11 00 00       	call   e0101a06 <cprintf>
e010082c:	83 c4 10             	add    $0x10,%esp
e010082f:	eb 51                	jmp    e0100882 <mon_pplist+0xb9>
		}
		cprintf(!is_cur_free ? " FREE\n" : " ALLOCATED\n");
e0100831:	b8 c5 33 10 e0       	mov    $0xe01033c5,%eax
e0100836:	83 ec 0c             	sub    $0xc,%esp
e0100839:	50                   	push   %eax
e010083a:	e8 c7 11 00 00       	call   e0101a06 <cprintf>
	for (i = 1; i <= npages; ++i) {
e010083f:	43                   	inc    %ebx
e0100840:	83 c4 10             	add    $0x10,%esp
e0100843:	39 1d f4 c1 11 e0    	cmp    %ebx,0xe011c1f4
e0100849:	72 42                	jb     e010088d <mon_pplist+0xc4>
        is_cur_free = is_page_free(&pages[i - 1]);
e010084b:	8d 34 dd f8 ff ff ff 	lea    -0x8(,%ebx,8),%esi
e0100852:	83 ec 0c             	sub    $0xc,%esp
e0100855:	89 f0                	mov    %esi,%eax
e0100857:	03 05 fc c1 11 e0    	add    0xe011c1fc,%eax
e010085d:	50                   	push   %eax
e010085e:	e8 17 02 00 00       	call   e0100a7a <is_page_free>
e0100863:	89 c7                	mov    %eax,%edi
		cprintf("%d", i);
e0100865:	83 c4 08             	add    $0x8,%esp
e0100868:	53                   	push   %ebx
e0100869:	68 fc 3e 10 e0       	push   $0xe0103efc
e010086e:	e8 93 11 00 00       	call   e0101a06 <cprintf>
		if (i < npages && !(is_page_free(&pages[i]) ^ is_cur_free)) {
e0100873:	83 c4 10             	add    $0x10,%esp
e0100876:	39 1d f4 c1 11 e0    	cmp    %ebx,0xe011c1f4
e010087c:	0f 87 57 ff ff ff    	ja     e01007d9 <mon_pplist+0x10>
		cprintf(!is_cur_free ? " FREE\n" : " ALLOCATED\n");
e0100882:	85 ff                	test   %edi,%edi
e0100884:	74 ab                	je     e0100831 <mon_pplist+0x68>
e0100886:	b8 cc 33 10 e0       	mov    $0xe01033cc,%eax
e010088b:	eb a9                	jmp    e0100836 <mon_pplist+0x6d>
	}
	return 0;
}
e010088d:	b8 00 00 00 00       	mov    $0x0,%eax
e0100892:	8d 65 f4             	lea    -0xc(%ebp),%esp
e0100895:	5b                   	pop    %ebx
e0100896:	5e                   	pop    %esi
e0100897:	5f                   	pop    %edi
e0100898:	5d                   	pop    %ebp
e0100899:	c3                   	ret    

e010089a <monitor>:
	return 0;
}

void
monitor(struct Trapframe *tf)
{
e010089a:	55                   	push   %ebp
e010089b:	89 e5                	mov    %esp,%ebp
e010089d:	57                   	push   %edi
e010089e:	56                   	push   %esi
e010089f:	53                   	push   %ebx
e01008a0:	83 ec 58             	sub    $0x58,%esp
	char *buf;

	cprintf("Welcome to the JOS kernel monitor!\n");
e01008a3:	68 c4 35 10 e0       	push   $0xe01035c4
e01008a8:	e8 59 11 00 00       	call   e0101a06 <cprintf>
	cprintf("Type 'help' for a list of commands.\n");
e01008ad:	c7 04 24 e8 35 10 e0 	movl   $0xe01035e8,(%esp)
e01008b4:	e8 4d 11 00 00       	call   e0101a06 <cprintf>
e01008b9:	83 c4 10             	add    $0x10,%esp
e01008bc:	eb 47                	jmp    e0100905 <monitor+0x6b>
		while (*buf && strchr(WHITESPACE, *buf))
e01008be:	83 ec 08             	sub    $0x8,%esp
e01008c1:	0f be c0             	movsbl %al,%eax
e01008c4:	50                   	push   %eax
e01008c5:	68 e1 33 10 e0       	push   $0xe01033e1
e01008ca:	e8 50 21 00 00       	call   e0102a1f <strchr>
e01008cf:	83 c4 10             	add    $0x10,%esp
e01008d2:	85 c0                	test   %eax,%eax
e01008d4:	74 0a                	je     e01008e0 <monitor+0x46>
			*buf++ = 0;
e01008d6:	c6 03 00             	movb   $0x0,(%ebx)
e01008d9:	89 fe                	mov    %edi,%esi
e01008db:	8d 5b 01             	lea    0x1(%ebx),%ebx
e01008de:	eb 68                	jmp    e0100948 <monitor+0xae>
		if (*buf == 0)
e01008e0:	80 3b 00             	cmpb   $0x0,(%ebx)
e01008e3:	74 6f                	je     e0100954 <monitor+0xba>
		if (argc == MAXARGS-1) {
e01008e5:	83 ff 0f             	cmp    $0xf,%edi
e01008e8:	74 09                	je     e01008f3 <monitor+0x59>
		argv[argc++] = buf;
e01008ea:	8d 77 01             	lea    0x1(%edi),%esi
e01008ed:	89 5c bd a8          	mov    %ebx,-0x58(%ebp,%edi,4)
e01008f1:	eb 37                	jmp    e010092a <monitor+0x90>
			cprintf("Too many arguments (max %d)\n", MAXARGS);
e01008f3:	83 ec 08             	sub    $0x8,%esp
e01008f6:	6a 10                	push   $0x10
e01008f8:	68 e6 33 10 e0       	push   $0xe01033e6
e01008fd:	e8 04 11 00 00       	call   e0101a06 <cprintf>
e0100902:	83 c4 10             	add    $0x10,%esp


	while (1) {
		buf = readline("K> ");
e0100905:	83 ec 0c             	sub    $0xc,%esp
e0100908:	68 dd 33 10 e0       	push   $0xe01033dd
e010090d:	e8 02 1f 00 00       	call   e0102814 <readline>
e0100912:	89 c3                	mov    %eax,%ebx
		if (buf != NULL)
e0100914:	83 c4 10             	add    $0x10,%esp
e0100917:	85 c0                	test   %eax,%eax
e0100919:	74 ea                	je     e0100905 <monitor+0x6b>
	argv[argc] = 0;
e010091b:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
	argc = 0;
e0100922:	bf 00 00 00 00       	mov    $0x0,%edi
e0100927:	eb 21                	jmp    e010094a <monitor+0xb0>
			buf++;
e0100929:	43                   	inc    %ebx
		while (*buf && !strchr(WHITESPACE, *buf))
e010092a:	8a 03                	mov    (%ebx),%al
e010092c:	84 c0                	test   %al,%al
e010092e:	74 18                	je     e0100948 <monitor+0xae>
e0100930:	83 ec 08             	sub    $0x8,%esp
e0100933:	0f be c0             	movsbl %al,%eax
e0100936:	50                   	push   %eax
e0100937:	68 e1 33 10 e0       	push   $0xe01033e1
e010093c:	e8 de 20 00 00       	call   e0102a1f <strchr>
e0100941:	83 c4 10             	add    $0x10,%esp
e0100944:	85 c0                	test   %eax,%eax
e0100946:	74 e1                	je     e0100929 <monitor+0x8f>
			*buf++ = 0;
e0100948:	89 f7                	mov    %esi,%edi
		while (*buf && strchr(WHITESPACE, *buf))
e010094a:	8a 03                	mov    (%ebx),%al
e010094c:	84 c0                	test   %al,%al
e010094e:	0f 85 6a ff ff ff    	jne    e01008be <monitor+0x24>
	argv[argc] = 0;
e0100954:	c7 44 bd a8 00 00 00 	movl   $0x0,-0x58(%ebp,%edi,4)
e010095b:	00 
	if (argc == 0)
e010095c:	85 ff                	test   %edi,%edi
e010095e:	74 a5                	je     e0100905 <monitor+0x6b>
e0100960:	be 40 36 10 e0       	mov    $0xe0103640,%esi
	for (i = 0; i < NCOMMANDS; i++) {
e0100965:	bb 00 00 00 00       	mov    $0x0,%ebx
		if (strcmp(argv[0], commands[i].name) == 0)
e010096a:	83 ec 08             	sub    $0x8,%esp
e010096d:	ff 36                	pushl  (%esi)
e010096f:	ff 75 a8             	pushl  -0x58(%ebp)
e0100972:	e8 54 20 00 00       	call   e01029cb <strcmp>
e0100977:	83 c4 10             	add    $0x10,%esp
e010097a:	85 c0                	test   %eax,%eax
e010097c:	74 21                	je     e010099f <monitor+0x105>
	for (i = 0; i < NCOMMANDS; i++) {
e010097e:	43                   	inc    %ebx
e010097f:	83 c6 0c             	add    $0xc,%esi
e0100982:	83 fb 06             	cmp    $0x6,%ebx
e0100985:	75 e3                	jne    e010096a <monitor+0xd0>
	cprintf("Unknown command '%s'\n", argv[0]);
e0100987:	83 ec 08             	sub    $0x8,%esp
e010098a:	ff 75 a8             	pushl  -0x58(%ebp)
e010098d:	68 03 34 10 e0       	push   $0xe0103403
e0100992:	e8 6f 10 00 00       	call   e0101a06 <cprintf>
e0100997:	83 c4 10             	add    $0x10,%esp
e010099a:	e9 66 ff ff ff       	jmp    e0100905 <monitor+0x6b>
			return commands[i].func(argc, argv, tf);
e010099f:	83 ec 04             	sub    $0x4,%esp
e01009a2:	8d 04 1b             	lea    (%ebx,%ebx,1),%eax
e01009a5:	01 c3                	add    %eax,%ebx
e01009a7:	ff 75 08             	pushl  0x8(%ebp)
e01009aa:	8d 45 a8             	lea    -0x58(%ebp),%eax
e01009ad:	50                   	push   %eax
e01009ae:	57                   	push   %edi
e01009af:	ff 14 9d 48 36 10 e0 	call   *-0x1fefc9b8(,%ebx,4)
			if (runcmd(buf, tf) < 0)
e01009b6:	83 c4 10             	add    $0x10,%esp
e01009b9:	85 c0                	test   %eax,%eax
e01009bb:	0f 89 44 ff ff ff    	jns    e0100905 <monitor+0x6b>
				break;
	}
}
e01009c1:	8d 65 f4             	lea    -0xc(%ebp),%esp
e01009c4:	5b                   	pop    %ebx
e01009c5:	5e                   	pop    %esi
e01009c6:	5f                   	pop    %edi
e01009c7:	5d                   	pop    %ebp
e01009c8:	c3                   	ret    

e01009c9 <nvram_read>:
	return ((pp == page_free_list) || pp->pp_link) ? 0 : -1;
}

static int
nvram_read(int r)
{
e01009c9:	55                   	push   %ebp
e01009ca:	89 e5                	mov    %esp,%ebp
e01009cc:	56                   	push   %esi
e01009cd:	53                   	push   %ebx
e01009ce:	89 c6                	mov    %eax,%esi
	return mc146818_read(r) | (mc146818_read(r + 1) << 8);
e01009d0:	83 ec 0c             	sub    $0xc,%esp
e01009d3:	50                   	push   %eax
e01009d4:	e8 96 0e 00 00       	call   e010186f <mc146818_read>
e01009d9:	89 c3                	mov    %eax,%ebx
e01009db:	46                   	inc    %esi
e01009dc:	89 34 24             	mov    %esi,(%esp)
e01009df:	e8 8b 0e 00 00       	call   e010186f <mc146818_read>
e01009e4:	c1 e0 08             	shl    $0x8,%eax
e01009e7:	09 d8                	or     %ebx,%eax
}
e01009e9:	8d 65 f8             	lea    -0x8(%ebp),%esp
e01009ec:	5b                   	pop    %ebx
e01009ed:	5e                   	pop    %esi
e01009ee:	5d                   	pop    %ebp
e01009ef:	c3                   	ret    

e01009f0 <boot_alloc>:
	// Initialize nextfree if this is the first time.
	// 'end' is a magic symbol automatically generated by the linker,
	// which points to the end of the kernel's bss segment:
	// the first virtual address that the linker did *not* assign
	// to any kernel code or global variables.
	if (!nextfree) {
e01009f0:	83 3d 98 b5 11 e0 00 	cmpl   $0x0,0xe011b598
e01009f7:	74 42                	je     e0100a3b <boot_alloc+0x4b>
    
	// Allocate a chunk large enough to hold 'n' bytes, then update
	// nextfree.  Make sure nextfree is kept aligned
	// to a multiple of PGSIZE.
	//
	if (!n) {
e01009f9:	85 c0                	test   %eax,%eax
e01009fb:	74 51                	je     e0100a4e <boot_alloc+0x5e>
{
e01009fd:	55                   	push   %ebp
e01009fe:	89 e5                	mov    %esp,%ebp
e0100a00:	83 ec 08             	sub    $0x8,%esp
e0100a03:	89 c2                	mov    %eax,%edx
	    return nextfree;
	}
	result = nextfree;
e0100a05:	a1 98 b5 11 e0       	mov    0xe011b598,%eax
	nextfree += ROUNDUP(n, PGSIZE);
e0100a0a:	81 c2 ff 0f 00 00    	add    $0xfff,%edx
e0100a10:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
e0100a16:	01 c2                	add    %eax,%edx
e0100a18:	89 15 98 b5 11 e0    	mov    %edx,0xe011b598
#define PADDR(kva) _paddr(__FILE__, __LINE__, kva)

static inline physaddr_t
_paddr(const char *file, int line, void *kva)
{
	if ((uint32_t)kva < KERNBASE)
e0100a1e:	81 fa ff ff ff df    	cmp    $0xdfffffff,%edx
e0100a24:	76 2e                	jbe    e0100a54 <boot_alloc+0x64>
	if (PADDR(nextfree) > PGSIZE * npages) {
e0100a26:	8b 0d f4 c1 11 e0    	mov    0xe011c1f4,%ecx
e0100a2c:	c1 e1 0c             	shl    $0xc,%ecx
		_panic(file, line, "PADDR called with invalid kva %p", kva);
	return (physaddr_t)kva - KERNBASE;
e0100a2f:	81 c2 00 00 00 20    	add    $0x20000000,%edx
e0100a35:	39 d1                	cmp    %edx,%ecx
e0100a37:	72 2d                	jb     e0100a66 <boot_alloc+0x76>
#ifdef SANITIZE_SHADOW_BASE
	// Unpoison the result since it is now allocated.
	platform_asan_unpoison(result, n);
#endif
	return result;
}
e0100a39:	c9                   	leave  
e0100a3a:	c3                   	ret    
		nextfree = ROUNDUP((char *) end, PGSIZE);
e0100a3b:	ba ff df 11 e0       	mov    $0xe011dfff,%edx
e0100a40:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
e0100a46:	89 15 98 b5 11 e0    	mov    %edx,0xe011b598
e0100a4c:	eb ab                	jmp    e01009f9 <boot_alloc+0x9>
	    return nextfree;
e0100a4e:	a1 98 b5 11 e0       	mov    0xe011b598,%eax
}
e0100a53:	c3                   	ret    
		_panic(file, line, "PADDR called with invalid kva %p", kva);
e0100a54:	52                   	push   %edx
e0100a55:	68 88 36 10 e0       	push   $0xe0103688
e0100a5a:	6a 76                	push   $0x76
e0100a5c:	68 1f 38 10 e0       	push   $0xe010381f
e0100a61:	e8 7f f6 ff ff       	call   e01000e5 <_panic>
	    panic("Out of memory on boot!");
e0100a66:	83 ec 04             	sub    $0x4,%esp
e0100a69:	68 2b 38 10 e0       	push   $0xe010382b
e0100a6e:	6a 77                	push   $0x77
e0100a70:	68 1f 38 10 e0       	push   $0xe010381f
e0100a75:	e8 6b f6 ff ff       	call   e01000e5 <_panic>

e0100a7a <is_page_free>:
{
e0100a7a:	55                   	push   %ebp
e0100a7b:	89 e5                	mov    %esp,%ebp
e0100a7d:	8b 45 08             	mov    0x8(%ebp),%eax
	return ((pp == page_free_list) || pp->pp_link) ? 0 : -1;
e0100a80:	39 05 9c b5 11 e0    	cmp    %eax,0xe011b59c
e0100a86:	74 0d                	je     e0100a95 <is_page_free+0x1b>
e0100a88:	83 38 00             	cmpl   $0x0,(%eax)
e0100a8b:	0f 94 c0             	sete   %al
e0100a8e:	0f b6 c0             	movzbl %al,%eax
e0100a91:	f7 d8                	neg    %eax
}
e0100a93:	5d                   	pop    %ebp
e0100a94:	c3                   	ret    
	return ((pp == page_free_list) || pp->pp_link) ? 0 : -1;
e0100a95:	b8 00 00 00 00       	mov    $0x0,%eax
e0100a9a:	eb f7                	jmp    e0100a93 <is_page_free+0x19>

e0100a9c <page_init>:
// allocator functions below to allocate and deallocate physical
// memory via the page_free_list.
//
void
page_init(void)
{
e0100a9c:	55                   	push   %ebp
e0100a9d:	89 e5                	mov    %esp,%ebp
e0100a9f:	53                   	push   %ebx
e0100aa0:	83 ec 04             	sub    $0x4,%esp
	// Change the code to reflect this.
	// NB: DO NOT actually touch the physical memory corresponding to
	// free pages!
    
    size_t i;
    for (i = 1; i < npages; ++i) {
e0100aa3:	bb 01 00 00 00       	mov    $0x1,%ebx
e0100aa8:	eb 3e                	jmp    e0100ae8 <page_init+0x4c>
e0100aaa:	50                   	push   %eax
e0100aab:	68 88 36 10 e0       	push   $0xe0103688
e0100ab0:	68 d8 00 00 00       	push   $0xd8
e0100ab5:	68 1f 38 10 e0       	push   $0xe010381f
e0100aba:	e8 26 f6 ff ff       	call   e01000e5 <_panic>
        if (i >= PGNUM(IOPHYSMEM) && i < PGNUM(PADDR(boot_alloc(0)))) {
            continue;
        }
        pages[i].pp_ref = 0;
e0100abf:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
e0100ac6:	89 c2                	mov    %eax,%edx
e0100ac8:	03 15 fc c1 11 e0    	add    0xe011c1fc,%edx
e0100ace:	66 c7 42 04 00 00    	movw   $0x0,0x4(%edx)
		pages[i].pp_link = page_free_list;
e0100ad4:	8b 0d 9c b5 11 e0    	mov    0xe011b59c,%ecx
e0100ada:	89 0a                	mov    %ecx,(%edx)
		page_free_list = &pages[i];
e0100adc:	03 05 fc c1 11 e0    	add    0xe011c1fc,%eax
e0100ae2:	a3 9c b5 11 e0       	mov    %eax,0xe011b59c
    for (i = 1; i < npages; ++i) {
e0100ae7:	43                   	inc    %ebx
e0100ae8:	39 1d f4 c1 11 e0    	cmp    %ebx,0xe011c1f4
e0100aee:	76 27                	jbe    e0100b17 <page_init+0x7b>
        if (i >= PGNUM(IOPHYSMEM) && i < PGNUM(PADDR(boot_alloc(0)))) {
e0100af0:	81 fb 9f 00 00 00    	cmp    $0x9f,%ebx
e0100af6:	76 c7                	jbe    e0100abf <page_init+0x23>
e0100af8:	b8 00 00 00 00       	mov    $0x0,%eax
e0100afd:	e8 ee fe ff ff       	call   e01009f0 <boot_alloc>
	if ((uint32_t)kva < KERNBASE)
e0100b02:	3d ff ff ff df       	cmp    $0xdfffffff,%eax
e0100b07:	76 a1                	jbe    e0100aaa <page_init+0xe>
	return (physaddr_t)kva - KERNBASE;
e0100b09:	05 00 00 00 20       	add    $0x20000000,%eax
e0100b0e:	c1 e8 0c             	shr    $0xc,%eax
e0100b11:	39 d8                	cmp    %ebx,%eax
e0100b13:	76 aa                	jbe    e0100abf <page_init+0x23>
e0100b15:	eb d0                	jmp    e0100ae7 <page_init+0x4b>
	for (i = PGNUM(PADDR(boot_alloc(0))); i < npages; ++i) {
		pages[i].pp_ref = 0;
		pages[i].pp_link = page_free_list;
		page_free_list = &pages[i];
	}*/
}
e0100b17:	8b 5d fc             	mov    -0x4(%ebp),%ebx
e0100b1a:	c9                   	leave  
e0100b1b:	c3                   	ret    

e0100b1c <page_alloc>:
// Returns NULL if out of free memory.
//
// Hint: use page2kva and memset
struct PageInfo *
page_alloc(int alloc_flags)
{
e0100b1c:	55                   	push   %ebp
e0100b1d:	89 e5                	mov    %esp,%ebp
e0100b1f:	53                   	push   %ebx
e0100b20:	83 ec 04             	sub    $0x4,%esp
    struct PageInfo *p;

	if (!page_free_list) {
e0100b23:	8b 1d 9c b5 11 e0    	mov    0xe011b59c,%ebx
e0100b29:	85 db                	test   %ebx,%ebx
e0100b2b:	74 13                	je     e0100b40 <page_alloc+0x24>
        return NULL;
    }
    p = page_free_list;
	page_free_list = page_free_list->pp_link;
e0100b2d:	8b 03                	mov    (%ebx),%eax
e0100b2f:	a3 9c b5 11 e0       	mov    %eax,0xe011b59c
	p->pp_link = NULL;
e0100b34:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
	if (alloc_flags & ALLOC_ZERO) {
e0100b3a:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
e0100b3e:	75 07                	jne    e0100b47 <page_alloc+0x2b>
#ifdef SANITIZE_SHADOW_BASE
	// Unpoison allocated memory before accessing it!
	platform_asan_unpoison(page2kva(p), PGSIZE);
#endif
	return p;
}
e0100b40:	89 d8                	mov    %ebx,%eax
e0100b42:	8b 5d fc             	mov    -0x4(%ebp),%ebx
e0100b45:	c9                   	leave  
e0100b46:	c3                   	ret    
int is_page_free(struct PageInfo *pp);

static inline physaddr_t
page2pa(struct PageInfo *pp)
{
	return (pp - pages) << PGSHIFT;
e0100b47:	89 d8                	mov    %ebx,%eax
e0100b49:	2b 05 fc c1 11 e0    	sub    0xe011c1fc,%eax
e0100b4f:	c1 f8 03             	sar    $0x3,%eax
e0100b52:	c1 e0 0c             	shl    $0xc,%eax
	if (PGNUM(pa) >= npages)
e0100b55:	89 c2                	mov    %eax,%edx
e0100b57:	c1 ea 0c             	shr    $0xc,%edx
e0100b5a:	3b 15 f4 c1 11 e0    	cmp    0xe011c1f4,%edx
e0100b60:	73 1a                	jae    e0100b7c <page_alloc+0x60>
        memset(page2kva(p), 0, PGSIZE);
e0100b62:	83 ec 04             	sub    $0x4,%esp
e0100b65:	68 00 10 00 00       	push   $0x1000
e0100b6a:	6a 00                	push   $0x0
	return (void *)(pa + KERNBASE);
e0100b6c:	2d 00 00 00 20       	sub    $0x20000000,%eax
e0100b71:	50                   	push   %eax
e0100b72:	e8 dd 1e 00 00       	call   e0102a54 <memset>
e0100b77:	83 c4 10             	add    $0x10,%esp
e0100b7a:	eb c4                	jmp    e0100b40 <page_alloc+0x24>
		_panic(file, line, "KADDR called with invalid pa %p", (void *) pa);
e0100b7c:	50                   	push   %eax
e0100b7d:	68 ac 36 10 e0       	push   $0xe01036ac
e0100b82:	6a 54                	push   $0x54
e0100b84:	68 42 38 10 e0       	push   $0xe0103842
e0100b89:	e8 57 f5 ff ff       	call   e01000e5 <_panic>

e0100b8e <page_free>:
// Return a page to the free list.
// (This function should only be called when pp->pp_ref reaches 0.)
//
void
page_free(struct PageInfo *pp)
{
e0100b8e:	55                   	push   %ebp
e0100b8f:	89 e5                	mov    %esp,%ebp
e0100b91:	83 ec 08             	sub    $0x8,%esp
e0100b94:	8b 45 08             	mov    0x8(%ebp),%eax
	if (pp->pp_ref || pp->pp_link) {
e0100b97:	66 83 78 04 00       	cmpw   $0x0,0x4(%eax)
e0100b9c:	75 14                	jne    e0100bb2 <page_free+0x24>
e0100b9e:	83 38 00             	cmpl   $0x0,(%eax)
e0100ba1:	75 0f                	jne    e0100bb2 <page_free+0x24>
		panic("Page is still referenced!");
    }
	if (pp->pp_link) {
	    panic("Page is already freed!");
	}
	pp->pp_link = page_free_list;
e0100ba3:	8b 15 9c b5 11 e0    	mov    0xe011b59c,%edx
e0100ba9:	89 10                	mov    %edx,(%eax)
	page_free_list = pp;
e0100bab:	a3 9c b5 11 e0       	mov    %eax,0xe011b59c
}
e0100bb0:	c9                   	leave  
e0100bb1:	c3                   	ret    
		panic("Page is still referenced!");
e0100bb2:	83 ec 04             	sub    $0x4,%esp
e0100bb5:	68 50 38 10 e0       	push   $0xe0103850
e0100bba:	68 15 01 00 00       	push   $0x115
e0100bbf:	68 1f 38 10 e0       	push   $0xe010381f
e0100bc4:	e8 1c f5 ff ff       	call   e01000e5 <_panic>

e0100bc9 <mem_init>:
{
e0100bc9:	55                   	push   %ebp
e0100bca:	89 e5                	mov    %esp,%ebp
e0100bcc:	57                   	push   %edi
e0100bcd:	56                   	push   %esi
e0100bce:	53                   	push   %ebx
e0100bcf:	83 ec 3c             	sub    $0x3c,%esp
	npages_basemem = (nvram_read(NVRAM_BASELO) * 1024) / PGSIZE;
e0100bd2:	b8 15 00 00 00       	mov    $0x15,%eax
e0100bd7:	e8 ed fd ff ff       	call   e01009c9 <nvram_read>
e0100bdc:	c1 e0 0a             	shl    $0xa,%eax
e0100bdf:	89 c2                	mov    %eax,%edx
e0100be1:	85 c0                	test   %eax,%eax
e0100be3:	0f 88 63 01 00 00    	js     e0100d4c <mem_init+0x183>
e0100be9:	c1 fa 0c             	sar    $0xc,%edx
e0100bec:	89 15 a0 b5 11 e0    	mov    %edx,0xe011b5a0
	npages_extmem = (nvram_read(NVRAM_EXTLO) * 1024) / PGSIZE;
e0100bf2:	b8 17 00 00 00       	mov    $0x17,%eax
e0100bf7:	e8 cd fd ff ff       	call   e01009c9 <nvram_read>
e0100bfc:	c1 e0 0a             	shl    $0xa,%eax
e0100bff:	89 c3                	mov    %eax,%ebx
e0100c01:	85 c0                	test   %eax,%eax
e0100c03:	0f 88 4e 01 00 00    	js     e0100d57 <mem_init+0x18e>
e0100c09:	c1 fb 0c             	sar    $0xc,%ebx
	npages_pextmem = (nvram_read(NVRAM_PEXTLO) * 1024 * 64) / PGSIZE;
e0100c0c:	b8 34 00 00 00       	mov    $0x34,%eax
e0100c11:	e8 b3 fd ff ff       	call   e01009c9 <nvram_read>
e0100c16:	c1 e0 10             	shl    $0x10,%eax
e0100c19:	89 c2                	mov    %eax,%edx
e0100c1b:	85 c0                	test   %eax,%eax
e0100c1d:	0f 88 3f 01 00 00    	js     e0100d62 <mem_init+0x199>
	if (npages_pextmem && npages_extmem > 0x1000)
e0100c23:	c1 fa 0c             	sar    $0xc,%edx
e0100c26:	74 0c                	je     e0100c34 <mem_init+0x6b>
e0100c28:	81 fb 00 10 00 00    	cmp    $0x1000,%ebx
e0100c2e:	0f 87 39 01 00 00    	ja     e0100d6d <mem_init+0x1a4>
	else if (npages_extmem)
e0100c34:	85 db                	test   %ebx,%ebx
e0100c36:	0f 85 41 01 00 00    	jne    e0100d7d <mem_init+0x1b4>
		npages = npages_basemem;
e0100c3c:	a1 a0 b5 11 e0       	mov    0xe011b5a0,%eax
e0100c41:	a3 f4 c1 11 e0       	mov    %eax,0xe011c1f4
	cprintf("Physical memory: %uK available, base = %uK, extended = %uK, pextended = %uK\n",
e0100c46:	83 ec 0c             	sub    $0xc,%esp
		npages_pextmem * PGSIZE / 1024);
e0100c49:	c1 e2 0c             	shl    $0xc,%edx
	cprintf("Physical memory: %uK available, base = %uK, extended = %uK, pextended = %uK\n",
e0100c4c:	c1 ea 0a             	shr    $0xa,%edx
e0100c4f:	52                   	push   %edx
		npages_extmem * PGSIZE / 1024,
e0100c50:	c1 e3 0c             	shl    $0xc,%ebx
	cprintf("Physical memory: %uK available, base = %uK, extended = %uK, pextended = %uK\n",
e0100c53:	c1 eb 0a             	shr    $0xa,%ebx
e0100c56:	53                   	push   %ebx
		npages_basemem * PGSIZE / 1024,
e0100c57:	a1 a0 b5 11 e0       	mov    0xe011b5a0,%eax
e0100c5c:	c1 e0 0c             	shl    $0xc,%eax
	cprintf("Physical memory: %uK available, base = %uK, extended = %uK, pextended = %uK\n",
e0100c5f:	c1 e8 0a             	shr    $0xa,%eax
e0100c62:	50                   	push   %eax
		npages * PGSIZE / 1024,
e0100c63:	a1 f4 c1 11 e0       	mov    0xe011c1f4,%eax
e0100c68:	c1 e0 0c             	shl    $0xc,%eax
	cprintf("Physical memory: %uK available, base = %uK, extended = %uK, pextended = %uK\n",
e0100c6b:	c1 e8 0a             	shr    $0xa,%eax
e0100c6e:	50                   	push   %eax
e0100c6f:	68 cc 36 10 e0       	push   $0xe01036cc
e0100c74:	e8 8d 0d 00 00       	call   e0101a06 <cprintf>
	kern_pgdir = (pde_t *) boot_alloc(PGSIZE);
e0100c79:	83 c4 20             	add    $0x20,%esp
e0100c7c:	b8 00 10 00 00       	mov    $0x1000,%eax
e0100c81:	e8 6a fd ff ff       	call   e01009f0 <boot_alloc>
e0100c86:	a3 f8 c1 11 e0       	mov    %eax,0xe011c1f8
	memset(kern_pgdir, 0, PGSIZE);
e0100c8b:	83 ec 04             	sub    $0x4,%esp
e0100c8e:	68 00 10 00 00       	push   $0x1000
e0100c93:	6a 00                	push   $0x0
e0100c95:	50                   	push   %eax
e0100c96:	e8 b9 1d 00 00       	call   e0102a54 <memset>
	kern_pgdir[PDX(UVPT)] = PADDR(kern_pgdir) | PTE_U | PTE_P;
e0100c9b:	a1 f8 c1 11 e0       	mov    0xe011c1f8,%eax
	if ((uint32_t)kva < KERNBASE)
e0100ca0:	83 c4 10             	add    $0x10,%esp
e0100ca3:	3d ff ff ff df       	cmp    $0xdfffffff,%eax
e0100ca8:	0f 86 df 00 00 00    	jbe    e0100d8d <mem_init+0x1c4>
	return (physaddr_t)kva - KERNBASE;
e0100cae:	8d 90 00 00 00 20    	lea    0x20000000(%eax),%edx
e0100cb4:	83 ca 05             	or     $0x5,%edx
e0100cb7:	89 90 f4 0d 00 00    	mov    %edx,0xdf4(%eax)
    pages = (struct PageInfo *) boot_alloc(sizeof(*pages) * npages);
e0100cbd:	a1 f4 c1 11 e0       	mov    0xe011c1f4,%eax
e0100cc2:	c1 e0 03             	shl    $0x3,%eax
e0100cc5:	e8 26 fd ff ff       	call   e01009f0 <boot_alloc>
e0100cca:	a3 fc c1 11 e0       	mov    %eax,0xe011c1fc
	memset(pages, 0, sizeof(*pages) * npages);
e0100ccf:	83 ec 04             	sub    $0x4,%esp
e0100cd2:	8b 35 f4 c1 11 e0    	mov    0xe011c1f4,%esi
e0100cd8:	8d 14 f5 00 00 00 00 	lea    0x0(,%esi,8),%edx
e0100cdf:	52                   	push   %edx
e0100ce0:	6a 00                	push   $0x0
e0100ce2:	50                   	push   %eax
e0100ce3:	e8 6c 1d 00 00       	call   e0102a54 <memset>
	page_init();
e0100ce8:	e8 af fd ff ff       	call   e0100a9c <page_init>
	struct PageInfo *pp;
	unsigned pdx_limit = only_low_memory ? 1 : NPDENTRIES;
	int nfree_basemem = 0, nfree_extmem = 0;
	char *first_free_page;

	if (!page_free_list)
e0100ced:	a1 9c b5 11 e0       	mov    0xe011b59c,%eax
e0100cf2:	83 c4 10             	add    $0x10,%esp
e0100cf5:	85 c0                	test   %eax,%eax
e0100cf7:	0f 84 a5 00 00 00    	je     e0100da2 <mem_init+0x1d9>

	if (only_low_memory) {
		// Move pages with lower addresses first in the free
		// list, since entry_pgdir does not map all pages.
		struct PageInfo *pp1, *pp2;
		struct PageInfo **tp[2] = { &pp1, &pp2 };
e0100cfd:	8d 55 d8             	lea    -0x28(%ebp),%edx
e0100d00:	89 55 e0             	mov    %edx,-0x20(%ebp)
e0100d03:	8d 55 dc             	lea    -0x24(%ebp),%edx
e0100d06:	89 55 e4             	mov    %edx,-0x1c(%ebp)
	return (pp - pages) << PGSHIFT;
e0100d09:	89 c2                	mov    %eax,%edx
e0100d0b:	2b 15 fc c1 11 e0    	sub    0xe011c1fc,%edx
		for (pp = page_free_list; pp; pp = pp->pp_link) {
			int pagetype = PDX(page2pa(pp)) >= pdx_limit;
e0100d11:	f7 c2 00 e0 7f 00    	test   $0x7fe000,%edx
e0100d17:	0f 95 c2             	setne  %dl
e0100d1a:	0f b6 d2             	movzbl %dl,%edx
			*tp[pagetype] = pp;
e0100d1d:	8b 4c 95 e0          	mov    -0x20(%ebp,%edx,4),%ecx
e0100d21:	89 01                	mov    %eax,(%ecx)
			tp[pagetype] = &pp->pp_link;
e0100d23:	89 44 95 e0          	mov    %eax,-0x20(%ebp,%edx,4)
		for (pp = page_free_list; pp; pp = pp->pp_link) {
e0100d27:	8b 00                	mov    (%eax),%eax
e0100d29:	85 c0                	test   %eax,%eax
e0100d2b:	75 dc                	jne    e0100d09 <mem_init+0x140>
		}
		*tp[1] = 0;
e0100d2d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
e0100d30:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
		*tp[0] = pp2;
e0100d36:	8b 55 dc             	mov    -0x24(%ebp),%edx
e0100d39:	8b 45 e0             	mov    -0x20(%ebp),%eax
e0100d3c:	89 10                	mov    %edx,(%eax)
		page_free_list = pp1;
e0100d3e:	8b 5d d8             	mov    -0x28(%ebp),%ebx
e0100d41:	89 1d 9c b5 11 e0    	mov    %ebx,0xe011b59c
e0100d47:	e9 81 00 00 00       	jmp    e0100dcd <mem_init+0x204>
	npages_basemem = (nvram_read(NVRAM_BASELO) * 1024) / PGSIZE;
e0100d4c:	8d 90 ff 0f 00 00    	lea    0xfff(%eax),%edx
e0100d52:	e9 92 fe ff ff       	jmp    e0100be9 <mem_init+0x20>
	npages_extmem = (nvram_read(NVRAM_EXTLO) * 1024) / PGSIZE;
e0100d57:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
e0100d5d:	e9 a7 fe ff ff       	jmp    e0100c09 <mem_init+0x40>
	npages_pextmem = (nvram_read(NVRAM_PEXTLO) * 1024 * 64) / PGSIZE;
e0100d62:	8d 90 ff 0f 00 00    	lea    0xfff(%eax),%edx
e0100d68:	e9 b6 fe ff ff       	jmp    e0100c23 <mem_init+0x5a>
		npages = 0x1000 + npages_pextmem;
e0100d6d:	8d 82 00 10 00 00    	lea    0x1000(%edx),%eax
e0100d73:	a3 f4 c1 11 e0       	mov    %eax,0xe011c1f4
e0100d78:	e9 c9 fe ff ff       	jmp    e0100c46 <mem_init+0x7d>
		npages = (EXTPHYSMEM / PGSIZE) + npages_extmem;
e0100d7d:	8d 83 00 01 00 00    	lea    0x100(%ebx),%eax
e0100d83:	a3 f4 c1 11 e0       	mov    %eax,0xe011c1f4
e0100d88:	e9 b9 fe ff ff       	jmp    e0100c46 <mem_init+0x7d>
		_panic(file, line, "PADDR called with invalid kva %p", kva);
e0100d8d:	50                   	push   %eax
e0100d8e:	68 88 36 10 e0       	push   $0xe0103688
e0100d93:	68 9e 00 00 00       	push   $0x9e
e0100d98:	68 1f 38 10 e0       	push   $0xe010381f
e0100d9d:	e8 43 f3 ff ff       	call   e01000e5 <_panic>
		panic("'page_free_list' is a null pointer!");
e0100da2:	83 ec 04             	sub    $0x4,%esp
e0100da5:	68 1c 37 10 e0       	push   $0xe010371c
e0100daa:	68 bb 01 00 00       	push   $0x1bb
e0100daf:	68 1f 38 10 e0       	push   $0xe010381f
e0100db4:	e8 2c f3 ff ff       	call   e01000e5 <_panic>
		_panic(file, line, "KADDR called with invalid pa %p", (void *) pa);
e0100db9:	50                   	push   %eax
e0100dba:	68 ac 36 10 e0       	push   $0xe01036ac
e0100dbf:	6a 54                	push   $0x54
e0100dc1:	68 42 38 10 e0       	push   $0xe0103842
e0100dc6:	e8 1a f3 ff ff       	call   e01000e5 <_panic>
	}

	// if there's a page that shouldn't be on the free list,
	// try to make sure it eventually causes trouble.
	for (pp = page_free_list; pp; pp = pp->pp_link) {
e0100dcb:	8b 1b                	mov    (%ebx),%ebx
e0100dcd:	85 db                	test   %ebx,%ebx
e0100dcf:	74 3f                	je     e0100e10 <mem_init+0x247>
	return (pp - pages) << PGSHIFT;
e0100dd1:	89 d8                	mov    %ebx,%eax
e0100dd3:	2b 05 fc c1 11 e0    	sub    0xe011c1fc,%eax
e0100dd9:	c1 f8 03             	sar    $0x3,%eax
e0100ddc:	c1 e0 0c             	shl    $0xc,%eax
		if (PDX(page2pa(pp)) < pdx_limit) {
e0100ddf:	89 c6                	mov    %eax,%esi
e0100de1:	c1 ee 16             	shr    $0x16,%esi
e0100de4:	75 e5                	jne    e0100dcb <mem_init+0x202>
	if (PGNUM(pa) >= npages)
e0100de6:	89 c2                	mov    %eax,%edx
e0100de8:	c1 ea 0c             	shr    $0xc,%edx
e0100deb:	3b 15 f4 c1 11 e0    	cmp    0xe011c1f4,%edx
e0100df1:	73 c6                	jae    e0100db9 <mem_init+0x1f0>
#ifdef SANITIZE_SHADOW_BASE
			// This is technically invalid memory, access it via unsanitized routine.
			__nosan_memset(page2kva(pp), 0x97, 128);
#else
			memset(page2kva(pp), 0x97, 128);
e0100df3:	83 ec 04             	sub    $0x4,%esp
e0100df6:	68 80 00 00 00       	push   $0x80
e0100dfb:	68 97 00 00 00       	push   $0x97
	return (void *)(pa + KERNBASE);
e0100e00:	2d 00 00 00 20       	sub    $0x20000000,%eax
e0100e05:	50                   	push   %eax
e0100e06:	e8 49 1c 00 00       	call   e0102a54 <memset>
e0100e0b:	83 c4 10             	add    $0x10,%esp
e0100e0e:	eb bb                	jmp    e0100dcb <mem_init+0x202>
#endif
		}
	}

	first_free_page = (char *) boot_alloc(0);
e0100e10:	b8 00 00 00 00       	mov    $0x0,%eax
e0100e15:	e8 d6 fb ff ff       	call   e01009f0 <boot_alloc>
e0100e1a:	89 45 cc             	mov    %eax,-0x34(%ebp)
	for (pp = page_free_list; pp; pp = pp->pp_link) {
e0100e1d:	8b 15 9c b5 11 e0    	mov    0xe011b59c,%edx
e0100e23:	89 55 c4             	mov    %edx,-0x3c(%ebp)
		// check that we didn't corrupt the free list itself
		assert(pp >= pages);
e0100e26:	8b 0d fc c1 11 e0    	mov    0xe011c1fc,%ecx
		assert(pp < pages + npages);
e0100e2c:	a1 f4 c1 11 e0       	mov    0xe011c1f4,%eax
e0100e31:	89 45 c8             	mov    %eax,-0x38(%ebp)
e0100e34:	8d 3c c1             	lea    (%ecx,%eax,8),%edi
		assert(((char *) pp - (char *) pages) % sizeof(*pp) == 0);
e0100e37:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
	int nfree_basemem = 0, nfree_extmem = 0;
e0100e3a:	be 00 00 00 00       	mov    $0x0,%esi
e0100e3f:	89 5d d0             	mov    %ebx,-0x30(%ebp)
e0100e42:	e9 c8 00 00 00       	jmp    e0100f0f <mem_init+0x346>
		assert(pp >= pages);
e0100e47:	68 6a 38 10 e0       	push   $0xe010386a
e0100e4c:	68 76 38 10 e0       	push   $0xe0103876
e0100e51:	68 dc 01 00 00       	push   $0x1dc
e0100e56:	68 1f 38 10 e0       	push   $0xe010381f
e0100e5b:	e8 85 f2 ff ff       	call   e01000e5 <_panic>
		assert(pp < pages + npages);
e0100e60:	68 8b 38 10 e0       	push   $0xe010388b
e0100e65:	68 76 38 10 e0       	push   $0xe0103876
e0100e6a:	68 dd 01 00 00       	push   $0x1dd
e0100e6f:	68 1f 38 10 e0       	push   $0xe010381f
e0100e74:	e8 6c f2 ff ff       	call   e01000e5 <_panic>
		assert(((char *) pp - (char *) pages) % sizeof(*pp) == 0);
e0100e79:	68 40 37 10 e0       	push   $0xe0103740
e0100e7e:	68 76 38 10 e0       	push   $0xe0103876
e0100e83:	68 de 01 00 00       	push   $0x1de
e0100e88:	68 1f 38 10 e0       	push   $0xe010381f
e0100e8d:	e8 53 f2 ff ff       	call   e01000e5 <_panic>

		// check a few pages that shouldn't be on the free list
		assert(page2pa(pp) != 0);
e0100e92:	68 9f 38 10 e0       	push   $0xe010389f
e0100e97:	68 76 38 10 e0       	push   $0xe0103876
e0100e9c:	68 e1 01 00 00       	push   $0x1e1
e0100ea1:	68 1f 38 10 e0       	push   $0xe010381f
e0100ea6:	e8 3a f2 ff ff       	call   e01000e5 <_panic>
		assert(page2pa(pp) != IOPHYSMEM);
e0100eab:	68 b0 38 10 e0       	push   $0xe01038b0
e0100eb0:	68 76 38 10 e0       	push   $0xe0103876
e0100eb5:	68 e2 01 00 00       	push   $0x1e2
e0100eba:	68 1f 38 10 e0       	push   $0xe010381f
e0100ebf:	e8 21 f2 ff ff       	call   e01000e5 <_panic>
		assert(page2pa(pp) != EXTPHYSMEM - PGSIZE);
e0100ec4:	68 74 37 10 e0       	push   $0xe0103774
e0100ec9:	68 76 38 10 e0       	push   $0xe0103876
e0100ece:	68 e3 01 00 00       	push   $0x1e3
e0100ed3:	68 1f 38 10 e0       	push   $0xe010381f
e0100ed8:	e8 08 f2 ff ff       	call   e01000e5 <_panic>
		assert(page2pa(pp) != EXTPHYSMEM);
e0100edd:	68 c9 38 10 e0       	push   $0xe01038c9
e0100ee2:	68 76 38 10 e0       	push   $0xe0103876
e0100ee7:	68 e4 01 00 00       	push   $0x1e4
e0100eec:	68 1f 38 10 e0       	push   $0xe010381f
e0100ef1:	e8 ef f1 ff ff       	call   e01000e5 <_panic>
	if (PGNUM(pa) >= npages)
e0100ef6:	89 c3                	mov    %eax,%ebx
e0100ef8:	c1 eb 0c             	shr    $0xc,%ebx
e0100efb:	39 5d c8             	cmp    %ebx,-0x38(%ebp)
e0100efe:	76 63                	jbe    e0100f63 <mem_init+0x39a>
	return (void *)(pa + KERNBASE);
e0100f00:	2d 00 00 00 20       	sub    $0x20000000,%eax
		assert(page2pa(pp) < EXTPHYSMEM || (char *) page2kva(pp) >= first_free_page);
e0100f05:	39 45 cc             	cmp    %eax,-0x34(%ebp)
e0100f08:	77 6b                	ja     e0100f75 <mem_init+0x3ac>

		if (page2pa(pp) < EXTPHYSMEM)
			++nfree_basemem;
		else
			++nfree_extmem;
e0100f0a:	ff 45 d0             	incl   -0x30(%ebp)
	for (pp = page_free_list; pp; pp = pp->pp_link) {
e0100f0d:	8b 12                	mov    (%edx),%edx
e0100f0f:	85 d2                	test   %edx,%edx
e0100f11:	74 7b                	je     e0100f8e <mem_init+0x3c5>
		assert(pp >= pages);
e0100f13:	39 d1                	cmp    %edx,%ecx
e0100f15:	0f 87 2c ff ff ff    	ja     e0100e47 <mem_init+0x27e>
		assert(pp < pages + npages);
e0100f1b:	39 fa                	cmp    %edi,%edx
e0100f1d:	0f 83 3d ff ff ff    	jae    e0100e60 <mem_init+0x297>
		assert(((char *) pp - (char *) pages) % sizeof(*pp) == 0);
e0100f23:	89 d0                	mov    %edx,%eax
e0100f25:	2b 45 d4             	sub    -0x2c(%ebp),%eax
e0100f28:	a8 07                	test   $0x7,%al
e0100f2a:	0f 85 49 ff ff ff    	jne    e0100e79 <mem_init+0x2b0>
	return (pp - pages) << PGSHIFT;
e0100f30:	c1 f8 03             	sar    $0x3,%eax
		assert(page2pa(pp) != 0);
e0100f33:	c1 e0 0c             	shl    $0xc,%eax
e0100f36:	0f 84 56 ff ff ff    	je     e0100e92 <mem_init+0x2c9>
		assert(page2pa(pp) != IOPHYSMEM);
e0100f3c:	3d 00 00 0a 00       	cmp    $0xa0000,%eax
e0100f41:	0f 84 64 ff ff ff    	je     e0100eab <mem_init+0x2e2>
		assert(page2pa(pp) != EXTPHYSMEM - PGSIZE);
e0100f47:	3d 00 f0 0f 00       	cmp    $0xff000,%eax
e0100f4c:	0f 84 72 ff ff ff    	je     e0100ec4 <mem_init+0x2fb>
		assert(page2pa(pp) != EXTPHYSMEM);
e0100f52:	3d 00 00 10 00       	cmp    $0x100000,%eax
e0100f57:	74 84                	je     e0100edd <mem_init+0x314>
		assert(page2pa(pp) < EXTPHYSMEM || (char *) page2kva(pp) >= first_free_page);
e0100f59:	3d ff ff 0f 00       	cmp    $0xfffff,%eax
e0100f5e:	77 96                	ja     e0100ef6 <mem_init+0x32d>
			++nfree_basemem;
e0100f60:	46                   	inc    %esi
e0100f61:	eb aa                	jmp    e0100f0d <mem_init+0x344>
		_panic(file, line, "KADDR called with invalid pa %p", (void *) pa);
e0100f63:	50                   	push   %eax
e0100f64:	68 ac 36 10 e0       	push   $0xe01036ac
e0100f69:	6a 54                	push   $0x54
e0100f6b:	68 42 38 10 e0       	push   $0xe0103842
e0100f70:	e8 70 f1 ff ff       	call   e01000e5 <_panic>
		assert(page2pa(pp) < EXTPHYSMEM || (char *) page2kva(pp) >= first_free_page);
e0100f75:	68 98 37 10 e0       	push   $0xe0103798
e0100f7a:	68 76 38 10 e0       	push   $0xe0103876
e0100f7f:	68 e5 01 00 00       	push   $0x1e5
e0100f84:	68 1f 38 10 e0       	push   $0xe010381f
e0100f89:	e8 57 f1 ff ff       	call   e01000e5 <_panic>
e0100f8e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
	}

	assert(nfree_basemem > 0);
e0100f91:	85 f6                	test   %esi,%esi
e0100f93:	7e 12                	jle    e0100fa7 <mem_init+0x3de>
	assert(nfree_extmem > 0);
e0100f95:	85 db                	test   %ebx,%ebx
e0100f97:	7e 27                	jle    e0100fc0 <mem_init+0x3f7>
	int nfree;
	struct PageInfo *fl;
	char *c;
	int i;

	if (!pages)
e0100f99:	85 c9                	test   %ecx,%ecx
e0100f9b:	74 3c                	je     e0100fd9 <mem_init+0x410>
		panic("'pages' is a null pointer!");

	// check number of free pages
	for (pp = page_free_list, nfree = 0; pp; pp = pp->pp_link)
e0100f9d:	bb 00 00 00 00       	mov    $0x0,%ebx
e0100fa2:	8b 45 c4             	mov    -0x3c(%ebp),%eax
e0100fa5:	eb 4c                	jmp    e0100ff3 <mem_init+0x42a>
	assert(nfree_basemem > 0);
e0100fa7:	68 e3 38 10 e0       	push   $0xe01038e3
e0100fac:	68 76 38 10 e0       	push   $0xe0103876
e0100fb1:	68 ed 01 00 00       	push   $0x1ed
e0100fb6:	68 1f 38 10 e0       	push   $0xe010381f
e0100fbb:	e8 25 f1 ff ff       	call   e01000e5 <_panic>
	assert(nfree_extmem > 0);
e0100fc0:	68 f5 38 10 e0       	push   $0xe01038f5
e0100fc5:	68 76 38 10 e0       	push   $0xe0103876
e0100fca:	68 ee 01 00 00       	push   $0x1ee
e0100fcf:	68 1f 38 10 e0       	push   $0xe010381f
e0100fd4:	e8 0c f1 ff ff       	call   e01000e5 <_panic>
		panic("'pages' is a null pointer!");
e0100fd9:	83 ec 04             	sub    $0x4,%esp
e0100fdc:	68 06 39 10 e0       	push   $0xe0103906
e0100fe1:	68 ff 01 00 00       	push   $0x1ff
e0100fe6:	68 1f 38 10 e0       	push   $0xe010381f
e0100feb:	e8 f5 f0 ff ff       	call   e01000e5 <_panic>
		++nfree;
e0100ff0:	43                   	inc    %ebx
	for (pp = page_free_list, nfree = 0; pp; pp = pp->pp_link)
e0100ff1:	8b 00                	mov    (%eax),%eax
e0100ff3:	85 c0                	test   %eax,%eax
e0100ff5:	75 f9                	jne    e0100ff0 <mem_init+0x427>

	// should be able to allocate three pages
	pp0 = pp1 = pp2 = 0;
	assert((pp0 = page_alloc(0)));
e0100ff7:	83 ec 0c             	sub    $0xc,%esp
e0100ffa:	6a 00                	push   $0x0
e0100ffc:	e8 1b fb ff ff       	call   e0100b1c <page_alloc>
e0101001:	89 c7                	mov    %eax,%edi
e0101003:	83 c4 10             	add    $0x10,%esp
e0101006:	85 c0                	test   %eax,%eax
e0101008:	0f 84 10 02 00 00    	je     e010121e <mem_init+0x655>
	assert((pp1 = page_alloc(0)));
e010100e:	83 ec 0c             	sub    $0xc,%esp
e0101011:	6a 00                	push   $0x0
e0101013:	e8 04 fb ff ff       	call   e0100b1c <page_alloc>
e0101018:	89 c6                	mov    %eax,%esi
e010101a:	83 c4 10             	add    $0x10,%esp
e010101d:	85 c0                	test   %eax,%eax
e010101f:	0f 84 12 02 00 00    	je     e0101237 <mem_init+0x66e>
	assert((pp2 = page_alloc(0)));
e0101025:	83 ec 0c             	sub    $0xc,%esp
e0101028:	6a 00                	push   $0x0
e010102a:	e8 ed fa ff ff       	call   e0100b1c <page_alloc>
e010102f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
e0101032:	83 c4 10             	add    $0x10,%esp
e0101035:	85 c0                	test   %eax,%eax
e0101037:	0f 84 13 02 00 00    	je     e0101250 <mem_init+0x687>
	assert(pp0);
	assert(pp1 && pp1 != pp0);
e010103d:	39 f7                	cmp    %esi,%edi
e010103f:	0f 84 24 02 00 00    	je     e0101269 <mem_init+0x6a0>
	assert(pp2 && pp2 != pp1 && pp2 != pp0);
e0101045:	8b 45 d4             	mov    -0x2c(%ebp),%eax
e0101048:	39 c6                	cmp    %eax,%esi
e010104a:	0f 84 32 02 00 00    	je     e0101282 <mem_init+0x6b9>
e0101050:	39 c7                	cmp    %eax,%edi
e0101052:	0f 84 2a 02 00 00    	je     e0101282 <mem_init+0x6b9>
	return (pp - pages) << PGSHIFT;
e0101058:	8b 0d fc c1 11 e0    	mov    0xe011c1fc,%ecx
	assert(page2pa(pp0) < npages*PGSIZE);
e010105e:	8b 15 f4 c1 11 e0    	mov    0xe011c1f4,%edx
e0101064:	c1 e2 0c             	shl    $0xc,%edx
e0101067:	89 f8                	mov    %edi,%eax
e0101069:	29 c8                	sub    %ecx,%eax
e010106b:	c1 f8 03             	sar    $0x3,%eax
e010106e:	c1 e0 0c             	shl    $0xc,%eax
e0101071:	39 d0                	cmp    %edx,%eax
e0101073:	0f 83 22 02 00 00    	jae    e010129b <mem_init+0x6d2>
e0101079:	89 f0                	mov    %esi,%eax
e010107b:	29 c8                	sub    %ecx,%eax
e010107d:	c1 f8 03             	sar    $0x3,%eax
e0101080:	c1 e0 0c             	shl    $0xc,%eax
	assert(page2pa(pp1) < npages*PGSIZE);
e0101083:	39 c2                	cmp    %eax,%edx
e0101085:	0f 86 29 02 00 00    	jbe    e01012b4 <mem_init+0x6eb>
e010108b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
e010108e:	29 c8                	sub    %ecx,%eax
e0101090:	c1 f8 03             	sar    $0x3,%eax
e0101093:	c1 e0 0c             	shl    $0xc,%eax
	assert(page2pa(pp2) < npages*PGSIZE);
e0101096:	39 c2                	cmp    %eax,%edx
e0101098:	0f 86 2f 02 00 00    	jbe    e01012cd <mem_init+0x704>

	// temporarily steal the rest of the free pages
	fl = page_free_list;
e010109e:	a1 9c b5 11 e0       	mov    0xe011b59c,%eax
e01010a3:	89 45 d0             	mov    %eax,-0x30(%ebp)
	page_free_list = 0;
e01010a6:	c7 05 9c b5 11 e0 00 	movl   $0x0,0xe011b59c
e01010ad:	00 00 00 

	// should be no free memory
	assert(!page_alloc(0));
e01010b0:	83 ec 0c             	sub    $0xc,%esp
e01010b3:	6a 00                	push   $0x0
e01010b5:	e8 62 fa ff ff       	call   e0100b1c <page_alloc>
e01010ba:	83 c4 10             	add    $0x10,%esp
e01010bd:	85 c0                	test   %eax,%eax
e01010bf:	0f 85 21 02 00 00    	jne    e01012e6 <mem_init+0x71d>

	// free and re-allocate?
	page_free(pp0);
e01010c5:	83 ec 0c             	sub    $0xc,%esp
e01010c8:	57                   	push   %edi
e01010c9:	e8 c0 fa ff ff       	call   e0100b8e <page_free>
	page_free(pp1);
e01010ce:	89 34 24             	mov    %esi,(%esp)
e01010d1:	e8 b8 fa ff ff       	call   e0100b8e <page_free>
	page_free(pp2);
e01010d6:	83 c4 04             	add    $0x4,%esp
e01010d9:	ff 75 d4             	pushl  -0x2c(%ebp)
e01010dc:	e8 ad fa ff ff       	call   e0100b8e <page_free>
	pp0 = pp1 = pp2 = 0;
	assert((pp0 = page_alloc(0)));
e01010e1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
e01010e8:	e8 2f fa ff ff       	call   e0100b1c <page_alloc>
e01010ed:	89 c6                	mov    %eax,%esi
e01010ef:	83 c4 10             	add    $0x10,%esp
e01010f2:	85 c0                	test   %eax,%eax
e01010f4:	0f 84 05 02 00 00    	je     e01012ff <mem_init+0x736>
	assert((pp1 = page_alloc(0)));
e01010fa:	83 ec 0c             	sub    $0xc,%esp
e01010fd:	6a 00                	push   $0x0
e01010ff:	e8 18 fa ff ff       	call   e0100b1c <page_alloc>
e0101104:	89 c7                	mov    %eax,%edi
e0101106:	83 c4 10             	add    $0x10,%esp
e0101109:	85 c0                	test   %eax,%eax
e010110b:	0f 84 07 02 00 00    	je     e0101318 <mem_init+0x74f>
	assert((pp2 = page_alloc(0)));
e0101111:	83 ec 0c             	sub    $0xc,%esp
e0101114:	6a 00                	push   $0x0
e0101116:	e8 01 fa ff ff       	call   e0100b1c <page_alloc>
e010111b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
e010111e:	83 c4 10             	add    $0x10,%esp
e0101121:	85 c0                	test   %eax,%eax
e0101123:	0f 84 08 02 00 00    	je     e0101331 <mem_init+0x768>
	assert(pp0);
	assert(pp1 && pp1 != pp0);
e0101129:	39 fe                	cmp    %edi,%esi
e010112b:	0f 84 19 02 00 00    	je     e010134a <mem_init+0x781>
	assert(pp2 && pp2 != pp1 && pp2 != pp0);
e0101131:	8b 45 d4             	mov    -0x2c(%ebp),%eax
e0101134:	39 c7                	cmp    %eax,%edi
e0101136:	0f 84 27 02 00 00    	je     e0101363 <mem_init+0x79a>
e010113c:	39 c6                	cmp    %eax,%esi
e010113e:	0f 84 1f 02 00 00    	je     e0101363 <mem_init+0x79a>
	assert(!page_alloc(0));
e0101144:	83 ec 0c             	sub    $0xc,%esp
e0101147:	6a 00                	push   $0x0
e0101149:	e8 ce f9 ff ff       	call   e0100b1c <page_alloc>
e010114e:	83 c4 10             	add    $0x10,%esp
e0101151:	85 c0                	test   %eax,%eax
e0101153:	0f 85 23 02 00 00    	jne    e010137c <mem_init+0x7b3>
e0101159:	89 f0                	mov    %esi,%eax
e010115b:	2b 05 fc c1 11 e0    	sub    0xe011c1fc,%eax
e0101161:	c1 f8 03             	sar    $0x3,%eax
e0101164:	c1 e0 0c             	shl    $0xc,%eax
	if (PGNUM(pa) >= npages)
e0101167:	89 c2                	mov    %eax,%edx
e0101169:	c1 ea 0c             	shr    $0xc,%edx
e010116c:	3b 15 f4 c1 11 e0    	cmp    0xe011c1f4,%edx
e0101172:	0f 83 1d 02 00 00    	jae    e0101395 <mem_init+0x7cc>

	// test flags
	memset(page2kva(pp0), 1, PGSIZE);
e0101178:	83 ec 04             	sub    $0x4,%esp
e010117b:	68 00 10 00 00       	push   $0x1000
e0101180:	6a 01                	push   $0x1
	return (void *)(pa + KERNBASE);
e0101182:	2d 00 00 00 20       	sub    $0x20000000,%eax
e0101187:	50                   	push   %eax
e0101188:	e8 c7 18 00 00       	call   e0102a54 <memset>
	page_free(pp0);
e010118d:	89 34 24             	mov    %esi,(%esp)
e0101190:	e8 f9 f9 ff ff       	call   e0100b8e <page_free>
	assert((pp = page_alloc(ALLOC_ZERO)));
e0101195:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
e010119c:	e8 7b f9 ff ff       	call   e0100b1c <page_alloc>
e01011a1:	83 c4 10             	add    $0x10,%esp
e01011a4:	85 c0                	test   %eax,%eax
e01011a6:	0f 84 fb 01 00 00    	je     e01013a7 <mem_init+0x7de>
	assert(pp && pp0 == pp);
e01011ac:	39 c6                	cmp    %eax,%esi
e01011ae:	0f 85 0c 02 00 00    	jne    e01013c0 <mem_init+0x7f7>
	return (pp - pages) << PGSHIFT;
e01011b4:	89 f2                	mov    %esi,%edx
e01011b6:	2b 15 fc c1 11 e0    	sub    0xe011c1fc,%edx
e01011bc:	c1 fa 03             	sar    $0x3,%edx
e01011bf:	c1 e2 0c             	shl    $0xc,%edx
	if (PGNUM(pa) >= npages)
e01011c2:	89 d0                	mov    %edx,%eax
e01011c4:	c1 e8 0c             	shr    $0xc,%eax
e01011c7:	3b 05 f4 c1 11 e0    	cmp    0xe011c1f4,%eax
e01011cd:	0f 83 06 02 00 00    	jae    e01013d9 <mem_init+0x810>
	return (void *)(pa + KERNBASE);
e01011d3:	8d 82 00 00 00 e0    	lea    -0x20000000(%edx),%eax
e01011d9:	81 ea 00 f0 ff 1f    	sub    $0x1ffff000,%edx
	c = page2kva(pp);
	for (i = 0; i < PGSIZE; i++)
		assert(c[i] == 0);
e01011df:	80 38 00             	cmpb   $0x0,(%eax)
e01011e2:	0f 85 03 02 00 00    	jne    e01013eb <mem_init+0x822>
e01011e8:	40                   	inc    %eax
	for (i = 0; i < PGSIZE; i++)
e01011e9:	39 d0                	cmp    %edx,%eax
e01011eb:	75 f2                	jne    e01011df <mem_init+0x616>

	// give free list back
	page_free_list = fl;
e01011ed:	8b 45 d0             	mov    -0x30(%ebp),%eax
e01011f0:	a3 9c b5 11 e0       	mov    %eax,0xe011b59c

	// free the pages we took
	page_free(pp0);
e01011f5:	83 ec 0c             	sub    $0xc,%esp
e01011f8:	56                   	push   %esi
e01011f9:	e8 90 f9 ff ff       	call   e0100b8e <page_free>
	page_free(pp1);
e01011fe:	89 3c 24             	mov    %edi,(%esp)
e0101201:	e8 88 f9 ff ff       	call   e0100b8e <page_free>
	page_free(pp2);
e0101206:	83 c4 04             	add    $0x4,%esp
e0101209:	ff 75 d4             	pushl  -0x2c(%ebp)
e010120c:	e8 7d f9 ff ff       	call   e0100b8e <page_free>

	// number of free pages should be the same
	for (pp = page_free_list; pp; pp = pp->pp_link)
e0101211:	a1 9c b5 11 e0       	mov    0xe011b59c,%eax
e0101216:	83 c4 10             	add    $0x10,%esp
e0101219:	e9 e9 01 00 00       	jmp    e0101407 <mem_init+0x83e>
	assert((pp0 = page_alloc(0)));
e010121e:	68 21 39 10 e0       	push   $0xe0103921
e0101223:	68 76 38 10 e0       	push   $0xe0103876
e0101228:	68 07 02 00 00       	push   $0x207
e010122d:	68 1f 38 10 e0       	push   $0xe010381f
e0101232:	e8 ae ee ff ff       	call   e01000e5 <_panic>
	assert((pp1 = page_alloc(0)));
e0101237:	68 37 39 10 e0       	push   $0xe0103937
e010123c:	68 76 38 10 e0       	push   $0xe0103876
e0101241:	68 08 02 00 00       	push   $0x208
e0101246:	68 1f 38 10 e0       	push   $0xe010381f
e010124b:	e8 95 ee ff ff       	call   e01000e5 <_panic>
	assert((pp2 = page_alloc(0)));
e0101250:	68 4d 39 10 e0       	push   $0xe010394d
e0101255:	68 76 38 10 e0       	push   $0xe0103876
e010125a:	68 09 02 00 00       	push   $0x209
e010125f:	68 1f 38 10 e0       	push   $0xe010381f
e0101264:	e8 7c ee ff ff       	call   e01000e5 <_panic>
	assert(pp1 && pp1 != pp0);
e0101269:	68 63 39 10 e0       	push   $0xe0103963
e010126e:	68 76 38 10 e0       	push   $0xe0103876
e0101273:	68 0b 02 00 00       	push   $0x20b
e0101278:	68 1f 38 10 e0       	push   $0xe010381f
e010127d:	e8 63 ee ff ff       	call   e01000e5 <_panic>
	assert(pp2 && pp2 != pp1 && pp2 != pp0);
e0101282:	68 e0 37 10 e0       	push   $0xe01037e0
e0101287:	68 76 38 10 e0       	push   $0xe0103876
e010128c:	68 0c 02 00 00       	push   $0x20c
e0101291:	68 1f 38 10 e0       	push   $0xe010381f
e0101296:	e8 4a ee ff ff       	call   e01000e5 <_panic>
	assert(page2pa(pp0) < npages*PGSIZE);
e010129b:	68 75 39 10 e0       	push   $0xe0103975
e01012a0:	68 76 38 10 e0       	push   $0xe0103876
e01012a5:	68 0d 02 00 00       	push   $0x20d
e01012aa:	68 1f 38 10 e0       	push   $0xe010381f
e01012af:	e8 31 ee ff ff       	call   e01000e5 <_panic>
	assert(page2pa(pp1) < npages*PGSIZE);
e01012b4:	68 92 39 10 e0       	push   $0xe0103992
e01012b9:	68 76 38 10 e0       	push   $0xe0103876
e01012be:	68 0e 02 00 00       	push   $0x20e
e01012c3:	68 1f 38 10 e0       	push   $0xe010381f
e01012c8:	e8 18 ee ff ff       	call   e01000e5 <_panic>
	assert(page2pa(pp2) < npages*PGSIZE);
e01012cd:	68 af 39 10 e0       	push   $0xe01039af
e01012d2:	68 76 38 10 e0       	push   $0xe0103876
e01012d7:	68 0f 02 00 00       	push   $0x20f
e01012dc:	68 1f 38 10 e0       	push   $0xe010381f
e01012e1:	e8 ff ed ff ff       	call   e01000e5 <_panic>
	assert(!page_alloc(0));
e01012e6:	68 cc 39 10 e0       	push   $0xe01039cc
e01012eb:	68 76 38 10 e0       	push   $0xe0103876
e01012f0:	68 16 02 00 00       	push   $0x216
e01012f5:	68 1f 38 10 e0       	push   $0xe010381f
e01012fa:	e8 e6 ed ff ff       	call   e01000e5 <_panic>
	assert((pp0 = page_alloc(0)));
e01012ff:	68 21 39 10 e0       	push   $0xe0103921
e0101304:	68 76 38 10 e0       	push   $0xe0103876
e0101309:	68 1d 02 00 00       	push   $0x21d
e010130e:	68 1f 38 10 e0       	push   $0xe010381f
e0101313:	e8 cd ed ff ff       	call   e01000e5 <_panic>
	assert((pp1 = page_alloc(0)));
e0101318:	68 37 39 10 e0       	push   $0xe0103937
e010131d:	68 76 38 10 e0       	push   $0xe0103876
e0101322:	68 1e 02 00 00       	push   $0x21e
e0101327:	68 1f 38 10 e0       	push   $0xe010381f
e010132c:	e8 b4 ed ff ff       	call   e01000e5 <_panic>
	assert((pp2 = page_alloc(0)));
e0101331:	68 4d 39 10 e0       	push   $0xe010394d
e0101336:	68 76 38 10 e0       	push   $0xe0103876
e010133b:	68 1f 02 00 00       	push   $0x21f
e0101340:	68 1f 38 10 e0       	push   $0xe010381f
e0101345:	e8 9b ed ff ff       	call   e01000e5 <_panic>
	assert(pp1 && pp1 != pp0);
e010134a:	68 63 39 10 e0       	push   $0xe0103963
e010134f:	68 76 38 10 e0       	push   $0xe0103876
e0101354:	68 21 02 00 00       	push   $0x221
e0101359:	68 1f 38 10 e0       	push   $0xe010381f
e010135e:	e8 82 ed ff ff       	call   e01000e5 <_panic>
	assert(pp2 && pp2 != pp1 && pp2 != pp0);
e0101363:	68 e0 37 10 e0       	push   $0xe01037e0
e0101368:	68 76 38 10 e0       	push   $0xe0103876
e010136d:	68 22 02 00 00       	push   $0x222
e0101372:	68 1f 38 10 e0       	push   $0xe010381f
e0101377:	e8 69 ed ff ff       	call   e01000e5 <_panic>
	assert(!page_alloc(0));
e010137c:	68 cc 39 10 e0       	push   $0xe01039cc
e0101381:	68 76 38 10 e0       	push   $0xe0103876
e0101386:	68 23 02 00 00       	push   $0x223
e010138b:	68 1f 38 10 e0       	push   $0xe010381f
e0101390:	e8 50 ed ff ff       	call   e01000e5 <_panic>
		_panic(file, line, "KADDR called with invalid pa %p", (void *) pa);
e0101395:	50                   	push   %eax
e0101396:	68 ac 36 10 e0       	push   $0xe01036ac
e010139b:	6a 54                	push   $0x54
e010139d:	68 42 38 10 e0       	push   $0xe0103842
e01013a2:	e8 3e ed ff ff       	call   e01000e5 <_panic>
	assert((pp = page_alloc(ALLOC_ZERO)));
e01013a7:	68 db 39 10 e0       	push   $0xe01039db
e01013ac:	68 76 38 10 e0       	push   $0xe0103876
e01013b1:	68 28 02 00 00       	push   $0x228
e01013b6:	68 1f 38 10 e0       	push   $0xe010381f
e01013bb:	e8 25 ed ff ff       	call   e01000e5 <_panic>
	assert(pp && pp0 == pp);
e01013c0:	68 f9 39 10 e0       	push   $0xe01039f9
e01013c5:	68 76 38 10 e0       	push   $0xe0103876
e01013ca:	68 29 02 00 00       	push   $0x229
e01013cf:	68 1f 38 10 e0       	push   $0xe010381f
e01013d4:	e8 0c ed ff ff       	call   e01000e5 <_panic>
e01013d9:	52                   	push   %edx
e01013da:	68 ac 36 10 e0       	push   $0xe01036ac
e01013df:	6a 54                	push   $0x54
e01013e1:	68 42 38 10 e0       	push   $0xe0103842
e01013e6:	e8 fa ec ff ff       	call   e01000e5 <_panic>
		assert(c[i] == 0);
e01013eb:	68 09 3a 10 e0       	push   $0xe0103a09
e01013f0:	68 76 38 10 e0       	push   $0xe0103876
e01013f5:	68 2c 02 00 00       	push   $0x22c
e01013fa:	68 1f 38 10 e0       	push   $0xe010381f
e01013ff:	e8 e1 ec ff ff       	call   e01000e5 <_panic>
		--nfree;
e0101404:	4b                   	dec    %ebx
	for (pp = page_free_list; pp; pp = pp->pp_link)
e0101405:	8b 00                	mov    (%eax),%eax
e0101407:	85 c0                	test   %eax,%eax
e0101409:	75 f9                	jne    e0101404 <mem_init+0x83b>
	assert(nfree == 0); 
e010140b:	85 db                	test   %ebx,%ebx
e010140d:	75 18                	jne    e0101427 <mem_init+0x85e>
    /*while (page_free_list) {
        pp0 = page_alloc(0);
    }*/
	cprintf("check_page_alloc() succeeded!\n");
e010140f:	83 ec 0c             	sub    $0xc,%esp
e0101412:	68 00 38 10 e0       	push   $0xe0103800
e0101417:	e8 ea 05 00 00       	call   e0101a06 <cprintf>
}
e010141c:	83 c4 10             	add    $0x10,%esp
e010141f:	8d 65 f4             	lea    -0xc(%ebp),%esp
e0101422:	5b                   	pop    %ebx
e0101423:	5e                   	pop    %esi
e0101424:	5f                   	pop    %edi
e0101425:	5d                   	pop    %ebp
e0101426:	c3                   	ret    
	assert(nfree == 0); 
e0101427:	68 13 3a 10 e0       	push   $0xe0103a13
e010142c:	68 76 38 10 e0       	push   $0xe0103876
e0101431:	68 39 02 00 00       	push   $0x239
e0101436:	68 1f 38 10 e0       	push   $0xe010381f
e010143b:	e8 a5 ec ff ff       	call   e01000e5 <_panic>

e0101440 <page_decref>:
{
e0101440:	55                   	push   %ebp
e0101441:	89 e5                	mov    %esp,%ebp
e0101443:	83 ec 08             	sub    $0x8,%esp
e0101446:	8b 55 08             	mov    0x8(%ebp),%edx
	if (--pp->pp_ref == 0)
e0101449:	8b 42 04             	mov    0x4(%edx),%eax
e010144c:	48                   	dec    %eax
e010144d:	66 89 42 04          	mov    %ax,0x4(%edx)
e0101451:	66 85 c0             	test   %ax,%ax
e0101454:	74 02                	je     e0101458 <page_decref+0x18>
}
e0101456:	c9                   	leave  
e0101457:	c3                   	ret    
		page_free(pp);
e0101458:	83 ec 0c             	sub    $0xc,%esp
e010145b:	52                   	push   %edx
e010145c:	e8 2d f7 ff ff       	call   e0100b8e <page_free>
e0101461:	83 c4 10             	add    $0x10,%esp
}
e0101464:	eb f0                	jmp    e0101456 <page_decref+0x16>

e0101466 <pgdir_walk>:
{
e0101466:	55                   	push   %ebp
e0101467:	89 e5                	mov    %esp,%ebp
}
e0101469:	b8 00 00 00 00       	mov    $0x0,%eax
e010146e:	5d                   	pop    %ebp
e010146f:	c3                   	ret    

e0101470 <page_insert>:
{
e0101470:	55                   	push   %ebp
e0101471:	89 e5                	mov    %esp,%ebp
}
e0101473:	b8 00 00 00 00       	mov    $0x0,%eax
e0101478:	5d                   	pop    %ebp
e0101479:	c3                   	ret    

e010147a <page_lookup>:
{
e010147a:	55                   	push   %ebp
e010147b:	89 e5                	mov    %esp,%ebp
}
e010147d:	b8 00 00 00 00       	mov    $0x0,%eax
e0101482:	5d                   	pop    %ebp
e0101483:	c3                   	ret    

e0101484 <page_remove>:
{
e0101484:	55                   	push   %ebp
e0101485:	89 e5                	mov    %esp,%ebp
}
e0101487:	5d                   	pop    %ebp
e0101488:	c3                   	ret    

e0101489 <tlb_invalidate>:
{
e0101489:	55                   	push   %ebp
e010148a:	89 e5                	mov    %esp,%ebp
	__asm __volatile("invlpg (%0)" : : "r" (addr) : "memory");
e010148c:	8b 45 0c             	mov    0xc(%ebp),%eax
e010148f:	0f 01 38             	invlpg (%eax)
}
e0101492:	5d                   	pop    %ebp
e0101493:	c3                   	ret    

e0101494 <envid2env>:
//   On success, sets *env_store to the environment.
//   On error, sets *env_store to NULL.
//
int
envid2env(envid_t envid, struct Env **env_store, bool checkperm)
{
e0101494:	55                   	push   %ebp
e0101495:	89 e5                	mov    %esp,%ebp
e0101497:	53                   	push   %ebx
e0101498:	8b 55 08             	mov    0x8(%ebp),%edx
e010149b:	8b 4d 10             	mov    0x10(%ebp),%ecx
	struct Env *e;

	// If envid is zero, return the current environment.
	if (envid == 0) {
e010149e:	85 d2                	test   %edx,%edx
e01014a0:	74 47                	je     e01014e9 <envid2env+0x55>
	// Look up the Env structure via the index part of the envid,
	// then check the env_id field in that struct Env
	// to ensure that the envid is not stale
	// (i.e., does not refer to a _previous_ environment
	// that used the same slot in the envs[] array).
	e = &envs[ENVX(envid)];
e01014a2:	89 d3                	mov    %edx,%ebx
e01014a4:	83 e3 1f             	and    $0x1f,%ebx
e01014a7:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
e01014aa:	01 c0                	add    %eax,%eax
e01014ac:	01 d8                	add    %ebx,%eax
e01014ae:	01 c0                	add    %eax,%eax
e01014b0:	01 d8                	add    %ebx,%eax
e01014b2:	8b 1d 50 b3 11 e0    	mov    0xe011b350,%ebx
e01014b8:	8d 04 83             	lea    (%ebx,%eax,4),%eax
	if (e->env_status == ENV_FREE || e->env_id != envid) {
e01014bb:	83 78 54 00          	cmpl   $0x0,0x54(%eax)
e01014bf:	74 39                	je     e01014fa <envid2env+0x66>
e01014c1:	39 50 48             	cmp    %edx,0x48(%eax)
e01014c4:	75 34                	jne    e01014fa <envid2env+0x66>
	// Check that the calling environment has legitimate permission
	// to manipulate the specified environment.
	// If checkperm is set, the specified environment
	// must be either the current environment
	// or an immediate child of the current environment.
	if (checkperm && e != curenv && e->env_parent_id != curenv->env_id) {
e01014c6:	84 c9                	test   %cl,%cl
e01014c8:	74 12                	je     e01014dc <envid2env+0x48>
e01014ca:	8b 15 a4 b5 11 e0    	mov    0xe011b5a4,%edx
e01014d0:	39 c2                	cmp    %eax,%edx
e01014d2:	74 08                	je     e01014dc <envid2env+0x48>
e01014d4:	8b 4a 48             	mov    0x48(%edx),%ecx
e01014d7:	39 48 4c             	cmp    %ecx,0x4c(%eax)
e01014da:	75 2e                	jne    e010150a <envid2env+0x76>
		*env_store = 0;
		return -E_BAD_ENV;
	}

	*env_store = e;
e01014dc:	8b 4d 0c             	mov    0xc(%ebp),%ecx
e01014df:	89 01                	mov    %eax,(%ecx)
	return 0;
e01014e1:	b8 00 00 00 00       	mov    $0x0,%eax
}
e01014e6:	5b                   	pop    %ebx
e01014e7:	5d                   	pop    %ebp
e01014e8:	c3                   	ret    
		*env_store = curenv;
e01014e9:	a1 a4 b5 11 e0       	mov    0xe011b5a4,%eax
e01014ee:	8b 4d 0c             	mov    0xc(%ebp),%ecx
e01014f1:	89 01                	mov    %eax,(%ecx)
		return 0;
e01014f3:	b8 00 00 00 00       	mov    $0x0,%eax
e01014f8:	eb ec                	jmp    e01014e6 <envid2env+0x52>
		*env_store = 0;
e01014fa:	8b 45 0c             	mov    0xc(%ebp),%eax
e01014fd:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
		return -E_BAD_ENV;
e0101503:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
e0101508:	eb dc                	jmp    e01014e6 <envid2env+0x52>
		*env_store = 0;
e010150a:	8b 45 0c             	mov    0xc(%ebp),%eax
e010150d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
		return -E_BAD_ENV;
e0101513:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
e0101518:	eb cc                	jmp    e01014e6 <envid2env+0x52>

e010151a <env_init_percpu>:
}

// Load GDT and segment descriptors.
void
env_init_percpu(void)
{
e010151a:	55                   	push   %ebp
e010151b:	89 e5                	mov    %esp,%ebp
	__asm __volatile("lgdt (%0)" : : "r" (p));
e010151d:	b8 00 b3 11 e0       	mov    $0xe011b300,%eax
e0101522:	0f 01 10             	lgdtl  (%eax)
	lgdt(&gdt_pd);
	// The kernel never uses GS or FS, so we leave those set to
	// the user data segment.
	asm volatile("movw %%ax,%%gs" :: "a" (GD_UD|3));
e0101525:	b8 23 00 00 00       	mov    $0x23,%eax
e010152a:	8e e8                	mov    %eax,%gs
	asm volatile("movw %%ax,%%fs" :: "a" (GD_UD|3));
e010152c:	8e e0                	mov    %eax,%fs
	// The kernel does use ES, DS, and SS.  We'll change between
	// the kernel and user data segments as needed.
	asm volatile("movw %%ax,%%es" :: "a" (GD_KD));
e010152e:	b8 10 00 00 00       	mov    $0x10,%eax
e0101533:	8e c0                	mov    %eax,%es
	asm volatile("movw %%ax,%%ds" :: "a" (GD_KD));
e0101535:	8e d8                	mov    %eax,%ds
	asm volatile("movw %%ax,%%ss" :: "a" (GD_KD));
e0101537:	8e d0                	mov    %eax,%ss
	// Load the kernel text segment into CS.
	asm volatile("ljmp %0,$1f\n 1:\n" :: "i" (GD_KT));
e0101539:	ea 40 15 10 e0 08 00 	ljmp   $0x8,$0xe0101540
	__asm __volatile("lldt %0" : : "r" (sel));
e0101540:	b8 00 00 00 00       	mov    $0x0,%eax
e0101545:	0f 00 d0             	lldt   %ax
	// For good measure, clear the local descriptor table (LDT),
	// since we don't use it.
	lldt(0);
}
e0101548:	5d                   	pop    %ebp
e0101549:	c3                   	ret    

e010154a <env_init>:
{
e010154a:	55                   	push   %ebp
e010154b:	89 e5                	mov    %esp,%ebp
e010154d:	56                   	push   %esi
e010154e:	53                   	push   %ebx
        envs[i].env_status = ENV_FREE;
e010154f:	8b 35 50 b3 11 e0    	mov    0xe011b350,%esi
e0101555:	8d 86 24 0b 00 00    	lea    0xb24(%esi),%eax
e010155b:	8d 5e a4             	lea    -0x5c(%esi),%ebx
e010155e:	ba 00 00 00 00       	mov    $0x0,%edx
e0101563:	89 c1                	mov    %eax,%ecx
e0101565:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
        envs[i].env_id = 0;
e010156c:	c7 40 48 00 00 00 00 	movl   $0x0,0x48(%eax)
        envs[i].env_link = env_free_list;
e0101573:	89 50 44             	mov    %edx,0x44(%eax)
e0101576:	83 e8 5c             	sub    $0x5c,%eax
        env_free_list = &envs[i];
e0101579:	89 ca                	mov    %ecx,%edx
    for (i = NENV - 1; i >= 0; --i) {
e010157b:	39 d8                	cmp    %ebx,%eax
e010157d:	75 e4                	jne    e0101563 <env_init+0x19>
e010157f:	89 35 a8 b5 11 e0    	mov    %esi,0xe011b5a8
	env_init_percpu();
e0101585:	e8 90 ff ff ff       	call   e010151a <env_init_percpu>
}
e010158a:	5b                   	pop    %ebx
e010158b:	5e                   	pop    %esi
e010158c:	5d                   	pop    %ebp
e010158d:	c3                   	ret    

e010158e <env_alloc>:
//	-E_NO_FREE_ENV if all NENVS environments are allocated
//	-E_NO_MEM on memory exhaustion
//
int
env_alloc(struct Env **newenv_store, envid_t parent_id)
{
e010158e:	55                   	push   %ebp
e010158f:	89 e5                	mov    %esp,%ebp
e0101591:	56                   	push   %esi
e0101592:	53                   	push   %ebx
	int32_t generation;
	struct Env *e;

	if (!(e = env_free_list)) {
e0101593:	8b 1d a8 b5 11 e0    	mov    0xe011b5a8,%ebx
e0101599:	85 db                	test   %ebx,%ebx
e010159b:	0f 84 ba 00 00 00    	je     e010165b <env_alloc+0xcd>
		return -E_NO_FREE_ENV;
	}

	// Generate an env_id for this environment.
	generation = (e->env_id + (1 << ENVGENSHIFT)) & ~(NENV - 1);
e01015a1:	8b 43 48             	mov    0x48(%ebx),%eax
e01015a4:	8d 88 00 10 00 00    	lea    0x1000(%eax),%ecx
	if (generation <= 0)	// Don't create a negative env_id.
e01015aa:	83 e1 e0             	and    $0xffffffe0,%ecx
e01015ad:	0f 8e 97 00 00 00    	jle    e010164a <env_alloc+0xbc>
		generation = 1 << ENVGENSHIFT;
	e->env_id = generation | (e - envs);
e01015b3:	89 d8                	mov    %ebx,%eax
e01015b5:	2b 05 50 b3 11 e0    	sub    0xe011b350,%eax
e01015bb:	c1 f8 02             	sar    $0x2,%eax
e01015be:	8d 14 80             	lea    (%eax,%eax,4),%edx
e01015c1:	01 d2                	add    %edx,%edx
e01015c3:	01 c2                	add    %eax,%edx
e01015c5:	8d 14 d0             	lea    (%eax,%edx,8),%edx
e01015c8:	89 d6                	mov    %edx,%esi
e01015ca:	c1 e6 0b             	shl    $0xb,%esi
e01015cd:	01 f2                	add    %esi,%edx
e01015cf:	c1 e2 05             	shl    $0x5,%edx
e01015d2:	01 c2                	add    %eax,%edx
e01015d4:	8d 14 90             	lea    (%eax,%edx,4),%edx
e01015d7:	01 d2                	add    %edx,%edx
e01015d9:	01 c2                	add    %eax,%edx
e01015db:	8d 04 d0             	lea    (%eax,%edx,8),%eax
e01015de:	f7 d8                	neg    %eax
e01015e0:	09 c1                	or     %eax,%ecx
e01015e2:	89 4b 48             	mov    %ecx,0x48(%ebx)

	// Set the basic status variables.
	e->env_parent_id = parent_id;
e01015e5:	8b 45 0c             	mov    0xc(%ebp),%eax
e01015e8:	89 43 4c             	mov    %eax,0x4c(%ebx)
#ifdef CONFIG_KSPACE
	e->env_type = ENV_TYPE_KERNEL;
#else
#endif
	e->env_status = ENV_RUNNABLE;
e01015eb:	c7 43 54 02 00 00 00 	movl   $0x2,0x54(%ebx)
	e->env_runs = 0;
e01015f2:	c7 43 58 00 00 00 00 	movl   $0x0,0x58(%ebx)

	// Clear out all the saved register state,
	// to prevent the register values
	// of a prior environment inhabiting this Env structure
	// from "leaking" into our new environment.
	memset(&e->env_tf, 0, sizeof(e->env_tf));
e01015f9:	83 ec 04             	sub    $0x4,%esp
e01015fc:	6a 44                	push   $0x44
e01015fe:	6a 00                	push   $0x0
e0101600:	53                   	push   %ebx
e0101601:	e8 4e 14 00 00       	call   e0102a54 <memset>
	e->env_tf.tf_cs = GD_KT | 0;
	e->env_tf.tf_esp = 0x210000 + (e - envs) * 2 * PGSIZE;
#else
#endif

	e->env_tf.tf_eflags |= FL_IF;
e0101606:	81 4b 38 00 02 00 00 	orl    $0x200,0x38(%ebx)

	// You will set e->env_tf.tf_eip later.

	// commit the allocation
	env_free_list = e->env_link;
e010160d:	8b 43 44             	mov    0x44(%ebx),%eax
e0101610:	a3 a8 b5 11 e0       	mov    %eax,0xe011b5a8
	*newenv_store = e;
e0101615:	8b 45 08             	mov    0x8(%ebp),%eax
e0101618:	89 18                	mov    %ebx,(%eax)

	cprintf("[%08x] new env %08x\n", curenv ? curenv->env_id : 0, e->env_id);
e010161a:	8b 53 48             	mov    0x48(%ebx),%edx
e010161d:	a1 a4 b5 11 e0       	mov    0xe011b5a4,%eax
e0101622:	83 c4 10             	add    $0x10,%esp
e0101625:	85 c0                	test   %eax,%eax
e0101627:	74 2b                	je     e0101654 <env_alloc+0xc6>
e0101629:	8b 40 48             	mov    0x48(%eax),%eax
e010162c:	83 ec 04             	sub    $0x4,%esp
e010162f:	52                   	push   %edx
e0101630:	50                   	push   %eax
e0101631:	68 1e 3a 10 e0       	push   $0xe0103a1e
e0101636:	e8 cb 03 00 00       	call   e0101a06 <cprintf>
	return 0;
e010163b:	83 c4 10             	add    $0x10,%esp
e010163e:	b8 00 00 00 00       	mov    $0x0,%eax
}
e0101643:	8d 65 f8             	lea    -0x8(%ebp),%esp
e0101646:	5b                   	pop    %ebx
e0101647:	5e                   	pop    %esi
e0101648:	5d                   	pop    %ebp
e0101649:	c3                   	ret    
		generation = 1 << ENVGENSHIFT;
e010164a:	b9 00 10 00 00       	mov    $0x1000,%ecx
e010164f:	e9 5f ff ff ff       	jmp    e01015b3 <env_alloc+0x25>
	cprintf("[%08x] new env %08x\n", curenv ? curenv->env_id : 0, e->env_id);
e0101654:	b8 00 00 00 00       	mov    $0x0,%eax
e0101659:	eb d1                	jmp    e010162c <env_alloc+0x9e>
		return -E_NO_FREE_ENV;
e010165b:	b8 fb ff ff ff       	mov    $0xfffffffb,%eax
e0101660:	eb e1                	jmp    e0101643 <env_alloc+0xb5>

e0101662 <env_create>:
// before running the first user-mode environment.
// The new env's parent ID is set to 0.
//
void
env_create(uint8_t *binary, size_t size, enum EnvType type)
{
e0101662:	55                   	push   %ebp
e0101663:	89 e5                	mov    %esp,%ebp
e0101665:	57                   	push   %edi
e0101666:	56                   	push   %esi
e0101667:	53                   	push   %ebx
e0101668:	83 ec 34             	sub    $0x34,%esp
e010166b:	8b 7d 08             	mov    0x8(%ebp),%edi
    struct Env *e = NULL;
e010166e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    int r = env_alloc(&e, 0);
e0101675:	6a 00                	push   $0x0
e0101677:	8d 45 e4             	lea    -0x1c(%ebp),%eax
e010167a:	50                   	push   %eax
e010167b:	e8 0e ff ff ff       	call   e010158e <env_alloc>
    if (r) {
e0101680:	83 c4 10             	add    $0x10,%esp
e0101683:	85 c0                	test   %eax,%eax
e0101685:	75 1e                	jne    e01016a5 <env_create+0x43>
        panic("env_create: %i", r);
    }
    load_icode(e, binary, size);
e0101687:	8b 45 e4             	mov    -0x1c(%ebp),%eax
e010168a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    if (elf_hdr->e_magic != ELF_MAGIC) 
e010168d:	81 3f 7f 45 4c 46    	cmpl   $0x464c457f,(%edi)
e0101693:	75 25                	jne    e01016ba <env_create+0x58>
	ph = (struct Proghdr *) ((uint8_t *) elf_hdr + elf_hdr->e_phoff);
e0101695:	89 fb                	mov    %edi,%ebx
e0101697:	03 5f 1c             	add    0x1c(%edi),%ebx
	eph = ph + elf_hdr->e_phnum;
e010169a:	0f b7 77 2c          	movzwl 0x2c(%edi),%esi
e010169e:	c1 e6 05             	shl    $0x5,%esi
e01016a1:	01 de                	add    %ebx,%esi
e01016a3:	eb 46                	jmp    e01016eb <env_create+0x89>
        panic("env_create: %i", r);
e01016a5:	50                   	push   %eax
e01016a6:	68 33 3a 10 e0       	push   $0xe0103a33
e01016ab:	68 57 01 00 00       	push   $0x157
e01016b0:	68 42 3a 10 e0       	push   $0xe0103a42
e01016b5:	e8 2b ea ff ff       	call   e01000e5 <_panic>
        panic("load_icode: invalid binary");
e01016ba:	83 ec 04             	sub    $0x4,%esp
e01016bd:	68 4d 3a 10 e0       	push   $0xe0103a4d
e01016c2:	68 36 01 00 00       	push   $0x136
e01016c7:	68 42 3a 10 e0       	push   $0xe0103a42
e01016cc:	e8 14 ea ff ff       	call   e01000e5 <_panic>
                panic("load_icode: file size larger than memory size");
e01016d1:	83 ec 04             	sub    $0x4,%esp
e01016d4:	68 84 3a 10 e0       	push   $0xe0103a84
e01016d9:	68 3d 01 00 00       	push   $0x13d
e01016de:	68 42 3a 10 e0       	push   $0xe0103a42
e01016e3:	e8 fd e9 ff ff       	call   e01000e5 <_panic>
    for (; ph < eph; ++ph) {
e01016e8:	83 c3 20             	add    $0x20,%ebx
e01016eb:	39 de                	cmp    %ebx,%esi
e01016ed:	76 3b                	jbe    e010172a <env_create+0xc8>
        if (ph->p_type == ELF_PROG_LOAD) {
e01016ef:	83 3b 01             	cmpl   $0x1,(%ebx)
e01016f2:	75 f4                	jne    e01016e8 <env_create+0x86>
            if (ph->p_filesz > ph->p_memsz)
e01016f4:	8b 43 10             	mov    0x10(%ebx),%eax
e01016f7:	3b 43 14             	cmp    0x14(%ebx),%eax
e01016fa:	77 d5                	ja     e01016d1 <env_create+0x6f>
            memmove((void *) ph->p_va, binary + ph->p_offset, ph->p_filesz);
e01016fc:	83 ec 04             	sub    $0x4,%esp
e01016ff:	50                   	push   %eax
e0101700:	89 f8                	mov    %edi,%eax
e0101702:	03 43 04             	add    0x4(%ebx),%eax
e0101705:	50                   	push   %eax
e0101706:	ff 73 08             	pushl  0x8(%ebx)
e0101709:	e8 8d 13 00 00       	call   e0102a9b <memmove>
            memset((void *) ph->p_va + ph->p_filesz, 0, ph->p_memsz - ph->p_filesz);
e010170e:	8b 43 10             	mov    0x10(%ebx),%eax
e0101711:	83 c4 0c             	add    $0xc,%esp
e0101714:	8b 53 14             	mov    0x14(%ebx),%edx
e0101717:	29 c2                	sub    %eax,%edx
e0101719:	52                   	push   %edx
e010171a:	6a 00                	push   $0x0
e010171c:	03 43 08             	add    0x8(%ebx),%eax
e010171f:	50                   	push   %eax
e0101720:	e8 2f 13 00 00       	call   e0102a54 <memset>
e0101725:	83 c4 10             	add    $0x10,%esp
e0101728:	eb be                	jmp    e01016e8 <env_create+0x86>
    e->env_tf.tf_eip = elf_hdr->e_entry;
e010172a:	8b 47 18             	mov    0x18(%edi),%eax
e010172d:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
e0101730:	89 41 30             	mov    %eax,0x30(%ecx)
    e->env_type = type;
e0101733:	8b 55 10             	mov    0x10(%ebp),%edx
e0101736:	8b 45 e4             	mov    -0x1c(%ebp),%eax
e0101739:	89 50 50             	mov    %edx,0x50(%eax)
}
e010173c:	8d 65 f4             	lea    -0xc(%ebp),%esp
e010173f:	5b                   	pop    %ebx
e0101740:	5e                   	pop    %esi
e0101741:	5f                   	pop    %edi
e0101742:	5d                   	pop    %ebp
e0101743:	c3                   	ret    

e0101744 <env_free>:
//
// Frees env e and all memory it uses.
//
void
env_free(struct Env *e)
{
e0101744:	55                   	push   %ebp
e0101745:	89 e5                	mov    %esp,%ebp
e0101747:	53                   	push   %ebx
e0101748:	83 ec 04             	sub    $0x4,%esp
e010174b:	8b 5d 08             	mov    0x8(%ebp),%ebx
	// Note the environment's demise.
	cprintf("[%08x] free env %08x\n", curenv ? curenv->env_id : 0, e->env_id);
e010174e:	8b 53 48             	mov    0x48(%ebx),%edx
e0101751:	a1 a4 b5 11 e0       	mov    0xe011b5a4,%eax
e0101756:	85 c0                	test   %eax,%eax
e0101758:	74 2f                	je     e0101789 <env_free+0x45>
e010175a:	8b 40 48             	mov    0x48(%eax),%eax
e010175d:	83 ec 04             	sub    $0x4,%esp
e0101760:	52                   	push   %edx
e0101761:	50                   	push   %eax
e0101762:	68 68 3a 10 e0       	push   $0xe0103a68
e0101767:	e8 9a 02 00 00       	call   e0101a06 <cprintf>

	// return the environment to the free list
	e->env_status = ENV_FREE;
e010176c:	c7 43 54 00 00 00 00 	movl   $0x0,0x54(%ebx)
	e->env_link = env_free_list;
e0101773:	a1 a8 b5 11 e0       	mov    0xe011b5a8,%eax
e0101778:	89 43 44             	mov    %eax,0x44(%ebx)
	env_free_list = e;
e010177b:	89 1d a8 b5 11 e0    	mov    %ebx,0xe011b5a8
}
e0101781:	83 c4 10             	add    $0x10,%esp
e0101784:	8b 5d fc             	mov    -0x4(%ebp),%ebx
e0101787:	c9                   	leave  
e0101788:	c3                   	ret    
	cprintf("[%08x] free env %08x\n", curenv ? curenv->env_id : 0, e->env_id);
e0101789:	b8 00 00 00 00       	mov    $0x0,%eax
e010178e:	eb cd                	jmp    e010175d <env_free+0x19>

e0101790 <env_destroy>:
// If e was the current env, then runs a new environment (and does not return
// to the caller).
//
void
env_destroy(struct Env *e)
{	
e0101790:	55                   	push   %ebp
e0101791:	89 e5                	mov    %esp,%ebp
e0101793:	53                   	push   %ebx
e0101794:	83 ec 10             	sub    $0x10,%esp
e0101797:	8b 5d 08             	mov    0x8(%ebp),%ebx
	env_free(e);
e010179a:	53                   	push   %ebx
e010179b:	e8 a4 ff ff ff       	call   e0101744 <env_free>
    if (e == curenv)
e01017a0:	83 c4 10             	add    $0x10,%esp
e01017a3:	39 1d a4 b5 11 e0    	cmp    %ebx,0xe011b5a4
e01017a9:	74 1f                	je     e01017ca <env_destroy+0x3a>
		sched_yield();
	cprintf("Destroyed the only environment - nothing more to do!\n");
e01017ab:	83 ec 0c             	sub    $0xc,%esp
e01017ae:	68 b4 3a 10 e0       	push   $0xe0103ab4
e01017b3:	e8 4e 02 00 00       	call   e0101a06 <cprintf>
e01017b8:	83 c4 10             	add    $0x10,%esp
	while (1)
		monitor(NULL);
e01017bb:	83 ec 0c             	sub    $0xc,%esp
e01017be:	6a 00                	push   $0x0
e01017c0:	e8 d5 f0 ff ff       	call   e010089a <monitor>
e01017c5:	83 c4 10             	add    $0x10,%esp
e01017c8:	eb f1                	jmp    e01017bb <env_destroy+0x2b>
		sched_yield();
e01017ca:	e8 5b 06 00 00       	call   e0101e2a <sched_yield>

e01017cf <env_pop_tf>:
//
// This function does not return.
//
void
env_pop_tf(struct Trapframe *tf)
{
e01017cf:	55                   	push   %ebp
e01017d0:	89 e5                	mov    %esp,%ebp
e01017d2:	83 ec 0c             	sub    $0xc,%esp
//		  [esp]"i"(offsetof(struct Trapframe, tf_regs.reg_oesp))
		  [esp]"i"(offsetof(struct Trapframe, tf_esp))
		: "cc", "memory", "ebx", "ecx", "edx", "esi", "edi" );
#else
#endif
	panic("BUG");  /* mostly to placate the compiler */
e01017d5:	68 7e 3a 10 e0       	push   $0xe0103a7e
e01017da:	68 b7 01 00 00       	push   $0x1b7
e01017df:	68 42 3a 10 e0       	push   $0xe0103a42
e01017e4:	e8 fc e8 ff ff       	call   e01000e5 <_panic>

e01017e9 <env_run>:
//
// This function does not return.
//
void
env_run(struct Env *e)
{
e01017e9:	55                   	push   %ebp
e01017ea:	89 e5                	mov    %esp,%ebp
e01017ec:	83 ec 08             	sub    $0x8,%esp
e01017ef:	8b 45 08             	mov    0x8(%ebp),%eax
	// Hint: This function loads the new environment's state from
	//	e->env_tf.  Go back through the code you wrote above
	//	and make sure you have set the relevant parts of
	//	e->env_tf to sensible values.
	//
    if (curenv != e && curenv != NULL) {
e01017f2:	8b 15 a4 b5 11 e0    	mov    0xe011b5a4,%edx
e01017f8:	39 c2                	cmp    %eax,%edx
e01017fa:	74 0a                	je     e0101806 <env_run+0x1d>
e01017fc:	85 d2                	test   %edx,%edx
e01017fe:	74 06                	je     e0101806 <env_run+0x1d>
        if (curenv->env_status == ENV_RUNNING)
e0101800:	83 7a 54 03          	cmpl   $0x3,0x54(%edx)
e0101804:	74 18                	je     e010181e <env_run+0x35>
            curenv->env_status = ENV_RUNNABLE;
    }
    curenv = e;
e0101806:	a3 a4 b5 11 e0       	mov    %eax,0xe011b5a4
    curenv->env_status = ENV_RUNNING;
e010180b:	c7 40 54 03 00 00 00 	movl   $0x3,0x54(%eax)
    curenv->env_runs++;
e0101812:	ff 40 58             	incl   0x58(%eax)

	env_pop_tf(&e->env_tf);
e0101815:	83 ec 0c             	sub    $0xc,%esp
e0101818:	50                   	push   %eax
e0101819:	e8 b1 ff ff ff       	call   e01017cf <env_pop_tf>
            curenv->env_status = ENV_RUNNABLE;
e010181e:	c7 42 54 02 00 00 00 	movl   $0x2,0x54(%edx)
e0101825:	eb df                	jmp    e0101806 <env_run+0x1d>

e0101827 <rtc_init>:
#include <inc/x86.h>
#include <kern/kclock.h>

void
rtc_init(void)
{
e0101827:	55                   	push   %ebp
e0101828:	89 e5                	mov    %esp,%ebp
e010182a:	53                   	push   %ebx
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e010182b:	b9 70 00 00 00       	mov    $0x70,%ecx
e0101830:	89 ca                	mov    %ecx,%edx
e0101832:	ec                   	in     (%dx),%al
}

static inline void
nmi_disable(void)
{
	outb(0x70, inb(0x70) | NMI_LOCK );
e0101833:	83 c8 80             	or     $0xffffff80,%eax
	__asm __volatile("outb %0,%w1" : : "a" (data), "d" (port));
e0101836:	ee                   	out    %al,(%dx)
e0101837:	b0 0a                	mov    $0xa,%al
e0101839:	ee                   	out    %al,(%dx)
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e010183a:	bb 71 00 00 00       	mov    $0x71,%ebx
e010183f:	89 da                	mov    %ebx,%edx
e0101841:	ec                   	in     (%dx),%al

	nmi_disable();
    
    outb(IO_RTC_CMND, RTC_AREG);
    areg = inb(IO_RTC_DATA);
    areg |= 0x0f; 
e0101842:	83 c8 0f             	or     $0xf,%eax
	__asm __volatile("outb %0,%w1" : : "a" (data), "d" (port));
e0101845:	ee                   	out    %al,(%dx)
e0101846:	b0 0b                	mov    $0xb,%al
e0101848:	89 ca                	mov    %ecx,%edx
e010184a:	ee                   	out    %al,(%dx)
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e010184b:	89 da                	mov    %ebx,%edx
e010184d:	ec                   	in     (%dx),%al
    outb(IO_RTC_DATA, areg);

    outb(IO_RTC_CMND, RTC_BREG);
    breg = inb(IO_RTC_DATA);
    breg |= RTC_PIE;
e010184e:	83 c8 40             	or     $0x40,%eax
	__asm __volatile("outb %0,%w1" : : "a" (data), "d" (port));
e0101851:	ee                   	out    %al,(%dx)
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e0101852:	89 ca                	mov    %ecx,%edx
e0101854:	ec                   	in     (%dx),%al
	__asm __volatile("outb %0,%w1" : : "a" (data), "d" (port));
e0101855:	83 e0 7f             	and    $0x7f,%eax
e0101858:	ee                   	out    %al,(%dx)
    outb(IO_RTC_DATA, breg);

	nmi_enable();
}
e0101859:	5b                   	pop    %ebx
e010185a:	5d                   	pop    %ebp
e010185b:	c3                   	ret    

e010185c <rtc_check_status>:

uint8_t
rtc_check_status(void)
{
e010185c:	55                   	push   %ebp
e010185d:	89 e5                	mov    %esp,%ebp
e010185f:	b0 0c                	mov    $0xc,%al
e0101861:	ba 70 00 00 00       	mov    $0x70,%edx
e0101866:	ee                   	out    %al,(%dx)
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e0101867:	ba 71 00 00 00       	mov    $0x71,%edx
e010186c:	ec                   	in     (%dx),%al
	uint8_t status = 0;
    outb(IO_RTC_CMND, RTC_CREG);
    status = inb(IO_RTC_DATA);
	return status;
}
e010186d:	5d                   	pop    %ebp
e010186e:	c3                   	ret    

e010186f <mc146818_read>:

unsigned
mc146818_read(unsigned reg)
{
e010186f:	55                   	push   %ebp
e0101870:	89 e5                	mov    %esp,%ebp
	__asm __volatile("outb %0,%w1" : : "a" (data), "d" (port));
e0101872:	8b 45 08             	mov    0x8(%ebp),%eax
e0101875:	ba 70 00 00 00       	mov    $0x70,%edx
e010187a:	ee                   	out    %al,(%dx)
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e010187b:	ba 71 00 00 00       	mov    $0x71,%edx
e0101880:	ec                   	in     (%dx),%al
	outb(IO_RTC_CMND, reg);
	return inb(IO_RTC_DATA);
e0101881:	0f b6 c0             	movzbl %al,%eax
}
e0101884:	5d                   	pop    %ebp
e0101885:	c3                   	ret    

e0101886 <mc146818_write>:

void
mc146818_write(unsigned reg, unsigned datum)
{
e0101886:	55                   	push   %ebp
e0101887:	89 e5                	mov    %esp,%ebp
	__asm __volatile("outb %0,%w1" : : "a" (data), "d" (port));
e0101889:	8b 45 08             	mov    0x8(%ebp),%eax
e010188c:	ba 70 00 00 00       	mov    $0x70,%edx
e0101891:	ee                   	out    %al,(%dx)
e0101892:	8b 45 0c             	mov    0xc(%ebp),%eax
e0101895:	ba 71 00 00 00       	mov    $0x71,%edx
e010189a:	ee                   	out    %al,(%dx)
	outb(IO_RTC_CMND, reg);
	outb(IO_RTC_DATA, datum);
}
e010189b:	5d                   	pop    %ebp
e010189c:	c3                   	ret    

e010189d <irq_setmask_8259A>:
		irq_setmask_8259A(irq_mask_8259A);
}

void
irq_setmask_8259A(uint16_t mask)
{
e010189d:	55                   	push   %ebp
e010189e:	89 e5                	mov    %esp,%ebp
e01018a0:	56                   	push   %esi
e01018a1:	53                   	push   %ebx
e01018a2:	8b 45 08             	mov    0x8(%ebp),%eax
	int i;
	irq_mask_8259A = mask;
e01018a5:	66 a3 54 b3 11 e0    	mov    %ax,0xe011b354
	if (!didinit)
e01018ab:	80 3d ac b5 11 e0 00 	cmpb   $0x0,0xe011b5ac
e01018b2:	75 07                	jne    e01018bb <irq_setmask_8259A+0x1e>
	cprintf("enabled interrupts:");
	for (i = 0; i < 16; i++)
		if (~mask & (1<<i))
			cprintf(" %d", i);
	cprintf("\n");
}
e01018b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
e01018b7:	5b                   	pop    %ebx
e01018b8:	5e                   	pop    %esi
e01018b9:	5d                   	pop    %ebp
e01018ba:	c3                   	ret    
e01018bb:	89 c6                	mov    %eax,%esi
e01018bd:	ba 21 00 00 00       	mov    $0x21,%edx
e01018c2:	ee                   	out    %al,(%dx)
	outb(IO_PIC2_DATA, (char)(mask >> 8));
e01018c3:	66 c1 e8 08          	shr    $0x8,%ax
e01018c7:	ba a1 00 00 00       	mov    $0xa1,%edx
e01018cc:	ee                   	out    %al,(%dx)
	cprintf("enabled interrupts:");
e01018cd:	83 ec 0c             	sub    $0xc,%esp
e01018d0:	68 ea 3a 10 e0       	push   $0xe0103aea
e01018d5:	e8 2c 01 00 00       	call   e0101a06 <cprintf>
e01018da:	83 c4 10             	add    $0x10,%esp
	for (i = 0; i < 16; i++)
e01018dd:	bb 00 00 00 00       	mov    $0x0,%ebx
		if (~mask & (1<<i))
e01018e2:	0f b7 f6             	movzwl %si,%esi
e01018e5:	f7 d6                	not    %esi
e01018e7:	eb 06                	jmp    e01018ef <irq_setmask_8259A+0x52>
	for (i = 0; i < 16; i++)
e01018e9:	43                   	inc    %ebx
e01018ea:	83 fb 10             	cmp    $0x10,%ebx
e01018ed:	74 1d                	je     e010190c <irq_setmask_8259A+0x6f>
		if (~mask & (1<<i))
e01018ef:	89 f0                	mov    %esi,%eax
e01018f1:	88 d9                	mov    %bl,%cl
e01018f3:	d3 f8                	sar    %cl,%eax
e01018f5:	a8 01                	test   $0x1,%al
e01018f7:	74 f0                	je     e01018e9 <irq_setmask_8259A+0x4c>
			cprintf(" %d", i);
e01018f9:	83 ec 08             	sub    $0x8,%esp
e01018fc:	53                   	push   %ebx
e01018fd:	68 fb 3e 10 e0       	push   $0xe0103efb
e0101902:	e8 ff 00 00 00       	call   e0101a06 <cprintf>
e0101907:	83 c4 10             	add    $0x10,%esp
e010190a:	eb dd                	jmp    e01018e9 <irq_setmask_8259A+0x4c>
	cprintf("\n");
e010190c:	83 ec 0c             	sub    $0xc,%esp
e010190f:	68 40 31 10 e0       	push   $0xe0103140
e0101914:	e8 ed 00 00 00       	call   e0101a06 <cprintf>
e0101919:	83 c4 10             	add    $0x10,%esp
e010191c:	eb 96                	jmp    e01018b4 <irq_setmask_8259A+0x17>

e010191e <pic_init>:
{
e010191e:	55                   	push   %ebp
e010191f:	89 e5                	mov    %esp,%ebp
e0101921:	57                   	push   %edi
e0101922:	56                   	push   %esi
e0101923:	53                   	push   %ebx
e0101924:	83 ec 0c             	sub    $0xc,%esp
	didinit = 1;
e0101927:	c6 05 ac b5 11 e0 01 	movb   $0x1,0xe011b5ac
e010192e:	b0 ff                	mov    $0xff,%al
e0101930:	bb 21 00 00 00       	mov    $0x21,%ebx
e0101935:	89 da                	mov    %ebx,%edx
e0101937:	ee                   	out    %al,(%dx)
e0101938:	b9 a1 00 00 00       	mov    $0xa1,%ecx
e010193d:	89 ca                	mov    %ecx,%edx
e010193f:	ee                   	out    %al,(%dx)
e0101940:	bf 11 00 00 00       	mov    $0x11,%edi
e0101945:	be 20 00 00 00       	mov    $0x20,%esi
e010194a:	89 f8                	mov    %edi,%eax
e010194c:	89 f2                	mov    %esi,%edx
e010194e:	ee                   	out    %al,(%dx)
e010194f:	b0 20                	mov    $0x20,%al
e0101951:	89 da                	mov    %ebx,%edx
e0101953:	ee                   	out    %al,(%dx)
e0101954:	b0 04                	mov    $0x4,%al
e0101956:	ee                   	out    %al,(%dx)
e0101957:	b0 01                	mov    $0x1,%al
e0101959:	ee                   	out    %al,(%dx)
e010195a:	bb a0 00 00 00       	mov    $0xa0,%ebx
e010195f:	89 f8                	mov    %edi,%eax
e0101961:	89 da                	mov    %ebx,%edx
e0101963:	ee                   	out    %al,(%dx)
e0101964:	b0 28                	mov    $0x28,%al
e0101966:	89 ca                	mov    %ecx,%edx
e0101968:	ee                   	out    %al,(%dx)
e0101969:	b0 02                	mov    $0x2,%al
e010196b:	ee                   	out    %al,(%dx)
e010196c:	b0 01                	mov    $0x1,%al
e010196e:	ee                   	out    %al,(%dx)
e010196f:	bf 68 00 00 00       	mov    $0x68,%edi
e0101974:	89 f8                	mov    %edi,%eax
e0101976:	89 f2                	mov    %esi,%edx
e0101978:	ee                   	out    %al,(%dx)
e0101979:	b1 0a                	mov    $0xa,%cl
e010197b:	88 c8                	mov    %cl,%al
e010197d:	ee                   	out    %al,(%dx)
e010197e:	89 f8                	mov    %edi,%eax
e0101980:	89 da                	mov    %ebx,%edx
e0101982:	ee                   	out    %al,(%dx)
e0101983:	88 c8                	mov    %cl,%al
e0101985:	ee                   	out    %al,(%dx)
	if (irq_mask_8259A != 0xFFFF)
e0101986:	66 a1 54 b3 11 e0    	mov    0xe011b354,%ax
e010198c:	66 83 f8 ff          	cmp    $0xffff,%ax
e0101990:	74 0f                	je     e01019a1 <pic_init+0x83>
		irq_setmask_8259A(irq_mask_8259A);
e0101992:	83 ec 0c             	sub    $0xc,%esp
e0101995:	0f b7 c0             	movzwl %ax,%eax
e0101998:	50                   	push   %eax
e0101999:	e8 ff fe ff ff       	call   e010189d <irq_setmask_8259A>
e010199e:	83 c4 10             	add    $0x10,%esp
}
e01019a1:	8d 65 f4             	lea    -0xc(%ebp),%esp
e01019a4:	5b                   	pop    %ebx
e01019a5:	5e                   	pop    %esi
e01019a6:	5f                   	pop    %edi
e01019a7:	5d                   	pop    %ebp
e01019a8:	c3                   	ret    

e01019a9 <pic_send_eoi>:

void
pic_send_eoi(uint8_t irq)
{
e01019a9:	55                   	push   %ebp
e01019aa:	89 e5                	mov    %esp,%ebp
	if(irq >= 8)
e01019ac:	80 7d 08 07          	cmpb   $0x7,0x8(%ebp)
e01019b0:	76 08                	jbe    e01019ba <pic_send_eoi+0x11>
e01019b2:	b0 20                	mov    $0x20,%al
e01019b4:	ba a0 00 00 00       	mov    $0xa0,%edx
e01019b9:	ee                   	out    %al,(%dx)
e01019ba:	b0 20                	mov    $0x20,%al
e01019bc:	ba 20 00 00 00       	mov    $0x20,%edx
e01019c1:	ee                   	out    %al,(%dx)
		outb(IO_PIC2_CMND, PIC_EOI);
	outb(IO_PIC1_CMND, PIC_EOI);
}
e01019c2:	5d                   	pop    %ebp
e01019c3:	c3                   	ret    

e01019c4 <putch>:
#include <inc/stdarg.h>


static void
putch(int ch, int *cnt)
{
e01019c4:	55                   	push   %ebp
e01019c5:	89 e5                	mov    %esp,%ebp
e01019c7:	53                   	push   %ebx
e01019c8:	83 ec 10             	sub    $0x10,%esp
e01019cb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
	cputchar(ch);
e01019ce:	ff 75 08             	pushl  0x8(%ebp)
e01019d1:	e8 53 ec ff ff       	call   e0100629 <cputchar>
	(*cnt)++;
e01019d6:	ff 03                	incl   (%ebx)
}
e01019d8:	83 c4 10             	add    $0x10,%esp
e01019db:	8b 5d fc             	mov    -0x4(%ebp),%ebx
e01019de:	c9                   	leave  
e01019df:	c3                   	ret    

e01019e0 <vcprintf>:

int
vcprintf(const char *fmt, va_list ap)
{
e01019e0:	55                   	push   %ebp
e01019e1:	89 e5                	mov    %esp,%ebp
e01019e3:	83 ec 18             	sub    $0x18,%esp
	int cnt = 0;
e01019e6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)

	vprintfmt((void*)putch, &cnt, fmt, ap);
e01019ed:	ff 75 0c             	pushl  0xc(%ebp)
e01019f0:	ff 75 08             	pushl  0x8(%ebp)
e01019f3:	8d 45 f4             	lea    -0xc(%ebp),%eax
e01019f6:	50                   	push   %eax
e01019f7:	68 c4 19 10 e0       	push   $0xe01019c4
e01019fc:	e8 3a 09 00 00       	call   e010233b <vprintfmt>
	return cnt;
}
e0101a01:	8b 45 f4             	mov    -0xc(%ebp),%eax
e0101a04:	c9                   	leave  
e0101a05:	c3                   	ret    

e0101a06 <cprintf>:

int
cprintf(const char *fmt, ...)
{
e0101a06:	55                   	push   %ebp
e0101a07:	89 e5                	mov    %esp,%ebp
e0101a09:	83 ec 10             	sub    $0x10,%esp
	va_list ap;
	int cnt;

	va_start(ap, fmt);
e0101a0c:	8d 45 0c             	lea    0xc(%ebp),%eax
	cnt = vcprintf(fmt, ap);
e0101a0f:	50                   	push   %eax
e0101a10:	ff 75 08             	pushl  0x8(%ebp)
e0101a13:	e8 c8 ff ff ff       	call   e01019e0 <vcprintf>
	va_end(ap);

	return cnt;
}
e0101a18:	c9                   	leave  
e0101a19:	c3                   	ret    

e0101a1a <clock_idt_init>:
	return "(unknown trap)";
}

void
clock_idt_init(void)
{
e0101a1a:	55                   	push   %ebp
e0101a1b:	89 e5                	mov    %esp,%ebp
	extern void (*clock_thdlr)(void);
	// init idt structure
	SETGATE(idt[IRQ_OFFSET + IRQ_CLOCK], 0, GD_KT, (int)(&clock_thdlr), 0);
e0101a1d:	b8 c4 1d 10 e0       	mov    $0xe0101dc4,%eax
e0101a22:	66 a3 00 b7 11 e0    	mov    %ax,0xe011b700
e0101a28:	66 c7 05 02 b7 11 e0 	movw   $0x8,0xe011b702
e0101a2f:	08 00 
e0101a31:	c6 05 04 b7 11 e0 00 	movb   $0x0,0xe011b704
e0101a38:	c6 05 05 b7 11 e0 8e 	movb   $0x8e,0xe011b705
e0101a3f:	c1 e8 10             	shr    $0x10,%eax
e0101a42:	66 a3 06 b7 11 e0    	mov    %ax,0xe011b706
	__asm __volatile("lidt (%0)" : : "r" (p));
e0101a48:	b8 58 b3 11 e0       	mov    $0xe011b358,%eax
e0101a4d:	0f 01 18             	lidtl  (%eax)
	lidt(&idt_pd);
}
e0101a50:	5d                   	pop    %ebp
e0101a51:	c3                   	ret    

e0101a52 <print_regs>:
	cprintf("  ss   0x----%04x\n", tf->tf_ss);
}

void
print_regs(struct PushRegs *regs)
{
e0101a52:	55                   	push   %ebp
e0101a53:	89 e5                	mov    %esp,%ebp
e0101a55:	53                   	push   %ebx
e0101a56:	83 ec 0c             	sub    $0xc,%esp
e0101a59:	8b 5d 08             	mov    0x8(%ebp),%ebx
	cprintf("  edi  0x%08x\n", regs->reg_edi);
e0101a5c:	ff 33                	pushl  (%ebx)
e0101a5e:	68 fe 3a 10 e0       	push   $0xe0103afe
e0101a63:	e8 9e ff ff ff       	call   e0101a06 <cprintf>
	cprintf("  esi  0x%08x\n", regs->reg_esi);
e0101a68:	83 c4 08             	add    $0x8,%esp
e0101a6b:	ff 73 04             	pushl  0x4(%ebx)
e0101a6e:	68 0d 3b 10 e0       	push   $0xe0103b0d
e0101a73:	e8 8e ff ff ff       	call   e0101a06 <cprintf>
	cprintf("  ebp  0x%08x\n", regs->reg_ebp);
e0101a78:	83 c4 08             	add    $0x8,%esp
e0101a7b:	ff 73 08             	pushl  0x8(%ebx)
e0101a7e:	68 1c 3b 10 e0       	push   $0xe0103b1c
e0101a83:	e8 7e ff ff ff       	call   e0101a06 <cprintf>
	cprintf("  oesp 0x%08x\n", regs->reg_oesp);
e0101a88:	83 c4 08             	add    $0x8,%esp
e0101a8b:	ff 73 0c             	pushl  0xc(%ebx)
e0101a8e:	68 2b 3b 10 e0       	push   $0xe0103b2b
e0101a93:	e8 6e ff ff ff       	call   e0101a06 <cprintf>
	cprintf("  ebx  0x%08x\n", regs->reg_ebx);
e0101a98:	83 c4 08             	add    $0x8,%esp
e0101a9b:	ff 73 10             	pushl  0x10(%ebx)
e0101a9e:	68 3a 3b 10 e0       	push   $0xe0103b3a
e0101aa3:	e8 5e ff ff ff       	call   e0101a06 <cprintf>
	cprintf("  edx  0x%08x\n", regs->reg_edx);
e0101aa8:	83 c4 08             	add    $0x8,%esp
e0101aab:	ff 73 14             	pushl  0x14(%ebx)
e0101aae:	68 49 3b 10 e0       	push   $0xe0103b49
e0101ab3:	e8 4e ff ff ff       	call   e0101a06 <cprintf>
	cprintf("  ecx  0x%08x\n", regs->reg_ecx);
e0101ab8:	83 c4 08             	add    $0x8,%esp
e0101abb:	ff 73 18             	pushl  0x18(%ebx)
e0101abe:	68 58 3b 10 e0       	push   $0xe0103b58
e0101ac3:	e8 3e ff ff ff       	call   e0101a06 <cprintf>
	cprintf("  eax  0x%08x\n", regs->reg_eax);
e0101ac8:	83 c4 08             	add    $0x8,%esp
e0101acb:	ff 73 1c             	pushl  0x1c(%ebx)
e0101ace:	68 67 3b 10 e0       	push   $0xe0103b67
e0101ad3:	e8 2e ff ff ff       	call   e0101a06 <cprintf>
}
e0101ad8:	83 c4 10             	add    $0x10,%esp
e0101adb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
e0101ade:	c9                   	leave  
e0101adf:	c3                   	ret    

e0101ae0 <print_trapframe>:
{
e0101ae0:	55                   	push   %ebp
e0101ae1:	89 e5                	mov    %esp,%ebp
e0101ae3:	53                   	push   %ebx
e0101ae4:	83 ec 0c             	sub    $0xc,%esp
e0101ae7:	8b 5d 08             	mov    0x8(%ebp),%ebx
	cprintf("TRAP frame at %p\n", tf);
e0101aea:	53                   	push   %ebx
e0101aeb:	68 cb 3b 10 e0       	push   $0xe0103bcb
e0101af0:	e8 11 ff ff ff       	call   e0101a06 <cprintf>
	print_regs(&tf->tf_regs);
e0101af5:	89 1c 24             	mov    %ebx,(%esp)
e0101af8:	e8 55 ff ff ff       	call   e0101a52 <print_regs>
	cprintf("  es   0x----%04x\n", tf->tf_es);
e0101afd:	83 c4 08             	add    $0x8,%esp
e0101b00:	0f b7 43 20          	movzwl 0x20(%ebx),%eax
e0101b04:	50                   	push   %eax
e0101b05:	68 dd 3b 10 e0       	push   $0xe0103bdd
e0101b0a:	e8 f7 fe ff ff       	call   e0101a06 <cprintf>
	cprintf("  ds   0x----%04x\n", tf->tf_ds);
e0101b0f:	83 c4 08             	add    $0x8,%esp
e0101b12:	0f b7 43 24          	movzwl 0x24(%ebx),%eax
e0101b16:	50                   	push   %eax
e0101b17:	68 f0 3b 10 e0       	push   $0xe0103bf0
e0101b1c:	e8 e5 fe ff ff       	call   e0101a06 <cprintf>
	cprintf("  trap 0x%08x %s\n", tf->tf_trapno, trapname(tf->tf_trapno));
e0101b21:	8b 43 28             	mov    0x28(%ebx),%eax
	if (trapno < sizeof(excnames)/sizeof(excnames[0]))
e0101b24:	83 c4 10             	add    $0x10,%esp
e0101b27:	83 f8 13             	cmp    $0x13,%eax
e0101b2a:	76 1c                	jbe    e0101b48 <print_trapframe+0x68>
	if (trapno == T_SYSCALL)
e0101b2c:	83 f8 30             	cmp    $0x30,%eax
e0101b2f:	0f 84 eb 00 00 00    	je     e0101c20 <print_trapframe+0x140>
	if (trapno >= IRQ_OFFSET && trapno < IRQ_OFFSET + 16)
e0101b35:	8d 50 e0             	lea    -0x20(%eax),%edx
e0101b38:	83 fa 0f             	cmp    $0xf,%edx
e0101b3b:	0f 86 e9 00 00 00    	jbe    e0101c2a <print_trapframe+0x14a>
	return "(unknown trap)";
e0101b41:	ba 95 3b 10 e0       	mov    $0xe0103b95,%edx
e0101b46:	eb 07                	jmp    e0101b4f <print_trapframe+0x6f>
		return excnames[trapno];
e0101b48:	8b 14 85 40 3e 10 e0 	mov    -0x1fefc1c0(,%eax,4),%edx
	cprintf("  trap 0x%08x %s\n", tf->tf_trapno, trapname(tf->tf_trapno));
e0101b4f:	83 ec 04             	sub    $0x4,%esp
e0101b52:	52                   	push   %edx
e0101b53:	50                   	push   %eax
e0101b54:	68 03 3c 10 e0       	push   $0xe0103c03
e0101b59:	e8 a8 fe ff ff       	call   e0101a06 <cprintf>
	if (tf == last_tf && tf->tf_trapno == T_PGFLT)
e0101b5e:	83 c4 10             	add    $0x10,%esp
e0101b61:	39 1d c0 bd 11 e0    	cmp    %ebx,0xe011bdc0
e0101b67:	0f 84 c7 00 00 00    	je     e0101c34 <print_trapframe+0x154>
	cprintf("  err  0x%08x", tf->tf_err);
e0101b6d:	83 ec 08             	sub    $0x8,%esp
e0101b70:	ff 73 2c             	pushl  0x2c(%ebx)
e0101b73:	68 24 3c 10 e0       	push   $0xe0103c24
e0101b78:	e8 89 fe ff ff       	call   e0101a06 <cprintf>
	if (tf->tf_trapno == T_PGFLT)
e0101b7d:	83 c4 10             	add    $0x10,%esp
e0101b80:	83 7b 28 0e          	cmpl   $0xe,0x28(%ebx)
e0101b84:	0f 85 eb 00 00 00    	jne    e0101c75 <print_trapframe+0x195>
			tf->tf_err & 1 ? "protection" : "not-present");
e0101b8a:	8b 43 2c             	mov    0x2c(%ebx),%eax
		cprintf(" [%s, %s, %s]\n",
e0101b8d:	a8 01                	test   $0x1,%al
e0101b8f:	0f 85 c2 00 00 00    	jne    e0101c57 <print_trapframe+0x177>
e0101b95:	b9 af 3b 10 e0       	mov    $0xe0103baf,%ecx
e0101b9a:	a8 02                	test   $0x2,%al
e0101b9c:	0f 85 bf 00 00 00    	jne    e0101c61 <print_trapframe+0x181>
e0101ba2:	ba c1 3b 10 e0       	mov    $0xe0103bc1,%edx
e0101ba7:	a8 04                	test   $0x4,%al
e0101ba9:	0f 85 bc 00 00 00    	jne    e0101c6b <print_trapframe+0x18b>
e0101baf:	b8 ef 3c 10 e0       	mov    $0xe0103cef,%eax
e0101bb4:	51                   	push   %ecx
e0101bb5:	52                   	push   %edx
e0101bb6:	50                   	push   %eax
e0101bb7:	68 32 3c 10 e0       	push   $0xe0103c32
e0101bbc:	e8 45 fe ff ff       	call   e0101a06 <cprintf>
e0101bc1:	83 c4 10             	add    $0x10,%esp
	cprintf("  eip  0x%08x\n", tf->tf_eip);
e0101bc4:	83 ec 08             	sub    $0x8,%esp
e0101bc7:	ff 73 30             	pushl  0x30(%ebx)
e0101bca:	68 41 3c 10 e0       	push   $0xe0103c41
e0101bcf:	e8 32 fe ff ff       	call   e0101a06 <cprintf>
	cprintf("  cs   0x----%04x\n", tf->tf_cs);
e0101bd4:	83 c4 08             	add    $0x8,%esp
e0101bd7:	0f b7 43 34          	movzwl 0x34(%ebx),%eax
e0101bdb:	50                   	push   %eax
e0101bdc:	68 50 3c 10 e0       	push   $0xe0103c50
e0101be1:	e8 20 fe ff ff       	call   e0101a06 <cprintf>
	cprintf("  flag 0x%08x\n", tf->tf_eflags);
e0101be6:	83 c4 08             	add    $0x8,%esp
e0101be9:	ff 73 38             	pushl  0x38(%ebx)
e0101bec:	68 63 3c 10 e0       	push   $0xe0103c63
e0101bf1:	e8 10 fe ff ff       	call   e0101a06 <cprintf>
	cprintf("  esp  0x%08x\n", tf->tf_esp);
e0101bf6:	83 c4 08             	add    $0x8,%esp
e0101bf9:	ff 73 3c             	pushl  0x3c(%ebx)
e0101bfc:	68 72 3c 10 e0       	push   $0xe0103c72
e0101c01:	e8 00 fe ff ff       	call   e0101a06 <cprintf>
	cprintf("  ss   0x----%04x\n", tf->tf_ss);
e0101c06:	83 c4 08             	add    $0x8,%esp
e0101c09:	0f b7 43 40          	movzwl 0x40(%ebx),%eax
e0101c0d:	50                   	push   %eax
e0101c0e:	68 81 3c 10 e0       	push   $0xe0103c81
e0101c13:	e8 ee fd ff ff       	call   e0101a06 <cprintf>
}
e0101c18:	83 c4 10             	add    $0x10,%esp
e0101c1b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
e0101c1e:	c9                   	leave  
e0101c1f:	c3                   	ret    
		return "System call";
e0101c20:	ba 76 3b 10 e0       	mov    $0xe0103b76,%edx
e0101c25:	e9 25 ff ff ff       	jmp    e0101b4f <print_trapframe+0x6f>
		return "Hardware Interrupt";
e0101c2a:	ba 82 3b 10 e0       	mov    $0xe0103b82,%edx
e0101c2f:	e9 1b ff ff ff       	jmp    e0101b4f <print_trapframe+0x6f>
	if (tf == last_tf && tf->tf_trapno == T_PGFLT)
e0101c34:	83 7b 28 0e          	cmpl   $0xe,0x28(%ebx)
e0101c38:	0f 85 2f ff ff ff    	jne    e0101b6d <print_trapframe+0x8d>
	__asm __volatile("movl %%cr2,%0" : "=r" (val));
e0101c3e:	0f 20 d0             	mov    %cr2,%eax
		cprintf("  cr2  0x%08x\n", rcr2());
e0101c41:	83 ec 08             	sub    $0x8,%esp
e0101c44:	50                   	push   %eax
e0101c45:	68 15 3c 10 e0       	push   $0xe0103c15
e0101c4a:	e8 b7 fd ff ff       	call   e0101a06 <cprintf>
e0101c4f:	83 c4 10             	add    $0x10,%esp
e0101c52:	e9 16 ff ff ff       	jmp    e0101b6d <print_trapframe+0x8d>
		cprintf(" [%s, %s, %s]\n",
e0101c57:	b9 a4 3b 10 e0       	mov    $0xe0103ba4,%ecx
e0101c5c:	e9 39 ff ff ff       	jmp    e0101b9a <print_trapframe+0xba>
e0101c61:	ba bb 3b 10 e0       	mov    $0xe0103bbb,%edx
e0101c66:	e9 3c ff ff ff       	jmp    e0101ba7 <print_trapframe+0xc7>
e0101c6b:	b8 c6 3b 10 e0       	mov    $0xe0103bc6,%eax
e0101c70:	e9 3f ff ff ff       	jmp    e0101bb4 <print_trapframe+0xd4>
		cprintf("\n");
e0101c75:	83 ec 0c             	sub    $0xc,%esp
e0101c78:	68 40 31 10 e0       	push   $0xe0103140
e0101c7d:	e8 84 fd ff ff       	call   e0101a06 <cprintf>
e0101c82:	83 c4 10             	add    $0x10,%esp
e0101c85:	e9 3a ff ff ff       	jmp    e0101bc4 <print_trapframe+0xe4>

e0101c8a <trap>:
	}
}

void
trap(struct Trapframe *tf)
{
e0101c8a:	55                   	push   %ebp
e0101c8b:	89 e5                	mov    %esp,%ebp
e0101c8d:	57                   	push   %edi
e0101c8e:	56                   	push   %esi
	// The environment may have set DF and some versions
	// of GCC rely on DF being clear
	asm volatile("cld" ::: "cc");
e0101c8f:	fc                   	cld    

	// Halt the CPU if some other CPU has called panic()
	extern char *panicstr;
	if (panicstr)
e0101c90:	83 3d f0 c1 11 e0 00 	cmpl   $0x0,0xe011c1f0
e0101c97:	74 01                	je     e0101c9a <trap+0x10>
		asm volatile("hlt");
e0101c99:	f4                   	hlt    
	__asm __volatile("pushfl; popl %0" : "=r" (eflags));
e0101c9a:	9c                   	pushf  
e0101c9b:	58                   	pop    %eax

	// Check that interrupts are disabled.  If this assertion
	// fails, DO NOT be tempted to fix it by inserting a "cli" in
	// the interrupt path.
	assert(!(read_eflags() & FL_IF));
e0101c9c:	f6 c4 02             	test   $0x2,%ah
e0101c9f:	0f 85 84 00 00 00    	jne    e0101d29 <trap+0x9f>

	if (debug) {
		cprintf("Incoming TRAP frame at %p\n", tf);
	}

	assert(curenv);
e0101ca5:	a1 a4 b5 11 e0       	mov    0xe011b5a4,%eax
e0101caa:	85 c0                	test   %eax,%eax
e0101cac:	0f 84 90 00 00 00    	je     e0101d42 <trap+0xb8>

	// Garbage collect if current enviroment is a zombie
	if (curenv->env_status == ENV_DYING) {
e0101cb2:	83 78 54 01          	cmpl   $0x1,0x54(%eax)
e0101cb6:	0f 84 9f 00 00 00    	je     e0101d5b <trap+0xd1>
	}

	// Copy trap frame (which is currently on the stack)
	// into 'curenv->env_tf', so that running the environment
	// will restart at the trap point.
	curenv->env_tf = *tf;
e0101cbc:	b9 11 00 00 00       	mov    $0x11,%ecx
e0101cc1:	89 c7                	mov    %eax,%edi
e0101cc3:	8b 75 08             	mov    0x8(%ebp),%esi
e0101cc6:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
	// The trapframe on the stack should be ignored from here on.
	tf = &curenv->env_tf;
e0101cc8:	8b 35 a4 b5 11 e0    	mov    0xe011b5a4,%esi

	// Record that tf is the last real trapframe so
	// print_trapframe can print some additional information.
	last_tf = tf;
e0101cce:	89 35 c0 bd 11 e0    	mov    %esi,0xe011bdc0
	if (tf->tf_trapno == IRQ_OFFSET + IRQ_SPURIOUS) {
e0101cd4:	8b 46 28             	mov    0x28(%esi),%eax
e0101cd7:	83 f8 27             	cmp    $0x27,%eax
e0101cda:	0f 84 93 00 00 00    	je     e0101d73 <trap+0xe9>
	if (tf->tf_trapno == IRQ_OFFSET + IRQ_CLOCK) {
e0101ce0:	83 f8 28             	cmp    $0x28,%eax
e0101ce3:	0f 84 a4 00 00 00    	je     e0101d8d <trap+0x103>
	print_trapframe(tf);
e0101ce9:	83 ec 0c             	sub    $0xc,%esp
e0101cec:	56                   	push   %esi
e0101ced:	e8 ee fd ff ff       	call   e0101ae0 <print_trapframe>
	if (tf->tf_cs == GD_KT) {
e0101cf2:	83 c4 10             	add    $0x10,%esp
e0101cf5:	66 83 7e 34 08       	cmpw   $0x8,0x34(%esi)
e0101cfa:	0f 84 a3 00 00 00    	je     e0101da3 <trap+0x119>
		env_destroy(curenv);
e0101d00:	83 ec 0c             	sub    $0xc,%esp
e0101d03:	ff 35 a4 b5 11 e0    	pushl  0xe011b5a4
e0101d09:	e8 82 fa ff ff       	call   e0101790 <env_destroy>
e0101d0e:	83 c4 10             	add    $0x10,%esp
	trap_dispatch(tf);

	// If we made it to this point, then no other environment was
	// scheduled, so we should return to the current environment
	// if doing so makes sense.
	if (curenv && curenv->env_status == ENV_RUNNING)
e0101d11:	a1 a4 b5 11 e0       	mov    0xe011b5a4,%eax
e0101d16:	85 c0                	test   %eax,%eax
e0101d18:	74 0a                	je     e0101d24 <trap+0x9a>
e0101d1a:	83 78 54 03          	cmpl   $0x3,0x54(%eax)
e0101d1e:	0f 84 96 00 00 00    	je     e0101dba <trap+0x130>
		env_run(curenv);
	else
		sched_yield();
e0101d24:	e8 01 01 00 00       	call   e0101e2a <sched_yield>
	assert(!(read_eflags() & FL_IF));
e0101d29:	68 94 3c 10 e0       	push   $0xe0103c94
e0101d2e:	68 76 38 10 e0       	push   $0xe0103876
e0101d33:	68 a7 00 00 00       	push   $0xa7
e0101d38:	68 ad 3c 10 e0       	push   $0xe0103cad
e0101d3d:	e8 a3 e3 ff ff       	call   e01000e5 <_panic>
	assert(curenv);
e0101d42:	68 b9 3c 10 e0       	push   $0xe0103cb9
e0101d47:	68 76 38 10 e0       	push   $0xe0103876
e0101d4c:	68 ad 00 00 00       	push   $0xad
e0101d51:	68 ad 3c 10 e0       	push   $0xe0103cad
e0101d56:	e8 8a e3 ff ff       	call   e01000e5 <_panic>
		env_free(curenv);
e0101d5b:	83 ec 0c             	sub    $0xc,%esp
e0101d5e:	50                   	push   %eax
e0101d5f:	e8 e0 f9 ff ff       	call   e0101744 <env_free>
		curenv = NULL;
e0101d64:	c7 05 a4 b5 11 e0 00 	movl   $0x0,0xe011b5a4
e0101d6b:	00 00 00 
		sched_yield();
e0101d6e:	e8 b7 00 00 00       	call   e0101e2a <sched_yield>
		cprintf("Spurious interrupt on irq 7\n");
e0101d73:	83 ec 0c             	sub    $0xc,%esp
e0101d76:	68 c0 3c 10 e0       	push   $0xe0103cc0
e0101d7b:	e8 86 fc ff ff       	call   e0101a06 <cprintf>
		print_trapframe(tf);
e0101d80:	89 34 24             	mov    %esi,(%esp)
e0101d83:	e8 58 fd ff ff       	call   e0101ae0 <print_trapframe>
e0101d88:	83 c4 10             	add    $0x10,%esp
e0101d8b:	eb 84                	jmp    e0101d11 <trap+0x87>
	    pic_send_eoi(rtc_check_status());
e0101d8d:	e8 ca fa ff ff       	call   e010185c <rtc_check_status>
e0101d92:	83 ec 0c             	sub    $0xc,%esp
e0101d95:	0f b6 c0             	movzbl %al,%eax
e0101d98:	50                   	push   %eax
e0101d99:	e8 0b fc ff ff       	call   e01019a9 <pic_send_eoi>
		sched_yield();
e0101d9e:	e8 87 00 00 00       	call   e0101e2a <sched_yield>
		panic("unhandled trap in kernel");
e0101da3:	83 ec 04             	sub    $0x4,%esp
e0101da6:	68 dd 3c 10 e0       	push   $0xe0103cdd
e0101dab:	68 92 00 00 00       	push   $0x92
e0101db0:	68 ad 3c 10 e0       	push   $0xe0103cad
e0101db5:	e8 2b e3 ff ff       	call   e01000e5 <_panic>
		env_run(curenv);
e0101dba:	83 ec 0c             	sub    $0xc,%esp
e0101dbd:	50                   	push   %eax
e0101dbe:	e8 26 fa ff ff       	call   e01017e9 <env_run>
e0101dc3:	90                   	nop

e0101dc4 <clock_thdlr>:
	pushl %esp  /* trap(%esp) */
	call trap
	jmp .
#else
clock_thdlr:
    jmp .
e0101dc4:	eb fe                	jmp    e0101dc4 <clock_thdlr>

e0101dc6 <sched_halt>:
// Halt this CPU when there is nothing to do. Wait until the
// timer interrupt wakes it up. This function never returns.
//
void
sched_halt(void)
{
e0101dc6:	a1 50 b3 11 e0       	mov    0xe011b350,%eax
e0101dcb:	8d 50 54             	lea    0x54(%eax),%edx
	int i;

	// For debugging and testing purposes, if there are no runnable
	// environments in the system, then drop into the kernel monitor.
	for (i = 0; i < NENV; i++) {
e0101dce:	b9 00 00 00 00       	mov    $0x0,%ecx
		if ((envs[i].env_status == ENV_RUNNABLE ||
e0101dd3:	8b 02                	mov    (%edx),%eax
e0101dd5:	83 e8 02             	sub    $0x2,%eax
e0101dd8:	83 f8 01             	cmp    $0x1,%eax
e0101ddb:	76 2b                	jbe    e0101e08 <sched_halt+0x42>
	for (i = 0; i < NENV; i++) {
e0101ddd:	41                   	inc    %ecx
e0101dde:	83 c2 5c             	add    $0x5c,%edx
e0101de1:	83 f9 20             	cmp    $0x20,%ecx
e0101de4:	75 ed                	jne    e0101dd3 <sched_halt+0xd>
{
e0101de6:	55                   	push   %ebp
e0101de7:	89 e5                	mov    %esp,%ebp
e0101de9:	83 ec 14             	sub    $0x14,%esp
		     envs[i].env_status == ENV_RUNNING))
			break;
	}
	if (i == NENV) {
		cprintf("No runnable environments in the system!\n");
e0101dec:	68 90 3e 10 e0       	push   $0xe0103e90
e0101df1:	e8 10 fc ff ff       	call   e0101a06 <cprintf>
e0101df6:	83 c4 10             	add    $0x10,%esp
		while (1)
			monitor(NULL);
e0101df9:	83 ec 0c             	sub    $0xc,%esp
e0101dfc:	6a 00                	push   $0x0
e0101dfe:	e8 97 ea ff ff       	call   e010089a <monitor>
e0101e03:	83 c4 10             	add    $0x10,%esp
e0101e06:	eb f1                	jmp    e0101df9 <sched_halt+0x33>
	if (i == NENV) {
e0101e08:	83 f9 20             	cmp    $0x20,%ecx
e0101e0b:	74 d9                	je     e0101de6 <sched_halt+0x20>
	}

	// Mark that no environment is running on CPU
	curenv = NULL;
e0101e0d:	c7 05 a4 b5 11 e0 00 	movl   $0x0,0xe011b5a4
e0101e14:	00 00 00 

	// Reset stack pointer, enable interrupts and then halt.
	asm volatile (
e0101e17:	a1 84 cd 11 e0       	mov    0xe011cd84,%eax
e0101e1c:	bd 00 00 00 00       	mov    $0x0,%ebp
e0101e21:	89 c4                	mov    %eax,%esp
e0101e23:	6a 00                	push   $0x0
e0101e25:	6a 00                	push   $0x0
e0101e27:	fb                   	sti    
e0101e28:	f4                   	hlt    
e0101e29:	c3                   	ret    

e0101e2a <sched_yield>:
{
e0101e2a:	55                   	push   %ebp
e0101e2b:	89 e5                	mov    %esp,%ebp
e0101e2d:	57                   	push   %edi
e0101e2e:	56                   	push   %esi
e0101e2f:	53                   	push   %ebx
e0101e30:	83 ec 0c             	sub    $0xc,%esp
    if (curenv == NULL) {
e0101e33:	8b 3d a4 b5 11 e0    	mov    0xe011b5a4,%edi
e0101e39:	85 ff                	test   %edi,%edi
e0101e3b:	74 13                	je     e0101e50 <sched_yield+0x26>
        int idx = ENVX(curenv->env_id);
e0101e3d:	8b 4f 48             	mov    0x48(%edi),%ecx
e0101e40:	83 e1 1f             	and    $0x1f,%ecx
            if (envs[idx].env_status == ENV_RUNNABLE) {
e0101e43:	8b 35 50 b3 11 e0    	mov    0xe011b350,%esi
e0101e49:	bb 1f 00 00 00       	mov    $0x1f,%ebx
e0101e4e:	eb 27                	jmp    e0101e77 <sched_yield+0x4d>
        env_run(&envs[0]);
e0101e50:	83 ec 0c             	sub    $0xc,%esp
e0101e53:	ff 35 50 b3 11 e0    	pushl  0xe011b350
e0101e59:	e8 8b f9 ff ff       	call   e01017e9 <env_run>
            idx = (idx + 1) % NENV;
e0101e5e:	89 d1                	mov    %edx,%ecx
            if (envs[idx].env_status == ENV_RUNNABLE) {
e0101e60:	8d 04 92             	lea    (%edx,%edx,4),%eax
e0101e63:	01 c0                	add    %eax,%eax
e0101e65:	01 d0                	add    %edx,%eax
e0101e67:	01 c0                	add    %eax,%eax
e0101e69:	01 c2                	add    %eax,%edx
e0101e6b:	8d 04 96             	lea    (%esi,%edx,4),%eax
e0101e6e:	83 78 54 02          	cmpl   $0x2,0x54(%eax)
e0101e72:	74 15                	je     e0101e89 <sched_yield+0x5f>
        for (i = 1; i < NENV; ++i) {
e0101e74:	4b                   	dec    %ebx
e0101e75:	74 1b                	je     e0101e92 <sched_yield+0x68>
            idx = (idx + 1) % NENV;
e0101e77:	8d 51 01             	lea    0x1(%ecx),%edx
e0101e7a:	81 e2 1f 00 00 80    	and    $0x8000001f,%edx
e0101e80:	79 dc                	jns    e0101e5e <sched_yield+0x34>
e0101e82:	4a                   	dec    %edx
e0101e83:	83 ca e0             	or     $0xffffffe0,%edx
e0101e86:	42                   	inc    %edx
e0101e87:	eb d5                	jmp    e0101e5e <sched_yield+0x34>
                env_run(&envs[idx]);    
e0101e89:	83 ec 0c             	sub    $0xc,%esp
e0101e8c:	50                   	push   %eax
e0101e8d:	e8 57 f9 ff ff       	call   e01017e9 <env_run>
        if (curenv && curenv->env_status == ENV_RUNNING) {
e0101e92:	83 7f 54 03          	cmpl   $0x3,0x54(%edi)
e0101e96:	74 0d                	je     e0101ea5 <sched_yield+0x7b>
	sched_halt();
e0101e98:	e8 29 ff ff ff       	call   e0101dc6 <sched_halt>
}
e0101e9d:	8d 65 f4             	lea    -0xc(%ebp),%esp
e0101ea0:	5b                   	pop    %ebx
e0101ea1:	5e                   	pop    %esi
e0101ea2:	5f                   	pop    %edi
e0101ea3:	5d                   	pop    %ebp
e0101ea4:	c3                   	ret    
            env_run(curenv);
e0101ea5:	83 ec 0c             	sub    $0xc,%esp
e0101ea8:	57                   	push   %edi
e0101ea9:	e8 3b f9 ff ff       	call   e01017e9 <env_run>

e0101eae <stab_binsearch>:
//	will exit setting left = 118, right = 554.
//
static void
stab_binsearch(const struct Stab *stabs, int *region_left, int *region_right,
	       int type, uintptr_t addr)
{
e0101eae:	55                   	push   %ebp
e0101eaf:	89 e5                	mov    %esp,%ebp
e0101eb1:	57                   	push   %edi
e0101eb2:	56                   	push   %esi
e0101eb3:	53                   	push   %ebx
e0101eb4:	83 ec 14             	sub    $0x14,%esp
e0101eb7:	89 45 ec             	mov    %eax,-0x14(%ebp)
e0101eba:	89 55 e4             	mov    %edx,-0x1c(%ebp)
e0101ebd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
e0101ec0:	8b 7d 08             	mov    0x8(%ebp),%edi
	int l = *region_left, r = *region_right, any_matches = 0;
e0101ec3:	8b 32                	mov    (%edx),%esi
e0101ec5:	8b 01                	mov    (%ecx),%eax
e0101ec7:	89 45 f0             	mov    %eax,-0x10(%ebp)
e0101eca:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)

	while (l <= r) {
e0101ed1:	eb 2f                	jmp    e0101f02 <stab_binsearch+0x54>
		int true_m = (l + r) / 2, m = true_m;

		// search for earliest stab with right type
		while (m >= l && stabs[m].n_type != type)
			m--;
e0101ed3:	48                   	dec    %eax
		while (m >= l && stabs[m].n_type != type)
e0101ed4:	39 c6                	cmp    %eax,%esi
e0101ed6:	7f 4d                	jg     e0101f25 <stab_binsearch+0x77>
e0101ed8:	0f b6 0a             	movzbl (%edx),%ecx
e0101edb:	83 ea 0c             	sub    $0xc,%edx
e0101ede:	39 f9                	cmp    %edi,%ecx
e0101ee0:	75 f1                	jne    e0101ed3 <stab_binsearch+0x25>
			continue;
		}

		// actual binary search
		any_matches = 1;
		if (stabs[m].n_value < addr) {
e0101ee2:	8d 14 00             	lea    (%eax,%eax,1),%edx
e0101ee5:	01 c2                	add    %eax,%edx
e0101ee7:	8b 4d ec             	mov    -0x14(%ebp),%ecx
e0101eea:	8b 54 91 08          	mov    0x8(%ecx,%edx,4),%edx
e0101eee:	3b 55 0c             	cmp    0xc(%ebp),%edx
e0101ef1:	73 37                	jae    e0101f2a <stab_binsearch+0x7c>
			*region_left = m;
e0101ef3:	8b 75 e4             	mov    -0x1c(%ebp),%esi
e0101ef6:	89 06                	mov    %eax,(%esi)
			l = true_m + 1;
e0101ef8:	8d 73 01             	lea    0x1(%ebx),%esi
		any_matches = 1;
e0101efb:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
	while (l <= r) {
e0101f02:	3b 75 f0             	cmp    -0x10(%ebp),%esi
e0101f05:	7f 4d                	jg     e0101f54 <stab_binsearch+0xa6>
		int true_m = (l + r) / 2, m = true_m;
e0101f07:	8b 45 f0             	mov    -0x10(%ebp),%eax
e0101f0a:	01 f0                	add    %esi,%eax
e0101f0c:	89 c3                	mov    %eax,%ebx
e0101f0e:	c1 eb 1f             	shr    $0x1f,%ebx
e0101f11:	01 c3                	add    %eax,%ebx
e0101f13:	d1 fb                	sar    %ebx
e0101f15:	8d 04 1b             	lea    (%ebx,%ebx,1),%eax
e0101f18:	01 d8                	add    %ebx,%eax
e0101f1a:	8b 4d ec             	mov    -0x14(%ebp),%ecx
e0101f1d:	8d 54 81 04          	lea    0x4(%ecx,%eax,4),%edx
e0101f21:	89 d8                	mov    %ebx,%eax
		while (m >= l && stabs[m].n_type != type)
e0101f23:	eb af                	jmp    e0101ed4 <stab_binsearch+0x26>
			l = true_m + 1;
e0101f25:	8d 73 01             	lea    0x1(%ebx),%esi
			continue;
e0101f28:	eb d8                	jmp    e0101f02 <stab_binsearch+0x54>
		} else if (stabs[m].n_value > addr) {
e0101f2a:	3b 55 0c             	cmp    0xc(%ebp),%edx
e0101f2d:	76 12                	jbe    e0101f41 <stab_binsearch+0x93>
			*region_right = m - 1;
e0101f2f:	48                   	dec    %eax
e0101f30:	89 45 f0             	mov    %eax,-0x10(%ebp)
e0101f33:	8b 5d e0             	mov    -0x20(%ebp),%ebx
e0101f36:	89 03                	mov    %eax,(%ebx)
		any_matches = 1;
e0101f38:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
e0101f3f:	eb c1                	jmp    e0101f02 <stab_binsearch+0x54>
			r = m - 1;
		} else {
			// exact match for 'addr', but continue loop to find
			// *region_right
			*region_left = m;
e0101f41:	8b 75 e4             	mov    -0x1c(%ebp),%esi
e0101f44:	89 06                	mov    %eax,(%esi)
			l = m;
			addr++;
e0101f46:	ff 45 0c             	incl   0xc(%ebp)
e0101f49:	89 c6                	mov    %eax,%esi
		any_matches = 1;
e0101f4b:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
e0101f52:	eb ae                	jmp    e0101f02 <stab_binsearch+0x54>
		}
	}

	if (!any_matches)
e0101f54:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
e0101f58:	74 18                	je     e0101f72 <stab_binsearch+0xc4>
		*region_right = *region_left - 1;
	else {
		// find rightmost region containing 'addr'
		for (l = *region_right;
e0101f5a:	8b 45 e0             	mov    -0x20(%ebp),%eax
e0101f5d:	8b 00                	mov    (%eax),%eax
		     l > *region_left && stabs[l].n_type != type;
e0101f5f:	8b 75 e4             	mov    -0x1c(%ebp),%esi
e0101f62:	8b 0e                	mov    (%esi),%ecx
e0101f64:	8d 14 00             	lea    (%eax,%eax,1),%edx
e0101f67:	01 c2                	add    %eax,%edx
e0101f69:	8b 75 ec             	mov    -0x14(%ebp),%esi
e0101f6c:	8d 54 96 04          	lea    0x4(%esi,%edx,4),%edx
		for (l = *region_right;
e0101f70:	eb 0e                	jmp    e0101f80 <stab_binsearch+0xd2>
		*region_right = *region_left - 1;
e0101f72:	8b 45 e4             	mov    -0x1c(%ebp),%eax
e0101f75:	8b 00                	mov    (%eax),%eax
e0101f77:	48                   	dec    %eax
e0101f78:	8b 7d e0             	mov    -0x20(%ebp),%edi
e0101f7b:	89 07                	mov    %eax,(%edi)
e0101f7d:	eb 14                	jmp    e0101f93 <stab_binsearch+0xe5>
		     l--)
e0101f7f:	48                   	dec    %eax
		for (l = *region_right;
e0101f80:	39 c1                	cmp    %eax,%ecx
e0101f82:	7d 0a                	jge    e0101f8e <stab_binsearch+0xe0>
		     l > *region_left && stabs[l].n_type != type;
e0101f84:	0f b6 1a             	movzbl (%edx),%ebx
e0101f87:	83 ea 0c             	sub    $0xc,%edx
e0101f8a:	39 fb                	cmp    %edi,%ebx
e0101f8c:	75 f1                	jne    e0101f7f <stab_binsearch+0xd1>
			/* do nothing */;
		*region_left = l;
e0101f8e:	8b 7d e4             	mov    -0x1c(%ebp),%edi
e0101f91:	89 07                	mov    %eax,(%edi)
	}
}
e0101f93:	83 c4 14             	add    $0x14,%esp
e0101f96:	5b                   	pop    %ebx
e0101f97:	5e                   	pop    %esi
e0101f98:	5f                   	pop    %edi
e0101f99:	5d                   	pop    %ebp
e0101f9a:	c3                   	ret    

e0101f9b <debuginfo_eip>:
//	negative if not.  But even if it returns negative it has stored some
//	information into '*info'.
//
int
debuginfo_eip(uintptr_t addr, struct Eipdebuginfo *info)
{
e0101f9b:	55                   	push   %ebp
e0101f9c:	89 e5                	mov    %esp,%ebp
e0101f9e:	57                   	push   %edi
e0101f9f:	56                   	push   %esi
e0101fa0:	53                   	push   %ebx
e0101fa1:	83 ec 3c             	sub    $0x3c,%esp
e0101fa4:	8b 75 08             	mov    0x8(%ebp),%esi
e0101fa7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
	const struct Stab *stabs, *stab_end;
	const char *stabstr, *stabstr_end;
	int lfile, rfile, lfun, rfun, lline, rline;

	// Initialize *info
	info->eip_file = "<unknown>";
e0101faa:	c7 03 b9 3e 10 e0    	movl   $0xe0103eb9,(%ebx)
	info->eip_line = 0;
e0101fb0:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
	info->eip_fn_name = "<unknown>";
e0101fb7:	c7 43 08 b9 3e 10 e0 	movl   $0xe0103eb9,0x8(%ebx)
	info->eip_fn_namelen = 9;
e0101fbe:	c7 43 0c 09 00 00 00 	movl   $0x9,0xc(%ebx)
	info->eip_fn_addr = addr;
e0101fc5:	89 73 10             	mov    %esi,0x10(%ebx)
	info->eip_fn_narg = 0;
e0101fc8:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)

	// Find the relevant set of stabs
	if (addr <= ULIM) { //replace >=
e0101fcf:	81 fe 00 00 80 df    	cmp    $0xdf800000,%esi
e0101fd5:	0f 87 3c 01 00 00    	ja     e0102117 <debuginfo_eip+0x17c>
		// Can't search for user-level addresses yet!
  	        panic("User address");
	}

	// String table validity checks
	if (stabstr_end <= stabstr || stabstr_end[-1] != 0)
e0101fdb:	b8 4f e4 10 e0       	mov    $0xe010e44f,%eax
e0101fe0:	3d 15 b8 10 e0       	cmp    $0xe010b815,%eax
e0101fe5:	0f 86 c1 01 00 00    	jbe    e01021ac <debuginfo_eip+0x211>
e0101feb:	80 3d 4e e4 10 e0 00 	cmpb   $0x0,0xe010e44e
e0101ff2:	0f 85 bb 01 00 00    	jne    e01021b3 <debuginfo_eip+0x218>
	// 'eip'.  First, we find the basic source file containing 'eip'.
	// Then, we look in that source file for the function.  Then we look
	// for the line number.

	// Search the entire set of stabs for the source file (type N_SO).
	lfile = 0;
e0101ff8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
	rfile = (stab_end - stabs) - 1;
e0101fff:	ba 14 b8 10 e0       	mov    $0xe010b814,%edx
e0102004:	81 ea 7c 41 10 e0    	sub    $0xe010417c,%edx
e010200a:	c1 fa 02             	sar    $0x2,%edx
e010200d:	8d 04 92             	lea    (%edx,%edx,4),%eax
e0102010:	8d 04 82             	lea    (%edx,%eax,4),%eax
e0102013:	8d 04 82             	lea    (%edx,%eax,4),%eax
e0102016:	89 c1                	mov    %eax,%ecx
e0102018:	c1 e1 08             	shl    $0x8,%ecx
e010201b:	01 c8                	add    %ecx,%eax
e010201d:	89 c1                	mov    %eax,%ecx
e010201f:	c1 e1 10             	shl    $0x10,%ecx
e0102022:	01 c8                	add    %ecx,%eax
e0102024:	01 c0                	add    %eax,%eax
e0102026:	8d 44 02 ff          	lea    -0x1(%edx,%eax,1),%eax
e010202a:	89 45 e0             	mov    %eax,-0x20(%ebp)
	stab_binsearch(stabs, &lfile, &rfile, N_SO, addr);
e010202d:	83 ec 08             	sub    $0x8,%esp
e0102030:	56                   	push   %esi
e0102031:	6a 64                	push   $0x64
e0102033:	8d 4d e0             	lea    -0x20(%ebp),%ecx
e0102036:	8d 55 e4             	lea    -0x1c(%ebp),%edx
e0102039:	b8 7c 41 10 e0       	mov    $0xe010417c,%eax
e010203e:	e8 6b fe ff ff       	call   e0101eae <stab_binsearch>
	if (lfile == 0)
e0102043:	8b 45 e4             	mov    -0x1c(%ebp),%eax
e0102046:	83 c4 10             	add    $0x10,%esp
e0102049:	85 c0                	test   %eax,%eax
e010204b:	0f 84 69 01 00 00    	je     e01021ba <debuginfo_eip+0x21f>
		return -1;

	// Search within that file's stabs for the function definition
	// (N_FUN).
	lfun = lfile;
e0102051:	89 45 dc             	mov    %eax,-0x24(%ebp)
	rfun = rfile;
e0102054:	8b 45 e0             	mov    -0x20(%ebp),%eax
e0102057:	89 45 d8             	mov    %eax,-0x28(%ebp)
	stab_binsearch(stabs, &lfun, &rfun, N_FUN, addr);
e010205a:	83 ec 08             	sub    $0x8,%esp
e010205d:	56                   	push   %esi
e010205e:	6a 24                	push   $0x24
e0102060:	8d 4d d8             	lea    -0x28(%ebp),%ecx
e0102063:	8d 55 dc             	lea    -0x24(%ebp),%edx
e0102066:	b8 7c 41 10 e0       	mov    $0xe010417c,%eax
e010206b:	e8 3e fe ff ff       	call   e0101eae <stab_binsearch>

	if (lfun <= rfun) {
e0102070:	8b 45 dc             	mov    -0x24(%ebp),%eax
e0102073:	8b 55 d8             	mov    -0x28(%ebp),%edx
e0102076:	83 c4 10             	add    $0x10,%esp
e0102079:	39 d0                	cmp    %edx,%eax
e010207b:	0f 8f aa 00 00 00    	jg     e010212b <debuginfo_eip+0x190>
		// stabs[lfun] points to the function name
		// in the string table, but check bounds just in case.
		if (stabs[lfun].n_strx < stabstr_end - stabstr)
e0102081:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
e0102084:	01 c1                	add    %eax,%ecx
e0102086:	c1 e1 02             	shl    $0x2,%ecx
e0102089:	8d b9 7c 41 10 e0    	lea    -0x1fefbe84(%ecx),%edi
e010208f:	89 7d c4             	mov    %edi,-0x3c(%ebp)
e0102092:	8b 89 7c 41 10 e0    	mov    -0x1fefbe84(%ecx),%ecx
e0102098:	bf 4f e4 10 e0       	mov    $0xe010e44f,%edi
e010209d:	81 ef 15 b8 10 e0    	sub    $0xe010b815,%edi
e01020a3:	39 f9                	cmp    %edi,%ecx
e01020a5:	73 09                	jae    e01020b0 <debuginfo_eip+0x115>
			info->eip_fn_name = stabstr + stabs[lfun].n_strx;
e01020a7:	81 c1 15 b8 10 e0    	add    $0xe010b815,%ecx
e01020ad:	89 4b 08             	mov    %ecx,0x8(%ebx)
		info->eip_fn_addr = stabs[lfun].n_value;
e01020b0:	8b 7d c4             	mov    -0x3c(%ebp),%edi
e01020b3:	8b 4f 08             	mov    0x8(%edi),%ecx
e01020b6:	89 4b 10             	mov    %ecx,0x10(%ebx)
		addr -= info->eip_fn_addr;
e01020b9:	29 ce                	sub    %ecx,%esi
		// Search within the function definition for the line number.
		lline = lfun;
e01020bb:	89 45 d4             	mov    %eax,-0x2c(%ebp)
		rline = rfun;
e01020be:	89 55 d0             	mov    %edx,-0x30(%ebp)
		info->eip_fn_addr = addr;
		lline = lfile;
		rline = rfile;
	}
	// Ignore stuff after the colon.
	info->eip_fn_namelen = strfind(info->eip_fn_name, ':') - info->eip_fn_name;
e01020c1:	83 ec 08             	sub    $0x8,%esp
e01020c4:	6a 3a                	push   $0x3a
e01020c6:	ff 73 08             	pushl  0x8(%ebx)
e01020c9:	e8 6e 09 00 00       	call   e0102a3c <strfind>
e01020ce:	2b 43 08             	sub    0x8(%ebx),%eax
e01020d1:	89 43 0c             	mov    %eax,0xc(%ebx)
	// Hint:
	//	There's a particular stabs type used for line numbers.
	//	Look at the STABS documentation and <inc/stab.h> to find
	//	which one.

	stab_binsearch(stabs, &lline, &rline, N_SLINE, addr);
e01020d4:	83 c4 08             	add    $0x8,%esp
e01020d7:	56                   	push   %esi
e01020d8:	6a 44                	push   $0x44
e01020da:	8d 4d d0             	lea    -0x30(%ebp),%ecx
e01020dd:	8d 55 d4             	lea    -0x2c(%ebp),%edx
e01020e0:	b8 7c 41 10 e0       	mov    $0xe010417c,%eax
e01020e5:	e8 c4 fd ff ff       	call   e0101eae <stab_binsearch>
	if (rline >= lline)
e01020ea:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
e01020ed:	83 c4 10             	add    $0x10,%esp
e01020f0:	39 4d d0             	cmp    %ecx,-0x30(%ebp)
e01020f3:	0f 8c c8 00 00 00    	jl     e01021c1 <debuginfo_eip+0x226>
		info->eip_line = stabs[lline].n_desc;
e01020f9:	89 ca                	mov    %ecx,%edx
e01020fb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
e01020fe:	01 c8                	add    %ecx,%eax
e0102100:	c1 e0 02             	shl    $0x2,%eax
e0102103:	0f b7 88 82 41 10 e0 	movzwl -0x1fefbe7e(%eax),%ecx
e010210a:	89 4b 04             	mov    %ecx,0x4(%ebx)
	// Search backwards from the line number for the relevant filename
	// stab.
	// We can't just use the "lfile" stab because inlined functions
	// can interpolate code from a different file!
	// Such included source files use the N_SOL stab type.
	while (lline >= lfile
e010210d:	8b 75 e4             	mov    -0x1c(%ebp),%esi
e0102110:	05 80 41 10 e0       	add    $0xe0104180,%eax
e0102115:	eb 29                	jmp    e0102140 <debuginfo_eip+0x1a5>
  	        panic("User address");
e0102117:	83 ec 04             	sub    $0x4,%esp
e010211a:	68 c3 3e 10 e0       	push   $0xe0103ec3
e010211f:	6a 7f                	push   $0x7f
e0102121:	68 d0 3e 10 e0       	push   $0xe0103ed0
e0102126:	e8 ba df ff ff       	call   e01000e5 <_panic>
		info->eip_fn_addr = addr;
e010212b:	89 73 10             	mov    %esi,0x10(%ebx)
		lline = lfile;
e010212e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
e0102131:	89 45 d4             	mov    %eax,-0x2c(%ebp)
		rline = rfile;
e0102134:	8b 45 e0             	mov    -0x20(%ebp),%eax
e0102137:	89 45 d0             	mov    %eax,-0x30(%ebp)
e010213a:	eb 85                	jmp    e01020c1 <debuginfo_eip+0x126>
e010213c:	4a                   	dec    %edx
e010213d:	83 e8 0c             	sub    $0xc,%eax
	while (lline >= lfile
e0102140:	39 d6                	cmp    %edx,%esi
e0102142:	7f 34                	jg     e0102178 <debuginfo_eip+0x1dd>
	       && stabs[lline].n_type != N_SOL
e0102144:	8a 08                	mov    (%eax),%cl
e0102146:	80 f9 84             	cmp    $0x84,%cl
e0102149:	74 0b                	je     e0102156 <debuginfo_eip+0x1bb>
	       && (stabs[lline].n_type != N_SO || !stabs[lline].n_value))
e010214b:	80 f9 64             	cmp    $0x64,%cl
e010214e:	75 ec                	jne    e010213c <debuginfo_eip+0x1a1>
e0102150:	83 78 04 00          	cmpl   $0x0,0x4(%eax)
e0102154:	74 e6                	je     e010213c <debuginfo_eip+0x1a1>
		lline--;
	if (lline >= lfile && stabs[lline].n_strx < stabstr_end - stabstr)
e0102156:	8d 04 12             	lea    (%edx,%edx,1),%eax
e0102159:	01 c2                	add    %eax,%edx
e010215b:	8b 14 95 7c 41 10 e0 	mov    -0x1fefbe84(,%edx,4),%edx
e0102162:	b8 4f e4 10 e0       	mov    $0xe010e44f,%eax
e0102167:	2d 15 b8 10 e0       	sub    $0xe010b815,%eax
e010216c:	39 c2                	cmp    %eax,%edx
e010216e:	73 08                	jae    e0102178 <debuginfo_eip+0x1dd>
		info->eip_file = stabstr + stabs[lline].n_strx;
e0102170:	81 c2 15 b8 10 e0    	add    $0xe010b815,%edx
e0102176:	89 13                	mov    %edx,(%ebx)


	// Set eip_fn_narg to the number of arguments taken by the function,
	// or 0 if there was no containing function.
	if (lfun < rfun)
e0102178:	8b 55 dc             	mov    -0x24(%ebp),%edx
e010217b:	8b 75 d8             	mov    -0x28(%ebp),%esi
e010217e:	39 f2                	cmp    %esi,%edx
e0102180:	7d 46                	jge    e01021c8 <debuginfo_eip+0x22d>
		for (lline = lfun + 1;
e0102182:	42                   	inc    %edx
e0102183:	89 d0                	mov    %edx,%eax
e0102185:	8d 0c 12             	lea    (%edx,%edx,1),%ecx
e0102188:	01 ca                	add    %ecx,%edx
e010218a:	8d 14 95 80 41 10 e0 	lea    -0x1fefbe80(,%edx,4),%edx
e0102191:	eb 03                	jmp    e0102196 <debuginfo_eip+0x1fb>
		     lline < rfun && stabs[lline].n_type == N_PSYM;
		     lline++)
			info->eip_fn_narg++;
e0102193:	ff 43 14             	incl   0x14(%ebx)
		for (lline = lfun + 1;
e0102196:	39 c6                	cmp    %eax,%esi
e0102198:	7e 3b                	jle    e01021d5 <debuginfo_eip+0x23a>
		     lline < rfun && stabs[lline].n_type == N_PSYM;
e010219a:	8a 0a                	mov    (%edx),%cl
e010219c:	40                   	inc    %eax
e010219d:	83 c2 0c             	add    $0xc,%edx
e01021a0:	80 f9 a0             	cmp    $0xa0,%cl
e01021a3:	74 ee                	je     e0102193 <debuginfo_eip+0x1f8>

	return 0;
e01021a5:	b8 00 00 00 00       	mov    $0x0,%eax
e01021aa:	eb 21                	jmp    e01021cd <debuginfo_eip+0x232>
		return -1;
e01021ac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
e01021b1:	eb 1a                	jmp    e01021cd <debuginfo_eip+0x232>
e01021b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
e01021b8:	eb 13                	jmp    e01021cd <debuginfo_eip+0x232>
		return -1;
e01021ba:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
e01021bf:	eb 0c                	jmp    e01021cd <debuginfo_eip+0x232>
		return -1;
e01021c1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
e01021c6:	eb 05                	jmp    e01021cd <debuginfo_eip+0x232>
	return 0;
e01021c8:	b8 00 00 00 00       	mov    $0x0,%eax
}
e01021cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
e01021d0:	5b                   	pop    %ebx
e01021d1:	5e                   	pop    %esi
e01021d2:	5f                   	pop    %edi
e01021d3:	5d                   	pop    %ebp
e01021d4:	c3                   	ret    
	return 0;
e01021d5:	b8 00 00 00 00       	mov    $0x0,%eax
e01021da:	eb f1                	jmp    e01021cd <debuginfo_eip+0x232>

e01021dc <find_function>:

uintptr_t
find_function(const char * const fname)
{
e01021dc:	55                   	push   %ebp
e01021dd:	89 e5                	mov    %esp,%ebp
e01021df:	57                   	push   %edi
e01021e0:	56                   	push   %esi
e01021e1:	53                   	push   %ebx
e01021e2:	83 ec 0c             	sub    $0xc,%esp
e01021e5:	8b 7d 08             	mov    0x8(%ebp),%edi
	const struct Stab *stabs = __STAB_BEGIN__, *stab_end = __STAB_END__;
e01021e8:	bb 7c 41 10 e0       	mov    $0xe010417c,%ebx
	const char *stabstr = __STABSTR_BEGIN__;
	size_t flen;

	for (; stabs < stab_end; ++stabs) {
e01021ed:	eb 03                	jmp    e01021f2 <find_function+0x16>
e01021ef:	83 c3 0c             	add    $0xc,%ebx
e01021f2:	81 fb 14 b8 10 e0    	cmp    $0xe010b814,%ebx
e01021f8:	73 4e                	jae    e0102248 <find_function+0x6c>
		if (stabs->n_type == N_FUN) {
e01021fa:	80 7b 04 24          	cmpb   $0x24,0x4(%ebx)
e01021fe:	75 ef                	jne    e01021ef <find_function+0x13>
			flen = strfind(stabstr + stabs->n_strx, ':') - stabstr - stabs->n_strx;
e0102200:	83 ec 08             	sub    $0x8,%esp
e0102203:	6a 3a                	push   $0x3a
e0102205:	8b 03                	mov    (%ebx),%eax
e0102207:	05 15 b8 10 e0       	add    $0xe010b815,%eax
e010220c:	50                   	push   %eax
e010220d:	e8 2a 08 00 00       	call   e0102a3c <strfind>
e0102212:	2d 15 b8 10 e0       	sub    $0xe010b815,%eax
e0102217:	89 c6                	mov    %eax,%esi
e0102219:	2b 33                	sub    (%ebx),%esi
			if (strlen(fname) == flen && !strncmp(fname, stabstr + stabs->n_strx, flen)) {
e010221b:	89 3c 24             	mov    %edi,(%esp)
e010221e:	e8 d8 06 00 00       	call   e01028fb <strlen>
e0102223:	83 c4 10             	add    $0x10,%esp
e0102226:	39 f0                	cmp    %esi,%eax
e0102228:	75 c5                	jne    e01021ef <find_function+0x13>
e010222a:	83 ec 04             	sub    $0x4,%esp
e010222d:	50                   	push   %eax
e010222e:	8b 03                	mov    (%ebx),%eax
e0102230:	05 15 b8 10 e0       	add    $0xe010b815,%eax
e0102235:	50                   	push   %eax
e0102236:	57                   	push   %edi
e0102237:	e8 b0 07 00 00       	call   e01029ec <strncmp>
e010223c:	83 c4 10             	add    $0x10,%esp
e010223f:	85 c0                	test   %eax,%eax
e0102241:	75 ac                	jne    e01021ef <find_function+0x13>
				return stabs->n_value;
e0102243:	8b 43 08             	mov    0x8(%ebx),%eax
e0102246:	eb 05                	jmp    e010224d <find_function+0x71>
			}
		}
	}
	return 0;
e0102248:	b8 00 00 00 00       	mov    $0x0,%eax
}
e010224d:	8d 65 f4             	lea    -0xc(%ebp),%esp
e0102250:	5b                   	pop    %ebx
e0102251:	5e                   	pop    %esi
e0102252:	5f                   	pop    %edi
e0102253:	5d                   	pop    %ebp
e0102254:	c3                   	ret    

e0102255 <printnum>:
 * using specified putch function and associated pointer putdat.
 */
static void
printnum(void (*putch)(int, void*), void *putdat,
	 unsigned long long num, unsigned base, int width, int padc)
{
e0102255:	55                   	push   %ebp
e0102256:	89 e5                	mov    %esp,%ebp
e0102258:	57                   	push   %edi
e0102259:	56                   	push   %esi
e010225a:	53                   	push   %ebx
e010225b:	83 ec 1c             	sub    $0x1c,%esp
e010225e:	89 c7                	mov    %eax,%edi
e0102260:	89 d6                	mov    %edx,%esi
e0102262:	8b 45 08             	mov    0x8(%ebp),%eax
e0102265:	8b 55 0c             	mov    0xc(%ebp),%edx
e0102268:	89 45 d8             	mov    %eax,-0x28(%ebp)
e010226b:	89 55 dc             	mov    %edx,-0x24(%ebp)
	// first recursively print all preceding (more significant) digits
	if (num >= base) {
e010226e:	8b 4d 10             	mov    0x10(%ebp),%ecx
e0102271:	bb 00 00 00 00       	mov    $0x0,%ebx
e0102276:	89 4d e0             	mov    %ecx,-0x20(%ebp)
e0102279:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
e010227c:	39 d3                	cmp    %edx,%ebx
e010227e:	72 05                	jb     e0102285 <printnum+0x30>
e0102280:	39 45 10             	cmp    %eax,0x10(%ebp)
e0102283:	77 78                	ja     e01022fd <printnum+0xa8>
		printnum(putch, putdat, num / base, base, width - 1, padc);
e0102285:	83 ec 0c             	sub    $0xc,%esp
e0102288:	ff 75 18             	pushl  0x18(%ebp)
e010228b:	8b 45 14             	mov    0x14(%ebp),%eax
e010228e:	8d 58 ff             	lea    -0x1(%eax),%ebx
e0102291:	53                   	push   %ebx
e0102292:	ff 75 10             	pushl  0x10(%ebp)
e0102295:	83 ec 08             	sub    $0x8,%esp
e0102298:	ff 75 e4             	pushl  -0x1c(%ebp)
e010229b:	ff 75 e0             	pushl  -0x20(%ebp)
e010229e:	ff 75 dc             	pushl  -0x24(%ebp)
e01022a1:	ff 75 d8             	pushl  -0x28(%ebp)
e01022a4:	e8 3a 0c 00 00       	call   e0102ee3 <__udivdi3>
e01022a9:	83 c4 18             	add    $0x18,%esp
e01022ac:	52                   	push   %edx
e01022ad:	50                   	push   %eax
e01022ae:	89 f2                	mov    %esi,%edx
e01022b0:	89 f8                	mov    %edi,%eax
e01022b2:	e8 9e ff ff ff       	call   e0102255 <printnum>
e01022b7:	83 c4 20             	add    $0x20,%esp
e01022ba:	eb 11                	jmp    e01022cd <printnum+0x78>
	} else {
		// print any needed pad characters before first digit
		while (--width > 0)
			putch(padc, putdat);
e01022bc:	83 ec 08             	sub    $0x8,%esp
e01022bf:	56                   	push   %esi
e01022c0:	ff 75 18             	pushl  0x18(%ebp)
e01022c3:	ff d7                	call   *%edi
e01022c5:	83 c4 10             	add    $0x10,%esp
		while (--width > 0)
e01022c8:	4b                   	dec    %ebx
e01022c9:	85 db                	test   %ebx,%ebx
e01022cb:	7f ef                	jg     e01022bc <printnum+0x67>
	}

	// then print this (the least significant) digit
	putch("0123456789abcdef"[num % base], putdat);
e01022cd:	83 ec 08             	sub    $0x8,%esp
e01022d0:	56                   	push   %esi
e01022d1:	83 ec 04             	sub    $0x4,%esp
e01022d4:	ff 75 e4             	pushl  -0x1c(%ebp)
e01022d7:	ff 75 e0             	pushl  -0x20(%ebp)
e01022da:	ff 75 dc             	pushl  -0x24(%ebp)
e01022dd:	ff 75 d8             	pushl  -0x28(%ebp)
e01022e0:	e8 ea 0c 00 00       	call   e0102fcf <__umoddi3>
e01022e5:	83 c4 14             	add    $0x14,%esp
e01022e8:	0f be 80 de 3e 10 e0 	movsbl -0x1fefc122(%eax),%eax
e01022ef:	50                   	push   %eax
e01022f0:	ff d7                	call   *%edi
}
e01022f2:	83 c4 10             	add    $0x10,%esp
e01022f5:	8d 65 f4             	lea    -0xc(%ebp),%esp
e01022f8:	5b                   	pop    %ebx
e01022f9:	5e                   	pop    %esi
e01022fa:	5f                   	pop    %edi
e01022fb:	5d                   	pop    %ebp
e01022fc:	c3                   	ret    
e01022fd:	8b 5d 14             	mov    0x14(%ebp),%ebx
e0102300:	eb c6                	jmp    e01022c8 <printnum+0x73>

e0102302 <sprintputch>:
	int cnt;
};

static void
sprintputch(int ch, struct sprintbuf *b)
{
e0102302:	55                   	push   %ebp
e0102303:	89 e5                	mov    %esp,%ebp
e0102305:	8b 45 0c             	mov    0xc(%ebp),%eax
	b->cnt++;
e0102308:	ff 40 08             	incl   0x8(%eax)
	if (b->buf < b->ebuf)
e010230b:	8b 10                	mov    (%eax),%edx
e010230d:	3b 50 04             	cmp    0x4(%eax),%edx
e0102310:	73 0a                	jae    e010231c <sprintputch+0x1a>
		*b->buf++ = ch;
e0102312:	8d 4a 01             	lea    0x1(%edx),%ecx
e0102315:	89 08                	mov    %ecx,(%eax)
e0102317:	8b 45 08             	mov    0x8(%ebp),%eax
e010231a:	88 02                	mov    %al,(%edx)
}
e010231c:	5d                   	pop    %ebp
e010231d:	c3                   	ret    

e010231e <printfmt>:
{
e010231e:	55                   	push   %ebp
e010231f:	89 e5                	mov    %esp,%ebp
e0102321:	83 ec 08             	sub    $0x8,%esp
	va_start(ap, fmt);
e0102324:	8d 45 14             	lea    0x14(%ebp),%eax
	vprintfmt(putch, putdat, fmt, ap);
e0102327:	50                   	push   %eax
e0102328:	ff 75 10             	pushl  0x10(%ebp)
e010232b:	ff 75 0c             	pushl  0xc(%ebp)
e010232e:	ff 75 08             	pushl  0x8(%ebp)
e0102331:	e8 05 00 00 00       	call   e010233b <vprintfmt>
}
e0102336:	83 c4 10             	add    $0x10,%esp
e0102339:	c9                   	leave  
e010233a:	c3                   	ret    

e010233b <vprintfmt>:
{
e010233b:	55                   	push   %ebp
e010233c:	89 e5                	mov    %esp,%ebp
e010233e:	57                   	push   %edi
e010233f:	56                   	push   %esi
e0102340:	53                   	push   %ebx
e0102341:	83 ec 2c             	sub    $0x2c,%esp
e0102344:	8b 75 08             	mov    0x8(%ebp),%esi
e0102347:	8b 5d 0c             	mov    0xc(%ebp),%ebx
e010234a:	8b 7d 10             	mov    0x10(%ebp),%edi
e010234d:	e9 ac 03 00 00       	jmp    e01026fe <vprintfmt+0x3c3>
		padc = ' ';
e0102352:	c6 45 d4 20          	movb   $0x20,-0x2c(%ebp)
		altflag = 0;
e0102356:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
		precision = -1;
e010235d:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
		width = -1;
e0102364:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,-0x20(%ebp)
		lflag = 0;
e010236b:	b9 00 00 00 00       	mov    $0x0,%ecx
		switch (ch = *(unsigned char *) fmt++) {
e0102370:	8d 47 01             	lea    0x1(%edi),%eax
e0102373:	89 45 e4             	mov    %eax,-0x1c(%ebp)
e0102376:	8a 17                	mov    (%edi),%dl
e0102378:	8d 42 dd             	lea    -0x23(%edx),%eax
e010237b:	3c 55                	cmp    $0x55,%al
e010237d:	0f 87 fc 03 00 00    	ja     e010277f <vprintfmt+0x444>
e0102383:	0f b6 c0             	movzbl %al,%eax
e0102386:	ff 24 85 80 3f 10 e0 	jmp    *-0x1fefc080(,%eax,4)
e010238d:	8b 7d e4             	mov    -0x1c(%ebp),%edi
			padc = '-';
e0102390:	c6 45 d4 2d          	movb   $0x2d,-0x2c(%ebp)
e0102394:	eb da                	jmp    e0102370 <vprintfmt+0x35>
		switch (ch = *(unsigned char *) fmt++) {
e0102396:	8b 7d e4             	mov    -0x1c(%ebp),%edi
			padc = '0';
e0102399:	c6 45 d4 30          	movb   $0x30,-0x2c(%ebp)
e010239d:	eb d1                	jmp    e0102370 <vprintfmt+0x35>
		switch (ch = *(unsigned char *) fmt++) {
e010239f:	0f b6 d2             	movzbl %dl,%edx
e01023a2:	8b 7d e4             	mov    -0x1c(%ebp),%edi
			for (precision = 0; ; ++fmt) {
e01023a5:	b8 00 00 00 00       	mov    $0x0,%eax
e01023aa:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
				precision = precision * 10 + ch - '0';
e01023ad:	8d 04 80             	lea    (%eax,%eax,4),%eax
e01023b0:	01 c0                	add    %eax,%eax
e01023b2:	8d 44 02 d0          	lea    -0x30(%edx,%eax,1),%eax
				ch = *fmt;
e01023b6:	0f be 17             	movsbl (%edi),%edx
				if (ch < '0' || ch > '9')
e01023b9:	8d 4a d0             	lea    -0x30(%edx),%ecx
e01023bc:	83 f9 09             	cmp    $0x9,%ecx
e01023bf:	77 52                	ja     e0102413 <vprintfmt+0xd8>
			for (precision = 0; ; ++fmt) {
e01023c1:	47                   	inc    %edi
				precision = precision * 10 + ch - '0';
e01023c2:	eb e9                	jmp    e01023ad <vprintfmt+0x72>
			precision = va_arg(ap, int);
e01023c4:	8b 45 14             	mov    0x14(%ebp),%eax
e01023c7:	8b 00                	mov    (%eax),%eax
e01023c9:	89 45 d0             	mov    %eax,-0x30(%ebp)
e01023cc:	8b 45 14             	mov    0x14(%ebp),%eax
e01023cf:	8d 40 04             	lea    0x4(%eax),%eax
e01023d2:	89 45 14             	mov    %eax,0x14(%ebp)
		switch (ch = *(unsigned char *) fmt++) {
e01023d5:	8b 7d e4             	mov    -0x1c(%ebp),%edi
			if (width < 0)
e01023d8:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
e01023dc:	79 92                	jns    e0102370 <vprintfmt+0x35>
				width = precision, precision = -1;
e01023de:	8b 45 d0             	mov    -0x30(%ebp),%eax
e01023e1:	89 45 e0             	mov    %eax,-0x20(%ebp)
e01023e4:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
e01023eb:	eb 83                	jmp    e0102370 <vprintfmt+0x35>
e01023ed:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
e01023f1:	78 08                	js     e01023fb <vprintfmt+0xc0>
		switch (ch = *(unsigned char *) fmt++) {
e01023f3:	8b 7d e4             	mov    -0x1c(%ebp),%edi
e01023f6:	e9 75 ff ff ff       	jmp    e0102370 <vprintfmt+0x35>
e01023fb:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
e0102402:	eb ef                	jmp    e01023f3 <vprintfmt+0xb8>
e0102404:	8b 7d e4             	mov    -0x1c(%ebp),%edi
			altflag = 1;
e0102407:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%ebp)
			goto reswitch;
e010240e:	e9 5d ff ff ff       	jmp    e0102370 <vprintfmt+0x35>
e0102413:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
e0102416:	89 45 d0             	mov    %eax,-0x30(%ebp)
e0102419:	eb bd                	jmp    e01023d8 <vprintfmt+0x9d>
			lflag++;
e010241b:	41                   	inc    %ecx
		switch (ch = *(unsigned char *) fmt++) {
e010241c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
			goto reswitch;
e010241f:	e9 4c ff ff ff       	jmp    e0102370 <vprintfmt+0x35>
			putch(va_arg(ap, int), putdat);
e0102424:	8b 45 14             	mov    0x14(%ebp),%eax
e0102427:	8d 78 04             	lea    0x4(%eax),%edi
e010242a:	83 ec 08             	sub    $0x8,%esp
e010242d:	53                   	push   %ebx
e010242e:	ff 30                	pushl  (%eax)
e0102430:	ff d6                	call   *%esi
			break;
e0102432:	83 c4 10             	add    $0x10,%esp
			putch(va_arg(ap, int), putdat);
e0102435:	89 7d 14             	mov    %edi,0x14(%ebp)
			break;
e0102438:	e9 be 02 00 00       	jmp    e01026fb <vprintfmt+0x3c0>
			err = va_arg(ap, int);
e010243d:	8b 45 14             	mov    0x14(%ebp),%eax
e0102440:	8d 78 04             	lea    0x4(%eax),%edi
e0102443:	8b 00                	mov    (%eax),%eax
e0102445:	85 c0                	test   %eax,%eax
e0102447:	78 2a                	js     e0102473 <vprintfmt+0x138>
e0102449:	89 c2                	mov    %eax,%edx
			if (err >= MAXERROR || (p = error_string[err]) == NULL)
e010244b:	83 f8 07             	cmp    $0x7,%eax
e010244e:	7f 27                	jg     e0102477 <vprintfmt+0x13c>
e0102450:	8b 04 85 e0 40 10 e0 	mov    -0x1fefbf20(,%eax,4),%eax
e0102457:	85 c0                	test   %eax,%eax
e0102459:	74 1c                	je     e0102477 <vprintfmt+0x13c>
				printfmt(putch, putdat, "%s", p);
e010245b:	50                   	push   %eax
e010245c:	68 88 38 10 e0       	push   $0xe0103888
e0102461:	53                   	push   %ebx
e0102462:	56                   	push   %esi
e0102463:	e8 b6 fe ff ff       	call   e010231e <printfmt>
e0102468:	83 c4 10             	add    $0x10,%esp
			err = va_arg(ap, int);
e010246b:	89 7d 14             	mov    %edi,0x14(%ebp)
e010246e:	e9 88 02 00 00       	jmp    e01026fb <vprintfmt+0x3c0>
e0102473:	f7 d8                	neg    %eax
e0102475:	eb d2                	jmp    e0102449 <vprintfmt+0x10e>
				printfmt(putch, putdat, "error %d", err);
e0102477:	52                   	push   %edx
e0102478:	68 f6 3e 10 e0       	push   $0xe0103ef6
e010247d:	53                   	push   %ebx
e010247e:	56                   	push   %esi
e010247f:	e8 9a fe ff ff       	call   e010231e <printfmt>
e0102484:	83 c4 10             	add    $0x10,%esp
			err = va_arg(ap, int);
e0102487:	89 7d 14             	mov    %edi,0x14(%ebp)
				printfmt(putch, putdat, "error %d", err);
e010248a:	e9 6c 02 00 00       	jmp    e01026fb <vprintfmt+0x3c0>
			if ((p = va_arg(ap, char *)) == NULL)
e010248f:	8b 45 14             	mov    0x14(%ebp),%eax
e0102492:	83 c0 04             	add    $0x4,%eax
e0102495:	89 45 cc             	mov    %eax,-0x34(%ebp)
e0102498:	8b 45 14             	mov    0x14(%ebp),%eax
e010249b:	8b 38                	mov    (%eax),%edi
e010249d:	85 ff                	test   %edi,%edi
e010249f:	74 18                	je     e01024b9 <vprintfmt+0x17e>
			if (width > 0 && padc != '-')
e01024a1:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
e01024a5:	0f 8e b7 00 00 00    	jle    e0102562 <vprintfmt+0x227>
e01024ab:	80 7d d4 2d          	cmpb   $0x2d,-0x2c(%ebp)
e01024af:	75 0f                	jne    e01024c0 <vprintfmt+0x185>
e01024b1:	89 5d 0c             	mov    %ebx,0xc(%ebp)
e01024b4:	8b 5d d0             	mov    -0x30(%ebp),%ebx
e01024b7:	eb 6e                	jmp    e0102527 <vprintfmt+0x1ec>
				p = "(null)";
e01024b9:	bf ef 3e 10 e0       	mov    $0xe0103eef,%edi
e01024be:	eb e1                	jmp    e01024a1 <vprintfmt+0x166>
				for (width -= strnlen(p, precision); width > 0; width--)
e01024c0:	83 ec 08             	sub    $0x8,%esp
e01024c3:	ff 75 d0             	pushl  -0x30(%ebp)
e01024c6:	57                   	push   %edi
e01024c7:	e8 45 04 00 00       	call   e0102911 <strnlen>
e01024cc:	8b 4d e0             	mov    -0x20(%ebp),%ecx
e01024cf:	29 c1                	sub    %eax,%ecx
e01024d1:	89 4d c8             	mov    %ecx,-0x38(%ebp)
e01024d4:	83 c4 10             	add    $0x10,%esp
					putch(padc, putdat);
e01024d7:	0f be 45 d4          	movsbl -0x2c(%ebp),%eax
e01024db:	89 45 e0             	mov    %eax,-0x20(%ebp)
e01024de:	89 7d d4             	mov    %edi,-0x2c(%ebp)
e01024e1:	89 cf                	mov    %ecx,%edi
				for (width -= strnlen(p, precision); width > 0; width--)
e01024e3:	eb 0d                	jmp    e01024f2 <vprintfmt+0x1b7>
					putch(padc, putdat);
e01024e5:	83 ec 08             	sub    $0x8,%esp
e01024e8:	53                   	push   %ebx
e01024e9:	ff 75 e0             	pushl  -0x20(%ebp)
e01024ec:	ff d6                	call   *%esi
				for (width -= strnlen(p, precision); width > 0; width--)
e01024ee:	4f                   	dec    %edi
e01024ef:	83 c4 10             	add    $0x10,%esp
e01024f2:	85 ff                	test   %edi,%edi
e01024f4:	7f ef                	jg     e01024e5 <vprintfmt+0x1aa>
e01024f6:	8b 7d d4             	mov    -0x2c(%ebp),%edi
e01024f9:	8b 4d c8             	mov    -0x38(%ebp),%ecx
e01024fc:	89 c8                	mov    %ecx,%eax
e01024fe:	85 c9                	test   %ecx,%ecx
e0102500:	78 59                	js     e010255b <vprintfmt+0x220>
e0102502:	8b 4d c8             	mov    -0x38(%ebp),%ecx
e0102505:	29 c1                	sub    %eax,%ecx
e0102507:	89 4d e0             	mov    %ecx,-0x20(%ebp)
e010250a:	89 5d 0c             	mov    %ebx,0xc(%ebp)
e010250d:	8b 5d d0             	mov    -0x30(%ebp),%ebx
e0102510:	eb 15                	jmp    e0102527 <vprintfmt+0x1ec>
				if (altflag && (ch < ' ' || ch > '~'))
e0102512:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
e0102516:	75 29                	jne    e0102541 <vprintfmt+0x206>
					putch(ch, putdat);
e0102518:	83 ec 08             	sub    $0x8,%esp
e010251b:	ff 75 0c             	pushl  0xc(%ebp)
e010251e:	50                   	push   %eax
e010251f:	ff d6                	call   *%esi
e0102521:	83 c4 10             	add    $0x10,%esp
			for (; (ch = *p++) != '\0' && (precision < 0 || --precision >= 0); width--)
e0102524:	ff 4d e0             	decl   -0x20(%ebp)
e0102527:	47                   	inc    %edi
e0102528:	8a 57 ff             	mov    -0x1(%edi),%dl
e010252b:	0f be c2             	movsbl %dl,%eax
e010252e:	85 c0                	test   %eax,%eax
e0102530:	74 53                	je     e0102585 <vprintfmt+0x24a>
e0102532:	85 db                	test   %ebx,%ebx
e0102534:	78 dc                	js     e0102512 <vprintfmt+0x1d7>
e0102536:	4b                   	dec    %ebx
e0102537:	79 d9                	jns    e0102512 <vprintfmt+0x1d7>
e0102539:	8b 5d 0c             	mov    0xc(%ebp),%ebx
e010253c:	8b 7d e0             	mov    -0x20(%ebp),%edi
e010253f:	eb 35                	jmp    e0102576 <vprintfmt+0x23b>
				if (altflag && (ch < ' ' || ch > '~'))
e0102541:	0f be d2             	movsbl %dl,%edx
e0102544:	83 ea 20             	sub    $0x20,%edx
e0102547:	83 fa 5e             	cmp    $0x5e,%edx
e010254a:	76 cc                	jbe    e0102518 <vprintfmt+0x1dd>
					putch('?', putdat);
e010254c:	83 ec 08             	sub    $0x8,%esp
e010254f:	ff 75 0c             	pushl  0xc(%ebp)
e0102552:	6a 3f                	push   $0x3f
e0102554:	ff d6                	call   *%esi
e0102556:	83 c4 10             	add    $0x10,%esp
e0102559:	eb c9                	jmp    e0102524 <vprintfmt+0x1e9>
e010255b:	b8 00 00 00 00       	mov    $0x0,%eax
e0102560:	eb a0                	jmp    e0102502 <vprintfmt+0x1c7>
e0102562:	89 5d 0c             	mov    %ebx,0xc(%ebp)
e0102565:	8b 5d d0             	mov    -0x30(%ebp),%ebx
e0102568:	eb bd                	jmp    e0102527 <vprintfmt+0x1ec>
				putch(' ', putdat);
e010256a:	83 ec 08             	sub    $0x8,%esp
e010256d:	53                   	push   %ebx
e010256e:	6a 20                	push   $0x20
e0102570:	ff d6                	call   *%esi
			for (; width > 0; width--)
e0102572:	4f                   	dec    %edi
e0102573:	83 c4 10             	add    $0x10,%esp
e0102576:	85 ff                	test   %edi,%edi
e0102578:	7f f0                	jg     e010256a <vprintfmt+0x22f>
			if ((p = va_arg(ap, char *)) == NULL)
e010257a:	8b 45 cc             	mov    -0x34(%ebp),%eax
e010257d:	89 45 14             	mov    %eax,0x14(%ebp)
e0102580:	e9 76 01 00 00       	jmp    e01026fb <vprintfmt+0x3c0>
e0102585:	8b 7d e0             	mov    -0x20(%ebp),%edi
e0102588:	8b 5d 0c             	mov    0xc(%ebp),%ebx
e010258b:	eb e9                	jmp    e0102576 <vprintfmt+0x23b>
	if (lflag >= 2)
e010258d:	83 f9 01             	cmp    $0x1,%ecx
e0102590:	7e 3f                	jle    e01025d1 <vprintfmt+0x296>
		return va_arg(*ap, long long);
e0102592:	8b 45 14             	mov    0x14(%ebp),%eax
e0102595:	8b 50 04             	mov    0x4(%eax),%edx
e0102598:	8b 00                	mov    (%eax),%eax
e010259a:	89 45 d8             	mov    %eax,-0x28(%ebp)
e010259d:	89 55 dc             	mov    %edx,-0x24(%ebp)
e01025a0:	8b 45 14             	mov    0x14(%ebp),%eax
e01025a3:	8d 40 08             	lea    0x8(%eax),%eax
e01025a6:	89 45 14             	mov    %eax,0x14(%ebp)
			if ((long long) num < 0) {
e01025a9:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
e01025ad:	79 5c                	jns    e010260b <vprintfmt+0x2d0>
				putch('-', putdat);
e01025af:	83 ec 08             	sub    $0x8,%esp
e01025b2:	53                   	push   %ebx
e01025b3:	6a 2d                	push   $0x2d
e01025b5:	ff d6                	call   *%esi
				num = -(long long) num;
e01025b7:	8b 55 d8             	mov    -0x28(%ebp),%edx
e01025ba:	8b 4d dc             	mov    -0x24(%ebp),%ecx
e01025bd:	f7 da                	neg    %edx
e01025bf:	83 d1 00             	adc    $0x0,%ecx
e01025c2:	f7 d9                	neg    %ecx
e01025c4:	83 c4 10             	add    $0x10,%esp
			base = 10;
e01025c7:	b8 0a 00 00 00       	mov    $0xa,%eax
e01025cc:	e9 10 01 00 00       	jmp    e01026e1 <vprintfmt+0x3a6>
	else if (lflag)
e01025d1:	85 c9                	test   %ecx,%ecx
e01025d3:	75 1b                	jne    e01025f0 <vprintfmt+0x2b5>
		return va_arg(*ap, int);
e01025d5:	8b 45 14             	mov    0x14(%ebp),%eax
e01025d8:	8b 00                	mov    (%eax),%eax
e01025da:	89 45 d8             	mov    %eax,-0x28(%ebp)
e01025dd:	89 c1                	mov    %eax,%ecx
e01025df:	c1 f9 1f             	sar    $0x1f,%ecx
e01025e2:	89 4d dc             	mov    %ecx,-0x24(%ebp)
e01025e5:	8b 45 14             	mov    0x14(%ebp),%eax
e01025e8:	8d 40 04             	lea    0x4(%eax),%eax
e01025eb:	89 45 14             	mov    %eax,0x14(%ebp)
e01025ee:	eb b9                	jmp    e01025a9 <vprintfmt+0x26e>
		return va_arg(*ap, long);
e01025f0:	8b 45 14             	mov    0x14(%ebp),%eax
e01025f3:	8b 00                	mov    (%eax),%eax
e01025f5:	89 45 d8             	mov    %eax,-0x28(%ebp)
e01025f8:	89 c1                	mov    %eax,%ecx
e01025fa:	c1 f9 1f             	sar    $0x1f,%ecx
e01025fd:	89 4d dc             	mov    %ecx,-0x24(%ebp)
e0102600:	8b 45 14             	mov    0x14(%ebp),%eax
e0102603:	8d 40 04             	lea    0x4(%eax),%eax
e0102606:	89 45 14             	mov    %eax,0x14(%ebp)
e0102609:	eb 9e                	jmp    e01025a9 <vprintfmt+0x26e>
			num = getint(&ap, lflag);
e010260b:	8b 55 d8             	mov    -0x28(%ebp),%edx
e010260e:	8b 4d dc             	mov    -0x24(%ebp),%ecx
			base = 10;
e0102611:	b8 0a 00 00 00       	mov    $0xa,%eax
e0102616:	e9 c6 00 00 00       	jmp    e01026e1 <vprintfmt+0x3a6>
	if (lflag >= 2)
e010261b:	83 f9 01             	cmp    $0x1,%ecx
e010261e:	7e 18                	jle    e0102638 <vprintfmt+0x2fd>
		return va_arg(*ap, unsigned long long);
e0102620:	8b 45 14             	mov    0x14(%ebp),%eax
e0102623:	8b 10                	mov    (%eax),%edx
e0102625:	8b 48 04             	mov    0x4(%eax),%ecx
e0102628:	8d 40 08             	lea    0x8(%eax),%eax
e010262b:	89 45 14             	mov    %eax,0x14(%ebp)
			base = 10;
e010262e:	b8 0a 00 00 00       	mov    $0xa,%eax
e0102633:	e9 a9 00 00 00       	jmp    e01026e1 <vprintfmt+0x3a6>
	else if (lflag)
e0102638:	85 c9                	test   %ecx,%ecx
e010263a:	75 1a                	jne    e0102656 <vprintfmt+0x31b>
		return va_arg(*ap, unsigned int);
e010263c:	8b 45 14             	mov    0x14(%ebp),%eax
e010263f:	8b 10                	mov    (%eax),%edx
e0102641:	b9 00 00 00 00       	mov    $0x0,%ecx
e0102646:	8d 40 04             	lea    0x4(%eax),%eax
e0102649:	89 45 14             	mov    %eax,0x14(%ebp)
			base = 10;
e010264c:	b8 0a 00 00 00       	mov    $0xa,%eax
e0102651:	e9 8b 00 00 00       	jmp    e01026e1 <vprintfmt+0x3a6>
		return va_arg(*ap, unsigned long);
e0102656:	8b 45 14             	mov    0x14(%ebp),%eax
e0102659:	8b 10                	mov    (%eax),%edx
e010265b:	b9 00 00 00 00       	mov    $0x0,%ecx
e0102660:	8d 40 04             	lea    0x4(%eax),%eax
e0102663:	89 45 14             	mov    %eax,0x14(%ebp)
			base = 10;
e0102666:	b8 0a 00 00 00       	mov    $0xa,%eax
e010266b:	eb 74                	jmp    e01026e1 <vprintfmt+0x3a6>
	if (lflag >= 2)
e010266d:	83 f9 01             	cmp    $0x1,%ecx
e0102670:	7e 15                	jle    e0102687 <vprintfmt+0x34c>
		return va_arg(*ap, unsigned long long);
e0102672:	8b 45 14             	mov    0x14(%ebp),%eax
e0102675:	8b 10                	mov    (%eax),%edx
e0102677:	8b 48 04             	mov    0x4(%eax),%ecx
e010267a:	8d 40 08             	lea    0x8(%eax),%eax
e010267d:	89 45 14             	mov    %eax,0x14(%ebp)
			base = 8;
e0102680:	b8 08 00 00 00       	mov    $0x8,%eax
e0102685:	eb 5a                	jmp    e01026e1 <vprintfmt+0x3a6>
	else if (lflag)
e0102687:	85 c9                	test   %ecx,%ecx
e0102689:	75 17                	jne    e01026a2 <vprintfmt+0x367>
		return va_arg(*ap, unsigned int);
e010268b:	8b 45 14             	mov    0x14(%ebp),%eax
e010268e:	8b 10                	mov    (%eax),%edx
e0102690:	b9 00 00 00 00       	mov    $0x0,%ecx
e0102695:	8d 40 04             	lea    0x4(%eax),%eax
e0102698:	89 45 14             	mov    %eax,0x14(%ebp)
			base = 8;
e010269b:	b8 08 00 00 00       	mov    $0x8,%eax
e01026a0:	eb 3f                	jmp    e01026e1 <vprintfmt+0x3a6>
		return va_arg(*ap, unsigned long);
e01026a2:	8b 45 14             	mov    0x14(%ebp),%eax
e01026a5:	8b 10                	mov    (%eax),%edx
e01026a7:	b9 00 00 00 00       	mov    $0x0,%ecx
e01026ac:	8d 40 04             	lea    0x4(%eax),%eax
e01026af:	89 45 14             	mov    %eax,0x14(%ebp)
			base = 8;
e01026b2:	b8 08 00 00 00       	mov    $0x8,%eax
e01026b7:	eb 28                	jmp    e01026e1 <vprintfmt+0x3a6>
			putch('0', putdat);
e01026b9:	83 ec 08             	sub    $0x8,%esp
e01026bc:	53                   	push   %ebx
e01026bd:	6a 30                	push   $0x30
e01026bf:	ff d6                	call   *%esi
			putch('x', putdat);
e01026c1:	83 c4 08             	add    $0x8,%esp
e01026c4:	53                   	push   %ebx
e01026c5:	6a 78                	push   $0x78
e01026c7:	ff d6                	call   *%esi
			num = (unsigned long long)
e01026c9:	8b 45 14             	mov    0x14(%ebp),%eax
e01026cc:	8b 10                	mov    (%eax),%edx
e01026ce:	b9 00 00 00 00       	mov    $0x0,%ecx
			goto number;
e01026d3:	83 c4 10             	add    $0x10,%esp
				(uintptr_t) va_arg(ap, void *);
e01026d6:	8d 40 04             	lea    0x4(%eax),%eax
e01026d9:	89 45 14             	mov    %eax,0x14(%ebp)
			base = 16;
e01026dc:	b8 10 00 00 00       	mov    $0x10,%eax
			printnum(putch, putdat, num, base, width, padc);
e01026e1:	83 ec 0c             	sub    $0xc,%esp
e01026e4:	0f be 7d d4          	movsbl -0x2c(%ebp),%edi
e01026e8:	57                   	push   %edi
e01026e9:	ff 75 e0             	pushl  -0x20(%ebp)
e01026ec:	50                   	push   %eax
e01026ed:	51                   	push   %ecx
e01026ee:	52                   	push   %edx
e01026ef:	89 da                	mov    %ebx,%edx
e01026f1:	89 f0                	mov    %esi,%eax
e01026f3:	e8 5d fb ff ff       	call   e0102255 <printnum>
			break;
e01026f8:	83 c4 20             	add    $0x20,%esp
			err = va_arg(ap, int);
e01026fb:	8b 7d e4             	mov    -0x1c(%ebp),%edi
		while ((ch = *(unsigned char *) fmt++) != '%') {
e01026fe:	47                   	inc    %edi
e01026ff:	0f b6 47 ff          	movzbl -0x1(%edi),%eax
e0102703:	83 f8 25             	cmp    $0x25,%eax
e0102706:	0f 84 46 fc ff ff    	je     e0102352 <vprintfmt+0x17>
			if (ch == '\0')
e010270c:	85 c0                	test   %eax,%eax
e010270e:	0f 84 89 00 00 00    	je     e010279d <vprintfmt+0x462>
			putch(ch, putdat);
e0102714:	83 ec 08             	sub    $0x8,%esp
e0102717:	53                   	push   %ebx
e0102718:	50                   	push   %eax
e0102719:	ff d6                	call   *%esi
e010271b:	83 c4 10             	add    $0x10,%esp
e010271e:	eb de                	jmp    e01026fe <vprintfmt+0x3c3>
	if (lflag >= 2)
e0102720:	83 f9 01             	cmp    $0x1,%ecx
e0102723:	7e 15                	jle    e010273a <vprintfmt+0x3ff>
		return va_arg(*ap, unsigned long long);
e0102725:	8b 45 14             	mov    0x14(%ebp),%eax
e0102728:	8b 10                	mov    (%eax),%edx
e010272a:	8b 48 04             	mov    0x4(%eax),%ecx
e010272d:	8d 40 08             	lea    0x8(%eax),%eax
e0102730:	89 45 14             	mov    %eax,0x14(%ebp)
			base = 16;
e0102733:	b8 10 00 00 00       	mov    $0x10,%eax
e0102738:	eb a7                	jmp    e01026e1 <vprintfmt+0x3a6>
	else if (lflag)
e010273a:	85 c9                	test   %ecx,%ecx
e010273c:	75 17                	jne    e0102755 <vprintfmt+0x41a>
		return va_arg(*ap, unsigned int);
e010273e:	8b 45 14             	mov    0x14(%ebp),%eax
e0102741:	8b 10                	mov    (%eax),%edx
e0102743:	b9 00 00 00 00       	mov    $0x0,%ecx
e0102748:	8d 40 04             	lea    0x4(%eax),%eax
e010274b:	89 45 14             	mov    %eax,0x14(%ebp)
			base = 16;
e010274e:	b8 10 00 00 00       	mov    $0x10,%eax
e0102753:	eb 8c                	jmp    e01026e1 <vprintfmt+0x3a6>
		return va_arg(*ap, unsigned long);
e0102755:	8b 45 14             	mov    0x14(%ebp),%eax
e0102758:	8b 10                	mov    (%eax),%edx
e010275a:	b9 00 00 00 00       	mov    $0x0,%ecx
e010275f:	8d 40 04             	lea    0x4(%eax),%eax
e0102762:	89 45 14             	mov    %eax,0x14(%ebp)
			base = 16;
e0102765:	b8 10 00 00 00       	mov    $0x10,%eax
e010276a:	e9 72 ff ff ff       	jmp    e01026e1 <vprintfmt+0x3a6>
			putch(ch, putdat);
e010276f:	83 ec 08             	sub    $0x8,%esp
e0102772:	53                   	push   %ebx
e0102773:	6a 25                	push   $0x25
e0102775:	ff d6                	call   *%esi
			break;
e0102777:	83 c4 10             	add    $0x10,%esp
e010277a:	e9 7c ff ff ff       	jmp    e01026fb <vprintfmt+0x3c0>
			putch('%', putdat);
e010277f:	83 ec 08             	sub    $0x8,%esp
e0102782:	53                   	push   %ebx
e0102783:	6a 25                	push   $0x25
e0102785:	ff d6                	call   *%esi
			for (fmt--; fmt[-1] != '%'; fmt--)
e0102787:	83 c4 10             	add    $0x10,%esp
e010278a:	89 f8                	mov    %edi,%eax
e010278c:	eb 01                	jmp    e010278f <vprintfmt+0x454>
e010278e:	48                   	dec    %eax
e010278f:	80 78 ff 25          	cmpb   $0x25,-0x1(%eax)
e0102793:	75 f9                	jne    e010278e <vprintfmt+0x453>
e0102795:	89 45 e4             	mov    %eax,-0x1c(%ebp)
e0102798:	e9 5e ff ff ff       	jmp    e01026fb <vprintfmt+0x3c0>
}
e010279d:	8d 65 f4             	lea    -0xc(%ebp),%esp
e01027a0:	5b                   	pop    %ebx
e01027a1:	5e                   	pop    %esi
e01027a2:	5f                   	pop    %edi
e01027a3:	5d                   	pop    %ebp
e01027a4:	c3                   	ret    

e01027a5 <vsnprintf>:

int
vsnprintf(char *buf, int n, const char *fmt, va_list ap)
{
e01027a5:	55                   	push   %ebp
e01027a6:	89 e5                	mov    %esp,%ebp
e01027a8:	83 ec 18             	sub    $0x18,%esp
e01027ab:	8b 45 08             	mov    0x8(%ebp),%eax
e01027ae:	8b 55 0c             	mov    0xc(%ebp),%edx
	struct sprintbuf b = {buf, buf+n-1, 0};
e01027b1:	89 45 ec             	mov    %eax,-0x14(%ebp)
e01027b4:	8d 4c 10 ff          	lea    -0x1(%eax,%edx,1),%ecx
e01027b8:	89 4d f0             	mov    %ecx,-0x10(%ebp)
e01027bb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)

	if (buf == NULL || n < 1)
e01027c2:	85 c0                	test   %eax,%eax
e01027c4:	74 26                	je     e01027ec <vsnprintf+0x47>
e01027c6:	85 d2                	test   %edx,%edx
e01027c8:	7e 29                	jle    e01027f3 <vsnprintf+0x4e>
		return -E_INVAL;

	// print the string to the buffer
	vprintfmt((void*)sprintputch, &b, fmt, ap);
e01027ca:	ff 75 14             	pushl  0x14(%ebp)
e01027cd:	ff 75 10             	pushl  0x10(%ebp)
e01027d0:	8d 45 ec             	lea    -0x14(%ebp),%eax
e01027d3:	50                   	push   %eax
e01027d4:	68 02 23 10 e0       	push   $0xe0102302
e01027d9:	e8 5d fb ff ff       	call   e010233b <vprintfmt>

	// null terminate the buffer
	*b.buf = '\0';
e01027de:	8b 45 ec             	mov    -0x14(%ebp),%eax
e01027e1:	c6 00 00             	movb   $0x0,(%eax)

	return b.cnt;
e01027e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
e01027e7:	83 c4 10             	add    $0x10,%esp
}
e01027ea:	c9                   	leave  
e01027eb:	c3                   	ret    
		return -E_INVAL;
e01027ec:	b8 fd ff ff ff       	mov    $0xfffffffd,%eax
e01027f1:	eb f7                	jmp    e01027ea <vsnprintf+0x45>
e01027f3:	b8 fd ff ff ff       	mov    $0xfffffffd,%eax
e01027f8:	eb f0                	jmp    e01027ea <vsnprintf+0x45>

e01027fa <snprintf>:

int
snprintf(char *buf, int n, const char *fmt, ...)
{
e01027fa:	55                   	push   %ebp
e01027fb:	89 e5                	mov    %esp,%ebp
e01027fd:	83 ec 08             	sub    $0x8,%esp
	va_list ap;
	int rc;

	va_start(ap, fmt);
e0102800:	8d 45 14             	lea    0x14(%ebp),%eax
	rc = vsnprintf(buf, n, fmt, ap);
e0102803:	50                   	push   %eax
e0102804:	ff 75 10             	pushl  0x10(%ebp)
e0102807:	ff 75 0c             	pushl  0xc(%ebp)
e010280a:	ff 75 08             	pushl  0x8(%ebp)
e010280d:	e8 93 ff ff ff       	call   e01027a5 <vsnprintf>
	va_end(ap);

	return rc;
}
e0102812:	c9                   	leave  
e0102813:	c3                   	ret    

e0102814 <readline>:
#define BUFLEN 1024
static char buf[BUFLEN];

char *
readline(const char *prompt)
{
e0102814:	55                   	push   %ebp
e0102815:	89 e5                	mov    %esp,%ebp
e0102817:	57                   	push   %edi
e0102818:	56                   	push   %esi
e0102819:	53                   	push   %ebx
e010281a:	83 ec 0c             	sub    $0xc,%esp
e010281d:	8b 45 08             	mov    0x8(%ebp),%eax
	int i, c, echoing;

	if (prompt != NULL)
e0102820:	85 c0                	test   %eax,%eax
e0102822:	74 11                	je     e0102835 <readline+0x21>
		cprintf("%s", prompt);
e0102824:	83 ec 08             	sub    $0x8,%esp
e0102827:	50                   	push   %eax
e0102828:	68 88 38 10 e0       	push   $0xe0103888
e010282d:	e8 d4 f1 ff ff       	call   e0101a06 <cprintf>
e0102832:	83 c4 10             	add    $0x10,%esp

	i = 0;
	echoing = iscons(0);
e0102835:	83 ec 0c             	sub    $0xc,%esp
e0102838:	6a 00                	push   $0x0
e010283a:	e8 0b de ff ff       	call   e010064a <iscons>
e010283f:	89 c7                	mov    %eax,%edi
e0102841:	83 c4 10             	add    $0x10,%esp
	i = 0;
e0102844:	be 00 00 00 00       	mov    $0x0,%esi
e0102849:	eb 6f                	jmp    e01028ba <readline+0xa6>
	while (1) {
		c = getchar();
		if (c < 0) {
			cprintf("read error: %i\n", c);
e010284b:	83 ec 08             	sub    $0x8,%esp
e010284e:	50                   	push   %eax
e010284f:	68 00 41 10 e0       	push   $0xe0104100
e0102854:	e8 ad f1 ff ff       	call   e0101a06 <cprintf>
			return NULL;
e0102859:	83 c4 10             	add    $0x10,%esp
e010285c:	b8 00 00 00 00       	mov    $0x0,%eax
				cputchar('\n');
			buf[i] = 0;
			return buf;
		}
	}
}
e0102861:	8d 65 f4             	lea    -0xc(%ebp),%esp
e0102864:	5b                   	pop    %ebx
e0102865:	5e                   	pop    %esi
e0102866:	5f                   	pop    %edi
e0102867:	5d                   	pop    %ebp
e0102868:	c3                   	ret    
				cputchar('\b');
e0102869:	83 ec 0c             	sub    $0xc,%esp
e010286c:	6a 08                	push   $0x8
e010286e:	e8 b6 dd ff ff       	call   e0100629 <cputchar>
e0102873:	83 c4 10             	add    $0x10,%esp
e0102876:	eb 41                	jmp    e01028b9 <readline+0xa5>
				cputchar(c);
e0102878:	83 ec 0c             	sub    $0xc,%esp
e010287b:	53                   	push   %ebx
e010287c:	e8 a8 dd ff ff       	call   e0100629 <cputchar>
e0102881:	83 c4 10             	add    $0x10,%esp
e0102884:	eb 5a                	jmp    e01028e0 <readline+0xcc>
		} else if (c == '\n' || c == '\r') {
e0102886:	83 fb 0a             	cmp    $0xa,%ebx
e0102889:	74 05                	je     e0102890 <readline+0x7c>
e010288b:	83 fb 0d             	cmp    $0xd,%ebx
e010288e:	75 2a                	jne    e01028ba <readline+0xa6>
			if (echoing)
e0102890:	85 ff                	test   %edi,%edi
e0102892:	75 0e                	jne    e01028a2 <readline+0x8e>
			buf[i] = 0;
e0102894:	c6 86 e0 bd 11 e0 00 	movb   $0x0,-0x1fee4220(%esi)
			return buf;
e010289b:	b8 e0 bd 11 e0       	mov    $0xe011bde0,%eax
e01028a0:	eb bf                	jmp    e0102861 <readline+0x4d>
				cputchar('\n');
e01028a2:	83 ec 0c             	sub    $0xc,%esp
e01028a5:	6a 0a                	push   $0xa
e01028a7:	e8 7d dd ff ff       	call   e0100629 <cputchar>
e01028ac:	83 c4 10             	add    $0x10,%esp
e01028af:	eb e3                	jmp    e0102894 <readline+0x80>
		} else if ((c == '\b' || c == '\x7f') && i > 0) {
e01028b1:	85 f6                	test   %esi,%esi
e01028b3:	7e 3c                	jle    e01028f1 <readline+0xdd>
			if (echoing)
e01028b5:	85 ff                	test   %edi,%edi
e01028b7:	75 b0                	jne    e0102869 <readline+0x55>
			i--;
e01028b9:	4e                   	dec    %esi
		c = getchar();
e01028ba:	e8 7a dd ff ff       	call   e0100639 <getchar>
e01028bf:	89 c3                	mov    %eax,%ebx
		if (c < 0) {
e01028c1:	85 c0                	test   %eax,%eax
e01028c3:	78 86                	js     e010284b <readline+0x37>
		} else if ((c == '\b' || c == '\x7f') && i > 0) {
e01028c5:	83 f8 08             	cmp    $0x8,%eax
e01028c8:	74 21                	je     e01028eb <readline+0xd7>
e01028ca:	83 f8 7f             	cmp    $0x7f,%eax
e01028cd:	74 e2                	je     e01028b1 <readline+0x9d>
		} else if (c >= ' ' && i < BUFLEN-1) {
e01028cf:	83 f8 1f             	cmp    $0x1f,%eax
e01028d2:	7e b2                	jle    e0102886 <readline+0x72>
e01028d4:	81 fe fe 03 00 00    	cmp    $0x3fe,%esi
e01028da:	7f aa                	jg     e0102886 <readline+0x72>
			if (echoing)
e01028dc:	85 ff                	test   %edi,%edi
e01028de:	75 98                	jne    e0102878 <readline+0x64>
			buf[i++] = c;
e01028e0:	88 9e e0 bd 11 e0    	mov    %bl,-0x1fee4220(%esi)
e01028e6:	8d 76 01             	lea    0x1(%esi),%esi
e01028e9:	eb cf                	jmp    e01028ba <readline+0xa6>
		} else if ((c == '\b' || c == '\x7f') && i > 0) {
e01028eb:	85 f6                	test   %esi,%esi
e01028ed:	7e cb                	jle    e01028ba <readline+0xa6>
e01028ef:	eb c4                	jmp    e01028b5 <readline+0xa1>
		} else if (c >= ' ' && i < BUFLEN-1) {
e01028f1:	81 fe fe 03 00 00    	cmp    $0x3fe,%esi
e01028f7:	7e e3                	jle    e01028dc <readline+0xc8>
e01028f9:	eb bf                	jmp    e01028ba <readline+0xa6>

e01028fb <strlen>:
// Primespipe runs 3x faster this way.
#define ASM 1

int
strlen(const char *s)
{
e01028fb:	55                   	push   %ebp
e01028fc:	89 e5                	mov    %esp,%ebp
e01028fe:	8b 55 08             	mov    0x8(%ebp),%edx
	int n;

	for (n = 0; *s != '\0'; s++)
e0102901:	b8 00 00 00 00       	mov    $0x0,%eax
e0102906:	eb 01                	jmp    e0102909 <strlen+0xe>
		n++;
e0102908:	40                   	inc    %eax
	for (n = 0; *s != '\0'; s++)
e0102909:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
e010290d:	75 f9                	jne    e0102908 <strlen+0xd>
	return n;
}
e010290f:	5d                   	pop    %ebp
e0102910:	c3                   	ret    

e0102911 <strnlen>:

int
strnlen(const char *s, size_t size)
{
e0102911:	55                   	push   %ebp
e0102912:	89 e5                	mov    %esp,%ebp
e0102914:	8b 4d 08             	mov    0x8(%ebp),%ecx
e0102917:	8b 55 0c             	mov    0xc(%ebp),%edx
	int n;

	for (n = 0; size > 0 && *s != '\0'; s++, size--)
e010291a:	b8 00 00 00 00       	mov    $0x0,%eax
e010291f:	eb 01                	jmp    e0102922 <strnlen+0x11>
		n++;
e0102921:	40                   	inc    %eax
	for (n = 0; size > 0 && *s != '\0'; s++, size--)
e0102922:	39 d0                	cmp    %edx,%eax
e0102924:	74 06                	je     e010292c <strnlen+0x1b>
e0102926:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
e010292a:	75 f5                	jne    e0102921 <strnlen+0x10>
	return n;
}
e010292c:	5d                   	pop    %ebp
e010292d:	c3                   	ret    

e010292e <strcpy>:

char *
strcpy(char *dst, const char *src)
{
e010292e:	55                   	push   %ebp
e010292f:	89 e5                	mov    %esp,%ebp
e0102931:	53                   	push   %ebx
e0102932:	8b 45 08             	mov    0x8(%ebp),%eax
e0102935:	8b 4d 0c             	mov    0xc(%ebp),%ecx
	char *ret;

	ret = dst;
	while ((*dst++ = *src++) != '\0')
e0102938:	89 c2                	mov    %eax,%edx
e010293a:	41                   	inc    %ecx
e010293b:	42                   	inc    %edx
e010293c:	8a 59 ff             	mov    -0x1(%ecx),%bl
e010293f:	88 5a ff             	mov    %bl,-0x1(%edx)
e0102942:	84 db                	test   %bl,%bl
e0102944:	75 f4                	jne    e010293a <strcpy+0xc>
		/* do nothing */;
	return ret;
}
e0102946:	5b                   	pop    %ebx
e0102947:	5d                   	pop    %ebp
e0102948:	c3                   	ret    

e0102949 <strcat>:

char *
strcat(char *dst, const char *src)
{
e0102949:	55                   	push   %ebp
e010294a:	89 e5                	mov    %esp,%ebp
e010294c:	53                   	push   %ebx
e010294d:	8b 5d 08             	mov    0x8(%ebp),%ebx
	int len = strlen(dst);
e0102950:	53                   	push   %ebx
e0102951:	e8 a5 ff ff ff       	call   e01028fb <strlen>
e0102956:	83 c4 04             	add    $0x4,%esp
	strcpy(dst + len, src);
e0102959:	ff 75 0c             	pushl  0xc(%ebp)
e010295c:	01 d8                	add    %ebx,%eax
e010295e:	50                   	push   %eax
e010295f:	e8 ca ff ff ff       	call   e010292e <strcpy>
	return dst;
}
e0102964:	89 d8                	mov    %ebx,%eax
e0102966:	8b 5d fc             	mov    -0x4(%ebp),%ebx
e0102969:	c9                   	leave  
e010296a:	c3                   	ret    

e010296b <strncpy>:

char *
strncpy(char *dst, const char *src, size_t size) {
e010296b:	55                   	push   %ebp
e010296c:	89 e5                	mov    %esp,%ebp
e010296e:	56                   	push   %esi
e010296f:	53                   	push   %ebx
e0102970:	8b 75 08             	mov    0x8(%ebp),%esi
e0102973:	8b 4d 0c             	mov    0xc(%ebp),%ecx
e0102976:	89 f3                	mov    %esi,%ebx
e0102978:	03 5d 10             	add    0x10(%ebp),%ebx
	size_t i;
	char *ret;

	ret = dst;
	for (i = 0; i < size; i++) {
e010297b:	89 f2                	mov    %esi,%edx
e010297d:	39 da                	cmp    %ebx,%edx
e010297f:	74 0e                	je     e010298f <strncpy+0x24>
		*dst++ = *src;
e0102981:	42                   	inc    %edx
e0102982:	8a 01                	mov    (%ecx),%al
e0102984:	88 42 ff             	mov    %al,-0x1(%edx)
		// If strlen(src) < size, null-pad 'dst' out to 'size' chars
		if (*src != '\0')
e0102987:	80 39 00             	cmpb   $0x0,(%ecx)
e010298a:	74 f1                	je     e010297d <strncpy+0x12>
			src++;
e010298c:	41                   	inc    %ecx
e010298d:	eb ee                	jmp    e010297d <strncpy+0x12>
	}
	return ret;
}
e010298f:	89 f0                	mov    %esi,%eax
e0102991:	5b                   	pop    %ebx
e0102992:	5e                   	pop    %esi
e0102993:	5d                   	pop    %ebp
e0102994:	c3                   	ret    

e0102995 <strlcpy>:

size_t
strlcpy(char *dst, const char *src, size_t size)
{
e0102995:	55                   	push   %ebp
e0102996:	89 e5                	mov    %esp,%ebp
e0102998:	56                   	push   %esi
e0102999:	53                   	push   %ebx
e010299a:	8b 75 08             	mov    0x8(%ebp),%esi
e010299d:	8b 55 0c             	mov    0xc(%ebp),%edx
e01029a0:	8b 45 10             	mov    0x10(%ebp),%eax
	char *dst_in;

	dst_in = dst;
	if (size > 0) {
e01029a3:	85 c0                	test   %eax,%eax
e01029a5:	74 20                	je     e01029c7 <strlcpy+0x32>
e01029a7:	8d 5c 06 ff          	lea    -0x1(%esi,%eax,1),%ebx
e01029ab:	89 f0                	mov    %esi,%eax
e01029ad:	eb 05                	jmp    e01029b4 <strlcpy+0x1f>
		while (--size > 0 && *src != '\0')
			*dst++ = *src++;
e01029af:	42                   	inc    %edx
e01029b0:	40                   	inc    %eax
e01029b1:	88 48 ff             	mov    %cl,-0x1(%eax)
		while (--size > 0 && *src != '\0')
e01029b4:	39 d8                	cmp    %ebx,%eax
e01029b6:	74 06                	je     e01029be <strlcpy+0x29>
e01029b8:	8a 0a                	mov    (%edx),%cl
e01029ba:	84 c9                	test   %cl,%cl
e01029bc:	75 f1                	jne    e01029af <strlcpy+0x1a>
		*dst = '\0';
e01029be:	c6 00 00             	movb   $0x0,(%eax)
	}
	return dst - dst_in;
e01029c1:	29 f0                	sub    %esi,%eax
}
e01029c3:	5b                   	pop    %ebx
e01029c4:	5e                   	pop    %esi
e01029c5:	5d                   	pop    %ebp
e01029c6:	c3                   	ret    
e01029c7:	89 f0                	mov    %esi,%eax
e01029c9:	eb f6                	jmp    e01029c1 <strlcpy+0x2c>

e01029cb <strcmp>:

int
strcmp(const char *p, const char *q)
{
e01029cb:	55                   	push   %ebp
e01029cc:	89 e5                	mov    %esp,%ebp
e01029ce:	8b 4d 08             	mov    0x8(%ebp),%ecx
e01029d1:	8b 55 0c             	mov    0xc(%ebp),%edx
	while (*p && *p == *q)
e01029d4:	eb 02                	jmp    e01029d8 <strcmp+0xd>
		p++, q++;
e01029d6:	41                   	inc    %ecx
e01029d7:	42                   	inc    %edx
	while (*p && *p == *q)
e01029d8:	8a 01                	mov    (%ecx),%al
e01029da:	84 c0                	test   %al,%al
e01029dc:	74 04                	je     e01029e2 <strcmp+0x17>
e01029de:	3a 02                	cmp    (%edx),%al
e01029e0:	74 f4                	je     e01029d6 <strcmp+0xb>
	return (int) ((unsigned char) *p - (unsigned char) *q);
e01029e2:	0f b6 c0             	movzbl %al,%eax
e01029e5:	0f b6 12             	movzbl (%edx),%edx
e01029e8:	29 d0                	sub    %edx,%eax
}
e01029ea:	5d                   	pop    %ebp
e01029eb:	c3                   	ret    

e01029ec <strncmp>:

int
strncmp(const char *p, const char *q, size_t n)
{
e01029ec:	55                   	push   %ebp
e01029ed:	89 e5                	mov    %esp,%ebp
e01029ef:	53                   	push   %ebx
e01029f0:	8b 45 08             	mov    0x8(%ebp),%eax
e01029f3:	8b 55 0c             	mov    0xc(%ebp),%edx
e01029f6:	89 c3                	mov    %eax,%ebx
e01029f8:	03 5d 10             	add    0x10(%ebp),%ebx
	while (n > 0 && *p && *p == *q)
e01029fb:	eb 02                	jmp    e01029ff <strncmp+0x13>
		n--, p++, q++;
e01029fd:	40                   	inc    %eax
e01029fe:	42                   	inc    %edx
	while (n > 0 && *p && *p == *q)
e01029ff:	39 d8                	cmp    %ebx,%eax
e0102a01:	74 15                	je     e0102a18 <strncmp+0x2c>
e0102a03:	8a 08                	mov    (%eax),%cl
e0102a05:	84 c9                	test   %cl,%cl
e0102a07:	74 04                	je     e0102a0d <strncmp+0x21>
e0102a09:	3a 0a                	cmp    (%edx),%cl
e0102a0b:	74 f0                	je     e01029fd <strncmp+0x11>
	if (n == 0)
		return 0;
	else
		return (int) ((unsigned char) *p - (unsigned char) *q);
e0102a0d:	0f b6 00             	movzbl (%eax),%eax
e0102a10:	0f b6 12             	movzbl (%edx),%edx
e0102a13:	29 d0                	sub    %edx,%eax
}
e0102a15:	5b                   	pop    %ebx
e0102a16:	5d                   	pop    %ebp
e0102a17:	c3                   	ret    
		return 0;
e0102a18:	b8 00 00 00 00       	mov    $0x0,%eax
e0102a1d:	eb f6                	jmp    e0102a15 <strncmp+0x29>

e0102a1f <strchr>:

// Return a pointer to the first occurrence of 'c' in 's',
// or a null pointer if the string has no 'c'.
char *
strchr(const char *s, char c)
{
e0102a1f:	55                   	push   %ebp
e0102a20:	89 e5                	mov    %esp,%ebp
e0102a22:	8b 45 08             	mov    0x8(%ebp),%eax
e0102a25:	8a 4d 0c             	mov    0xc(%ebp),%cl
	for (; *s; s++)
e0102a28:	8a 10                	mov    (%eax),%dl
e0102a2a:	84 d2                	test   %dl,%dl
e0102a2c:	74 07                	je     e0102a35 <strchr+0x16>
		if (*s == c)
e0102a2e:	38 ca                	cmp    %cl,%dl
e0102a30:	74 08                	je     e0102a3a <strchr+0x1b>
	for (; *s; s++)
e0102a32:	40                   	inc    %eax
e0102a33:	eb f3                	jmp    e0102a28 <strchr+0x9>
			return (char *) s;
	return 0;
e0102a35:	b8 00 00 00 00       	mov    $0x0,%eax
}
e0102a3a:	5d                   	pop    %ebp
e0102a3b:	c3                   	ret    

e0102a3c <strfind>:

// Return a pointer to the first occurrence of 'c' in 's',
// or a pointer to the string-ending null character if the string has no 'c'.
char *
strfind(const char *s, char c)
{
e0102a3c:	55                   	push   %ebp
e0102a3d:	89 e5                	mov    %esp,%ebp
e0102a3f:	8b 45 08             	mov    0x8(%ebp),%eax
e0102a42:	8a 4d 0c             	mov    0xc(%ebp),%cl
	for (; *s; s++)
e0102a45:	8a 10                	mov    (%eax),%dl
e0102a47:	84 d2                	test   %dl,%dl
e0102a49:	74 07                	je     e0102a52 <strfind+0x16>
		if (*s == c)
e0102a4b:	38 ca                	cmp    %cl,%dl
e0102a4d:	74 03                	je     e0102a52 <strfind+0x16>
	for (; *s; s++)
e0102a4f:	40                   	inc    %eax
e0102a50:	eb f3                	jmp    e0102a45 <strfind+0x9>
			break;
	return (char *) s;
}
e0102a52:	5d                   	pop    %ebp
e0102a53:	c3                   	ret    

e0102a54 <memset>:

#if ASM
void *
memset(void *v, int c, size_t n)
{
e0102a54:	55                   	push   %ebp
e0102a55:	89 e5                	mov    %esp,%ebp
e0102a57:	57                   	push   %edi
e0102a58:	53                   	push   %ebx
e0102a59:	8b 7d 08             	mov    0x8(%ebp),%edi
e0102a5c:	8b 4d 10             	mov    0x10(%ebp),%ecx
	if (n == 0)
e0102a5f:	85 c9                	test   %ecx,%ecx
e0102a61:	74 13                	je     e0102a76 <memset+0x22>
		return v;
	if ((int)v%4 == 0 && n%4 == 0) {
e0102a63:	f7 c7 03 00 00 00    	test   $0x3,%edi
e0102a69:	75 05                	jne    e0102a70 <memset+0x1c>
e0102a6b:	f6 c1 03             	test   $0x3,%cl
e0102a6e:	74 0c                	je     e0102a7c <memset+0x28>
		c = ((unsigned)c<<24U)|((unsigned)c<<16U)|((unsigned)c<<8U)|(unsigned)c;
		asm volatile("cld; rep stosl\n"
			:: "D" (v), "a" (c), "c" (n/4)
			: "cc", "memory");
	} else
		asm volatile("cld; rep stosb\n"
e0102a70:	8b 45 0c             	mov    0xc(%ebp),%eax
e0102a73:	fc                   	cld    
e0102a74:	f3 aa                	rep stos %al,%es:(%edi)
			:: "D" (v), "a" (c), "c" (n)
			: "cc", "memory");
	return v;
}
e0102a76:	89 f8                	mov    %edi,%eax
e0102a78:	5b                   	pop    %ebx
e0102a79:	5f                   	pop    %edi
e0102a7a:	5d                   	pop    %ebp
e0102a7b:	c3                   	ret    
		c &= 0xFF;
e0102a7c:	0f b6 55 0c          	movzbl 0xc(%ebp),%edx
		c = ((unsigned)c<<24U)|((unsigned)c<<16U)|((unsigned)c<<8U)|(unsigned)c;
e0102a80:	89 d0                	mov    %edx,%eax
e0102a82:	c1 e0 18             	shl    $0x18,%eax
e0102a85:	89 d3                	mov    %edx,%ebx
e0102a87:	c1 e3 10             	shl    $0x10,%ebx
e0102a8a:	09 d8                	or     %ebx,%eax
e0102a8c:	09 d0                	or     %edx,%eax
e0102a8e:	c1 e2 08             	shl    $0x8,%edx
e0102a91:	09 d0                	or     %edx,%eax
			:: "D" (v), "a" (c), "c" (n/4)
e0102a93:	c1 e9 02             	shr    $0x2,%ecx
		asm volatile("cld; rep stosl\n"
e0102a96:	fc                   	cld    
e0102a97:	f3 ab                	rep stos %eax,%es:(%edi)
e0102a99:	eb db                	jmp    e0102a76 <memset+0x22>

e0102a9b <memmove>:

void *
memmove(void *dst, const void *src, size_t n)
{
e0102a9b:	55                   	push   %ebp
e0102a9c:	89 e5                	mov    %esp,%ebp
e0102a9e:	57                   	push   %edi
e0102a9f:	56                   	push   %esi
e0102aa0:	8b 45 08             	mov    0x8(%ebp),%eax
e0102aa3:	8b 75 0c             	mov    0xc(%ebp),%esi
e0102aa6:	8b 4d 10             	mov    0x10(%ebp),%ecx
	const char *s;
	char *d;

	s = src;
	d = dst;
	if (s < d && s + n > d) {
e0102aa9:	39 c6                	cmp    %eax,%esi
e0102aab:	73 33                	jae    e0102ae0 <memmove+0x45>
e0102aad:	8d 14 0e             	lea    (%esi,%ecx,1),%edx
e0102ab0:	39 c2                	cmp    %eax,%edx
e0102ab2:	76 2c                	jbe    e0102ae0 <memmove+0x45>
		s += n;
		d += n;
e0102ab4:	8d 3c 08             	lea    (%eax,%ecx,1),%edi
		if ((int)s%4 == 0 && (int)d%4 == 0 && n%4 == 0)
e0102ab7:	89 d6                	mov    %edx,%esi
e0102ab9:	09 fe                	or     %edi,%esi
e0102abb:	f7 c6 03 00 00 00    	test   $0x3,%esi
e0102ac1:	74 0a                	je     e0102acd <memmove+0x32>
			asm volatile("std; rep movsl\n"
				:: "D" (d-4), "S" (s-4), "c" (n/4) : "cc", "memory");
		else
			asm volatile("std; rep movsb\n"
				:: "D" (d-1), "S" (s-1), "c" (n) : "cc", "memory");
e0102ac3:	4f                   	dec    %edi
e0102ac4:	8d 72 ff             	lea    -0x1(%edx),%esi
			asm volatile("std; rep movsb\n"
e0102ac7:	fd                   	std    
e0102ac8:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
		// Some versions of GCC rely on DF being clear
		asm volatile("cld" ::: "cc");
e0102aca:	fc                   	cld    
e0102acb:	eb 21                	jmp    e0102aee <memmove+0x53>
		if ((int)s%4 == 0 && (int)d%4 == 0 && n%4 == 0)
e0102acd:	f6 c1 03             	test   $0x3,%cl
e0102ad0:	75 f1                	jne    e0102ac3 <memmove+0x28>
				:: "D" (d-4), "S" (s-4), "c" (n/4) : "cc", "memory");
e0102ad2:	83 ef 04             	sub    $0x4,%edi
e0102ad5:	8d 72 fc             	lea    -0x4(%edx),%esi
e0102ad8:	c1 e9 02             	shr    $0x2,%ecx
			asm volatile("std; rep movsl\n"
e0102adb:	fd                   	std    
e0102adc:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
e0102ade:	eb ea                	jmp    e0102aca <memmove+0x2f>
	} else {
		if ((int)s%4 == 0 && (int)d%4 == 0 && n%4 == 0)
e0102ae0:	89 f2                	mov    %esi,%edx
e0102ae2:	09 c2                	or     %eax,%edx
e0102ae4:	f6 c2 03             	test   $0x3,%dl
e0102ae7:	74 09                	je     e0102af2 <memmove+0x57>
			asm volatile("cld; rep movsl\n"
				:: "D" (d), "S" (s), "c" (n/4) : "cc", "memory");
		else
			asm volatile("cld; rep movsb\n"
e0102ae9:	89 c7                	mov    %eax,%edi
e0102aeb:	fc                   	cld    
e0102aec:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
				:: "D" (d), "S" (s), "c" (n) : "cc", "memory");
	}
	return dst;
}
e0102aee:	5e                   	pop    %esi
e0102aef:	5f                   	pop    %edi
e0102af0:	5d                   	pop    %ebp
e0102af1:	c3                   	ret    
		if ((int)s%4 == 0 && (int)d%4 == 0 && n%4 == 0)
e0102af2:	f6 c1 03             	test   $0x3,%cl
e0102af5:	75 f2                	jne    e0102ae9 <memmove+0x4e>
				:: "D" (d), "S" (s), "c" (n/4) : "cc", "memory");
e0102af7:	c1 e9 02             	shr    $0x2,%ecx
			asm volatile("cld; rep movsl\n"
e0102afa:	89 c7                	mov    %eax,%edi
e0102afc:	fc                   	cld    
e0102afd:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
e0102aff:	eb ed                	jmp    e0102aee <memmove+0x53>

e0102b01 <memcpy>:
}
#endif

void *
memcpy(void *dst, const void *src, size_t n)
{
e0102b01:	55                   	push   %ebp
e0102b02:	89 e5                	mov    %esp,%ebp
	return memmove(dst, src, n);
e0102b04:	ff 75 10             	pushl  0x10(%ebp)
e0102b07:	ff 75 0c             	pushl  0xc(%ebp)
e0102b0a:	ff 75 08             	pushl  0x8(%ebp)
e0102b0d:	e8 89 ff ff ff       	call   e0102a9b <memmove>
}
e0102b12:	c9                   	leave  
e0102b13:	c3                   	ret    

e0102b14 <memcmp>:

int
memcmp(const void *v1, const void *v2, size_t n)
{
e0102b14:	55                   	push   %ebp
e0102b15:	89 e5                	mov    %esp,%ebp
e0102b17:	56                   	push   %esi
e0102b18:	53                   	push   %ebx
e0102b19:	8b 45 08             	mov    0x8(%ebp),%eax
e0102b1c:	8b 55 0c             	mov    0xc(%ebp),%edx
e0102b1f:	89 c6                	mov    %eax,%esi
e0102b21:	03 75 10             	add    0x10(%ebp),%esi
	const uint8_t *s1 = (const uint8_t *) v1;
	const uint8_t *s2 = (const uint8_t *) v2;

	while (n-- > 0) {
e0102b24:	39 f0                	cmp    %esi,%eax
e0102b26:	74 16                	je     e0102b3e <memcmp+0x2a>
		if (*s1 != *s2)
e0102b28:	8a 08                	mov    (%eax),%cl
e0102b2a:	8a 1a                	mov    (%edx),%bl
e0102b2c:	38 d9                	cmp    %bl,%cl
e0102b2e:	75 04                	jne    e0102b34 <memcmp+0x20>
			return (int) *s1 - (int) *s2;
		s1++, s2++;
e0102b30:	40                   	inc    %eax
e0102b31:	42                   	inc    %edx
e0102b32:	eb f0                	jmp    e0102b24 <memcmp+0x10>
			return (int) *s1 - (int) *s2;
e0102b34:	0f b6 c1             	movzbl %cl,%eax
e0102b37:	0f b6 db             	movzbl %bl,%ebx
e0102b3a:	29 d8                	sub    %ebx,%eax
e0102b3c:	eb 05                	jmp    e0102b43 <memcmp+0x2f>
	}

	return 0;
e0102b3e:	b8 00 00 00 00       	mov    $0x0,%eax
}
e0102b43:	5b                   	pop    %ebx
e0102b44:	5e                   	pop    %esi
e0102b45:	5d                   	pop    %ebp
e0102b46:	c3                   	ret    

e0102b47 <memfind>:

void *
memfind(const void *s, int c, size_t n)
{
e0102b47:	55                   	push   %ebp
e0102b48:	89 e5                	mov    %esp,%ebp
e0102b4a:	8b 45 08             	mov    0x8(%ebp),%eax
e0102b4d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
	const void *ends = (const char *) s + n;
e0102b50:	89 c2                	mov    %eax,%edx
e0102b52:	03 55 10             	add    0x10(%ebp),%edx
	for (; s < ends; s++)
e0102b55:	39 d0                	cmp    %edx,%eax
e0102b57:	73 07                	jae    e0102b60 <memfind+0x19>
		if (*(const unsigned char *) s == (unsigned char) c)
e0102b59:	38 08                	cmp    %cl,(%eax)
e0102b5b:	74 03                	je     e0102b60 <memfind+0x19>
	for (; s < ends; s++)
e0102b5d:	40                   	inc    %eax
e0102b5e:	eb f5                	jmp    e0102b55 <memfind+0xe>
			break;
	return (void *) s;
}
e0102b60:	5d                   	pop    %ebp
e0102b61:	c3                   	ret    

e0102b62 <strtol>:

long
strtol(const char *s, char **endptr, int base)
{
e0102b62:	55                   	push   %ebp
e0102b63:	89 e5                	mov    %esp,%ebp
e0102b65:	57                   	push   %edi
e0102b66:	56                   	push   %esi
e0102b67:	53                   	push   %ebx
e0102b68:	8b 4d 08             	mov    0x8(%ebp),%ecx
	int neg = 0;
	long val = 0;

	// gobble initial whitespace
	while (*s == ' ' || *s == '\t')
e0102b6b:	eb 01                	jmp    e0102b6e <strtol+0xc>
		s++;
e0102b6d:	41                   	inc    %ecx
	while (*s == ' ' || *s == '\t')
e0102b6e:	8a 01                	mov    (%ecx),%al
e0102b70:	3c 20                	cmp    $0x20,%al
e0102b72:	74 f9                	je     e0102b6d <strtol+0xb>
e0102b74:	3c 09                	cmp    $0x9,%al
e0102b76:	74 f5                	je     e0102b6d <strtol+0xb>

	// plus/minus sign
	if (*s == '+')
e0102b78:	3c 2b                	cmp    $0x2b,%al
e0102b7a:	74 2b                	je     e0102ba7 <strtol+0x45>
		s++;
	else if (*s == '-')
e0102b7c:	3c 2d                	cmp    $0x2d,%al
e0102b7e:	74 2f                	je     e0102baf <strtol+0x4d>
	int neg = 0;
e0102b80:	bf 00 00 00 00       	mov    $0x0,%edi
		s++, neg = 1;

	// hex or octal base prefix
	if ((base == 0 || base == 16) && (s[0] == '0' && s[1] == 'x'))
e0102b85:	f7 45 10 ef ff ff ff 	testl  $0xffffffef,0x10(%ebp)
e0102b8c:	75 12                	jne    e0102ba0 <strtol+0x3e>
e0102b8e:	80 39 30             	cmpb   $0x30,(%ecx)
e0102b91:	74 24                	je     e0102bb7 <strtol+0x55>
		s += 2, base = 16;
	else if (base == 0 && s[0] == '0')
e0102b93:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
e0102b97:	75 07                	jne    e0102ba0 <strtol+0x3e>
		s++, base = 8;
	else if (base == 0)
		base = 10;
e0102b99:	c7 45 10 0a 00 00 00 	movl   $0xa,0x10(%ebp)
e0102ba0:	b8 00 00 00 00       	mov    $0x0,%eax
e0102ba5:	eb 4e                	jmp    e0102bf5 <strtol+0x93>
		s++;
e0102ba7:	41                   	inc    %ecx
	int neg = 0;
e0102ba8:	bf 00 00 00 00       	mov    $0x0,%edi
e0102bad:	eb d6                	jmp    e0102b85 <strtol+0x23>
		s++, neg = 1;
e0102baf:	41                   	inc    %ecx
e0102bb0:	bf 01 00 00 00       	mov    $0x1,%edi
e0102bb5:	eb ce                	jmp    e0102b85 <strtol+0x23>
	if ((base == 0 || base == 16) && (s[0] == '0' && s[1] == 'x'))
e0102bb7:	80 79 01 78          	cmpb   $0x78,0x1(%ecx)
e0102bbb:	74 10                	je     e0102bcd <strtol+0x6b>
	else if (base == 0 && s[0] == '0')
e0102bbd:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
e0102bc1:	75 dd                	jne    e0102ba0 <strtol+0x3e>
		s++, base = 8;
e0102bc3:	41                   	inc    %ecx
e0102bc4:	c7 45 10 08 00 00 00 	movl   $0x8,0x10(%ebp)
e0102bcb:	eb d3                	jmp    e0102ba0 <strtol+0x3e>
		s += 2, base = 16;
e0102bcd:	83 c1 02             	add    $0x2,%ecx
e0102bd0:	c7 45 10 10 00 00 00 	movl   $0x10,0x10(%ebp)
e0102bd7:	eb c7                	jmp    e0102ba0 <strtol+0x3e>
	while (1) {
		int dig;

		if (*s >= '0' && *s <= '9')
			dig = *s - '0';
		else if (*s >= 'a' && *s <= 'z')
e0102bd9:	8d 72 9f             	lea    -0x61(%edx),%esi
e0102bdc:	89 f3                	mov    %esi,%ebx
e0102bde:	80 fb 19             	cmp    $0x19,%bl
e0102be1:	77 24                	ja     e0102c07 <strtol+0xa5>
			dig = *s - 'a' + 10;
e0102be3:	0f be d2             	movsbl %dl,%edx
e0102be6:	83 ea 57             	sub    $0x57,%edx
		else if (*s >= 'A' && *s <= 'Z')
			dig = *s - 'A' + 10;
		else
			break;
		if (dig >= base)
e0102be9:	3b 55 10             	cmp    0x10(%ebp),%edx
e0102bec:	7d 2b                	jge    e0102c19 <strtol+0xb7>
			break;
		s++, val = (val * base) + dig;
e0102bee:	41                   	inc    %ecx
e0102bef:	0f af 45 10          	imul   0x10(%ebp),%eax
e0102bf3:	01 d0                	add    %edx,%eax
		if (*s >= '0' && *s <= '9')
e0102bf5:	8a 11                	mov    (%ecx),%dl
e0102bf7:	8d 5a d0             	lea    -0x30(%edx),%ebx
e0102bfa:	80 fb 09             	cmp    $0x9,%bl
e0102bfd:	77 da                	ja     e0102bd9 <strtol+0x77>
			dig = *s - '0';
e0102bff:	0f be d2             	movsbl %dl,%edx
e0102c02:	83 ea 30             	sub    $0x30,%edx
e0102c05:	eb e2                	jmp    e0102be9 <strtol+0x87>
		else if (*s >= 'A' && *s <= 'Z')
e0102c07:	8d 72 bf             	lea    -0x41(%edx),%esi
e0102c0a:	89 f3                	mov    %esi,%ebx
e0102c0c:	80 fb 19             	cmp    $0x19,%bl
e0102c0f:	77 08                	ja     e0102c19 <strtol+0xb7>
			dig = *s - 'A' + 10;
e0102c11:	0f be d2             	movsbl %dl,%edx
e0102c14:	83 ea 37             	sub    $0x37,%edx
e0102c17:	eb d0                	jmp    e0102be9 <strtol+0x87>
		// we don't properly detect overflow!
	}

	if (endptr)
e0102c19:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
e0102c1d:	74 05                	je     e0102c24 <strtol+0xc2>
		*endptr = (char *) s;
e0102c1f:	8b 75 0c             	mov    0xc(%ebp),%esi
e0102c22:	89 0e                	mov    %ecx,(%esi)
	return (neg ? -val : val);
e0102c24:	85 ff                	test   %edi,%edi
e0102c26:	74 02                	je     e0102c2a <strtol+0xc8>
e0102c28:	f7 d8                	neg    %eax
}
e0102c2a:	5b                   	pop    %ebx
e0102c2b:	5e                   	pop    %esi
e0102c2c:	5f                   	pop    %edi
e0102c2d:	5d                   	pop    %ebp
e0102c2e:	c3                   	ret    

e0102c2f <tsc_calibrate>:
	delta /= i*256*1000;
	return delta;
}

void tsc_calibrate(void)
{
e0102c2f:	55                   	push   %ebp
e0102c30:	89 e5                	mov    %esp,%ebp
e0102c32:	57                   	push   %edi
e0102c33:	56                   	push   %esi
e0102c34:	53                   	push   %ebx
e0102c35:	83 ec 3c             	sub    $0x3c,%esp
    int i;
    for (i = 0; i < TIMES; i++) {
e0102c38:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
	uint64_t tsc = 0;
e0102c3f:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
e0102c46:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
e0102c4d:	eb 25                	jmp    e0102c74 <tsc_calibrate+0x45>
e0102c4f:	89 c1                	mov    %eax,%ecx
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e0102c51:	ba 42 00 00 00       	mov    $0x42,%edx
e0102c56:	ec                   	in     (%dx),%al
e0102c57:	ec                   	in     (%dx),%al
			if (!pit_verify_msb(0xfe - i))
e0102c58:	b2 fe                	mov    $0xfe,%dl
e0102c5a:	2a 55 d3             	sub    -0x2d(%ebp),%dl
e0102c5d:	38 c2                	cmp    %al,%dl
e0102c5f:	0f 84 ef 00 00 00    	je     e0102d54 <tsc_calibrate+0x125>
    for (i = 0; i < TIMES; i++) {
e0102c65:	ff 45 e4             	incl   -0x1c(%ebp)
e0102c68:	8b 45 e4             	mov    -0x1c(%ebp),%eax
e0102c6b:	83 f8 64             	cmp    $0x64,%eax
e0102c6e:	0f 84 70 01 00 00    	je     e0102de4 <tsc_calibrate+0x1b5>
e0102c74:	ba 61 00 00 00       	mov    $0x61,%edx
e0102c79:	ec                   	in     (%dx),%al
	outb(0x61, (inb(0x61) & ~0x02) | 0x01);
e0102c7a:	83 e0 fc             	and    $0xfffffffc,%eax
e0102c7d:	83 c8 01             	or     $0x1,%eax
	__asm __volatile("outb %0,%w1" : : "a" (data), "d" (port));
e0102c80:	ee                   	out    %al,(%dx)
e0102c81:	ba 43 00 00 00       	mov    $0x43,%edx
e0102c86:	b0 b0                	mov    $0xb0,%al
e0102c88:	ee                   	out    %al,(%dx)
e0102c89:	b0 ff                	mov    $0xff,%al
e0102c8b:	ba 42 00 00 00       	mov    $0x42,%edx
e0102c90:	ee                   	out    %al,(%dx)
e0102c91:	ee                   	out    %al,(%dx)
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e0102c92:	ec                   	in     (%dx),%al
e0102c93:	ec                   	in     (%dx),%al
	uint64_t tsc = 0;
e0102c94:	be 00 00 00 00       	mov    $0x0,%esi
e0102c99:	bf 00 00 00 00       	mov    $0x0,%edi
	for (count = 0; count < 50000; count++) {
e0102c9e:	b9 00 00 00 00       	mov    $0x0,%ecx
e0102ca3:	ba 42 00 00 00       	mov    $0x42,%edx
e0102ca8:	ec                   	in     (%dx),%al
e0102ca9:	ec                   	in     (%dx),%al
		if (!pit_verify_msb(val))
e0102caa:	3c ff                	cmp    $0xff,%al
e0102cac:	75 0f                	jne    e0102cbd <tsc_calibrate+0x8e>
	__asm __volatile("rdtsc" : "=A" (tsc));
e0102cae:	0f 31                	rdtsc  
e0102cb0:	89 c6                	mov    %eax,%esi
e0102cb2:	89 d7                	mov    %edx,%edi
	for (count = 0; count < 50000; count++) {
e0102cb4:	41                   	inc    %ecx
e0102cb5:	81 f9 50 c3 00 00    	cmp    $0xc350,%ecx
e0102cbb:	75 e6                	jne    e0102ca3 <tsc_calibrate+0x74>
e0102cbd:	89 75 d8             	mov    %esi,-0x28(%ebp)
e0102cc0:	89 7d dc             	mov    %edi,-0x24(%ebp)
e0102cc3:	0f 31                	rdtsc  
	if (pit_expect_msb(0xff, &tsc, &d1)) {
e0102cc5:	83 f9 05             	cmp    $0x5,%ecx
e0102cc8:	7e 9b                	jle    e0102c65 <tsc_calibrate+0x36>
	*deltap = (unsigned long) (read_tsc() - tsc);
e0102cca:	29 f0                	sub    %esi,%eax
e0102ccc:	89 45 d4             	mov    %eax,-0x2c(%ebp)
		for (i = 1; i <= MAX_QUICK_PIT_ITERATIONS; i++) {
e0102ccf:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
			if (!pit_expect_msb(0xff-i, &delta, &d2))
e0102cd6:	8b 7d e0             	mov    -0x20(%ebp),%edi
e0102cd9:	89 f8                	mov    %edi,%eax
e0102cdb:	88 45 d3             	mov    %al,-0x2d(%ebp)
e0102cde:	89 f9                	mov    %edi,%ecx
e0102ce0:	f7 d1                	not    %ecx
	uint64_t tsc = 0;
e0102ce2:	8b 75 c0             	mov    -0x40(%ebp),%esi
e0102ce5:	8b 7d c4             	mov    -0x3c(%ebp),%edi
	for (count = 0; count < 50000; count++) {
e0102ce8:	bb 00 00 00 00       	mov    $0x0,%ebx
	__asm __volatile("inb %w1,%0" : "=a" (data) : "d" (port));
e0102ced:	ba 42 00 00 00       	mov    $0x42,%edx
e0102cf2:	ec                   	in     (%dx),%al
e0102cf3:	ec                   	in     (%dx),%al
		if (!pit_verify_msb(val))
e0102cf4:	38 c8                	cmp    %cl,%al
e0102cf6:	75 0f                	jne    e0102d07 <tsc_calibrate+0xd8>
	__asm __volatile("rdtsc" : "=A" (tsc));
e0102cf8:	0f 31                	rdtsc  
e0102cfa:	89 c6                	mov    %eax,%esi
e0102cfc:	89 d7                	mov    %edx,%edi
	for (count = 0; count < 50000; count++) {
e0102cfe:	43                   	inc    %ebx
e0102cff:	81 fb 50 c3 00 00    	cmp    $0xc350,%ebx
e0102d05:	75 e6                	jne    e0102ced <tsc_calibrate+0xbe>
e0102d07:	0f 31                	rdtsc  
	*deltap = (unsigned long) (read_tsc() - tsc);
e0102d09:	29 f0                	sub    %esi,%eax
			if (!pit_expect_msb(0xff-i, &delta, &d2))
e0102d0b:	83 fb 05             	cmp    $0x5,%ebx
e0102d0e:	0f 8e 51 ff ff ff    	jle    e0102c65 <tsc_calibrate+0x36>
			delta -= tsc;
e0102d14:	2b 75 d8             	sub    -0x28(%ebp),%esi
e0102d17:	1b 7d dc             	sbb    -0x24(%ebp),%edi
			if (d1+d2 >= delta >> 11)
e0102d1a:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
e0102d1d:	8d 14 03             	lea    (%ebx,%eax,1),%edx
e0102d20:	89 55 cc             	mov    %edx,-0x34(%ebp)
e0102d23:	89 f1                	mov    %esi,%ecx
e0102d25:	89 fb                	mov    %edi,%ebx
e0102d27:	0f ac f9 0b          	shrd   $0xb,%edi,%ecx
e0102d2b:	c1 eb 0b             	shr    $0xb,%ebx
e0102d2e:	ba 00 00 00 00       	mov    $0x0,%edx
e0102d33:	39 da                	cmp    %ebx,%edx
e0102d35:	0f 82 14 ff ff ff    	jb     e0102c4f <tsc_calibrate+0x20>
e0102d3b:	39 4d cc             	cmp    %ecx,-0x34(%ebp)
e0102d3e:	0f 82 0b ff ff ff    	jb     e0102c4f <tsc_calibrate+0x20>
		for (i = 1; i <= MAX_QUICK_PIT_ITERATIONS; i++) {
e0102d44:	ff 45 e0             	incl   -0x20(%ebp)
e0102d47:	8b 45 e0             	mov    -0x20(%ebp),%eax
e0102d4a:	83 f8 75             	cmp    $0x75,%eax
e0102d4d:	75 87                	jne    e0102cd6 <tsc_calibrate+0xa7>
e0102d4f:	e9 11 ff ff ff       	jmp    e0102c65 <tsc_calibrate+0x36>
	delta += (long)(d2 - d1)/2;
e0102d54:	2b 4d d4             	sub    -0x2c(%ebp),%ecx
e0102d57:	89 c8                	mov    %ecx,%eax
e0102d59:	c1 e8 1f             	shr    $0x1f,%eax
e0102d5c:	01 c8                	add    %ecx,%eax
e0102d5e:	d1 f8                	sar    %eax
e0102d60:	99                   	cltd   
e0102d61:	01 c6                	add    %eax,%esi
e0102d63:	11 d7                	adc    %edx,%edi
	delta *= PIT_TICK_RATE;
e0102d65:	69 cf de 34 12 00    	imul   $0x1234de,%edi,%ecx
e0102d6b:	bb de 34 12 00       	mov    $0x1234de,%ebx
e0102d70:	89 d8                	mov    %ebx,%eax
e0102d72:	f7 e6                	mul    %esi
e0102d74:	89 c6                	mov    %eax,%esi
e0102d76:	89 d7                	mov    %edx,%edi
e0102d78:	01 cf                	add    %ecx,%edi
	delta /= i*256*1000;
e0102d7a:	8b 45 e0             	mov    -0x20(%ebp),%eax
e0102d7d:	8d 04 80             	lea    (%eax,%eax,4),%eax
e0102d80:	8d 04 80             	lea    (%eax,%eax,4),%eax
e0102d83:	8d 04 80             	lea    (%eax,%eax,4),%eax
e0102d86:	c1 e0 0b             	shl    $0xb,%eax
e0102d89:	99                   	cltd   
e0102d8a:	52                   	push   %edx
e0102d8b:	50                   	push   %eax
e0102d8c:	57                   	push   %edi
e0102d8d:	56                   	push   %esi
e0102d8e:	e8 50 01 00 00       	call   e0102ee3 <__udivdi3>
e0102d93:	83 c4 10             	add    $0x10,%esp
        if ((cpu_freq = quick_pit_calibrate()))
e0102d96:	85 c0                	test   %eax,%eax
e0102d98:	0f 84 c7 fe ff ff    	je     e0102c65 <tsc_calibrate+0x36>
e0102d9e:	a3 e8 cd 11 e0       	mov    %eax,0xe011cde8
            break;
    }
    if (i == TIMES) {
e0102da3:	83 7d e4 64          	cmpl   $0x64,-0x1c(%ebp)
e0102da7:	74 3b                	je     e0102de4 <tsc_calibrate+0x1b5>
        cpu_freq = DEFAULT_FREQ;
        cprintf("Can't calibrate pit timer. Using default frequency\n");
    }

    cprintf("Detected %lu.%03lu MHz processor.\n",
e0102da9:	83 ec 04             	sub    $0x4,%esp
e0102dac:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
e0102db1:	a1 e8 cd 11 e0       	mov    0xe011cde8,%eax
e0102db6:	ba 00 00 00 00       	mov    $0x0,%edx
e0102dbb:	f7 f1                	div    %ecx
e0102dbd:	52                   	push   %edx
e0102dbe:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
e0102dc3:	f7 25 e8 cd 11 e0    	mull   0xe011cde8
e0102dc9:	89 d0                	mov    %edx,%eax
e0102dcb:	c1 e8 06             	shr    $0x6,%eax
e0102dce:	50                   	push   %eax
e0102dcf:	68 44 41 10 e0       	push   $0xe0104144
e0102dd4:	e8 2d ec ff ff       	call   e0101a06 <cprintf>
		(unsigned long)cpu_freq / 1000,
		(unsigned long)cpu_freq % 1000);
}
e0102dd9:	83 c4 10             	add    $0x10,%esp
e0102ddc:	8d 65 f4             	lea    -0xc(%ebp),%esp
e0102ddf:	5b                   	pop    %ebx
e0102de0:	5e                   	pop    %esi
e0102de1:	5f                   	pop    %edi
e0102de2:	5d                   	pop    %ebp
e0102de3:	c3                   	ret    
        cpu_freq = DEFAULT_FREQ;
e0102de4:	c7 05 e8 cd 11 e0 a0 	movl   $0x2625a0,0xe011cde8
e0102deb:	25 26 00 
        cprintf("Can't calibrate pit timer. Using default frequency\n");
e0102dee:	83 ec 0c             	sub    $0xc,%esp
e0102df1:	68 10 41 10 e0       	push   $0xe0104110
e0102df6:	e8 0b ec ff ff       	call   e0101a06 <cprintf>
e0102dfb:	83 c4 10             	add    $0x10,%esp
e0102dfe:	eb a9                	jmp    e0102da9 <tsc_calibrate+0x17a>

e0102e00 <print_time>:

void print_time(unsigned seconds)
{
e0102e00:	55                   	push   %ebp
e0102e01:	89 e5                	mov    %esp,%ebp
e0102e03:	83 ec 10             	sub    $0x10,%esp
	cprintf("%d\n", seconds);
e0102e06:	ff 75 08             	pushl  0x8(%ebp)
e0102e09:	68 68 41 10 e0       	push   $0xe0104168
e0102e0e:	e8 f3 eb ff ff       	call   e0101a06 <cprintf>
}
e0102e13:	83 c4 10             	add    $0x10,%esp
e0102e16:	c9                   	leave  
e0102e17:	c3                   	ret    

e0102e18 <print_timer_error>:

void print_timer_error(void)
{
e0102e18:	55                   	push   %ebp
e0102e19:	89 e5                	mov    %esp,%ebp
e0102e1b:	83 ec 14             	sub    $0x14,%esp
	cprintf("Timer Error\n");
e0102e1e:	68 6c 41 10 e0       	push   $0xe010416c
e0102e23:	e8 de eb ff ff       	call   e0101a06 <cprintf>
}
e0102e28:	83 c4 10             	add    $0x10,%esp
e0102e2b:	c9                   	leave  
e0102e2c:	c3                   	ret    

e0102e2d <timer_start>:
//Use print_time function to print timert result.
//Use print_timer_error function to print error.
bool fl = false;
uint64_t timer = 0;
void timer_start(void)
{
e0102e2d:	55                   	push   %ebp
e0102e2e:	89 e5                	mov    %esp,%ebp
    fl = true;
e0102e30:	c6 05 e8 c1 11 e0 01 	movb   $0x1,0xe011c1e8
e0102e37:	0f 31                	rdtsc  
    timer = read_tsc();
e0102e39:	a3 e0 c1 11 e0       	mov    %eax,0xe011c1e0
e0102e3e:	89 15 e4 c1 11 e0    	mov    %edx,0xe011c1e4
}
e0102e44:	5d                   	pop    %ebp
e0102e45:	c3                   	ret    

e0102e46 <timer_stop>:

void timer_stop(void)
{
e0102e46:	55                   	push   %ebp
e0102e47:	89 e5                	mov    %esp,%ebp
e0102e49:	53                   	push   %ebx
e0102e4a:	83 ec 04             	sub    $0x4,%esp
    if (fl) {
e0102e4d:	80 3d e8 c1 11 e0 00 	cmpb   $0x0,0xe011c1e8
e0102e54:	75 0a                	jne    e0102e60 <timer_stop+0x1a>
        print_time((read_tsc() - timer) / cpu_freq / 1000);
        fl = false;
    } else {
        print_timer_error();
e0102e56:	e8 bd ff ff ff       	call   e0102e18 <print_timer_error>
    }
}
e0102e5b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
e0102e5e:	c9                   	leave  
e0102e5f:	c3                   	ret    
e0102e60:	0f 31                	rdtsc  
        print_time((read_tsc() - timer) / cpu_freq / 1000);
e0102e62:	83 ec 10             	sub    $0x10,%esp
e0102e65:	2b 05 e0 c1 11 e0    	sub    0xe011c1e0,%eax
e0102e6b:	1b 15 e4 c1 11 e0    	sbb    0xe011c1e4,%edx
e0102e71:	8b 0d e8 cd 11 e0    	mov    0xe011cde8,%ecx
e0102e77:	bb 00 00 00 00       	mov    $0x0,%ebx
e0102e7c:	53                   	push   %ebx
e0102e7d:	51                   	push   %ecx
e0102e7e:	52                   	push   %edx
e0102e7f:	50                   	push   %eax
e0102e80:	e8 5e 00 00 00       	call   e0102ee3 <__udivdi3>
e0102e85:	83 c4 10             	add    $0x10,%esp
e0102e88:	6a 00                	push   $0x0
e0102e8a:	68 e8 03 00 00       	push   $0x3e8
e0102e8f:	52                   	push   %edx
e0102e90:	50                   	push   %eax
e0102e91:	e8 4d 00 00 00       	call   e0102ee3 <__udivdi3>
e0102e96:	83 c4 14             	add    $0x14,%esp
e0102e99:	50                   	push   %eax
e0102e9a:	e8 61 ff ff ff       	call   e0102e00 <print_time>
        fl = false;
e0102e9f:	c6 05 e8 c1 11 e0 00 	movb   $0x0,0xe011c1e8
e0102ea6:	83 c4 10             	add    $0x10,%esp
e0102ea9:	eb b0                	jmp    e0102e5b <timer_stop+0x15>

e0102eab <__spin_initlock>:
}
#endif

void
__spin_initlock(struct spinlock *lk, char *name)
{
e0102eab:	55                   	push   %ebp
e0102eac:	89 e5                	mov    %esp,%ebp
	lk->locked = 0;
e0102eae:	8b 45 08             	mov    0x8(%ebp),%eax
e0102eb1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
#ifdef DEBUG_SPINLOCK
	lk->name = name;
#endif
}
e0102eb7:	5d                   	pop    %ebp
e0102eb8:	c3                   	ret    

e0102eb9 <spin_lock>:
// Loops (spins) until the lock is acquired.
// Holding a lock for a long time may cause
// other CPUs to waste time spinning to acquire it.
void
spin_lock(struct spinlock *lk)
{
e0102eb9:	55                   	push   %ebp
e0102eba:	89 e5                	mov    %esp,%ebp
e0102ebc:	8b 55 08             	mov    0x8(%ebp),%edx
	asm volatile("lock; xchgl %0, %1" :
e0102ebf:	b9 01 00 00 00       	mov    $0x1,%ecx
#endif

	// The xchg is atomic.
	// It also serializes, so that reads after acquire are not
	// reordered before it.
	while (xchg(&lk->locked, 1) != 0)
e0102ec4:	eb 02                	jmp    e0102ec8 <spin_lock+0xf>
		asm volatile ("pause");
e0102ec6:	f3 90                	pause  
e0102ec8:	89 c8                	mov    %ecx,%eax
e0102eca:	f0 87 02             	lock xchg %eax,(%edx)
	while (xchg(&lk->locked, 1) != 0)
e0102ecd:	85 c0                	test   %eax,%eax
e0102ecf:	75 f5                	jne    e0102ec6 <spin_lock+0xd>

	// Record info about lock acquisition for debugging.
#ifdef DEBUG_SPINLOCK
	get_caller_pcs(lk->pcs);
#endif
}
e0102ed1:	5d                   	pop    %ebp
e0102ed2:	c3                   	ret    

e0102ed3 <spin_unlock>:

// Release the lock.
void
spin_unlock(struct spinlock *lk)
{
e0102ed3:	55                   	push   %ebp
e0102ed4:	89 e5                	mov    %esp,%ebp
e0102ed6:	8b 55 08             	mov    0x8(%ebp),%edx
e0102ed9:	b8 00 00 00 00       	mov    $0x0,%eax
e0102ede:	f0 87 02             	lock xchg %eax,(%edx)
	// Paper says that Intel 64 and IA-32 will not move a load
	// after a store. So lock->locked = 0 would work here.
	// The xchg being asm volatile ensures gcc emits it after
	// the above assignments (and after the critical section).
	xchg(&lk->locked, 0);
}
e0102ee1:	5d                   	pop    %ebp
e0102ee2:	c3                   	ret    

e0102ee3 <__udivdi3>:
e0102ee3:	55                   	push   %ebp
e0102ee4:	89 e5                	mov    %esp,%ebp
e0102ee6:	57                   	push   %edi
e0102ee7:	56                   	push   %esi
e0102ee8:	53                   	push   %ebx
e0102ee9:	83 ec 1c             	sub    $0x1c,%esp
e0102eec:	8b 45 08             	mov    0x8(%ebp),%eax
e0102eef:	89 45 e0             	mov    %eax,-0x20(%ebp)
e0102ef2:	8b 7d 0c             	mov    0xc(%ebp),%edi
e0102ef5:	8b 75 10             	mov    0x10(%ebp),%esi
e0102ef8:	8b 55 14             	mov    0x14(%ebp),%edx
e0102efb:	89 d1                	mov    %edx,%ecx
e0102efd:	85 d2                	test   %edx,%edx
e0102eff:	75 31                	jne    e0102f32 <__udivdi3+0x4f>
e0102f01:	39 fe                	cmp    %edi,%esi
e0102f03:	76 06                	jbe    e0102f0b <__udivdi3+0x28>
e0102f05:	89 fa                	mov    %edi,%edx
e0102f07:	f7 f6                	div    %esi
e0102f09:	eb 20                	jmp    e0102f2b <__udivdi3+0x48>
e0102f0b:	89 f3                	mov    %esi,%ebx
e0102f0d:	85 f6                	test   %esi,%esi
e0102f0f:	75 0b                	jne    e0102f1c <__udivdi3+0x39>
e0102f11:	b8 01 00 00 00       	mov    $0x1,%eax
e0102f16:	31 d2                	xor    %edx,%edx
e0102f18:	f7 f6                	div    %esi
e0102f1a:	89 c3                	mov    %eax,%ebx
e0102f1c:	31 d2                	xor    %edx,%edx
e0102f1e:	89 f8                	mov    %edi,%eax
e0102f20:	f7 f3                	div    %ebx
e0102f22:	89 c7                	mov    %eax,%edi
e0102f24:	8b 45 e0             	mov    -0x20(%ebp),%eax
e0102f27:	f7 f3                	div    %ebx
e0102f29:	89 f9                	mov    %edi,%ecx
e0102f2b:	89 c3                	mov    %eax,%ebx
e0102f2d:	e9 91 00 00 00       	jmp    e0102fc3 <__udivdi3+0xe0>
e0102f32:	39 fa                	cmp    %edi,%edx
e0102f34:	0f 87 81 00 00 00    	ja     e0102fbb <__udivdi3+0xd8>
e0102f3a:	0f bd c2             	bsr    %edx,%eax
e0102f3d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
e0102f40:	83 75 e4 1f          	xorl   $0x1f,-0x1c(%ebp)
e0102f44:	75 12                	jne    e0102f58 <__udivdi3+0x75>
e0102f46:	3b 75 e0             	cmp    -0x20(%ebp),%esi
e0102f49:	76 04                	jbe    e0102f4f <__udivdi3+0x6c>
e0102f4b:	39 fa                	cmp    %edi,%edx
e0102f4d:	73 6c                	jae    e0102fbb <__udivdi3+0xd8>
e0102f4f:	31 c9                	xor    %ecx,%ecx
e0102f51:	bb 01 00 00 00       	mov    $0x1,%ebx
e0102f56:	eb 6b                	jmp    e0102fc3 <__udivdi3+0xe0>
e0102f58:	b8 20 00 00 00       	mov    $0x20,%eax
e0102f5d:	2b 45 e4             	sub    -0x1c(%ebp),%eax
e0102f60:	8a 4d e4             	mov    -0x1c(%ebp),%cl
e0102f63:	d3 e2                	shl    %cl,%edx
e0102f65:	89 f3                	mov    %esi,%ebx
e0102f67:	88 c1                	mov    %al,%cl
e0102f69:	d3 eb                	shr    %cl,%ebx
e0102f6b:	89 d9                	mov    %ebx,%ecx
e0102f6d:	09 d1                	or     %edx,%ecx
e0102f6f:	89 4d dc             	mov    %ecx,-0x24(%ebp)
e0102f72:	8a 4d e4             	mov    -0x1c(%ebp),%cl
e0102f75:	d3 e6                	shl    %cl,%esi
e0102f77:	89 75 d8             	mov    %esi,-0x28(%ebp)
e0102f7a:	89 fe                	mov    %edi,%esi
e0102f7c:	88 c1                	mov    %al,%cl
e0102f7e:	d3 ee                	shr    %cl,%esi
e0102f80:	8a 4d e4             	mov    -0x1c(%ebp),%cl
e0102f83:	d3 e7                	shl    %cl,%edi
e0102f85:	8b 5d e0             	mov    -0x20(%ebp),%ebx
e0102f88:	88 c1                	mov    %al,%cl
e0102f8a:	d3 eb                	shr    %cl,%ebx
e0102f8c:	09 fb                	or     %edi,%ebx
e0102f8e:	89 d8                	mov    %ebx,%eax
e0102f90:	89 f2                	mov    %esi,%edx
e0102f92:	f7 75 dc             	divl   -0x24(%ebp)
e0102f95:	89 d6                	mov    %edx,%esi
e0102f97:	89 c7                	mov    %eax,%edi
e0102f99:	89 c3                	mov    %eax,%ebx
e0102f9b:	f7 65 d8             	mull   -0x28(%ebp)
e0102f9e:	89 45 dc             	mov    %eax,-0x24(%ebp)
e0102fa1:	39 d6                	cmp    %edx,%esi
e0102fa3:	72 11                	jb     e0102fb6 <__udivdi3+0xd3>
e0102fa5:	8b 45 e0             	mov    -0x20(%ebp),%eax
e0102fa8:	8a 4d e4             	mov    -0x1c(%ebp),%cl
e0102fab:	d3 e0                	shl    %cl,%eax
e0102fad:	3b 45 dc             	cmp    -0x24(%ebp),%eax
e0102fb0:	73 0f                	jae    e0102fc1 <__udivdi3+0xde>
e0102fb2:	39 d6                	cmp    %edx,%esi
e0102fb4:	75 0b                	jne    e0102fc1 <__udivdi3+0xde>
e0102fb6:	8d 5f ff             	lea    -0x1(%edi),%ebx
e0102fb9:	eb 06                	jmp    e0102fc1 <__udivdi3+0xde>
e0102fbb:	31 c9                	xor    %ecx,%ecx
e0102fbd:	31 db                	xor    %ebx,%ebx
e0102fbf:	eb 02                	jmp    e0102fc3 <__udivdi3+0xe0>
e0102fc1:	31 c9                	xor    %ecx,%ecx
e0102fc3:	89 d8                	mov    %ebx,%eax
e0102fc5:	89 ca                	mov    %ecx,%edx
e0102fc7:	83 c4 1c             	add    $0x1c,%esp
e0102fca:	5b                   	pop    %ebx
e0102fcb:	5e                   	pop    %esi
e0102fcc:	5f                   	pop    %edi
e0102fcd:	5d                   	pop    %ebp
e0102fce:	c3                   	ret    

e0102fcf <__umoddi3>:
e0102fcf:	55                   	push   %ebp
e0102fd0:	89 e5                	mov    %esp,%ebp
e0102fd2:	57                   	push   %edi
e0102fd3:	56                   	push   %esi
e0102fd4:	53                   	push   %ebx
e0102fd5:	83 ec 1c             	sub    $0x1c,%esp
e0102fd8:	8b 75 08             	mov    0x8(%ebp),%esi
e0102fdb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
e0102fde:	8b 7d 10             	mov    0x10(%ebp),%edi
e0102fe1:	8b 55 14             	mov    0x14(%ebp),%edx
e0102fe4:	89 f0                	mov    %esi,%eax
e0102fe6:	89 5d e0             	mov    %ebx,-0x20(%ebp)
e0102fe9:	85 d2                	test   %edx,%edx
e0102feb:	75 2e                	jne    e010301b <__umoddi3+0x4c>
e0102fed:	39 df                	cmp    %ebx,%edi
e0102fef:	76 06                	jbe    e0102ff7 <__umoddi3+0x28>
e0102ff1:	89 da                	mov    %ebx,%edx
e0102ff3:	f7 f7                	div    %edi
e0102ff5:	eb 1b                	jmp    e0103012 <__umoddi3+0x43>
e0102ff7:	89 f9                	mov    %edi,%ecx
e0102ff9:	85 ff                	test   %edi,%edi
e0102ffb:	75 0b                	jne    e0103008 <__umoddi3+0x39>
e0102ffd:	b8 01 00 00 00       	mov    $0x1,%eax
e0103002:	31 d2                	xor    %edx,%edx
e0103004:	f7 f7                	div    %edi
e0103006:	89 c1                	mov    %eax,%ecx
e0103008:	89 d8                	mov    %ebx,%eax
e010300a:	31 d2                	xor    %edx,%edx
e010300c:	f7 f1                	div    %ecx
e010300e:	89 f0                	mov    %esi,%eax
e0103010:	f7 f1                	div    %ecx
e0103012:	89 d0                	mov    %edx,%eax
e0103014:	31 db                	xor    %ebx,%ebx
e0103016:	e9 a4 00 00 00       	jmp    e01030bf <__umoddi3+0xf0>
e010301b:	39 da                	cmp    %ebx,%edx
e010301d:	0f 87 9c 00 00 00    	ja     e01030bf <__umoddi3+0xf0>
e0103023:	0f bd ca             	bsr    %edx,%ecx
e0103026:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
e0103029:	83 75 e4 1f          	xorl   $0x1f,-0x1c(%ebp)
e010302d:	75 16                	jne    e0103045 <__umoddi3+0x76>
e010302f:	39 da                	cmp    %ebx,%edx
e0103031:	72 04                	jb     e0103037 <__umoddi3+0x68>
e0103033:	39 f7                	cmp    %esi,%edi
e0103035:	77 09                	ja     e0103040 <__umoddi3+0x71>
e0103037:	89 f0                	mov    %esi,%eax
e0103039:	29 f8                	sub    %edi,%eax
e010303b:	19 d3                	sbb    %edx,%ebx
e010303d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
e0103040:	8b 5d e0             	mov    -0x20(%ebp),%ebx
e0103043:	eb 7a                	jmp    e01030bf <__umoddi3+0xf0>
e0103045:	b8 20 00 00 00       	mov    $0x20,%eax
e010304a:	2b 45 e4             	sub    -0x1c(%ebp),%eax
e010304d:	89 45 e0             	mov    %eax,-0x20(%ebp)
e0103050:	8a 4d e4             	mov    -0x1c(%ebp),%cl
e0103053:	d3 e2                	shl    %cl,%edx
e0103055:	89 f8                	mov    %edi,%eax
e0103057:	8a 4d e0             	mov    -0x20(%ebp),%cl
e010305a:	d3 e8                	shr    %cl,%eax
e010305c:	09 d0                	or     %edx,%eax
e010305e:	89 45 dc             	mov    %eax,-0x24(%ebp)
e0103061:	8a 4d e4             	mov    -0x1c(%ebp),%cl
e0103064:	d3 e7                	shl    %cl,%edi
e0103066:	89 7d d8             	mov    %edi,-0x28(%ebp)
e0103069:	89 df                	mov    %ebx,%edi
e010306b:	8a 4d e0             	mov    -0x20(%ebp),%cl
e010306e:	d3 ef                	shr    %cl,%edi
e0103070:	8a 4d e4             	mov    -0x1c(%ebp),%cl
e0103073:	d3 e3                	shl    %cl,%ebx
e0103075:	89 f0                	mov    %esi,%eax
e0103077:	8a 4d e0             	mov    -0x20(%ebp),%cl
e010307a:	d3 e8                	shr    %cl,%eax
e010307c:	09 d8                	or     %ebx,%eax
e010307e:	8a 4d e4             	mov    -0x1c(%ebp),%cl
e0103081:	d3 e6                	shl    %cl,%esi
e0103083:	89 f1                	mov    %esi,%ecx
e0103085:	89 fa                	mov    %edi,%edx
e0103087:	f7 75 dc             	divl   -0x24(%ebp)
e010308a:	89 d3                	mov    %edx,%ebx
e010308c:	f7 65 d8             	mull   -0x28(%ebp)
e010308f:	89 c6                	mov    %eax,%esi
e0103091:	89 d7                	mov    %edx,%edi
e0103093:	39 d3                	cmp    %edx,%ebx
e0103095:	72 08                	jb     e010309f <__umoddi3+0xd0>
e0103097:	39 c1                	cmp    %eax,%ecx
e0103099:	73 0e                	jae    e01030a9 <__umoddi3+0xda>
e010309b:	39 d3                	cmp    %edx,%ebx
e010309d:	75 0a                	jne    e01030a9 <__umoddi3+0xda>
e010309f:	2b 45 d8             	sub    -0x28(%ebp),%eax
e01030a2:	1b 55 dc             	sbb    -0x24(%ebp),%edx
e01030a5:	89 d7                	mov    %edx,%edi
e01030a7:	89 c6                	mov    %eax,%esi
e01030a9:	89 ca                	mov    %ecx,%edx
e01030ab:	29 f2                	sub    %esi,%edx
e01030ad:	19 fb                	sbb    %edi,%ebx
e01030af:	89 d8                	mov    %ebx,%eax
e01030b1:	8a 4d e0             	mov    -0x20(%ebp),%cl
e01030b4:	d3 e0                	shl    %cl,%eax
e01030b6:	8a 4d e4             	mov    -0x1c(%ebp),%cl
e01030b9:	d3 ea                	shr    %cl,%edx
e01030bb:	09 d0                	or     %edx,%eax
e01030bd:	d3 eb                	shr    %cl,%ebx
e01030bf:	89 da                	mov    %ebx,%edx
e01030c1:	83 c4 1c             	add    $0x1c,%esp
e01030c4:	5b                   	pop    %ebx
e01030c5:	5e                   	pop    %esi
e01030c6:	5f                   	pop    %edi
e01030c7:	5d                   	pop    %ebp
e01030c8:	c3                   	ret    
e01030c9:	66 90                	xchg   %ax,%ax
e01030cb:	90                   	nop
