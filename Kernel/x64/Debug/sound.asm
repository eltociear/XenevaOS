; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?_Registered_dev@@3PEAU_SoundDev_@@EA		; _Registered_dev
PUBLIC	?dsp_first@@3PEAU__au_dsp__@@EA			; dsp_first
PUBLIC	?dsp_last@@3PEAU__au_dsp__@@EA			; dsp_last
PUBLIC	?mixbuf@@3PEAEEA				; mixbuf
PUBLIC	?_audio_started_@@3_NA				; _audio_started_
PUBLIC	?_audio_stopped_@@3_NA				; _audio_stopped_
_BSS	SEGMENT
?_Registered_dev@@3PEAU_SoundDev_@@EA DQ 01H DUP (?)	; _Registered_dev
?dsp_first@@3PEAU__au_dsp__@@EA DQ 01H DUP (?)		; dsp_first
?dsp_last@@3PEAU__au_dsp__@@EA DQ 01H DUP (?)		; dsp_last
?mixbuf@@3PEAEEA DQ 01H DUP (?)				; mixbuf
?_audio_started_@@3_NA DB 01H DUP (?)			; _audio_started_
	ALIGN	4

?_audio_stopped_@@3_NA DB 01H DUP (?)			; _audio_stopped_
_BSS	ENDS
CONST	SEGMENT
$SG3671	DB	'/dev', 00H
	ORG $+3
$SG3676	DB	'sound', 00H
	ORG $+2
$SG3677	DB	'/', 00H
CONST	ENDS
PUBLIC	?AuSoundInitialise@@YAXXZ			; AuSoundInitialise
PUBLIC	AuSoundSetCard
PUBLIC	AuSoundGetBlock
PUBLIC	AuSoundRemoveDSP
PUBLIC	?AuSoundStart@@YAXXZ				; AuSoundStart
PUBLIC	?AuSoundStop@@YAXXZ				; AuSoundStop
PUBLIC	?AuSoundAddDSP@@YAXPEAU__au_dsp__@@@Z		; AuSoundAddDSP
PUBLIC	?AuRemoveDSP@@YAXPEAU__au_dsp__@@@Z		; AuRemoveDSP
PUBLIC	?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z		; AuSoundGetDSP
PUBLIC	?AuSoundRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z	; AuSoundRead
PUBLIC	?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z	; AuSoundWrite
PUBLIC	?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z	; AuSoundIOControl
EXTRN	?AuCircBufInitialise@@YAPEAU_circ_buf_@@PEAE_K@Z:PROC ; AuCircBufInitialise
EXTRN	?AuCircBufFree@@YAXPEAU_circ_buf_@@@Z:PROC	; AuCircBufFree
EXTRN	?AuCircBufPut@@YAHPEAU_circ_buf_@@E@Z:PROC	; AuCircBufPut
EXTRN	?AuCircBufGet@@YAHPEAU_circ_buf_@@PEAE@Z:PROC	; AuCircBufGet
EXTRN	?CircBufFull@@YA_NPEAU_circ_buf_@@@Z:PROC	; CircBufFull
EXTRN	AuGetCurrentThread:PROC
EXTRN	AuBlockThread:PROC
EXTRN	AuSleepThread:PROC
EXTRN	AuUnblockThread:PROC
EXTRN	AuForceScheduler:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	P2V:PROC
EXTRN	V2P:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuDevFSAddFile:PROC
EXTRN	strcpy:PROC
EXTRN	memset:PROC
pdata	SEGMENT
$pdata$?AuSoundInitialise@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+386
	DD	imagerel $unwind$?AuSoundInitialise@@YAXXZ
$pdata$AuSoundGetBlock DD imagerel $LN27
	DD	imagerel $LN27+516
	DD	imagerel $unwind$AuSoundGetBlock
$pdata$AuSoundRemoveDSP DD imagerel $LN4
	DD	imagerel $LN4+94
	DD	imagerel $unwind$AuSoundRemoveDSP
$pdata$?AuSoundStart@@YAXXZ DD imagerel $LN4
	DD	imagerel $LN4+31
	DD	imagerel $unwind$?AuSoundStart@@YAXXZ
$pdata$?AuSoundStop@@YAXXZ DD imagerel $LN4
	DD	imagerel $LN4+31
	DD	imagerel $unwind$?AuSoundStop@@YAXXZ
$pdata$?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z DD imagerel $LN7
	DD	imagerel $LN7+73
	DD	imagerel $unwind$?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z
$pdata$?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD imagerel $LN8
	DD	imagerel $LN8+215
	DD	imagerel $unwind$?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
$pdata$?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD imagerel $LN11
	DD	imagerel $LN11+352
	DD	imagerel $unwind$?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuSoundInitialise@@YAXXZ DD 010401H
	DD	08204H
$unwind$AuSoundGetBlock DD 010901H
	DD	0c209H
$unwind$AuSoundRemoveDSP DD 010901H
	DD	06209H
$unwind$?AuSoundStart@@YAXXZ DD 010401H
	DD	04204H
