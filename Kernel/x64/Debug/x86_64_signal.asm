; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_signal_debug
_BSS	SEGMENT
_signal_debug DB 01H DUP (?)
_BSS	ENDS
CONST	SEGMENT
$SG3541	DB	'signal ret stack -> %x ', 0dH, 0aH, 00H
CONST	ENDS
PUBLIC	?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z	; AuAllocateSignal
PUBLIC	?AuCheckSignal@@YA_NPEAU_au_thread_@@PEAUinterrupt_stack_frame@@@Z ; AuCheckSignal
PUBLIC	?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z ; AuGetSignal
PUBLIC	?AuPrepareSignal@@YAXPEAU_au_thread_@@PEAUinterrupt_stack_frame@@PEAU_signal_@@@Z ; AuPrepareSignal
PUBLIC	?AuSendSignal@@YAXGH@Z				; AuSendSignal
PUBLIC	?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z	; AuSignalRemoveAll
PUBLIC	AuSignalDebug
EXTRN	AuUnblockThread:PROC
EXTRN	AuThreadFindByID:PROC
EXTRN	AuThreadFindByIDBlockList:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	AuMapPage:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	memset:PROC
EXTRN	memcpy:PROC
EXTRN	SeTextOut:PROC
EXTRN	SigRet:PROC
pdata	SEGMENT
$pdata$?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z DD imagerel $LN4
	DD	imagerel $LN4+249
	DD	imagerel $unwind$?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z
$pdata$?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z DD imagerel $LN5
	DD	imagerel $LN5+176
	DD	imagerel $unwind$?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z
$pdata$?AuPrepareSignal@@YAXPEAU_au_thread_@@PEAUinterrupt_stack_frame@@PEAU_signal_@@@Z DD imagerel $LN6
	DD	imagerel $LN6+440
	DD	imagerel $unwind$?AuPrepareSignal@@YAXPEAU_au_thread_@@PEAUinterrupt_stack_frame@@PEAU_signal_@@@Z
$pdata$?AuSendSignal@@YAXGH@Z DD imagerel $LN7
	DD	imagerel $LN7+117
	DD	imagerel $unwind$?AuSendSignal@@YAXGH@Z
$pdata$?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+138
	DD	imagerel $unwind$?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z
$pdata$AuSignalDebug DD imagerel $LN4
	DD	imagerel $LN4+42
	DD	imagerel $unwind$AuSignalDebug
pdata	ENDS
xdata	SEGMENT
$unwind$?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z DD 010d01H
	DD	0620dH
$unwind$?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z DD 010901H
	DD	06209H
$unwind$?AuPrepareSignal@@YAXPEAU_au_thread_@@PEAUinterrupt_stack_frame@@PEAU_signal_@@@Z DD 011301H
	DD	0a213H
$unwind$?AuSendSignal@@YAXGH@Z DD 010d01H
	DD	0620dH
$unwind$?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z DD 010901H
	DD	06209H
$unwind$AuSignalDebug DD 010901H
	DD	04209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
rcx$ = 48
AuSignalDebug PROC

; 181  : extern "C" void AuSignalDebug(uint64_t rcx) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 182  : 	if (_signal_debug) {

	movzx	eax, BYTE PTR _signal_debug
	test	eax, eax
	je	SHORT $LN1@AuSignalDe

; 183  : 		SeTextOut("signal ret stack -> %x \r\n", rcx);

	mov	rdx, QWORD PTR rcx$[rsp]
	lea	rcx, OFFSET FLAT:$SG3541
	call	SeTextOut
$LN1@AuSignalDe:

; 184  : 	}
; 185  : }

	add	rsp, 40					; 00000028H
	ret	0
AuSignalDebug ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
sig$1 = 32
thr$ = 64
?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z PROC		; AuSignalRemoveAll

; 166  : void AuSignalRemoveAll(AuThread* thr) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 167  : 	if (thr->pendingSigCount < 0)

	mov	rax, QWORD PTR thr$[rsp]
	movzx	eax, BYTE PTR [rax+626]
	test	eax, eax
	jge	SHORT $LN4@AuSignalRe

; 168  : 		return;

	jmp	SHORT $LN5@AuSignalRe
$LN4@AuSignalRe:
$LN3@AuSignalRe:

