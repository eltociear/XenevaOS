; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	AuCreateMutex
PUBLIC	AuAcquireMutex
PUBLIC	AuReleaseMutex
PUBLIC	AuDeleteMutex
EXTRN	AuCreateSpinlock:PROC
EXTRN	AuAcquireSpinlock:PROC
EXTRN	AuReleaseSpinlock:PROC
EXTRN	AuGetCurrentThread:PROC
EXTRN	AuBlockThread:PROC
EXTRN	AuUnblockThread:PROC
EXTRN	initialize_list:PROC
EXTRN	list_add:PROC
EXTRN	list_remove:PROC
EXTRN	x64_force_sched:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
pdata	SEGMENT
$pdata$AuCreateMutex DD imagerel $LN3
	DD	imagerel $LN3+71
	DD	imagerel $unwind$AuCreateMutex
$pdata$AuAcquireMutex DD imagerel $LN5
	DD	imagerel $LN5+127
	DD	imagerel $unwind$AuAcquireMutex
$pdata$AuReleaseMutex DD imagerel $LN8
	DD	imagerel $LN8+143
	DD	imagerel $unwind$AuReleaseMutex
$pdata$AuDeleteMutex DD imagerel $LN3
	DD	imagerel $LN3+38
	DD	imagerel $unwind$AuDeleteMutex
pdata	ENDS
xdata	SEGMENT
$unwind$AuCreateMutex DD 010401H
	DD	06204H
$unwind$AuAcquireMutex DD 010901H
	DD	06209H
$unwind$AuReleaseMutex DD 010901H
	DD	06209H
$unwind$AuDeleteMutex DD 010901H
	DD	04209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sync\mutex.cpp
_TEXT	SEGMENT
mutex$ = 48
AuDeleteMutex PROC

; 92   : AU_EXTERN AU_EXPORT void AuDeleteMutex(AuMutex *mutex) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 93   : 	kfree(mutex->waiters);

	mov	rax, QWORD PTR mutex$[rsp]
	mov	rcx, QWORD PTR [rax+24]
	call	kfree

; 94   : 	kfree(mutex);

	mov	rcx, QWORD PTR mutex$[rsp]
	call	kfree

; 95   : }

	add	rsp, 40					; 00000028H
	ret	0
AuDeleteMutex ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sync\mutex.cpp
_TEXT	SEGMENT
i$1 = 32
thr_$2 = 40
mutex$ = 64
AuReleaseMutex PROC

; 71   : AU_EXTERN AU_EXPORT int AuReleaseMutex(AuMutex *mutex) {

$LN8:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 72   : 	if (mutex->owner != AuGetCurrentThread())

	call	AuGetCurrentThread
	mov	rcx, QWORD PTR mutex$[rsp]
	cmp	QWORD PTR [rcx+16], rax
	je	SHORT $LN5@AuReleaseM

; 73   : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN6@AuReleaseM
$LN5@AuReleaseM:

; 74   : 
; 75   : 	mutex->status = 0;

	mov	rax, QWORD PTR mutex$[rsp]
	mov	BYTE PTR [rax+8], 0

; 76   : 	mutex->owner = NULL;

	mov	rax, QWORD PTR mutex$[rsp]
	mov	QWORD PTR [rax+16], 0

; 77   : 	for (int i = 0; i < mutex->waiters->pointer; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@AuReleaseM
$LN3@AuReleaseM:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@AuReleaseM:
	mov	rax, QWORD PTR mutex$[rsp]
	mov	rax, QWORD PTR [rax+24]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$1[rsp], eax
	jae	SHORT $LN2@AuReleaseM

; 78   : 		AuThread* thr_ = (AuThread*)list_remove(mutex->waiters, i);

	mov	edx, DWORD PTR i$1[rsp]
	mov	rax, QWORD PTR mutex$[rsp]
	mov	rcx, QWORD PTR [rax+24]
	call	list_remove
	mov	QWORD PTR thr_$2[rsp], rax

; 79   : 		if (thr_) {

	cmp	QWORD PTR thr_$2[rsp], 0
	je	SHORT $LN1@AuReleaseM

; 80   : 			AuUnblockThread(thr_);

	mov	rcx, QWORD PTR thr_$2[rsp]
	call	AuUnblockThread

; 81   : 			break;

	jmp	SHORT $LN2@AuReleaseM
$LN1@AuReleaseM:

; 82   : 		}
; 83   : 	}

	jmp	SHORT $LN3@AuReleaseM
$LN2@AuReleaseM:

; 84   : 
; 85   : 	return 0;

	xor	eax, eax
$LN6@AuReleaseM:

; 86   : }

	add	rsp, 56					; 00000038H
	ret	0