$unwind$?AuSoundStop@@YAXXZ DD 010401H
	DD	04204H
$unwind$?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z DD 010901H
	DD	02209H
$unwind$?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD 011801H
	DD	08218H
$unwind$?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD 011201H
	DD	0a212H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
tv67 = 32
dsp$1 = 40
_ioctl$ = 48
thr$ = 56
buffer$2 = 64
dsp_$3 = 72
node$ = 96
code$ = 104
arg$ = 112
?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z PROC	; AuSoundIOControl

; 219  : int AuSoundIOControl(AuVFSNode* node, int code, void* arg) {

$LN11:
	mov	QWORD PTR [rsp+24], r8
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 220  : 	AuFileIOControl *_ioctl = (AuFileIOControl*)arg;

	mov	rax, QWORD PTR arg$[rsp]
	mov	QWORD PTR _ioctl$[rsp], rax

; 221  : 	if (_ioctl->syscall_magic != AURORA_SYSCALL_MAGIC)

	mov	rax, QWORD PTR _ioctl$[rsp]
	cmp	DWORD PTR [rax], 86056964		; 05212004H
	je	SHORT $LN8@AuSoundIOC

; 222  : 		return -1;

	mov	eax, -1
	jmp	$LN9@AuSoundIOC
$LN8@AuSoundIOC:

; 223  : 
; 224  : 	AuThread *thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rsp], rax

; 225  : 	switch (code)

	mov	eax, DWORD PTR code$[rsp]
	mov	DWORD PTR tv67[rsp], eax
	cmp	DWORD PTR tv67[rsp], 100		; 00000064H
	je	SHORT $LN5@AuSoundIOC
	cmp	DWORD PTR tv67[rsp], 106		; 0000006aH
	je	$LN3@AuSoundIOC
	cmp	DWORD PTR tv67[rsp], 110		; 0000006eH
	je	$LN4@AuSoundIOC
	jmp	$LN1@AuSoundIOC
$LN5@AuSoundIOC:

; 226  : 	{
; 227  : 	case SOUND_REGISTER_SNDPLR: {
; 228  : 									
; 229  : 									AuDSP* dsp = (AuDSP*)kmalloc(sizeof(AuDSP));

	mov	ecx, 43					; 0000002bH
	call	kmalloc
	mov	QWORD PTR dsp$1[rsp], rax

; 230  : 									memset(dsp, 0, sizeof(AuDSP));

	mov	r8d, 43					; 0000002bH
	xor	edx, edx
	mov	rcx, QWORD PTR dsp$1[rsp]
	call	memset

; 231  : 									uint8_t* buffer = (uint8_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR buffer$2[rsp], rax

; 232  : 									memset(buffer, 0, PAGE_SIZE);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR buffer$2[rsp]
	call	memset

; 233  : 									dsp->buffer = AuCircBufInitialise(buffer, SND_BUFF_SZ);

	mov	edx, 4096				; 00001000H
	mov	rcx, QWORD PTR buffer$2[rsp]
	call	?AuCircBufInitialise@@YAPEAU_circ_buf_@@PEAE_K@Z ; AuCircBufInitialise
	mov	rcx, QWORD PTR dsp$1[rsp]
	mov	QWORD PTR [rcx], rax

; 234  : 									dsp->_dsp_id = thr->id;

	mov	rax, QWORD PTR dsp$1[rsp]
	mov	rcx, QWORD PTR thr$[rsp]
	movzx	ecx, WORD PTR [rcx+301]
	mov	WORD PTR [rax+8], cx

; 235  : 									dsp->SndThread = thr;

	mov	rax, QWORD PTR dsp$1[rsp]
	mov	rcx, QWORD PTR thr$[rsp]
	mov	QWORD PTR [rax+10], rcx

; 236  : 									dsp->sleep_time = _ioctl->uint_1;

	mov	rax, QWORD PTR _ioctl$[rsp]
	mov	eax, DWORD PTR [rax+10]
	mov	rcx, QWORD PTR dsp$1[rsp]
	mov	QWORD PTR [rcx+18], rax

; 237  : 									dsp->available = true;

	mov	rax, QWORD PTR dsp$1[rsp]
	mov	BYTE PTR [rax+26], 1

; 238  : 									AuSoundAddDSP(dsp);

	mov	rcx, QWORD PTR dsp$1[rsp]
	call	?AuSoundAddDSP@@YAXPEAU__au_dsp__@@@Z	; AuSoundAddDSP

; 239  : 									break;

	jmp	SHORT $LN6@AuSoundIOC
$LN4@AuSoundIOC:

; 240  : 	}
; 241  : 	case SOUND_READ_AVAIL: {
; 242  : 							   AuDSP *dsp_ = AuSoundGetDSP(thr->id);

	mov	rax, QWORD PTR thr$[rsp]
	movzx	ecx, WORD PTR [rax+301]
	call	?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z	; AuSoundGetDSP
	mov	QWORD PTR dsp_$3[rsp], rax

; 243  : 							   _ioctl->uchar_2 = dsp_->available;

	mov	rax, QWORD PTR _ioctl$[rsp]
	mov	rcx, QWORD PTR dsp_$3[rsp]
	movzx	ecx, BYTE PTR [rcx+26]
	mov	BYTE PTR [rax+5], cl

; 244  : 							   break;

	jmp	SHORT $LN6@AuSoundIOC
$LN3@AuSoundIOC:

; 245  : 
; 246  : 	}
; 247  : 	case SOUND_SET_VOLUME: {
; 248  : 							   if (!_Registered_dev)

	cmp	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, 0 ; _Registered_dev
	jne	SHORT $LN2@AuSoundIOC

; 249  : 								   return -1;

	mov	eax, -1
	jmp	SHORT $LN9@AuSoundIOC
$LN2@AuSoundIOC:

; 250  : 							   _Registered_dev->set_vol(_ioctl->uchar_1);

	mov	rax, QWORD PTR _ioctl$[rsp]
	movzx	ecx, BYTE PTR [rax+4]
	mov	rax, QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA ; _Registered_dev
	call	QWORD PTR [rax+64]
$LN1@AuSoundIOC:
$LN6@AuSoundIOC:

; 251  : 							   break;
; 252  : 	}
; 253  : 	default:
; 254  : 		break;
; 255  : 	}
; 256  : 	return 0;

	xor	eax, eax
$LN9@AuSoundIOC:

; 257  : }

	add	rsp, 88					; 00000058H
	ret	0
