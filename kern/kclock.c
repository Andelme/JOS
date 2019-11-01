/* See COPYRIGHT for copyright information. */

#include <inc/x86.h>
#include <kern/kclock.h>

void
rtc_init(void)
{
    uint8_t areg, breg;

	nmi_disable();
    
    outb(IO_RTC_CMND, RTC_AREG);
    areg = inb(IO_RTC_DATA);
    areg |= 0x0f; 
    outb(IO_RTC_DATA, areg);

    outb(IO_RTC_CMND, RTC_BREG);
    breg = inb(IO_RTC_DATA);
    breg |= RTC_PIE;
    outb(IO_RTC_DATA, breg);

	nmi_enable();
}

uint8_t
rtc_check_status(void)
{
	uint8_t status = 0;
    outb(IO_RTC_CMND, RTC_CREG);
    status = inb(IO_RTC_DATA);
	return status;
}

unsigned
mc146818_read(unsigned reg)
{
	outb(IO_RTC_CMND, reg);
	return inb(IO_RTC_DATA);
}

void
mc146818_write(unsigned reg, unsigned datum)
{
	outb(IO_RTC_CMND, reg);
	outb(IO_RTC_DATA, datum);
}