AuReleaseMutex ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sync\mutex.cpp
_TEXT	SEGMENT
current_thr$ = 32
mut$ = 64
AuAcquireMutex PROC

; 53   : AU_EXTERN AU_EXPORT int AuAcquireMutex(AuMutex* mut) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 54   : 	AuAcquireSpinlock(mut->lock);

	mov	rax, QWORD PTR mut$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	AuAcquireSpinlock

; 55   : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax
$LN2@AuAcquireM:

; 56   : 	while (mut->status) {

	mov	rax, QWORD PTR mut$[rsp]
	movzx	eax, BYTE PTR [rax+8]
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN1@AuAcquireM

; 57   : 		list_add(mut->waiters, current_thr);

	mov	rdx, QWORD PTR current_thr$[rsp]
	mov	rax, QWORD PTR mut$[rsp]
	mov	rcx, QWORD PTR [rax+24]
	call	list_add

; 58   : 		AuBlockThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	AuBlockThread

; 59   : 		x64_force_sched();

	call	x64_force_sched

; 60   : 	}

	jmp	SHORT $LN2@AuAcquireM
$LN1@AuAcquireM:

; 61   : 	mut->status = 1;

	mov	rax, QWORD PTR mut$[rsp]
	mov	BYTE PTR [rax+8], 1

; 62   : 	mut->owner = current_thr;

	mov	rax, QWORD PTR mut$[rsp]
	mov	rcx, QWORD PTR current_thr$[rsp]
	mov	QWORD PTR [rax+16], rcx

; 63   : 	AuReleaseSpinlock(mut->lock);

	mov	rax, QWORD PTR mut$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	AuReleaseSpinlock

; 64   : 	return 0;

	xor	eax, eax

; 65   : }

	add	rsp, 56					; 00000038H
	ret	0
AuAcquireMutex ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sync\mutex.cpp
_TEXT	SEGMENT
mut$ = 32
AuCreateMutex PROC

; 41   : AU_EXTERN AU_EXPORT AuMutex* AuCreateMutex() {

$LN3:
	sub	rsp, 56					; 00000038H

; 42   : 	AuMutex* mut = (AuMutex*)kmalloc(sizeof(AuMutex));

	mov	ecx, 32					; 00000020H
	call	kmalloc
	mov	QWORD PTR mut$[rsp], rax

; 43   : 	mut->lock = AuCreateSpinlock(false);

	xor	ecx, ecx
	call	AuCreateSpinlock
	mov	rcx, QWORD PTR mut$[rsp]
	mov	QWORD PTR [rcx], rax

; 44   : 	mut->owner = NULL;

	mov	rax, QWORD PTR mut$[rsp]
	mov	QWORD PTR [rax+16], 0

; 45   : 	mut->waiters = initialize_list();

	call	initialize_list
	mov	rcx, QWORD PTR mut$[rsp]
	mov	QWORD PTR [rcx+24], rax

; 46   : 	return mut;

	mov	rax, QWORD PTR mut$[rsp]

; 47   : }

	add	rsp, 56					; 00000038H
	ret	0
AuCreateMutex ENDP
_TEXT	ENDS
END
