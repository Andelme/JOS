#include <inc/assert.h>
#include <inc/x86.h>
#include <kern/env.h>
#include <kern/monitor.h>


struct Taskstate cpu_ts;
void sched_halt(void);

// Choose a user environment to run and run it.
void
sched_yield(void)
{
	// Implement simple round-robin scheduling.
	//
	// Search through 'envs' for an ENV_RUNNABLE environment in
	// circular fashion starting just after the env was
	// last running.  Switch to the first such environment found.
	//
	// If no envs are runnable, but the environment previously
	// running is still ENV_RUNNING, it's okay to
	// choose that environment.
	//
	// If there are no runnable environments,
	// simply drop through to the code
	// below to halt the cpu.
	int i = 0;
    if (curenv == NULL) {
        env_run(&envs[0]);
    } else {
        int idx = ENVX(curenv->env_id);
        for (i = 1; i < NENV; ++i) {
            idx = (idx + 1) % NENV;
            if (envs[idx].env_status == ENV_RUNNABLE) {
                env_run(&envs[idx]);    
            }
        }
        if (curenv && curenv->env_status == ENV_RUNNING) {
            env_run(curenv);
        }
    }
		// sched_halt never returns
	sched_halt();
}

// Halt this CPU when there is nothing to do. Wait until the
// timer interrupt wakes it up. This function never returns.
//
void
sched_halt(void)
{
	int i;

	// For debugging and testing purposes, if there are no runnable
	// environments in the system, then drop into the kernel monitor.
	for (i = 0; i < NENV; i++) {
		if ((envs[i].env_status == ENV_RUNNABLE ||
		     envs[i].env_status == ENV_RUNNING ||
		     envs[i].env_status == ENV_DYING))
			break;
	}
	if (i == NENV) {
		cprintf("No runnable environments in the system!\n");
		while (1)
			monitor(NULL);
	}

	// Mark that no environment is running on CPU
	curenv = NULL;

	// Reset stack pointer, enable interrupts and then halt.
	asm volatile (
		"movl $0, %%ebp\n"
		"movl %0, %%esp\n"
		"pushl $0\n"
		"pushl $0\n"
		"sti\n"
		"hlt\n"
	: : "a" (cpu_ts.ts_esp0));
}

