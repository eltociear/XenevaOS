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
PUBLIC	?AuInitialiseLoader@@YAXXZ			; AuInitialiseLoader
PUBLIC	?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z ; AuLoadExecToProcess
PUBLIC	?AuProcessEntUser@@YAX_K@Z			; AuProcessEntUser
PUBLIC	?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ		; AuLoaderGetMutex
PUBLIC	?AuIsLoaderBusy@@YA_NXZ				; AuIsLoaderBusy
PUBLIC	??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS * __ptr64,_IMAGE_DOS_HEADER_ * __ptr64>
PUBLIC	??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ; raw_offset<_IMAGE_SECTION_HEADER * __ptr64,_IMAGE_OPTIONAL_HEADER_PE32PLUS * __ptr64>
EXTRN	AuVFSOpen:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuVFSNodeReadBlock:PROC
EXTRN	AuCreateKthread:PROC
EXTRN	AuCreateSpinlock:PROC
EXTRN	AuAcquireSpinlock:PROC
EXTRN	AuReleaseSpinlock:PROC
EXTRN	AuCreateMutex:PROC
EXTRN	strlen:PROC
EXTRN	memset:PROC
EXTRN	AuMapPageEx:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	P2V:PROC
EXTRN	V2P:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z:PROC ; AuInsertVMArea
EXTRN	?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z:PROC	; AuVMAreaCreate
EXTRN	x64_cli:PROC
EXTRN	x64_enter_user:PROC
pdata	SEGMENT
$pdata$?AuInitialiseLoader@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+53
	DD	imagerel $unwind$?AuInitialiseLoader@@YAXXZ
$pdata$?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z DD imagerel $LN11
	DD	imagerel $LN11+1328
	DD	imagerel $unwind$?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z
$pdata$?AuProcessEntUser@@YAX_K@Z DD imagerel $LN27
	DD	imagerel $LN27+515
	DD	imagerel $unwind$?AuProcessEntUser@@YAX_K@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuInitialiseLoader@@YAXXZ DD 010401H
	DD	04204H
$unwind$?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z DD 021b01H
	DD	021011bH
$unwind$?AuProcessEntUser@@YAX_K@Z DD 010901H
	DD	08209H
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

; 215  : 	return is_loader_busy;

	movzx	eax, BYTE PTR ?is_loader_busy@@3_NA	; is_loader_busy

; 216  : }

	ret	0
?AuIsLoaderBusy@@YA_NXZ ENDP				; AuIsLoaderBusy
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\loader.cpp
_TEXT	SEGMENT
?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ PROC		; AuLoaderGetMutex

; 211  : 	return loader_mutex;

	mov	rax, QWORD PTR ?loader_mutex@@3PEAU_mutex_@@EA ; loader_mutex

; 212  : }

	ret	0
?AuLoaderGetMutex@@YAPEAU_mutex_@@XZ ENDP		; AuLoaderGetMutex
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\loader.cpp
_TEXT	SEGMENT
i$1 = 32
j$2 = 36
ent$ = 40
str$3 = 48
argvs$ = 56
rcx$ = 80
?AuProcessEntUser@@YAX_K@Z PROC				; AuProcessEntUser

; 81   : void AuProcessEntUser(uint64_t rcx) {

$LN27:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 82   : 	x64_cli();

	call	x64_cli

; 83   : 	AuUserEntry* ent = (AuUserEntry*)rcx;

	mov	rax, QWORD PTR rcx$[rsp]
	mov	QWORD PTR ent$[rsp], rax

; 84   : 	/* do all arguments passing stuff, arguments
; 85   : 	 * are passed as strings to stack
; 86   : 	 */
; 87   : 	char** argvs = (char**)ent->argvaddr;

	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+40]
	mov	QWORD PTR argvs$[rsp], rax

