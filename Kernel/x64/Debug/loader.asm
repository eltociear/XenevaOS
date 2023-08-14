; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?loader_lock@@3PEAU_spinlock_@@EA		; loader_lock
PUBLIC	?loader_mutex@@3PEAU_mutex_@@EA			; loader_mutex
PUBLIC	?is_loader_busy@@3_NA				; is_loader_busy
_BSS	SEGMENT
?loader_lock@@3PEAU_spinlock_@@EA DQ 01H DUP (?)	; loader_lock
?loader_mutex@@3PEAU_mutex_@@EA DQ 01H DUP (?)		; loader_mutex
?is_loader_busy@@3_NA DB 01H DUP (?)			; is_loader_busy
_BSS	ENDS
CONST	SEGMENT
$SG3814	DB	'exe', 00H
	ORG $+4
$SG3815	DB	'[aurora]: non-executable process ', 0dH, 0aH, 00H
	ORG $+4
$SG3854	DB	'/xeldr.exe', 00H
	ORG $+5
$SG3889	DB	'Arguments address already mapped ', 0aH, 00H
CONST	ENDS
PUBLIC	?AuInitialiseLoader@@YAXXZ			; AuInitialiseLoader
PUBLIC	?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z ; AuLoadExecToProcess
PUBLIC	?AuProcessEntUser@@YAX_K@Z			; AuProcessEntUser
PUBLIC	?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ		; AuLoaderGetMutex
PUBLIC	?AuIsLoaderBusy@@YA_NXZ				; AuIsLoaderBusy
PUBLIC	??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS * __ptr64,_IMAGE_DOS_HEADER_ * __ptr64>
PUBLIC	??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ; raw_offset<_IMAGE_SECTION_HEADER * __ptr64,_IMAGE_OPTIONAL_HEADER_PE32PLUS * __ptr64>
EXTRN	?AuPEFileIsDynamicallyLinked@@YA_NPEAX@Z:PROC	; AuPEFileIsDynamicallyLinked
EXTRN	AuVFSOpen:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuVFSNodeReadBlock:PROC
EXTRN	AuCreateKthread:PROC
EXTRN	AuGetCurrentThread:PROC
EXTRN	AuCreateSpinlock:PROC
EXTRN	AuAcquireSpinlock:PROC
EXTRN	AuReleaseSpinlock:PROC
EXTRN	AuCreateMutex:PROC
EXTRN	strcmp:PROC
EXTRN	strcpy:PROC
EXTRN	strlen:PROC
EXTRN	strchr:PROC
EXTRN	memset:PROC
EXTRN	AuMapPageEx:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	P2V:PROC
EXTRN	V2P:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z:PROC ; AuInsertVMArea
EXTRN	?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z:PROC	; AuVMAreaCreate
EXTRN	x64_cli:PROC
EXTRN	x64_enter_user:PROC
EXTRN	SeTextOut:PROC
EXTRN	AuTextOut:PROC
pdata	SEGMENT
$pdata$?AuInitialiseLoader@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+53
	DD	imagerel $unwind$?AuInitialiseLoader@@YAXXZ
$pdata$?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z DD imagerel $LN16
	DD	imagerel $LN16+1700
	DD	imagerel $unwind$?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z
$pdata$?AuProcessEntUser@@YAX_K@Z DD imagerel $LN30
	DD	imagerel $LN30+614
	DD	imagerel $unwind$?AuProcessEntUser@@YAX_K@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuInitialiseLoader@@YAXXZ DD 010401H
	DD	04204H
$unwind$?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z DD 021b01H
	DD	025011bH
$unwind$?AuProcessEntUser@@YAX_K@Z DD 010901H
	DD	0c209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\basehdr\stdint.h
;	COMDAT ??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z
_TEXT	SEGMENT
p1$ = 8
offset$ = 16
??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z PROC ; raw_offset<_IMAGE_SECTION_HEADER * __ptr64,_IMAGE_OPTIONAL_HEADER_PE32PLUS * __ptr64>, COMDAT

; 207  : 	{

	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx

; 208  : 		return (T)((size_t)p1 + offset);

	movsxd	rax, DWORD PTR offset$[rsp]
	mov	rcx, QWORD PTR p1$[rsp]
	add	rcx, rax
	mov	rax, rcx

; 209  : 	};

	ret	0
