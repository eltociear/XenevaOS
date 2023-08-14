; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?CreateSharedMem@@YAHG_KE@Z			; CreateSharedMem
PUBLIC	?ObtainSharedMem@@YAPEAXGPEAXH@Z		; ObtainSharedMem
PUBLIC	?UnmapSharedMem@@YAXG@Z				; UnmapSharedMem
PUBLIC	?GetProcessHeapMem@@YA_K_K@Z			; GetProcessHeapMem
EXTRN	AuGetCurrentThread:PROC
EXTRN	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindThread
EXTRN	?AuCreateSHM@@YAHPEAU_au_proc_@@G_KE@Z:PROC	; AuCreateSHM
EXTRN	?AuSHMObtainMem@@YAPEAXPEAU_au_proc_@@GPEAXH@Z:PROC ; AuSHMObtainMem
EXTRN	?AuSHMUnmap@@YAXGPEAU_au_proc_@@@Z:PROC		; AuSHMUnmap
EXTRN	AuMapPage:PROC
EXTRN	AuPmmngrAlloc:PROC
pdata	SEGMENT
$pdata$?CreateSharedMem@@YAHG_KE@Z DD imagerel $LN4
	DD	imagerel $LN4+98
	DD	imagerel $unwind$?CreateSharedMem@@YAHG_KE@Z
$pdata$?ObtainSharedMem@@YAPEAXGPEAXH@Z DD imagerel $LN3
	DD	imagerel $LN3+74
	DD	imagerel $unwind$?ObtainSharedMem@@YAPEAXGPEAXH@Z
$pdata$?UnmapSharedMem@@YAXG@Z DD imagerel $LN3
	DD	imagerel $LN3+54
	DD	imagerel $unwind$?UnmapSharedMem@@YAXG@Z
$pdata$?GetProcessHeapMem@@YA_K_K@Z DD imagerel $LN9
	DD	imagerel $LN9+277
	DD	imagerel $unwind$?GetProcessHeapMem@@YA_K_K@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?CreateSharedMem@@YAHG_KE@Z DD 011301H
	DD	08213H
$unwind$?ObtainSharedMem@@YAPEAXGPEAXH@Z DD 011301H
	DD	06213H
$unwind$?UnmapSharedMem@@YAXG@Z DD 010901H
	DD	06209H
$unwind$?GetProcessHeapMem@@YA_K_K@Z DD 010901H
	DD	0a209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\mmserv.cpp
_TEXT	SEGMENT
i$1 = 32
proc$ = 40
start_addr$ = 48
thr$ = 56
tv74 = 64
phys$2 = 72
sz$ = 96
?GetProcessHeapMem@@YA_K_K@Z PROC			; GetProcessHeapMem

; 85   : uint64_t GetProcessHeapMem(size_t sz) {

$LN9:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 86   : 	/* check if size is page aligned */
; 87   : 	if (sz & 0xFFF)

	mov	rax, QWORD PTR sz$[rsp]
	and	rax, 4095				; 00000fffH
	test	rax, rax
	je	SHORT $LN6@GetProcess

; 88   : 		return -1;

	mov	rax, -1
	jmp	$LN7@GetProcess
$LN6@GetProcess:

; 89   : 
; 90   : 	if ((sz % PAGE_SIZE) != 0)

	xor	edx, edx
	mov	rax, QWORD PTR sz$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rax, rdx
	test	rax, rax
	je	SHORT $LN5@GetProcess

; 91   : 		return -1;

	mov	rax, -1
	jmp	$LN7@GetProcess
$LN5@GetProcess:

; 92   : 	
; 93   : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rsp], rax

; 94   : 	AuProcess* proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 95   : 	if (!proc)

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN4@GetProcess

; 96   : 		return -1;

	mov	rax, -1
	jmp	$LN7@GetProcess
$LN4@GetProcess:

; 97   : 	uint64_t start_addr = proc->proc_mem_heap;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1071]
	mov	QWORD PTR start_addr$[rsp], rax