; 169  : 
; 170  : 	while (thr->pendingSigCount) {

	mov	rax, QWORD PTR thr$[rsp]
	movzx	eax, BYTE PTR [rax+626]
	test	eax, eax
	je	SHORT $LN2@AuSignalRe

; 171  : 		Signal * sig = AuGetSignal(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z ; AuGetSignal
	mov	QWORD PTR sig$1[rsp], rax

; 172  : 		if (!sig)

	cmp	QWORD PTR sig$1[rsp], 0
	jne	SHORT $LN1@AuSignalRe

; 173  : 			break;  //there might be bug in pendingSigCount

	jmp	SHORT $LN2@AuSignalRe
$LN1@AuSignalRe:

; 174  : 		kfree(sig->signalStack);

	mov	rax, QWORD PTR sig$1[rsp]
	mov	rcx, QWORD PTR [rax+4]
	call	kfree

; 175  : 		kfree(sig->signalState);

	mov	rax, QWORD PTR sig$1[rsp]
	mov	rcx, QWORD PTR [rax+12]
	call	kfree

; 176  : 		kfree(sig);

	mov	rcx, QWORD PTR sig$1[rsp]
	call	kfree

; 177  : 		thr->pendingSigCount--;

	mov	rax, QWORD PTR thr$[rsp]
	movzx	eax, BYTE PTR [rax+626]
	dec	al
	mov	rcx, QWORD PTR thr$[rsp]
	mov	BYTE PTR [rcx+626], al

; 178  : 	}

	jmp	SHORT $LN3@AuSignalRe
$LN2@AuSignalRe:
$LN5@AuSignalRe:

; 179  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z ENDP		; AuSignalRemoveAll
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
blocked$ = 32
thr$ = 40
tid$ = 64
signo$ = 72
?AuSendSignal@@YAXGH@Z PROC				; AuSendSignal

; 141  : void AuSendSignal(uint16_t tid, int signo) {

$LN7:
	mov	DWORD PTR [rsp+16], edx
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 56					; 00000038H

; 142  : 	AuThread* thr = AuThreadFindByID(tid);

	movzx	ecx, WORD PTR tid$[rsp]
	call	AuThreadFindByID
	mov	QWORD PTR thr$[rsp], rax

; 143  : 	bool blocked = false;

	mov	BYTE PTR blocked$[rsp], 0

; 144  : 	if (!thr){

	cmp	QWORD PTR thr$[rsp], 0
	jne	SHORT $LN4@AuSendSign

; 145  : 		thr = AuThreadFindByIDBlockList(tid);

	movzx	ecx, WORD PTR tid$[rsp]
	call	AuThreadFindByIDBlockList
	mov	QWORD PTR thr$[rsp], rax

; 146  : 		if (thr)

	cmp	QWORD PTR thr$[rsp], 0
	je	SHORT $LN3@AuSendSign

; 147  : 			blocked = true;

	mov	BYTE PTR blocked$[rsp], 1
$LN3@AuSendSign:
$LN4@AuSendSign:

; 148  : 	}
; 149  : 		
; 150  : 	if (!thr)

	cmp	QWORD PTR thr$[rsp], 0
	jne	SHORT $LN2@AuSendSign

; 151  : 		return;

	jmp	SHORT $LN5@AuSendSign
$LN2@AuSendSign:

; 152  : 
; 153  : 	AuAllocateSignal(thr, signo);

	mov	edx, DWORD PTR signo$[rsp]
	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z ; AuAllocateSignal

; 154  : 
; 155  : 	/* unblock the thread for signal handling */
; 156  : 	if (blocked) {

	movzx	eax, BYTE PTR blocked$[rsp]
	test	eax, eax
	je	SHORT $LN1@AuSendSign

; 157  : 		AuUnblockThread(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	AuUnblockThread
$LN1@AuSendSign:
$LN5@AuSendSign:

; 158  : 	}
; 159  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuSendSignal@@YAXGH@Z ENDP				; AuSendSignal
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
i$1 = 32
rsp_val$ = 40
rsp_$ = 48
ctx$ = 56
tv85 = 64
thr$ = 96
frame$ = 104
signal$ = 112
?AuPrepareSignal@@YAXPEAU_au_thread_@@PEAUinterrupt_stack_frame@@PEAU_signal_@@@Z PROC ; AuPrepareSignal

; 109  : void AuPrepareSignal(AuThread* thr, interrupt_stack_frame* frame, Signal* signal) {

$LN6:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 110  : 	x86_64_cpu_regs_t* ctx = (x86_64_cpu_regs_t*)(thr->frame.kern_esp - sizeof(x86_64_cpu_regs_t));

	mov	rax, QWORD PTR thr$[rsp]
	mov	rax, QWORD PTR [rax+200]
	sub	rax, 160				; 000000a0H
	mov	QWORD PTR ctx$[rsp], rax

; 111  : 	memcpy(signal->signalStack, ctx, sizeof(x86_64_cpu_regs_t));

	mov	r8d, 160				; 000000a0H
	mov	rdx, QWORD PTR ctx$[rsp]
	mov	rax, QWORD PTR signal$[rsp]
	mov	rcx, QWORD PTR [rax+4]
	call	memcpy

; 112  : 	memcpy(signal->signalState, &thr->frame, sizeof(AuThreadFrame));

	mov	rax, QWORD PTR thr$[rsp]
	mov	r8d, 216				; 000000d8H
	mov	rdx, rax
	mov	rax, QWORD PTR signal$[rsp]
	mov	rcx, QWORD PTR [rax+12]
	call	memcpy

; 113  : 	uint64_t rsp_val = (uint64_t)frame->rsp;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rax, QWORD PTR [rax+40]
	mov	QWORD PTR rsp_val$[rsp], rax

; 114  : 	rsp_val -= 8;

	mov	rax, QWORD PTR rsp_val$[rsp]
	sub	rax, 8
	mov	QWORD PTR rsp_val$[rsp], rax

; 115  : 	rsp_val &= 0xFFFFFFFFFFFFFFF0;

	mov	rax, QWORD PTR rsp_val$[rsp]
	and	rax, -16
	mov	QWORD PTR rsp_val$[rsp], rax

; 116  : 	uint64_t* rsp_ = (uint64_t*)rsp_val;

	mov	rax, QWORD PTR rsp_val$[rsp]
	mov	QWORD PTR rsp_$[rsp], rax

; 117  : 	for (int i = 0; i < 2; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@AuPrepareS
$LN2@AuPrepareS:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuPrepareS:
	cmp	DWORD PTR i$1[rsp], 2
	jge	SHORT $LN1@AuPrepareS

; 118  : 		AuMapPage((uint64_t)AuPmmngrAlloc(), 0x700000 + i * 4096, X86_64_PAGING_USER);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	add	eax, 7340032				; 00700000H
	cdqe
	mov	QWORD PTR tv85[rsp], rax
	call	AuPmmngrAlloc
	mov	r8b, 4
	mov	rcx, QWORD PTR tv85[rsp]
	mov	rdx, rcx
	mov	rcx, rax
	call	AuMapPage
	jmp	SHORT $LN2@AuPrepareS
$LN1@AuPrepareS:

; 119  : 	memcpy((void*)0x700000, &SigRet, 8192);

	mov	r8d, 8192				; 00002000H
	lea	rdx, OFFSET FLAT:SigRet
	mov	ecx, 7340032				; 00700000H
	call	memcpy

; 120  : 	*rsp_ = 0x700000;

	mov	rax, QWORD PTR rsp_$[rsp]
	mov	QWORD PTR [rax], 7340032		; 00700000H

; 121  : 
; 122  : 	thr->frame.rbp = (uint64_t)rsp_;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR rsp_$[rsp]
	mov	QWORD PTR [rax+88], rcx

; 123  : 	thr->frame.rcx = signal->signum;

	mov	rax, QWORD PTR signal$[rsp]
	movsxd	rax, DWORD PTR [rax]
	mov	rcx, QWORD PTR thr$[rsp]
	mov	QWORD PTR [rcx+56], rax

; 124  : 	thr->frame.rip = (uint64_t)thr->singals[signal->signum];

	mov	rax, QWORD PTR signal$[rsp]
	movsxd	rax, DWORD PTR [rax]
	mov	rcx, QWORD PTR thr$[rsp]
	mov	rdx, QWORD PTR thr$[rsp]
	mov	rax, QWORD PTR [rdx+rax*8+306]
	mov	QWORD PTR [rcx+32], rax

; 125  : 	thr->frame.rsp = (uint64_t)frame->rsp;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR frame$[rsp]
	mov	rcx, QWORD PTR [rcx+40]
	mov	QWORD PTR [rax+8], rcx

; 126  : 	thr->frame.rflags = 0x286;

	mov	rax, QWORD PTR thr$[rsp]
	mov	QWORD PTR [rax+16], 646			; 00000286H

; 127  : 	
; 128  : 	frame->rsp = (uint64_t)rsp_;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rcx, QWORD PTR rsp_$[rsp]
	mov	QWORD PTR [rax+40], rcx

; 129  : 	frame->rip = thr->frame.rip;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rcx, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR [rcx+32]
	mov	QWORD PTR [rax+16], rcx

; 130  : 	frame->rflags = 0x286;

	mov	rax, QWORD PTR frame$[rsp]
	mov	QWORD PTR [rax+32], 646			; 00000286H

; 131  : 	frame->cs = SEGVAL(GDT_ENTRY_USER_CODE, 3);

	mov	rax, QWORD PTR frame$[rsp]
	mov	QWORD PTR [rax+24], 43			; 0000002bH

; 132  : 	frame->ss = SEGVAL(GDT_ENTRY_USER_DATA, 3);

	mov	rax, QWORD PTR frame$[rsp]
	mov	QWORD PTR [rax+48], 35			; 00000023H

; 133  : 	thr->returnableSignal = signal;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR signal$[rsp]
	mov	QWORD PTR [rax+627], rcx

; 134  : }

	add	rsp, 88					; 00000058H
	ret	0
?AuPrepareSignal@@YAXPEAU_au_thread_@@PEAUinterrupt_stack_frame@@PEAU_signal_@@@Z ENDP ; AuPrepareSignal
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
temp$ = 32
sig$ = 40
curr_thr$ = 64
?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z PROC	; AuGetSignal

; 85   : Signal *AuGetSignal(AuThread* curr_thr) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 86   : 	if (!curr_thr->signalQueue)

	mov	rax, QWORD PTR curr_thr$[rsp]
	cmp	QWORD PTR [rax+618], 0
	jne	SHORT $LN2@AuGetSigna

; 87   : 		return NULL;

	xor	eax, eax
	jmp	$LN3@AuGetSigna
$LN2@AuGetSigna:

; 88   : 	Signal* sig;
; 89   : 	SignalQueue* temp;
; 90   : 	temp = curr_thr->signalQueue;

	mov	rax, QWORD PTR curr_thr$[rsp]
	mov	rax, QWORD PTR [rax+618]
	mov	QWORD PTR temp$[rsp], rax

; 91   : 	curr_thr->signalQueue = curr_thr->signalQueue->link;

	mov	rax, QWORD PTR curr_thr$[rsp]
	mov	rax, QWORD PTR [rax+618]
	mov	rcx, QWORD PTR curr_thr$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR [rcx+618], rax

; 92   : 	temp->link = NULL;

	mov	rax, QWORD PTR temp$[rsp]
	mov	QWORD PTR [rax+8], 0

; 93   : 	sig = (Signal*)temp->Signal;

	mov	rax, QWORD PTR temp$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR sig$[rsp], rax

; 94   : 	kfree(temp);

	mov	rcx, QWORD PTR temp$[rsp]
	call	kfree

; 95   : 	curr_thr->pendingSigCount--;

	mov	rax, QWORD PTR curr_thr$[rsp]
	movzx	eax, BYTE PTR [rax+626]
	dec	al
	mov	rcx, QWORD PTR curr_thr$[rsp]
	mov	BYTE PTR [rcx+626], al

; 96   : 
; 97   : 	curr_thr->returnableSignal = sig;

	mov	rax, QWORD PTR curr_thr$[rsp]
	mov	rcx, QWORD PTR sig$[rsp]
	mov	QWORD PTR [rax+627], rcx

; 98   : 	if (!sig)

	cmp	QWORD PTR sig$[rsp], 0
	jne	SHORT $LN1@AuGetSigna

; 99   : 		return NULL;

	xor	eax, eax
	jmp	SHORT $LN3@AuGetSigna
$LN1@AuGetSigna:

; 100  : 	return sig;

	mov	rax, QWORD PTR sig$[rsp]
$LN3@AuGetSigna:

; 101  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z ENDP	; AuGetSignal
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
curr_thr$ = 8
frame$ = 16
?AuCheckSignal@@YA_NPEAU_au_thread_@@PEAUinterrupt_stack_frame@@@Z PROC ; AuCheckSignal

; 72   : bool AuCheckSignal(AuThread* curr_thr, interrupt_stack_frame *frame) {

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx

; 73   : 	if (!curr_thr->signalQueue)

	mov	rax, QWORD PTR curr_thr$[rsp]
	cmp	QWORD PTR [rax+618], 0
	jne	SHORT $LN2@AuCheckSig

; 74   : 		return false;

	xor	al, al
	jmp	SHORT $LN3@AuCheckSig
$LN2@AuCheckSig:

; 75   : 	if (curr_thr->pendingSigCount > 0 && frame->cs == SEGVAL(GDT_ENTRY_USER_CODE,3))

	mov	rax, QWORD PTR curr_thr$[rsp]
	movzx	eax, BYTE PTR [rax+626]
	test	eax, eax
	jle	SHORT $LN1@AuCheckSig
	mov	rax, QWORD PTR frame$[rsp]
	cmp	QWORD PTR [rax+24], 43			; 0000002bH
	jne	SHORT $LN1@AuCheckSig

; 76   : 		return true;

	mov	al, 1
	jmp	SHORT $LN3@AuCheckSig
$LN1@AuCheckSig:

; 77   : 	return false;

	xor	al, al
$LN3@AuCheckSig:

; 78   : }

	ret	0
?AuCheckSignal@@YA_NPEAU_au_thread_@@PEAUinterrupt_stack_frame@@@Z ENDP ; AuCheckSignal
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
signal$ = 32
queue$ = 40
dest_thread$ = 64
signum$ = 72
?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z PROC		; AuAllocateSignal

; 49   : void AuAllocateSignal(AuThread* dest_thread, int signum) {

$LN4:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 50   : 	if (dest_thread->signalQueue)

	mov	rax, QWORD PTR dest_thread$[rsp]
	cmp	QWORD PTR [rax+618], 0
	je	SHORT $LN1@AuAllocate

; 51   : 		return;

	jmp	$LN2@AuAllocate
$LN1@AuAllocate:

; 52   : 	Signal *signal = (Signal*)kmalloc(sizeof(Signal));

	mov	ecx, 22
	call	kmalloc
	mov	QWORD PTR signal$[rsp], rax

; 53   : 	memset(signal, 0, sizeof(Signal));

	mov	r8d, 22
	xor	edx, edx
	mov	rcx, QWORD PTR signal$[rsp]
	call	memset

; 54   : 	signal->signum = signum;

	mov	rax, QWORD PTR signal$[rsp]
	mov	ecx, DWORD PTR signum$[rsp]
	mov	DWORD PTR [rax], ecx

; 55   : 	signal->signalStack = (x86_64_cpu_regs_t*)kmalloc(sizeof(x86_64_cpu_regs_t));

	mov	ecx, 160				; 000000a0H
	call	kmalloc
	mov	rcx, QWORD PTR signal$[rsp]
	mov	QWORD PTR [rcx+4], rax

; 56   : 	signal->signalState = (AuThreadFrame*)kmalloc(sizeof(AuThreadFrame));

	mov	ecx, 216				; 000000d8H
	call	kmalloc
	mov	rcx, QWORD PTR signal$[rsp]
	mov	QWORD PTR [rcx+12], rax

; 57   : 	SignalQueue* queue = (SignalQueue*)kmalloc(sizeof(SignalQueue));

	mov	ecx, 16
	call	kmalloc
	mov	QWORD PTR queue$[rsp], rax

; 58   : 	memset(queue, 0, sizeof(SignalQueue));

	mov	r8d, 16
	xor	edx, edx
	mov	rcx, QWORD PTR queue$[rsp]
	call	memset

; 59   : 	queue->Signal = signal;

	mov	rax, QWORD PTR queue$[rsp]
	mov	rcx, QWORD PTR signal$[rsp]
	mov	QWORD PTR [rax], rcx

; 60   : 	queue->link = dest_thread->signalQueue;

	mov	rax, QWORD PTR queue$[rsp]
	mov	rcx, QWORD PTR dest_thread$[rsp]
	mov	rcx, QWORD PTR [rcx+618]
	mov	QWORD PTR [rax+8], rcx

; 61   : 	dest_thread->signalQueue = queue;

	mov	rax, QWORD PTR dest_thread$[rsp]
	mov	rcx, QWORD PTR queue$[rsp]
	mov	QWORD PTR [rax+618], rcx

; 62   : 	dest_thread->pendingSigCount += 1;

	mov	rax, QWORD PTR dest_thread$[rsp]
	movzx	eax, BYTE PTR [rax+626]
	inc	eax
	mov	rcx, QWORD PTR dest_thread$[rsp]
	mov	BYTE PTR [rcx+626], al

; 63   : 	signal->threadState = dest_thread->state;

	mov	rax, QWORD PTR signal$[rsp]
	mov	rcx, QWORD PTR dest_thread$[rsp]
	movzx	ecx, BYTE PTR [rcx+300]
	mov	BYTE PTR [rax+20], cl
$LN2@AuAllocate:

; 64   : 
; 65   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z ENDP		; AuAllocateSignal
_TEXT	ENDS
END