??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ENDP ; raw_offset<_IMAGE_SECTION_HEADER * __ptr64,_IMAGE_OPTIONAL_HEADER_PE32PLUS * __ptr64>
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\basehdr\stdint.h
;	COMDAT ??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z
_TEXT	SEGMENT
p1$ = 8
offset$ = 16
??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z PROC ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS * __ptr64,_IMAGE_DOS_HEADER_ * __ptr64>, COMDAT

; 207  : 	{

	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx

; 208  : 		return (T)((size_t)p1 + offset);

	movsxd	rax, DWORD PTR offset$[rsp]
	mov	rcx, QWORD PTR p1$[rsp]
	add	rcx, rax
	mov	rax, rcx

; 209  : 	};

	ret	0
??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ENDP ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS * __ptr64,_IMAGE_DOS_HEADER_ * __ptr64>
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\loader.cpp
_TEXT	SEGMENT
?AuIsLoaderBusy@@YA_NXZ PROC				; AuIsLoaderBusy

; 256  : 	return is_loader_busy;

	movzx	eax, BYTE PTR ?is_loader_busy@@3_NA	; is_loader_busy

; 257  : }

	ret	0
?AuIsLoaderBusy@@YA_NXZ ENDP				; AuIsLoaderBusy
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\loader.cpp
_TEXT	SEGMENT
?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ PROC		; AuLoaderGetMutex

; 252  : 	return loader_mutex;

	mov	rax, QWORD PTR ?loader_mutex@@3PEAU_mutex_@@EA ; loader_mutex

; 253  : }

	ret	0
?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ ENDP		; AuLoaderGetMutex
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\loader.cpp
_TEXT	SEGMENT
i$1 = 32
i$2 = 36
j$3 = 40
ent$ = 48
str$4 = 56
t$ = 64
argvs$ = 72
addr$5 = 80
rcx$ = 112
?AuProcessEntUser@@YAX_K@Z PROC				; AuProcessEntUser

; 81   : void AuProcessEntUser(uint64_t rcx) {

$LN30:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 104				; 00000068H

; 82   : 	x64_cli();

	call	x64_cli

; 83   : 	AuThread* t = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR t$[rsp], rax

; 84   : 	AuUserEntry* ent = t->uentry;

	mov	rax, QWORD PTR t$[rsp]
	mov	rax, QWORD PTR [rax+306]
	mov	QWORD PTR ent$[rsp], rax

; 85   : 	/* do all arguments passing stuff, arguments
; 86   : 	 * are passed as strings to stack
; 87   : 	 */
; 88   : 	char** argvs = (char**)ent->argvaddr;

	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+36]
	mov	QWORD PTR argvs$[rsp], rax

; 89   : 	for (int i = 0; i < ent->num_args; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN27@AuProcessE
$LN26@AuProcessE:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN27@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	eax, DWORD PTR [rax+32]
	cmp	DWORD PTR i$1[rsp], eax
	jge	$LN25@AuProcessE

; 90   : 		char* str = ent->argvs[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rcx+44]
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR str$4[rsp], rax

; 91   : 		for (int j = strlen(str); j >= 0; j--) {

	mov	rcx, QWORD PTR str$4[rsp]
	call	strlen
	mov	DWORD PTR j$3[rsp], eax
	jmp	SHORT $LN24@AuProcessE
$LN23@AuProcessE:
	mov	eax, DWORD PTR j$3[rsp]
	dec	eax
	mov	DWORD PTR j$3[rsp], eax
$LN24@AuProcessE:
	cmp	DWORD PTR j$3[rsp], 0
	jl	SHORT $LN22@AuProcessE
$LN21@AuProcessE:

; 92   : 			PUSH(ent->rsp, char, str[j]);

	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
$LN18@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 0
	test	rax, rax
	je	SHORT $LN17@AuProcessE
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
	jmp	SHORT $LN18@AuProcessE
$LN17@AuProcessE:
	movsxd	rax, DWORD PTR j$3[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	rdx, QWORD PTR str$4[rsp]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx], al
	xor	eax, eax
	test	eax, eax
	jne	SHORT $LN21@AuProcessE

; 93   : 		}

	jmp	SHORT $LN23@AuProcessE
$LN22@AuProcessE:

; 94   : 		argvs[i] = (char*)ent->rsp;

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR argvs$[rsp]
	mov	rdx, QWORD PTR ent$[rsp]
	mov	rdx, QWORD PTR [rdx+8]
	mov	QWORD PTR [rcx+rax*8], rdx

; 95   : 		
; 96   : 	}

	jmp	$LN26@AuProcessE
