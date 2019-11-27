/* See COPYRIGHT for copyright information. */

#include <inc/x86.h>
#include <kern/kclock.h>
#include <inc/time.h>

static int
get_timestamp(void)
{
    struct tm time;

	time.tm_sec = BCD2BIN(mc146818_read(RTC_SEC));
	time.tm_min = BCD2BIN(mc146818_read(RTC_MIN));
	time.tm_hour = BCD2BIN(mc146818_read(RTC_HOUR));
	time.tm_mday = BCD2BIN(mc146818_read(RTC_DAY));
	time.tm_mon = BCD2BIN(mc146818_read(RTC_MON));
	time.tm_year = BCD2BIN(mc146818_read(RTC_YEAR));

	return timestamp(&time);
}

int 
gettime(void)
{
	int t;

	nmi_disable();

    while (mc146818_read(RTC_AREG) & RTC_UPDATE_IN_PROGRESS);

    if ((t = get_timestamp()) != get_timestamp()) {
        t = get_timestamp();
    }

	nmi_enable();

	return t;
}

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

