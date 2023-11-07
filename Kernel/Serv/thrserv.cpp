/**
* BSD 2-Clause License
*
* Copyright (c) 2022-2023, Manas Kamal Choudhury
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice, this
*    list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice,
*    this list of conditions and the following disclaimer in the documentation
*    and/or other materials provided with the distribution.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
**/

#include <stdint.h>
#include <Hal/x86_64_sched.h>
#include <Hal/x86_64_signal.h>
#include <Hal/x86_64_lowlevel.h>
#include <process.h>
#include <Hal/serial.h>
#include <loader.h>
#include <Mm/kmalloc.h>
#include <_null.h>
#include <aucon.h>

/*
 * PauseThread -- pause the currently running
 * thread
 */
int PauseThread() {
	x64_cli();
	AuThread * current_thr = AuGetCurrentThread();
	AuBlockThread(current_thr);
	x64_force_sched();
	return 1;
}

/*
 * GetThreadID -- returns currently running thread id
 */
uint16_t GetThreadID() {
	AuThread* current_thr = AuGetCurrentThread();
	if (!current_thr)
		return -1;
	return current_thr->id;
}

/*
 * GetProcessID -- returns currently running process
 * id
 */
int GetProcessID() {
	AuThread * current_thr = AuGetCurrentThread();
	if (!current_thr)
		return -1;
	AuProcess* proc = AuProcessFindThread(current_thr);
	if (!proc){
		proc = AuProcessFindSubThread(current_thr);
		if (!proc){
			return -1;
		}
	}
	return proc->proc_id;
}

/*
 * ProcessExit -- marks a process as died, only available
 * from the main thread of the process
 */
int ProcessExit() {
	AuThread* current_thr = AuGetCurrentThread();
	AuProcess* proc = AuProcessFindThread(current_thr);
	if (!proc)
		return 1;
	AuProcessExit(proc);
	return 0;
}

/*
 * ProcessWaitForTermination -- wait for termination of
 * a child process
 * @param pid -- child process id, if -1 then any process
 */
int ProcessWaitForTermination(int pid) {
	AuThread* current_thr = AuGetCurrentThread();
	AuProcess* proc = AuProcessFindThread(current_thr);
	AuProcessWaitForTermination(proc, pid);
	return 0;
}

/*
 * CreateProcess -- creates a new process slot
 * @param parent_id -- parent process id
 * @param name -- name of the current process slot
 */
int CreateProcess(int parent_id, char *name) {
	AuProcess* slot = AuCreateProcessSlot(0, name);
	if (!slot)
		return -1;
	return slot->proc_id;
}

/*
 * ProcessLoadExec -- loads an executable to a
 * process slot
 */
int ProcessLoadExec(int proc_id, char* filename,int argc, char** argv) {
	AuProcess* proc = AuProcessFindPID(proc_id);
	
	if (!proc) {
		AuTextOut("No process found \n");
		return -1;
	}
	
	/* prepare stuffs for passing arguments */
	int char_cnt = 0;
	for (int i = 0; i < argc; i++) {
		size_t l = strlen(argv[i]);
		char_cnt += l; 
	}
	
	char** allocated_argv = 0;
	if (char_cnt > 0) {
		allocated_argv = (char**)kmalloc(char_cnt);
		memset(allocated_argv, 0, char_cnt);
		for (int i = 0; i < argc; i++)
			allocated_argv[i] = argv[i];
	}
	
	AuLoadExecToProcess(proc, filename, argc,allocated_argv);
}

/*
 * ProcessSleep -- put the current thread to sleep and process 
 * to busy wait state
 * @param ms -- millisecond 
 */
int ProcessSleep(uint64_t ms) {
	AuThread* current_thr = AuGetCurrentThread();
	if (!current_thr)
		return 0;
	AuSleepThread(current_thr, ms);
	AuForceScheduler();
}

/*
 * SignalReturn -- returns from a signal handler
 */
void SignalReturn(int num) {
	SeTextOut("Signal Return \r\n");
	/* just make a page fault */
}

/*
 * SetSignal -- register a signal handler
 * @param signo -- signal number
 * @param handler -- handler to register
 */
int SetSignal(int signo, AuSigHandler handler){
	AuThread* thr = AuGetCurrentThread();
	if (!thr)
		return 0;
	thr->singals[signo] = handler;
}

/*
 * GetSystemTimerTick -- returns the current system
 * tick
 */
size_t GetSystemTimerTick() {
	return AuGetSystemTimerTick();
}

/*
 * CreateUserThread -- creates an user mode thread
 * @return idx -- the thread index within 
 * the process
 */
int CreateUserThread(void(*entry) (void*), char *name){
	x64_cli();
	AuThread* thr = AuGetCurrentThread();
	if (!thr)
		return 0;
	AuProcess* proc = AuProcessFindThread(thr);
	if (!proc) {
		proc = AuProcessFindSubThread(thr);
		if (!proc)
			return 0;
	}
	int idx = AuCreateUserthread(proc, entry, name);
	return idx;
}

/*
 * CloseUserThread -- terminates a created thread
 * @param thread_idx -- thread index within 
 * the process
 * @note -- this system call is only supported
 * from the main thread or else system behavior 
 * will worse
 */
int CloseUserThread(int thread_idx) {
	x64_cli();
	AuThread* thr = AuGetCurrentThread();
	if (!thr)
		return 0;
	AuProcess* proc = AuProcessFindThread(thr);

	/* under development*/
	return 0; //NOT IMPLEMENTED
}

/*
 * SetFileToProcess -- copies a file from one process
 * to other
 * @param fileno -- file number of the current process
 * @param dest_fdidx -- destination process file index
 * @param proc_id -- destination process id
 */
int SetFileToProcess(int fileno, int dest_fdidx, int proc_id) {
	x64_cli();
	AuThread* thr = AuGetCurrentThread();
	if (!thr)
		return 0;
	/* file check if current thread's process is
	 * found by checking twice, first by
	 * main thread checkup second by sub thread
	 * checkup
	 */
	AuProcess* proc = AuProcessFindThread(thr);
	if (!proc) {
		proc = AuProcessFindSubThread(thr);
		if (!proc)
			return -1;
	}

	/* now try getting the destination process by its
	* process id
	*/
	AuProcess* destproc = AuProcessFindPID(proc_id);
	if (!destproc)
		return -1;

	/* now try getting the file from current process
	 * file entry
	 */
	AuVFSNode* file = proc->fds[fileno];
	if (!file)
		return -1;

	AuVFSNode *destfile = destproc->fds[dest_fdidx];
	if (destfile)
		return -1;
	else {
		/* now we have no file entry in destination
		 * process's file index, so make entry
		 * of current process's file targeted by
		 * fileno to destination processes file
		 * entry 
		 */
		destproc->fds[dest_fdidx] = file;
	}
}