$LN25@AuProcessE:

; 97   : 
; 98   : 	if (ent->argvs){

	mov	rax, QWORD PTR ent$[rsp]
	cmp	QWORD PTR [rax+44], 0
	je	SHORT $LN16@AuProcessE

; 99   : 		for (int i = 0; i < ent->num_args; i++) {

	mov	DWORD PTR i$2[rsp], 0
	jmp	SHORT $LN15@AuProcessE
$LN14@AuProcessE:
	mov	eax, DWORD PTR i$2[rsp]
	inc	eax
	mov	DWORD PTR i$2[rsp], eax
$LN15@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	eax, DWORD PTR [rax+32]
	cmp	DWORD PTR i$2[rsp], eax
	jge	SHORT $LN13@AuProcessE

; 100  : 			uint64_t addr = (uint64_t)ent->argvs[i];

	movsxd	rax, DWORD PTR i$2[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rcx+44]
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR addr$5[rsp], rax

; 101  : 			kfree(ent->argvs[i]);

	movsxd	rax, DWORD PTR i$2[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rcx+44]
	mov	rcx, QWORD PTR [rcx+rax*8]
	call	kfree

; 102  : 		}

	jmp	SHORT $LN14@AuProcessE
$LN13@AuProcessE:

; 103  : 		kfree(ent->argvs);

	mov	rax, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rax+44]
	call	kfree
$LN16@AuProcessE:
$LN12@AuProcessE:

; 104  : 	}
; 105  : 
; 106  : 	PUSH(ent->rsp, size_t, (size_t)ent->argvaddr);

	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	sub	rax, 8
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
$LN9@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 7
	test	rax, rax
	je	SHORT $LN8@AuProcessE
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
	jmp	SHORT $LN9@AuProcessE
$LN8@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rcx+36]
	mov	QWORD PTR [rax], rcx
	xor	eax, eax
	test	eax, eax
	jne	SHORT $LN12@AuProcessE
$LN7@AuProcessE:

; 107  : 	PUSH(ent->rsp, size_t, ent->num_args);

	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	sub	rax, 8
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
$LN4@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 7
	test	rax, rax
	je	SHORT $LN3@AuProcessE
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
	jmp	SHORT $LN4@AuProcessE
$LN3@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	movsxd	rax, DWORD PTR [rax+32]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	QWORD PTR [rcx], rax
	xor	eax, eax
	test	eax, eax
	jne	SHORT $LN7@AuProcessE

; 108  : 	x64_enter_user(ent->rsp, ent->entrypoint, ent->cs, ent->ss);

	mov	rax, QWORD PTR ent$[rsp]
	mov	r9, QWORD PTR [rax+24]
	mov	rax, QWORD PTR ent$[rsp]
	mov	r8, QWORD PTR [rax+16]
	mov	rax, QWORD PTR ent$[rsp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rax+8]
	call	x64_enter_user
$LN2@AuProcessE:

; 109  : 	while (1) {

	xor	eax, eax
	cmp	eax, 1
	je	SHORT $LN1@AuProcessE

; 110  : 	}

	jmp	SHORT $LN2@AuProcessE
$LN1@AuProcessE:

; 111  : }

	add	rsp, 104				; 00000068H
	ret	0
?AuProcessEntUser@@YAX_K@Z ENDP				; AuProcessEntUser
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\loader.cpp
_TEXT	SEGMENT
j$1 = 48
entry$ = 56
nt$ = 64
req_pages$2 = 72
num_args_$3 = 76
i$4 = 80
textarea$ = 88
_image_base_$ = 96
num_args$ = 104
file$ = 112
buf$ = 120
v_$ = 128
cr3$ = 136
argvaddr$ = 144
string_len$5 = 152
argvs$6 = 160
fsys$ = 168
block$7 = 176
ent$ = 184
file__$8 = 192
args$9 = 200
sect_sz$10 = 208
thr$ = 216
dos$ = 224
secthdr$ = 232
sect_ld_addr$11 = 240
tv262 = 248
tv210 = 256
tv264 = 264
stack$ = 272
read_bytes$ = 280
proc$ = 304
filename$ = 312
argc$ = 320
argv$ = 328
?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z PROC ; AuLoadExecToProcess