; 98   : 	for (int i = 0; i < sz / PAGE_SIZE; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@GetProcess
$LN2@GetProcess:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@GetProcess:
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv74[rsp], rax
	xor	edx, edx
	mov	rax, QWORD PTR sz$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv74[rsp]
	cmp	rcx, rax
	jae	SHORT $LN1@GetProcess

; 99   : 		void* phys = AuPmmngrAlloc();

	call	AuPmmngrAlloc
	mov	QWORD PTR phys$2[rsp], rax

; 100  : 		AuMapPage((size_t)phys, start_addr + i * PAGE_SIZE, X86_64_PAGING_USER);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR start_addr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 4
	mov	rdx, rax
	mov	rcx, QWORD PTR phys$2[rsp]
	call	AuMapPage

; 101  : 	}

	jmp	SHORT $LN2@GetProcess
$LN1@GetProcess:

; 102  : 	proc->proc_mem_heap += sz;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1071]
	add	rax, QWORD PTR sz$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+1071], rax

; 103  : 	return start_addr;

	mov	rax, QWORD PTR start_addr$[rsp]
$LN7@GetProcess:

; 104  : }

	add	rsp, 88					; 00000058H
	ret	0
?GetProcessHeapMem@@YA_K_K@Z ENDP			; GetProcessHeapMem
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\mmserv.cpp
_TEXT	SEGMENT
thr$ = 32
proc$ = 40
key$ = 64
?UnmapSharedMem@@YAXG@Z PROC				; UnmapSharedMem

; 74   : void UnmapSharedMem(uint16_t key) {

$LN3:
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 56					; 00000038H

; 75   : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rsp], rax

; 76   : 	AuProcess* proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 77   : 	AuSHMUnmap(key, proc);

	mov	rdx, QWORD PTR proc$[rsp]
	movzx	ecx, WORD PTR key$[rsp]
	call	?AuSHMUnmap@@YAXGPEAU_au_proc_@@@Z	; AuSHMUnmap

; 78   : }

	add	rsp, 56					; 00000038H
	ret	0
?UnmapSharedMem@@YAXG@Z ENDP				; UnmapSharedMem
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\mmserv.cpp
_TEXT	SEGMENT
thr$ = 32
proc$ = 40
id$ = 64
shmaddr$ = 72
shmflg$ = 80
?ObtainSharedMem@@YAPEAXGPEAXH@Z PROC			; ObtainSharedMem

; 64   : void* ObtainSharedMem(uint16_t id, void* shmaddr, int shmflg) {

$LN3:
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 56					; 00000038H

; 65   : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rsp], rax

; 66   : 	AuProcess* proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 67   : 	return AuSHMObtainMem(proc,id, shmaddr, shmflg);

	mov	r9d, DWORD PTR shmflg$[rsp]
	mov	r8, QWORD PTR shmaddr$[rsp]
	movzx	edx, WORD PTR id$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuSHMObtainMem@@YAPEAXPEAU_au_proc_@@GPEAXH@Z ; AuSHMObtainMem

; 68   : }

	add	rsp, 56					; 00000038H
	ret	0
?ObtainSharedMem@@YAPEAXGPEAXH@Z ENDP			; ObtainSharedMem
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\mmserv.cpp
_TEXT	SEGMENT
id$ = 32
proc$ = 40
thr$ = 48
key$ = 80
sz$ = 88
flags$ = 96
?CreateSharedMem@@YAHG_KE@Z PROC			; CreateSharedMem

; 49   : int CreateSharedMem(uint16_t key, size_t sz, uint8_t flags){

$LN4:
	mov	BYTE PTR [rsp+24], r8b
	mov	QWORD PTR [rsp+16], rdx
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 72					; 00000048H

; 50   : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rsp], rax

; 51   : 	AuProcess* proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 52   : 	if (!proc)

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN1@CreateShar

; 53   : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN2@CreateShar
$LN1@CreateShar:

; 54   : 	int id = AuCreateSHM(proc, key, sz, flags);

	movzx	r9d, BYTE PTR flags$[rsp]
	mov	r8, QWORD PTR sz$[rsp]
	movzx	edx, WORD PTR key$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuCreateSHM@@YAHPEAU_au_proc_@@G_KE@Z	; AuCreateSHM
	mov	DWORD PTR id$[rsp], eax

; 55   : 	return id;

	mov	eax, DWORD PTR id$[rsp]
$LN2@CreateShar:

; 56   : }

	add	rsp, 72					; 00000048H
	ret	0
?CreateSharedMem@@YAHG_KE@Z ENDP			; CreateSharedMem
_TEXT	ENDS
END