?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ENDP	; AuSoundIOControl
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
i$1 = 32
dsp$ = 40
t$ = 48
aligned_buf$ = 56
fsys$ = 80
file$ = 88
buffer$ = 96
length$ = 104
?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC	; AuSoundWrite

; 168  : size_t AuSoundWrite(AuVFSNode* fsys, AuVFSNode* file, uint64_t* buffer, uint32_t length) {

$LN8:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 169  : 	if (!_Registered_dev)

	cmp	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, 0 ; _Registered_dev
	jne	SHORT $LN5@AuSoundWri

; 170  : 		return 0;

	xor	eax, eax
	jmp	$LN6@AuSoundWri
$LN5@AuSoundWri:

; 171  : 	AuThread* t = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR t$[rsp], rax

; 172  : 	AuDSP* dsp = AuSoundGetDSP(t->id);

	mov	rax, QWORD PTR t$[rsp]
	movzx	ecx, WORD PTR [rax+301]
	call	?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z	; AuSoundGetDSP
	mov	QWORD PTR dsp$[rsp], rax

; 173  : 	uint8_t *aligned_buf = (uint8_t*)buffer;

	mov	rax, QWORD PTR buffer$[rsp]
	mov	QWORD PTR aligned_buf$[rsp], rax

; 174  : 	
; 175  : 	if (CircBufFull(dsp->buffer)){

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	?CircBufFull@@YA_NPEAU_circ_buf_@@@Z	; CircBufFull
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN4@AuSoundWri

; 176  : 		AuBlockThread(dsp->SndThread);

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR [rax+10]
	call	AuBlockThread

; 177  : 		AuForceScheduler();	

	call	AuForceScheduler
$LN4@AuSoundWri:

; 178  : 	}
; 179  : 	for (int i = 0; i < SND_BUFF_SZ; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@AuSoundWri
$LN2@AuSoundWri:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuSoundWri:
	cmp	DWORD PTR i$1[rsp], 4096		; 00001000H
	jge	SHORT $LN1@AuSoundWri

; 180  : 		AuCircBufPut(dsp->buffer, aligned_buf[i]);

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR aligned_buf$[rsp]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	rax, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	?AuCircBufPut@@YAHPEAU_circ_buf_@@E@Z	; AuCircBufPut

; 181  : 	}

	jmp	SHORT $LN2@AuSoundWri
$LN1@AuSoundWri:

; 182  : 
; 183  : 	AuSleepThread(t, dsp->sleep_time);

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rdx, QWORD PTR [rax+18]
	mov	rcx, QWORD PTR t$[rsp]
	call	AuSleepThread

; 184  : 	AuForceScheduler();

	call	AuForceScheduler

; 185  : 
; 186  : 	return SND_BUFF_SZ;

	mov	eax, 4096				; 00001000H
$LN6@AuSoundWri:

; 187  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP	; AuSoundWrite
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
fsys$ = 8
file$ = 16
buffer$ = 24
length$ = 32
?AuSoundRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC	; AuSoundRead

; 162  : size_t AuSoundRead(AuVFSNode* fsys, AuVFSNode* file, uint64_t* buffer, uint32_t length) {

	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx

; 163  : 	if (_Registered_dev == NULL)

	cmp	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, 0 ; _Registered_dev
	jne	SHORT $LN1@AuSoundRea

; 164  : 		return -1;

	mov	rax, -1
	jmp	SHORT $LN2@AuSoundRea
$LN1@AuSoundRea:

; 165  : 	return 0;

	xor	eax, eax
$LN2@AuSoundRea:

; 166  : }

	ret	0
?AuSoundRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP	; AuSoundRead
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
dsp$1 = 0
id$ = 32
?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z PROC		; AuSoundGetDSP

; 107  : AuDSP* AuSoundGetDSP(uint16_t id) {

$LN7:
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 24

; 108  : 	for (AuDSP* dsp = dsp_first; dsp != NULL; dsp = dsp->next) {

	mov	rax, QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA ; dsp_first
	mov	QWORD PTR dsp$1[rsp], rax
	jmp	SHORT $LN4@AuSoundGet
$LN3@AuSoundGet:
	mov	rax, QWORD PTR dsp$1[rsp]
	mov	rax, QWORD PTR [rax+27]
	mov	QWORD PTR dsp$1[rsp], rax
$LN4@AuSoundGet:
	cmp	QWORD PTR dsp$1[rsp], 0
	je	SHORT $LN2@AuSoundGet

; 109  : 		if (dsp->_dsp_id == id)

	mov	rax, QWORD PTR dsp$1[rsp]
	movzx	eax, WORD PTR [rax+8]
	movzx	ecx, WORD PTR id$[rsp]
	cmp	eax, ecx
	jne	SHORT $LN1@AuSoundGet

; 110  : 			return dsp;

	mov	rax, QWORD PTR dsp$1[rsp]
	jmp	SHORT $LN5@AuSoundGet
$LN1@AuSoundGet:

; 111  : 	}

	jmp	SHORT $LN3@AuSoundGet
$LN2@AuSoundGet:

; 112  : 
; 113  : 	return NULL;

	xor	eax, eax
$LN5@AuSoundGet:

; 114  : }

	add	rsp, 24
	ret	0
?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z ENDP		; AuSoundGetDSP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
dsp$ = 8
?AuRemoveDSP@@YAXPEAU__au_dsp__@@@Z PROC		; AuRemoveDSP

; 88   : void AuRemoveDSP(AuDSP *dsp) {

	mov	QWORD PTR [rsp+8], rcx

; 89   : 	if (dsp_first == NULL)

	cmp	QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA, 0 ; dsp_first
	jne	SHORT $LN5@AuRemoveDS

; 90   : 		return;

	jmp	SHORT $LN6@AuRemoveDS
$LN5@AuRemoveDS:

; 91   : 
; 92   : 	if (dsp == dsp_first) {

	mov	rax, QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA ; dsp_first
	cmp	QWORD PTR dsp$[rsp], rax
	jne	SHORT $LN4@AuRemoveDS

; 93   : 		dsp_first = dsp_first->next;

	mov	rax, QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA ; dsp_first
	mov	rax, QWORD PTR [rax+27]
	mov	QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA, rax ; dsp_first

; 94   : 	}
; 95   : 	else {

	jmp	SHORT $LN3@AuRemoveDS
$LN4@AuRemoveDS:

; 96   : 		dsp->prev->next = dsp->next;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rax, QWORD PTR [rax+35]
	mov	rcx, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR [rcx+27]
	mov	QWORD PTR [rax+27], rcx
$LN3@AuRemoveDS:

; 97   : 	}
; 98   : 
; 99   : 	if (dsp == dsp_last) {

	mov	rax, QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA ; dsp_last
	cmp	QWORD PTR dsp$[rsp], rax
	jne	SHORT $LN2@AuRemoveDS

; 100  : 		dsp_last = dsp->prev;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rax, QWORD PTR [rax+35]
	mov	QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA, rax ; dsp_last

; 101  : 	}
; 102  : 	else {

	jmp	SHORT $LN1@AuRemoveDS
$LN2@AuRemoveDS:

; 103  : 		dsp->next->prev = dsp->prev;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rax, QWORD PTR [rax+27]
	mov	rcx, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR [rcx+35]
	mov	QWORD PTR [rax+35], rcx
$LN1@AuRemoveDS:
$LN6@AuRemoveDS:

; 104  : 	}
; 105  : }

	ret	0
?AuRemoveDSP@@YAXPEAU__au_dsp__@@@Z ENDP		; AuRemoveDSP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
dsp$ = 8
?AuSoundAddDSP@@YAXPEAU__au_dsp__@@@Z PROC		; AuSoundAddDSP

; 70   : void AuSoundAddDSP(AuDSP *dsp) {

	mov	QWORD PTR [rsp+8], rcx

; 71   : 	dsp->next = NULL;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	QWORD PTR [rax+27], 0

; 72   : 	dsp->prev = NULL;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	QWORD PTR [rax+35], 0

; 73   : 	if (dsp_first == NULL) {

	cmp	QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA, 0 ; dsp_first
	jne	SHORT $LN2@AuSoundAdd

; 74   : 		dsp_first = dsp;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA, rax ; dsp_first

; 75   : 		dsp_last = dsp;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA, rax ; dsp_last

; 76   : 	}
; 77   : 	else {

	jmp	SHORT $LN1@AuSoundAdd
$LN2@AuSoundAdd:

; 78   : 		dsp_last->next = dsp;

	mov	rax, QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA ; dsp_last
	mov	rcx, QWORD PTR dsp$[rsp]
	mov	QWORD PTR [rax+27], rcx

; 79   : 		dsp->prev = dsp_last;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA ; dsp_last
	mov	QWORD PTR [rax+35], rcx

; 80   : 		dsp_last = dsp;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA, rax ; dsp_last
$LN1@AuSoundAdd:

; 81   : 	}
; 82   : }

	ret	0
?AuSoundAddDSP@@YAXPEAU__au_dsp__@@@Z ENDP		; AuSoundAddDSP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
?AuSoundStop@@YAXXZ PROC				; AuSoundStop

; 212  : void AuSoundStop() {

$LN4:
	sub	rsp, 40					; 00000028H

; 213  : 	if (_Registered_dev == NULL)

	cmp	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, 0 ; _Registered_dev
	jne	SHORT $LN1@AuSoundSto

; 214  : 		return;

	jmp	SHORT $LN2@AuSoundSto
$LN1@AuSoundSto:

; 215  : 	_Registered_dev->stop_output();

	mov	rax, QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA ; _Registered_dev
	call	QWORD PTR [rax+48]
$LN2@AuSoundSto:

; 216  : }

	add	rsp, 40					; 00000028H
	ret	0
?AuSoundStop@@YAXXZ ENDP				; AuSoundStop
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
?AuSoundStart@@YAXXZ PROC				; AuSoundStart

; 203  : void AuSoundStart() {

$LN4:
	sub	rsp, 40					; 00000028H

; 204  : 	if (_Registered_dev == NULL)

	cmp	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, 0 ; _Registered_dev
	jne	SHORT $LN1@AuSoundSta

; 205  : 		return;

	jmp	SHORT $LN2@AuSoundSta
$LN1@AuSoundSta:

; 206  : 	_Registered_dev->start_output();

	mov	rax, QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA ; _Registered_dev
	call	QWORD PTR [rax+56]
$LN2@AuSoundSta:

; 207  : }

	add	rsp, 40					; 00000028H
	ret	0
?AuSoundStart@@YAXXZ ENDP				; AuSoundStart
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
dsp_$ = 32
id$ = 64
AuSoundRemoveDSP PROC

; 296  : void AuSoundRemoveDSP(uint16_t id) {

$LN4:
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 56					; 00000038H

; 297  : 	AuDSP* dsp_ = AuSoundGetDSP(id);

	movzx	ecx, WORD PTR id$[rsp]
	call	?AuSoundGetDSP@@YAPEAU__au_dsp__@@G@Z	; AuSoundGetDSP
	mov	QWORD PTR dsp_$[rsp], rax

; 298  : 	if (dsp_) {

	cmp	QWORD PTR dsp_$[rsp], 0
	je	SHORT $LN1@AuSoundRem

; 299  : 		AuPmmngrFree((void*)V2P((size_t)dsp_->buffer->buffer));

	mov	rax, QWORD PTR dsp_$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR [rax]
	call	V2P
	mov	rcx, rax
	call	AuPmmngrFree

; 300  : 		AuCircBufFree(dsp_->buffer);

	mov	rax, QWORD PTR dsp_$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	?AuCircBufFree@@YAXPEAU_circ_buf_@@@Z	; AuCircBufFree

; 301  : 		AuRemoveDSP(dsp_);

	mov	rcx, QWORD PTR dsp_$[rsp]
	call	?AuRemoveDSP@@YAXPEAU__au_dsp__@@@Z	; AuRemoveDSP

; 302  : 		kfree(dsp_);

	mov	rcx, QWORD PTR dsp_$[rsp]
	call	kfree
$LN1@AuSoundRem:

; 303  : 	}
; 304  : }

	add	rsp, 56					; 00000038H
	ret	0
AuSoundRemoveDSP ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
i$1 = 32
i$2 = 36
i$3 = 40
i$4 = 44
i$5 = 48
hw_buffer$ = 56
dsp$6 = 64
dsp$7 = 72
mixing_zone$8 = 80
data_16$9 = 88
buffer$ = 112
AuSoundGetBlock PROC

; 121  : void AuSoundGetBlock(uint64_t *buffer) {

$LN27:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 104				; 00000068H

; 122  : 
; 123  : 	if (dsp_first == NULL)

	cmp	QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA, 0 ; dsp_first
	jne	SHORT $LN24@AuSoundGet

; 124  : 		return;

	jmp	$LN25@AuSoundGet
$LN24@AuSoundGet:

; 125  : 	
; 126  : 	if (mixbuf == NULL)

	cmp	QWORD PTR ?mixbuf@@3PEAEEA, 0		; mixbuf
	jne	SHORT $LN23@AuSoundGet

; 127  : 		return;

	jmp	$LN25@AuSoundGet
$LN23@AuSoundGet:

; 128  : 
; 129  : 	int16_t* hw_buffer = (int16_t*)buffer;

	mov	rax, QWORD PTR buffer$[rsp]
	mov	QWORD PTR hw_buffer$[rsp], rax

; 130  : 
; 131  : 	for (int i = 0; i < SND_BUFF_SZ / sizeof(int16_t); i++)

	mov	DWORD PTR i$4[rsp], 0
	jmp	SHORT $LN22@AuSoundGet
$LN21@AuSoundGet:
	mov	eax, DWORD PTR i$4[rsp]
	inc	eax
	mov	DWORD PTR i$4[rsp], eax
$LN22@AuSoundGet:
	movsxd	rax, DWORD PTR i$4[rsp]
	cmp	rax, 2048				; 00000800H
	jae	SHORT $LN20@AuSoundGet

; 132  : 		hw_buffer[i] = 0;

	movsxd	rax, DWORD PTR i$4[rsp]
	xor	ecx, ecx
	mov	rdx, QWORD PTR hw_buffer$[rsp]
	mov	WORD PTR [rdx+rax*2], cx
	jmp	SHORT $LN21@AuSoundGet
$LN20@AuSoundGet:

; 133  : 	
; 134  : 	for (AuDSP* dsp = dsp_first; dsp != NULL; dsp = dsp->next) {

	mov	rax, QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA ; dsp_first
	mov	QWORD PTR dsp$7[rsp], rax
	jmp	SHORT $LN19@AuSoundGet
$LN18@AuSoundGet:
	mov	rax, QWORD PTR dsp$7[rsp]
	mov	rax, QWORD PTR [rax+27]
	mov	QWORD PTR dsp$7[rsp], rax
$LN19@AuSoundGet:
	cmp	QWORD PTR dsp$7[rsp], 0
	je	$LN17@AuSoundGet

; 135  : 		uint8_t* mixing_zone = mixbuf;

	mov	rax, QWORD PTR ?mixbuf@@3PEAEEA		; mixbuf
	mov	QWORD PTR mixing_zone$8[rsp], rax

; 136  : 		for (int i = 0; i < SND_BUFF_SZ; i++){

	mov	DWORD PTR i$5[rsp], 0
	jmp	SHORT $LN16@AuSoundGet
$LN15@AuSoundGet:
	mov	eax, DWORD PTR i$5[rsp]
	inc	eax
	mov	DWORD PTR i$5[rsp], eax
$LN16@AuSoundGet:
	cmp	DWORD PTR i$5[rsp], 4096		; 00001000H
	jge	SHORT $LN14@AuSoundGet

; 137  : 			AuCircBufGet(dsp->buffer, mixing_zone);

	mov	rdx, QWORD PTR mixing_zone$8[rsp]
	mov	rax, QWORD PTR dsp$7[rsp]
	mov	rcx, QWORD PTR [rax]
	call	?AuCircBufGet@@YAHPEAU_circ_buf_@@PEAE@Z ; AuCircBufGet

; 138  : 			mixing_zone++;

	mov	rax, QWORD PTR mixing_zone$8[rsp]
	inc	rax
	mov	QWORD PTR mixing_zone$8[rsp], rax

; 139  : 		}

	jmp	SHORT $LN15@AuSoundGet
$LN14@AuSoundGet:

; 140  : 
; 141  : 		int16_t *data_16 = (int16_t*)mixbuf;

	mov	rax, QWORD PTR ?mixbuf@@3PEAEEA		; mixbuf
	mov	QWORD PTR data_16$9[rsp], rax

; 142  : 
; 143  : 		for (int i = 0; i < SND_BUFF_SZ / sizeof(int16_t); i++)

	mov	DWORD PTR i$2[rsp], 0
	jmp	SHORT $LN13@AuSoundGet
$LN12@AuSoundGet:
	mov	eax, DWORD PTR i$2[rsp]
	inc	eax
	mov	DWORD PTR i$2[rsp], eax
$LN13@AuSoundGet:
	movsxd	rax, DWORD PTR i$2[rsp]
	cmp	rax, 2048				; 00000800H
	jae	SHORT $LN11@AuSoundGet

; 144  : 			data_16[i] /= 2;

	movsxd	rax, DWORD PTR i$2[rsp]
	mov	rcx, QWORD PTR data_16$9[rsp]
	movsx	eax, WORD PTR [rcx+rax*2]
	cdq
	sub	eax, edx
	sar	eax, 1
	movsxd	rcx, DWORD PTR i$2[rsp]
	mov	rdx, QWORD PTR data_16$9[rsp]
	mov	WORD PTR [rdx+rcx*2], ax
	jmp	SHORT $LN12@AuSoundGet
$LN11@AuSoundGet:

; 145  : 
; 146  : 		for (int i = 0; i < SND_BUFF_SZ / sizeof(int16_t); i++){

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN10@AuSoundGet
$LN9@AuSoundGet:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN10@AuSoundGet:
	movsxd	rax, DWORD PTR i$1[rsp]
	cmp	rax, 2048				; 00000800H
	jae	SHORT $LN8@AuSoundGet

; 147  : 			hw_buffer[i] += data_16[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	movsxd	rcx, DWORD PTR i$1[rsp]
	mov	rdx, QWORD PTR data_16$9[rsp]
	movsx	ecx, WORD PTR [rdx+rcx*2]
	mov	rdx, QWORD PTR hw_buffer$[rsp]
	movsx	eax, WORD PTR [rdx+rax*2]
	add	eax, ecx
	movsxd	rcx, DWORD PTR i$1[rsp]
	mov	rdx, QWORD PTR hw_buffer$[rsp]
	mov	WORD PTR [rdx+rcx*2], ax

; 148  : 		}

	jmp	SHORT $LN9@AuSoundGet
$LN8@AuSoundGet:

; 149  : 	}

	jmp	$LN18@AuSoundGet
$LN17@AuSoundGet:

; 150  : 
; 151  : 	for (int i = 0; i < SND_BUFF_SZ / sizeof(int16_t); i++)

	mov	DWORD PTR i$3[rsp], 0
	jmp	SHORT $LN7@AuSoundGet
$LN6@AuSoundGet:
	mov	eax, DWORD PTR i$3[rsp]
	inc	eax
	mov	DWORD PTR i$3[rsp], eax
$LN7@AuSoundGet:
	movsxd	rax, DWORD PTR i$3[rsp]
	cmp	rax, 2048				; 00000800H
	jae	SHORT $LN5@AuSoundGet

; 152  : 		hw_buffer[i] /= 2;

	movsxd	rax, DWORD PTR i$3[rsp]
	mov	rcx, QWORD PTR hw_buffer$[rsp]
	movsx	eax, WORD PTR [rcx+rax*2]
	cdq
	sub	eax, edx
	sar	eax, 1
	movsxd	rcx, DWORD PTR i$3[rsp]
	mov	rdx, QWORD PTR hw_buffer$[rsp]
	mov	WORD PTR [rdx+rcx*2], ax
	jmp	SHORT $LN6@AuSoundGet
$LN5@AuSoundGet:

; 153  : 
; 154  : 	for (AuDSP *dsp = dsp_first; dsp != NULL; dsp = dsp->next) {

	mov	rax, QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA ; dsp_first
	mov	QWORD PTR dsp$6[rsp], rax
	jmp	SHORT $LN4@AuSoundGet
$LN3@AuSoundGet:
	mov	rax, QWORD PTR dsp$6[rsp]
	mov	rax, QWORD PTR [rax+27]
	mov	QWORD PTR dsp$6[rsp], rax
$LN4@AuSoundGet:
	cmp	QWORD PTR dsp$6[rsp], 0
	je	SHORT $LN2@AuSoundGet

; 155  : 		if (dsp->SndThread) 

	mov	rax, QWORD PTR dsp$6[rsp]
	cmp	QWORD PTR [rax+10], 0
	je	SHORT $LN1@AuSoundGet

; 156  : 			AuUnblockThread(dsp->SndThread);

	mov	rax, QWORD PTR dsp$6[rsp]
	mov	rcx, QWORD PTR [rax+10]
	call	AuUnblockThread
$LN1@AuSoundGet:

; 157  : 	}

	jmp	SHORT $LN3@AuSoundGet
$LN2@AuSoundGet:
$LN25@AuSoundGet:

; 158  : 
; 159  : }

	add	rsp, 104				; 00000068H
	ret	0
AuSoundGetBlock ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
dev$ = 8
AuSoundSetCard PROC

; 194  : void AuSoundSetCard(AuSound* dev) {

	mov	QWORD PTR [rsp+8], rcx

; 195  : 	if (_Registered_dev)

	cmp	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, 0 ; _Registered_dev
	je	SHORT $LN1@AuSoundSet

; 196  : 		return;

	jmp	SHORT $LN2@AuSoundSet
$LN1@AuSoundSet:

; 197  : 	_Registered_dev = dev;

	mov	rax, QWORD PTR dev$[rsp]
	mov	QWORD PTR ?_Registered_dev@@3PEAU_SoundDev_@@EA, rax ; _Registered_dev
$LN2@AuSoundSet:

; 198  : }

	ret	0
AuSoundSetCard ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\sound\sound.cpp
_TEXT	SEGMENT
dsp$ = 32
dsp_$ = 40
fsys$ = 48
buffer$ = 56
?AuSoundInitialise@@YAXXZ PROC				; AuSoundInitialise

; 262  : void AuSoundInitialise() {

$LN3:
	sub	rsp, 72					; 00000048H

; 263  : 	AuVFSNode* fsys = AuVFSFind("/dev");

	lea	rcx, OFFSET FLAT:$SG3671
	call	AuVFSFind
	mov	QWORD PTR fsys$[rsp], rax

; 264  : 	AuVFSNode *dsp = (AuVFSNode*)kmalloc(sizeof(AuVFSNode));

	mov	ecx, 160				; 000000a0H
	call	kmalloc
	mov	QWORD PTR dsp$[rsp], rax

; 265  : 	memset(dsp, 0, sizeof(AuVFSNode));

	mov	r8d, 160				; 000000a0H
	xor	edx, edx
	mov	rcx, QWORD PTR dsp$[rsp]
	call	memset

; 266  : 	strcpy(dsp->filename, "sound");

	mov	rax, QWORD PTR dsp$[rsp]
	lea	rdx, OFFSET FLAT:$SG3676
	mov	rcx, rax
	call	strcpy

; 267  : 	dsp->flags =  FS_FLAG_DEVICE;

	mov	eax, 8
	mov	rcx, QWORD PTR dsp$[rsp]
	mov	WORD PTR [rcx+61], ax

; 268  : 	dsp->device = fsys;

	mov	rax, QWORD PTR dsp$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	mov	QWORD PTR [rax+64], rcx

; 269  : 	dsp->read = AuSoundRead;

	mov	rax, QWORD PTR dsp$[rsp]
	lea	rcx, OFFSET FLAT:?AuSoundRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuSoundRead
	mov	QWORD PTR [rax+80], rcx

; 270  : 	dsp->write = AuSoundWrite;

	mov	rax, QWORD PTR dsp$[rsp]
	lea	rcx, OFFSET FLAT:?AuSoundWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuSoundWrite
	mov	QWORD PTR [rax+88], rcx

; 271  : 	dsp->iocontrol = AuSoundIOControl;

	mov	rax, QWORD PTR dsp$[rsp]
	lea	rcx, OFFSET FLAT:?AuSoundIOControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ; AuSoundIOControl
	mov	QWORD PTR [rax+152], rcx

; 272  : 	AuDevFSAddFile(fsys, "/", dsp);

	mov	r8, QWORD PTR dsp$[rsp]
	lea	rdx, OFFSET FLAT:$SG3677
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuDevFSAddFile

; 273  : 
; 274  : 	dsp_first = NULL;

	mov	QWORD PTR ?dsp_first@@3PEAU__au_dsp__@@EA, 0 ; dsp_first

; 275  : 	dsp_last = NULL;

	mov	QWORD PTR ?dsp_last@@3PEAU__au_dsp__@@EA, 0 ; dsp_last

; 276  : 	_audio_started_ = false;

	mov	BYTE PTR ?_audio_started_@@3_NA, 0	; _audio_started_

; 277  : 	_audio_stopped_ = false;

	mov	BYTE PTR ?_audio_stopped_@@3_NA, 0	; _audio_stopped_

; 278  : 	mixbuf = (uint8_t*)P2V((uint64_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR ?mixbuf@@3PEAEEA, rax		; mixbuf

; 279  : 	memset(mixbuf, 0, PAGE_SIZE);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR ?mixbuf@@3PEAEEA		; mixbuf
	call	memset

; 280  : 
; 281  : 	AuDSP* dsp_ = (AuDSP*)kmalloc(sizeof(AuDSP));

	mov	ecx, 43					; 0000002bH
	call	kmalloc
	mov	QWORD PTR dsp_$[rsp], rax

; 282  : 	memset(dsp_, 0, sizeof(AuDSP));

	mov	r8d, 43					; 0000002bH
	xor	edx, edx
	mov	rcx, QWORD PTR dsp_$[rsp]
	call	memset

; 283  : 	uint8_t* buffer = (uint8_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR buffer$[rsp], rax

; 284  : 	dsp_->buffer = AuCircBufInitialise(buffer, SND_BUFF_SZ);

	mov	edx, 4096				; 00001000H
	mov	rcx, QWORD PTR buffer$[rsp]
	call	?AuCircBufInitialise@@YAPEAU_circ_buf_@@PEAE_K@Z ; AuCircBufInitialise
	mov	rcx, QWORD PTR dsp_$[rsp]
	mov	QWORD PTR [rcx], rax

; 285  : 	dsp_->_dsp_id = 0;

	xor	eax, eax
	mov	rcx, QWORD PTR dsp_$[rsp]
	mov	WORD PTR [rcx+8], ax

; 286  : 	dsp_->SndThread = 0;

	mov	rax, QWORD PTR dsp_$[rsp]
	mov	QWORD PTR [rax+10], 0

; 287  : 	dsp_->sleep_time = 0;

	mov	rax, QWORD PTR dsp_$[rsp]
	mov	QWORD PTR [rax+18], 0

; 288  : 	dsp_->available = false;

	mov	rax, QWORD PTR dsp_$[rsp]
	mov	BYTE PTR [rax+26], 0

; 289  : 	AuSoundAddDSP(dsp_);

	mov	rcx, QWORD PTR dsp_$[rsp]
	call	?AuSoundAddDSP@@YAXPEAU__au_dsp__@@@Z	; AuSoundAddDSP

; 290  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuSoundInitialise@@YAXXZ ENDP				; AuSoundInitialise
_TEXT	ENDS
END