; 121  : void AuLoadExecToProcess(AuProcess* proc, char* filename, int argc,char** argv) {

$LN16:
	mov	QWORD PTR [rsp+32], r9
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 296				; 00000128H

; 122  : 	AuAcquireSpinlock(loader_lock);

	mov	rcx, QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA ; loader_lock
	call	AuAcquireSpinlock

; 123  : 	/* verify the filename, it can only be '.exe' file no '.dll' or other */
; 124  : 	char* v_ = strchr(filename, '.');

	mov	edx, 46					; 0000002eH
	mov	rcx, QWORD PTR filename$[rsp]
	call	strchr
	mov	QWORD PTR v_$[rsp], rax

; 125  : 	if (v_)

	cmp	QWORD PTR v_$[rsp], 0
	je	SHORT $LN13@AuLoadExec

; 126  : 		v_++;

	mov	rax, QWORD PTR v_$[rsp]
	inc	rax
	mov	QWORD PTR v_$[rsp], rax
$LN13@AuLoadExec:

; 127  : 	if (strcmp(v_, "exe") != 0) {

	lea	rdx, OFFSET FLAT:$SG3814
	mov	rcx, QWORD PTR v_$[rsp]
	call	strcmp
	test	eax, eax
	je	SHORT $LN12@AuLoadExec

; 128  : 		SeTextOut("[aurora]: non-executable process \r\n");

	lea	rcx, OFFSET FLAT:$SG3815
	call	SeTextOut

; 129  : 		return;

	jmp	$LN14@AuLoadExec
$LN12@AuLoadExec:

; 130  : 	}
; 131  : 	AuVFSNode *fsys = AuVFSFind(filename);

	mov	rcx, QWORD PTR filename$[rsp]
	call	AuVFSFind
	mov	QWORD PTR fsys$[rsp], rax

; 132  : 	
; 133  : 	AuVFSNode *file = AuVFSOpen(filename);

	mov	rcx, QWORD PTR filename$[rsp]
	call	AuVFSOpen
	mov	QWORD PTR file$[rsp], rax

; 134  : 
; 135  : 	uint64_t* buf = (uint64_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR buf$[rsp], rax

; 136  : 	memset(buf, 0, 4096);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR buf$[rsp]
	call	memset

; 137  : 
; 138  : 	size_t read_bytes = AuVFSNodeReadBlock(fsys, file, (uint64_t*)V2P((uint64_t)buf));

	mov	rcx, QWORD PTR buf$[rsp]
	call	V2P
	mov	r8, rax
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSNodeReadBlock
	mov	QWORD PTR read_bytes$[rsp], rax

; 139  : 	
; 140  : 	IMAGE_DOS_HEADER* dos = (IMAGE_DOS_HEADER*)buf;

	mov	rax, QWORD PTR buf$[rsp]
	mov	QWORD PTR dos$[rsp], rax

; 141  : 	PIMAGE_NT_HEADERS nt = raw_offset<PIMAGE_NT_HEADERS>(dos, dos->e_lfanew);

	mov	rax, QWORD PTR dos$[rsp]
	movzx	eax, WORD PTR [rax+60]
	mov	edx, eax
	mov	rcx, QWORD PTR dos$[rsp]
	call	??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS * __ptr64,_IMAGE_DOS_HEADER_ * __ptr64>
	mov	QWORD PTR nt$[rsp], rax

; 142  : 	PSECTION_HEADER secthdr = raw_offset<PSECTION_HEADER>(&nt->OptionalHeader, nt->FileHeader.SizeOfOptionaHeader);

	mov	rax, QWORD PTR nt$[rsp]
	movzx	eax, WORD PTR [rax+20]
	mov	rcx, QWORD PTR nt$[rsp]
	add	rcx, 24
	mov	edx, eax
	call	??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ; raw_offset<_IMAGE_SECTION_HEADER * __ptr64,_IMAGE_OPTIONAL_HEADER_PE32PLUS * __ptr64>
	mov	QWORD PTR secthdr$[rsp], rax

; 143  : 
; 144  : 	uint64_t _image_base_ = nt->OptionalHeader.ImageBase;

	mov	rax, QWORD PTR nt$[rsp]
	mov	rax, QWORD PTR [rax+48]
	mov	QWORD PTR _image_base_$[rsp], rax

; 145  : 	entry ent = (entry)(nt->OptionalHeader.AddressOfEntryPoint + nt->OptionalHeader.ImageBase);

	mov	rax, QWORD PTR nt$[rsp]
	mov	eax, DWORD PTR [rax+40]
	mov	rcx, QWORD PTR nt$[rsp]
	add	rax, QWORD PTR [rcx+48]
	mov	QWORD PTR ent$[rsp], rax

; 146  : 
; 147  : 	uint64_t* cr3 = proc->cr3;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+22]
	mov	QWORD PTR cr3$[rsp], rax

; 148  : 
; 149  : 	/* check if the binary is dynamically linked */
; 150  : 	if (AuPEFileIsDynamicallyLinked(buf)) {

	mov	rcx, QWORD PTR buf$[rsp]
	call	?AuPEFileIsDynamicallyLinked@@YA_NPEAX@Z ; AuPEFileIsDynamicallyLinked
	movzx	eax, al
	test	eax, eax
	je	$LN11@AuLoadExec

; 151  : 		/* free the current file*/
; 152  : 		kfree(file);

	mov	rcx, QWORD PTR file$[rsp]
	call	kfree

; 153  : 		AuPmmngrFree((void*)V2P((sizeof(buf))));

	mov	ecx, 8
	call	V2P
	mov	rcx, rax
	call	AuPmmngrFree

; 154  : 
; 155  : 		/* now load XELoader process, which'll further
; 156  : 		 * link this dynamic process with its shared
; 157  : 		 * libraries
; 158  : 		 */
; 159  : 		int num_args_ = 1;

	mov	DWORD PTR num_args_$3[rsp], 1

; 160  : 		int string_len = strlen(filename);

	mov	rcx, QWORD PTR filename$[rsp]
	call	strlen
	mov	DWORD PTR string_len$5[rsp], eax

; 161  : 		char* file__ = (char*)kmalloc(string_len);

	mov	ecx, DWORD PTR string_len$5[rsp]
	call	kmalloc
	mov	QWORD PTR file__$8[rsp], rax

; 162  : 		strcpy(file__, filename);

	mov	rdx, QWORD PTR filename$[rsp]
	mov	rcx, QWORD PTR file__$8[rsp]
	call	strcpy

; 163  : 		char** argvs = (char**)kmalloc(num_args_);

	mov	ecx, DWORD PTR num_args_$3[rsp]
	call	kmalloc
	mov	QWORD PTR argvs$6[rsp], rax

; 164  : 		memset(argvs, 0, num_args_);

	mov	r8d, DWORD PTR num_args_$3[rsp]
	xor	edx, edx
	mov	rcx, QWORD PTR argvs$6[rsp]
	call	memset

; 165  : 		argvs[0] = file__;

	mov	eax, 8
	imul	rax, rax, 0
	mov	rcx, QWORD PTR argvs$6[rsp]
	mov	rdx, QWORD PTR file__$8[rsp]
	mov	QWORD PTR [rcx+rax], rdx

; 166  : 		AuReleaseSpinlock(loader_lock);

	mov	rcx, QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA ; loader_lock
	call	AuReleaseSpinlock

; 167  : 
; 168  : 		/* load the loader */
; 169  : 		return AuLoadExecToProcess(proc, "/xeldr.exe", num_args_, argvs);

	mov	r9, QWORD PTR argvs$6[rsp]
	mov	r8d, DWORD PTR num_args_$3[rsp]
	lea	rdx, OFFSET FLAT:$SG3854
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z ; AuLoadExecToProcess
	jmp	$LN14@AuLoadExec
$LN11@AuLoadExec:

; 170  : 	}
; 171  : 
; 172  : 	AuMapPageEx(cr3, V2P((size_t)buf), _image_base_, X86_64_PAGING_USER);

	mov	rcx, QWORD PTR buf$[rsp]
	call	V2P
	mov	r9b, 4
	mov	r8, QWORD PTR _image_base_$[rsp]
	mov	rdx, rax
	mov	rcx, QWORD PTR cr3$[rsp]
	call	AuMapPageEx

; 173  : 
; 174  : 	/* this should be memory mapped, i.e, sections should be
; 175  : 	 * memory mapped
; 176  : 	 */
; 177  : 	for (size_t i = 0; i < nt->FileHeader.NumberOfSections; ++i) {

	mov	QWORD PTR i$4[rsp], 0
	jmp	SHORT $LN10@AuLoadExec
$LN9@AuLoadExec:
	mov	rax, QWORD PTR i$4[rsp]
	inc	rax
	mov	QWORD PTR i$4[rsp], rax
$LN10@AuLoadExec:
	mov	rax, QWORD PTR nt$[rsp]
	movzx	eax, WORD PTR [rax+6]
	cmp	QWORD PTR i$4[rsp], rax
	jae	$LN8@AuLoadExec

; 178  : 		size_t sect_ld_addr = _image_base_ + secthdr[i].VirtualAddress;

	imul	rax, QWORD PTR i$4[rsp], 40		; 00000028H
	mov	rcx, QWORD PTR secthdr$[rsp]
	mov	eax, DWORD PTR [rcx+rax+12]
	mov	rcx, QWORD PTR _image_base_$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR sect_ld_addr$11[rsp], rax

; 179  : 		size_t sect_sz = secthdr[i].VirtualSize;

	imul	rax, QWORD PTR i$4[rsp], 40		; 00000028H
	mov	rcx, QWORD PTR secthdr$[rsp]
	mov	eax, DWORD PTR [rcx+rax+8]
	mov	QWORD PTR sect_sz$10[rsp], rax

; 180  : 		int req_pages = sect_sz / PAGE_SIZE;

	xor	edx, edx
	mov	rax, QWORD PTR sect_sz$10[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	DWORD PTR req_pages$2[rsp], eax

; 181  : 		if ((sect_sz % PAGE_SIZE) != 0)

	xor	edx, edx
	mov	rax, QWORD PTR sect_sz$10[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN7@AuLoadExec

; 182  : 			req_pages++;

	mov	eax, DWORD PTR req_pages$2[rsp]
	inc	eax
	mov	DWORD PTR req_pages$2[rsp], eax
$LN7@AuLoadExec:

; 183  : 
; 184  : 		for (int j = 0; j < req_pages; j++) {

	mov	DWORD PTR j$1[rsp], 0
	jmp	SHORT $LN6@AuLoadExec
$LN5@AuLoadExec:
	mov	eax, DWORD PTR j$1[rsp]
	inc	eax
	mov	DWORD PTR j$1[rsp], eax
$LN6@AuLoadExec:
	mov	eax, DWORD PTR req_pages$2[rsp]
	cmp	DWORD PTR j$1[rsp], eax
	jge	$LN4@AuLoadExec

; 185  : 			uint64_t *block = (uint64_t*)P2V((uint64_t)AuPmmngrAlloc());/*(buf + secthdr[i].PointerToRawData);*/

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR block$7[rsp], rax

; 186  : 			AuVFSNodeReadBlock(fsys, file, (uint64_t*)V2P((size_t)block));

	mov	rcx, QWORD PTR block$7[rsp]
	call	V2P
	mov	r8, rax
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSNodeReadBlock

; 187  : 			AuMapPageEx(cr3, V2P((size_t)block), sect_ld_addr + j * PAGE_SIZE, X86_64_PAGING_USER);

	imul	eax, DWORD PTR j$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR sect_ld_addr$11[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR tv210[rsp], rax
	mov	rcx, QWORD PTR block$7[rsp]
	call	V2P
	mov	r9b, 4
	mov	rcx, QWORD PTR tv210[rsp]
	mov	r8, rcx
	mov	rdx, rax
	mov	rcx, QWORD PTR cr3$[rsp]
	call	AuMapPageEx

; 188  : 		}

	jmp	$LN5@AuLoadExec
$LN4@AuLoadExec:

; 189  : 	}

	jmp	$LN9@AuLoadExec
$LN8@AuLoadExec:

; 190  : 
; 191  : 	
; 192  : 	/* create a vmarea segment here */
; 193  : 	AuVMArea* textarea = AuVMAreaCreate(_image_base_, VIRT_ADDR_ALIGN(_image_base_ + nt->OptionalHeader.SizeOfImage),
; 194  : 		VM_PRESENT | VM_EXEC,0, VM_TYPE_TEXT);

	mov	rax, QWORD PTR nt$[rsp]
	mov	eax, DWORD PTR [rax+80]
	mov	rcx, QWORD PTR _image_base_$[rsp]
	add	rcx, rax
	mov	rax, rcx
	and	rax, -4096				; fffffffffffff000H
	mov	BYTE PTR [rsp+32], 1
	xor	r9d, r9d
	mov	r8b, 5
	mov	rdx, rax
	mov	rcx, QWORD PTR _image_base_$[rsp]
	call	?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z ; AuVMAreaCreate
	mov	QWORD PTR textarea$[rsp], rax

; 195  : 	textarea->len = textarea->end - textarea->start;

	mov	rax, QWORD PTR textarea$[rsp]
	mov	rcx, QWORD PTR textarea$[rsp]
	mov	rcx, QWORD PTR [rcx]
	mov	rax, QWORD PTR [rax+8]
	sub	rax, rcx
	mov	rcx, QWORD PTR textarea$[rsp]
	mov	QWORD PTR [rcx+16], rax

; 196  : 	textarea->file = 0;

	mov	rax, QWORD PTR textarea$[rsp]
	mov	QWORD PTR [rax+26], 0

; 197  : 	AuInsertVMArea(proc, textarea);

	mov	rdx, QWORD PTR textarea$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z ; AuInsertVMArea

; 198  : 
; 199  : 
; 200  : 	uint64_t stack = proc->_main_stack_;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+46]
	mov	QWORD PTR stack$[rsp], rax

; 201  : 
; 202  : 	/* create the user mode entry structure*/
; 203  : 	AuUserEntry *entry = (AuUserEntry*)kmalloc(sizeof(AuUserEntry));

	mov	ecx, 52					; 00000034H
	call	kmalloc
	mov	QWORD PTR entry$[rsp], rax

; 204  : 	entry->entrypoint = (uint64_t)ent;

	mov	rax, QWORD PTR entry$[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rax], rcx

; 205  : 	entry->cs = SEGVAL(GDT_ENTRY_USER_CODE, 3);

	mov	rax, QWORD PTR entry$[rsp]
	mov	QWORD PTR [rax+16], 43			; 0000002bH

; 206  : 	entry->ss = SEGVAL(GDT_ENTRY_USER_DATA, 3);

	mov	rax, QWORD PTR entry$[rsp]
	mov	QWORD PTR [rax+24], 35			; 00000023H

; 207  : 	entry->rsp = stack;

	mov	rax, QWORD PTR entry$[rsp]
	mov	rcx, QWORD PTR stack$[rsp]
	mov	QWORD PTR [rax+8], rcx

; 208  : 
; 209  : 	int num_args = argc;

	mov	eax, DWORD PTR argc$[rsp]
	mov	DWORD PTR num_args$[rsp], eax

; 210  : 	uint64_t argvaddr = 0;

	mov	QWORD PTR argvaddr$[rsp], 0

; 211  : 	if (num_args) {

	cmp	DWORD PTR num_args$[rsp], 0
	je	$LN3@AuLoadExec

; 212  : 		/* Allocate a memory for passing arguments */
; 213  : 		char* args = (char*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR args$9[rsp], rax

; 214  : 		memset(args, 0, PAGE_SIZE);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR args$9[rsp]
	call	memset

; 215  : 		if (!AuMapPageEx(proc->cr3, (size_t)V2P((size_t)args), 0x4000, X86_64_PAGING_USER)){

	mov	rcx, QWORD PTR args$9[rsp]
	call	V2P
	mov	r9b, 4
	mov	r8d, 16384				; 00004000H
	mov	rdx, rax
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+22]
	call	AuMapPageEx
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN2@AuLoadExec

; 216  : 			AuTextOut("Arguments address already mapped \n");

	lea	rcx, OFFSET FLAT:$SG3889
	call	AuTextOut

; 217  : 			argvaddr = 0;

	mov	QWORD PTR argvaddr$[rsp], 0

; 218  : 		}
; 219  : 		else{

	jmp	SHORT $LN1@AuLoadExec
$LN2@AuLoadExec:

; 220  : 			argvaddr = 0x4000;

	mov	QWORD PTR argvaddr$[rsp], 16384		; 00004000H
$LN1@AuLoadExec:
$LN3@AuLoadExec:

; 221  : 		}
; 222  : 	}
; 223  : 	entry->argvaddr = argvaddr;	

	mov	rax, QWORD PTR entry$[rsp]
	mov	rcx, QWORD PTR argvaddr$[rsp]
	mov	QWORD PTR [rax+36], rcx

; 224  : 	entry->num_args = num_args;

	mov	rax, QWORD PTR entry$[rsp]
	mov	ecx, DWORD PTR num_args$[rsp]
	mov	DWORD PTR [rax+32], ecx

; 225  : 	entry->argvs = argv;

	mov	rax, QWORD PTR entry$[rsp]
	mov	rcx, QWORD PTR argv$[rsp]
	mov	QWORD PTR [rax+44], rcx

; 226  : 	AuThread *thr = AuCreateKthread(AuProcessEntUser, P2V((uint64_t)AuPmmngrAlloc() + 4096), V2P((uint64_t)cr3), proc->name);

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	mov	QWORD PTR tv262[rsp], rax
	mov	rcx, QWORD PTR cr3$[rsp]
	call	V2P
	mov	QWORD PTR tv264[rsp], rax
	call	AuPmmngrAlloc
	add	rax, 4096				; 00001000H
	mov	rcx, rax
	call	P2V
	mov	rcx, QWORD PTR tv262[rsp]
	mov	r9, rcx
	mov	rcx, QWORD PTR tv264[rsp]
	mov	r8, rcx
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:?AuProcessEntUser@@YAX_K@Z ; AuProcessEntUser
	call	AuCreateKthread
	mov	QWORD PTR thr$[rsp], rax

; 227  : 
; 228  : 	thr->uentry = entry;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR entry$[rsp]
	mov	QWORD PTR [rax+306], rcx

; 229  : 	proc->main_thread = thr;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR thr$[rsp]
	mov	QWORD PTR [rax+54], rcx

; 230  : 	proc->num_thread = 1;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+62], 1

; 231  : 	proc->entry_point = ent;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rax+63], rcx

; 232  : 	proc->_image_base_ = _image_base_;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR _image_base_$[rsp]
	mov	QWORD PTR [rax+38], rcx

; 233  : 	proc->_image_size_ = file->size;

	mov	rax, QWORD PTR file$[rsp]
	mov	eax, DWORD PTR [rax+32]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+30], rax