; 88   : 	for (int i = 0; i < ent->num_args; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN24@AuProcessE
$LN23@AuProcessE:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN24@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	eax, DWORD PTR [rax+32]
	cmp	DWORD PTR i$1[rsp], eax
	jge	$LN22@AuProcessE

; 89   : 		char* str = ent->argvs[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rcx+48]
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR str$3[rsp], rax

; 90   : 		for (int j = strlen(str); j >= 0; j--) {

	mov	rcx, QWORD PTR str$3[rsp]
	call	strlen
	mov	DWORD PTR j$2[rsp], eax
	jmp	SHORT $LN21@AuProcessE
$LN20@AuProcessE:
	mov	eax, DWORD PTR j$2[rsp]
	dec	eax
	mov	DWORD PTR j$2[rsp], eax
$LN21@AuProcessE:
	cmp	DWORD PTR j$2[rsp], 0
	jl	SHORT $LN19@AuProcessE
$LN18@AuProcessE:

; 91   : 			PUSH(ent->rsp, char, str[j]);

	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
$LN15@AuProcessE:
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 0
	test	rax, rax
	je	SHORT $LN14@AuProcessE
	mov	rax, QWORD PTR ent$[rsp]
	mov	rax, QWORD PTR [rax+8]
	dec	rax
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rcx+8], rax
	jmp	SHORT $LN15@AuProcessE
$LN14@AuProcessE:
	movsxd	rax, DWORD PTR j$2[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	rdx, QWORD PTR str$3[rsp]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx], al
	xor	eax, eax
	test	eax, eax
	jne	SHORT $LN18@AuProcessE

; 92   : 		}

	jmp	SHORT $LN20@AuProcessE
$LN19@AuProcessE:

; 93   : 		argvs[i] = (char*)ent->rsp;

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR argvs$[rsp]
	mov	rdx, QWORD PTR ent$[rsp]
	mov	rdx, QWORD PTR [rdx+8]
	mov	QWORD PTR [rcx+rax*8], rdx

; 94   : 	}

	jmp	$LN23@AuProcessE
$LN22@AuProcessE:

; 95   : 
; 96   : 	if (ent->argvs)

	mov	rax, QWORD PTR ent$[rsp]
	cmp	QWORD PTR [rax+48], 0
	je	SHORT $LN13@AuProcessE

; 97   : 		kfree(ent->argvs);

	mov	rax, QWORD PTR ent$[rsp]
	mov	rcx, QWORD PTR [rax+48]
	call	kfree
$LN13@AuProcessE:
$LN12@AuProcessE:

; 98   : 
; 99   : 	PUSH(ent->rsp, size_t, (size_t)ent->argvaddr);

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
	mov	rcx, QWORD PTR [rcx+40]
	mov	QWORD PTR [rax], rcx
	xor	eax, eax
	test	eax, eax
	jne	SHORT $LN12@AuProcessE
$LN7@AuProcessE:

; 100  : 	PUSH(ent->rsp, size_t, ent->num_args);

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

; 101  : 	x64_enter_user(ent->rsp, ent->entrypoint, ent->cs, ent->ss);

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

; 102  : 	while (1) {

	xor	eax, eax
	cmp	eax, 1
	je	SHORT $LN1@AuProcessE

; 103  : 	}

	jmp	SHORT $LN2@AuProcessE
$LN1@AuProcessE:

; 104  : }

	add	rsp, 72					; 00000048H
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
textarea$ = 80
_image_base_$ = 88
i$3 = 96
num_args$ = 104
buf$ = 112
file$ = 120
fsys$ = 128
thr$ = 136
cr3$ = 144
ent$ = 152
block$4 = 160
secthdr$ = 168
argvaddr$ = 176
sect_sz$5 = 184
dos$ = 192
sect_ld_addr$6 = 200
args$7 = 208
tv218 = 216
stack$ = 224
tv220 = 232
tv173 = 240
read_bytes$ = 248
proc$ = 272
filename$ = 280
argc$ = 288
argv$ = 296
?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z PROC ; AuLoadExecToProcess