; 234  : 	proc->state = PROCESS_STATE_READY;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+20], 2

; 235  : 	proc->file = file;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR file$[rsp]
	mov	QWORD PTR [rax+1031], rcx

; 236  : 	proc->fsys = fsys;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	mov	QWORD PTR [rax+1039], rcx

; 237  : 	AuReleaseSpinlock(loader_lock);

	mov	rcx, QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA ; loader_lock
	call	AuReleaseSpinlock
$LN14@AuLoadExec:

; 238  : }

	add	rsp, 296				; 00000128H
	ret	0
?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z ENDP ; AuLoadExecToProcess
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\loader.cpp
_TEXT	SEGMENT
?AuInitialiseLoader@@YAXXZ PROC				; AuInitialiseLoader

; 240  : void AuInitialiseLoader() {

$LN3:
	sub	rsp, 40					; 00000028H

; 241  : 	loader_mutex = NULL;

	mov	QWORD PTR ?loader_mutex@@3PEAU_mutex_@@EA, 0 ; loader_mutex

; 242  : 	loader_lock = AuCreateSpinlock(false);

	xor	ecx, ecx
	call	AuCreateSpinlock
	mov	QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA, rax ; loader_lock

; 243  : 	loader_mutex = AuCreateMutex();

	call	AuCreateMutex
	mov	QWORD PTR ?loader_mutex@@3PEAU_mutex_@@EA, rax ; loader_mutex

; 244  : 	is_loader_busy = false;

	mov	BYTE PTR ?is_loader_busy@@3_NA, 0	; is_loader_busy

; 245  : }

	add	rsp, 40					; 00000028H
	ret	0
?AuInitialiseLoader@@YAXXZ ENDP				; AuInitialiseLoader
_TEXT	ENDS
END