; 114  : void AuLoadExecToProcess(AuProcess* proc, char* filename, int argc,char** argv) {

$LN11:
	mov	QWORD PTR [rsp+32], r9
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 264				; 00000108H

; 115  : 	AuAcquireSpinlock(loader_lock);

	mov	rcx, QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA ; loader_lock
	call	AuAcquireSpinlock

; 116  : 
; 117  : 	AuVFSNode *fsys = AuVFSFind(filename);

	mov	rcx, QWORD PTR filename$[rsp]
	call	AuVFSFind
	mov	QWORD PTR fsys$[rsp], rax

; 118  : 
; 119  : 	AuVFSNode *file = AuVFSOpen(filename);

	mov	rcx, QWORD PTR filename$[rsp]
	call	AuVFSOpen
	mov	QWORD PTR file$[rsp], rax

; 120  : 
; 121  : 	uint64_t* buf = (uint64_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR buf$[rsp], rax

; 122  : 	memset(buf, 0, 4096);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR buf$[rsp]
	call	memset

; 123  : 
; 124  : 	size_t read_bytes = AuVFSNodeReadBlock(fsys, file, (uint64_t*)V2P((uint64_t)buf));

	mov	rcx, QWORD PTR buf$[rsp]
	call	V2P
	mov	r8, rax
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSNodeReadBlock
	mov	QWORD PTR read_bytes$[rsp], rax

; 125  : 	
; 126  : 	IMAGE_DOS_HEADER* dos = (IMAGE_DOS_HEADER*)buf;

	mov	rax, QWORD PTR buf$[rsp]
	mov	QWORD PTR dos$[rsp], rax

; 127  : 	PIMAGE_NT_HEADERS nt = raw_offset<PIMAGE_NT_HEADERS>(dos, dos->e_lfanew);

	mov	rax, QWORD PTR dos$[rsp]
	movzx	eax, WORD PTR [rax+60]
	mov	edx, eax
	mov	rcx, QWORD PTR dos$[rsp]
	call	??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS * __ptr64,_IMAGE_DOS_HEADER_ * __ptr64>
	mov	QWORD PTR nt$[rsp], rax

; 128  : 	PSECTION_HEADER secthdr = raw_offset<PSECTION_HEADER>(&nt->OptionalHeader, nt->FileHeader.SizeOfOptionaHeader);

	mov	rax, QWORD PTR nt$[rsp]
	movzx	eax, WORD PTR [rax+20]
	mov	rcx, QWORD PTR nt$[rsp]
	add	rcx, 24
	mov	edx, eax
	call	??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ; raw_offset<_IMAGE_SECTION_HEADER * __ptr64,_IMAGE_OPTIONAL_HEADER_PE32PLUS * __ptr64>
	mov	QWORD PTR secthdr$[rsp], rax

; 129  : 
; 130  : 	uint64_t _image_base_ = nt->OptionalHeader.ImageBase;

	mov	rax, QWORD PTR nt$[rsp]
	mov	rax, QWORD PTR [rax+48]
	mov	QWORD PTR _image_base_$[rsp], rax

; 131  : 	entry ent = (entry)(nt->OptionalHeader.AddressOfEntryPoint + nt->OptionalHeader.ImageBase);

	mov	rax, QWORD PTR nt$[rsp]
	mov	eax, DWORD PTR [rax+40]
	mov	rcx, QWORD PTR nt$[rsp]
	add	rax, QWORD PTR [rcx+48]
	mov	QWORD PTR ent$[rsp], rax

; 132  : 
; 133  : 	uint64_t* cr3 = proc->cr3;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+14]
	mov	QWORD PTR cr3$[rsp], rax

; 134  : 
; 135  : 	AuMapPageEx(cr3, V2P((size_t)buf), _image_base_, X86_64_PAGING_USER);

	mov	rcx, QWORD PTR buf$[rsp]
	call	V2P
	mov	r9b, 4
	mov	r8, QWORD PTR _image_base_$[rsp]
	mov	rdx, rax
	mov	rcx, QWORD PTR cr3$[rsp]
	call	AuMapPageEx

; 136  : 
; 137  : 	/* this should be memory mapped, i.e, sections should be
; 138  : 	 * memory mapped
; 139  : 	 */
; 140  : 	for (size_t i = 0; i < nt->FileHeader.NumberOfSections; ++i) {

	mov	QWORD PTR i$3[rsp], 0
	jmp	SHORT $LN8@AuLoadExec
$LN7@AuLoadExec:
	mov	rax, QWORD PTR i$3[rsp]
	inc	rax
	mov	QWORD PTR i$3[rsp], rax
$LN8@AuLoadExec:
	mov	rax, QWORD PTR nt$[rsp]
	movzx	eax, WORD PTR [rax+6]
	cmp	QWORD PTR i$3[rsp], rax
	jae	$LN6@AuLoadExec

; 141  : 		size_t sect_ld_addr = _image_base_ + secthdr[i].VirtualAddress;

	imul	rax, QWORD PTR i$3[rsp], 40		; 00000028H
	mov	rcx, QWORD PTR secthdr$[rsp]
	mov	eax, DWORD PTR [rcx+rax+12]
	mov	rcx, QWORD PTR _image_base_$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR sect_ld_addr$6[rsp], rax

; 142  : 		size_t sect_sz = secthdr[i].VirtualSize;

	imul	rax, QWORD PTR i$3[rsp], 40		; 00000028H
	mov	rcx, QWORD PTR secthdr$[rsp]
	mov	eax, DWORD PTR [rcx+rax+8]
	mov	QWORD PTR sect_sz$5[rsp], rax

; 143  : 		int req_pages = sect_sz / PAGE_SIZE;

	xor	edx, edx
	mov	rax, QWORD PTR sect_sz$5[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	DWORD PTR req_pages$2[rsp], eax

; 144  : 		if ((sect_sz % PAGE_SIZE) != 0)

	xor	edx, edx
	mov	rax, QWORD PTR sect_sz$5[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN5@AuLoadExec

; 145  : 			req_pages++;

	mov	eax, DWORD PTR req_pages$2[rsp]
	inc	eax
	mov	DWORD PTR req_pages$2[rsp], eax
$LN5@AuLoadExec:

; 146  : 
; 147  : 		for (int j = 0; j < req_pages; j++) {

	mov	DWORD PTR j$1[rsp], 0
	jmp	SHORT $LN4@AuLoadExec
$LN3@AuLoadExec:
	mov	eax, DWORD PTR j$1[rsp]
	inc	eax
	mov	DWORD PTR j$1[rsp], eax
$LN4@AuLoadExec:
	mov	eax, DWORD PTR req_pages$2[rsp]
	cmp	DWORD PTR j$1[rsp], eax
	jge	$LN2@AuLoadExec

; 148  : 			uint64_t *block = (uint64_t*)P2V((uint64_t)AuPmmngrAlloc());/*(buf + secthdr[i].PointerToRawData);*/

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR block$4[rsp], rax

; 149  : 			AuVFSNodeReadBlock(fsys, file, (uint64_t*)V2P((size_t)block));

	mov	rcx, QWORD PTR block$4[rsp]
	call	V2P
	mov	r8, rax
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSNodeReadBlock

; 150  : 			AuMapPageEx(cr3, V2P((size_t)block), sect_ld_addr + j * PAGE_SIZE, X86_64_PAGING_USER);

	imul	eax, DWORD PTR j$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR sect_ld_addr$6[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR tv173[rsp], rax
	mov	rcx, QWORD PTR block$4[rsp]
	call	V2P
	mov	r9b, 4
	mov	rcx, QWORD PTR tv173[rsp]
	mov	r8, rcx
	mov	rdx, rax
	mov	rcx, QWORD PTR cr3$[rsp]
	call	AuMapPageEx

; 151  : 		}

	jmp	$LN3@AuLoadExec
$LN2@AuLoadExec:

; 152  : 	}

	jmp	$LN7@AuLoadExec
$LN6@AuLoadExec:

; 153  : 
; 154  : 	
; 155  : 	/* create a vmarea segment here */
; 156  : 	AuVMArea* textarea = AuVMAreaCreate(_image_base_, VIRT_ADDR_ALIGN(_image_base_ + nt->OptionalHeader.SizeOfImage),
; 157  : 		VM_PRESENT | VM_EXEC,0, VM_TYPE_TEXT);

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

; 158  : 	textarea->len = textarea->end - textarea->start;

	mov	rax, QWORD PTR textarea$[rsp]
	mov	rcx, QWORD PTR textarea$[rsp]
	mov	rcx, QWORD PTR [rcx]
	mov	rax, QWORD PTR [rax+8]
	sub	rax, rcx
	mov	rcx, QWORD PTR textarea$[rsp]
	mov	QWORD PTR [rcx+16], rax

; 159  : 	textarea->file = 0;

	mov	rax, QWORD PTR textarea$[rsp]
	mov	QWORD PTR [rax+26], 0

; 160  : 	AuInsertVMArea(proc, textarea);

	mov	rdx, QWORD PTR textarea$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z ; AuInsertVMArea

; 161  : 
; 162  : 
; 163  : 	uint64_t stack = proc->_main_stack_;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+38]
	mov	QWORD PTR stack$[rsp], rax

; 164  : 
; 165  : 	/* create the user mode entry structure*/
; 166  : 	AuUserEntry *entry = (AuUserEntry*)kmalloc(sizeof(AuUserEntry));

	mov	ecx, 56					; 00000038H
	call	kmalloc
	mov	QWORD PTR entry$[rsp], rax

; 167  : 	entry->entrypoint = (uint64_t)ent;

	mov	rax, QWORD PTR entry$[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rax], rcx

; 168  : 	entry->cs = SEGVAL(GDT_ENTRY_USER_CODE, 3);

	mov	rax, QWORD PTR entry$[rsp]
	mov	QWORD PTR [rax+16], 43			; 0000002bH

; 169  : 	entry->ss = SEGVAL(GDT_ENTRY_USER_DATA, 3);

	mov	rax, QWORD PTR entry$[rsp]
	mov	QWORD PTR [rax+24], 35			; 00000023H

; 170  : 	entry->rsp = stack;

	mov	rax, QWORD PTR entry$[rsp]
	mov	rcx, QWORD PTR stack$[rsp]
	mov	QWORD PTR [rax+8], rcx

; 171  : 
; 172  : 	int num_args = argc;

	mov	eax, DWORD PTR argc$[rsp]
	mov	DWORD PTR num_args$[rsp], eax

; 173  : 	uint64_t argvaddr = 0;

	mov	QWORD PTR argvaddr$[rsp], 0

; 174  : 	if (num_args) {

	cmp	DWORD PTR num_args$[rsp], 0
	je	SHORT $LN1@AuLoadExec

; 175  : 		/* Allocate a memory for passing arguments */
; 176  : 		char* args = (char*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR args$7[rsp], rax

; 177  : 		AuMapPageEx(proc->cr3, (size_t)V2P((size_t)args), 0x4000, X86_64_PAGING_USER);

	mov	rcx, QWORD PTR args$7[rsp]
	call	V2P
	mov	r9b, 4
	mov	r8d, 16384				; 00004000H
	mov	rdx, rax
	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR [rax+14]
	call	AuMapPageEx

; 178  : 		argvaddr = 0x4000;

	mov	QWORD PTR argvaddr$[rsp], 16384		; 00004000H
$LN1@AuLoadExec:

; 179  : 	}
; 180  : 	entry->argvaddr = argvaddr;	

	mov	rax, QWORD PTR entry$[rsp]
	mov	rcx, QWORD PTR argvaddr$[rsp]
	mov	QWORD PTR [rax+40], rcx

; 181  : 	entry->num_args = num_args;

	mov	rax, QWORD PTR entry$[rsp]
	mov	ecx, DWORD PTR num_args$[rsp]
	mov	DWORD PTR [rax+32], ecx

; 182  : 	entry->argvs = argv;

	mov	rax, QWORD PTR entry$[rsp]
	mov	rcx, QWORD PTR argv$[rsp]
	mov	QWORD PTR [rax+48], rcx

; 183  : 
; 184  : 	AuThread *thr = AuCreateKthread(AuProcessEntUser, P2V((uint64_t)AuPmmngrAlloc() + 4095), V2P((uint64_t)cr3), proc->name);

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	mov	QWORD PTR tv218[rsp], rax
	mov	rcx, QWORD PTR cr3$[rsp]
	call	V2P
	mov	QWORD PTR tv220[rsp], rax
	call	AuPmmngrAlloc
	add	rax, 4095				; 00000fffH
	mov	rcx, rax
	call	P2V
	mov	rcx, QWORD PTR tv218[rsp]
	mov	r9, rcx
	mov	rcx, QWORD PTR tv220[rsp]
	mov	r8, rcx
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:?AuProcessEntUser@@YAX_K@Z ; AuProcessEntUser
	call	AuCreateKthread
	mov	QWORD PTR thr$[rsp], rax

; 185  : 	thr->frame.rcx = (uint64_t)entry;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR entry$[rsp]
	mov	QWORD PTR [rax+56], rcx

; 186  : 
; 187  : 	thr->uentry = entry;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR entry$[rsp]
	mov	QWORD PTR [rax+298], rcx

; 188  : 	proc->main_thread = thr;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR thr$[rsp]
	mov	QWORD PTR [rax+46], rcx

; 189  : 	proc->num_thread = 1;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+54], 1

; 190  : 	proc->entry_point = ent;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR ent$[rsp]
	mov	QWORD PTR [rax+55], rcx

; 191  : 	proc->_image_base_ = _image_base_;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR _image_base_$[rsp]
	mov	QWORD PTR [rax+30], rcx

; 192  : 	proc->_image_size_ = file->size;

	mov	rax, QWORD PTR file$[rsp]
	mov	eax, DWORD PTR [rax+32]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+22], rax

; 193  : 	proc->state = PROCESS_STATE_READY;

	mov	rax, QWORD PTR proc$[rsp]
	mov	BYTE PTR [rax+12], 2

; 194  : 	proc->file = file;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR file$[rsp]
	mov	QWORD PTR [rax+1023], rcx

; 195  : 	proc->fsys = fsys;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	mov	QWORD PTR [rax+1031], rcx

; 196  : 	AuReleaseSpinlock(loader_lock);

	mov	rcx, QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA ; loader_lock
	call	AuReleaseSpinlock

; 197  : }

	add	rsp, 264				; 00000108H
	ret	0
?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z ENDP ; AuLoadExecToProcess
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\loader.cpp
_TEXT	SEGMENT
?AuInitialiseLoader@@YAXXZ PROC				; AuInitialiseLoader

; 199  : void AuInitialiseLoader() {

$LN3:
	sub	rsp, 40					; 00000028H

; 200  : 	loader_mutex = NULL;

	mov	QWORD PTR ?loader_mutex@@3PEAU_mutex_@@EA, 0 ; loader_mutex

; 201  : 	loader_lock = AuCreateSpinlock(false);

	xor	ecx, ecx
	call	AuCreateSpinlock
	mov	QWORD PTR ?loader_lock@@3PEAU_spinlock_@@EA, rax ; loader_lock

; 202  : 	loader_mutex = AuCreateMutex();

	call	AuCreateMutex
	mov	QWORD PTR ?loader_mutex@@3PEAU_mutex_@@EA, rax ; loader_mutex

; 203  : 	is_loader_busy = false;

	mov	BYTE PTR ?is_loader_busy@@3_NA, 0	; is_loader_busy

; 204  : }

	add	rsp, 40					; 00000028H
	ret	0
?AuInitialiseLoader@@YAXXZ ENDP				; AuInitialiseLoader
_TEXT	ENDS
END
