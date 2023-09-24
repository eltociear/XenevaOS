; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG3465	DB	'/', 00H
CONST	ENDS
PUBLIC	?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z		; CreateMemMapping
PUBLIC	?UnmapMemMapping@@YAXPEAX_K@Z			; UnmapMemMapping
EXTRN	AuVmmngrGetPage:PROC
EXTRN	AuMapPage:PROC
EXTRN	AuGetFreePage:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuVFSNodeReadBlock:PROC
EXTRN	AuVFSGetBlockFor:PROC
EXTRN	AuGetCurrentThread:PROC
EXTRN	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindThread
EXTRN	x64_cli:PROC
pdata	SEGMENT
$pdata$?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z DD imagerel $LN16
	DD	imagerel $LN16+544
	DD	imagerel $unwind$?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z
$pdata$?UnmapMemMapping@@YAXPEAX_K@Z DD imagerel $LN10
	DD	imagerel $LN10+304
	DD	imagerel $unwind$?UnmapMemMapping@@YAXPEAX_K@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z DD 011801H
	DD	0e218H
$unwind$?UnmapMemMapping@@YAXPEAX_K@Z DD 010e01H
	DD	0a20eH
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\mmap.cpp
_TEXT	SEGMENT
i$1 = 32
page$2 = 40
tv69 = 48
phys$3 = 56
tv71 = 64
addr$ = 72
address$ = 96
len$ = 104
?UnmapMemMapping@@YAXPEAX_K@Z PROC			; UnmapMemMapping

; 100  : void UnmapMemMapping(void* address, size_t len) {

$LN10:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 101  : 	x64_cli();

	call	x64_cli

; 102  : 	if (!len)

	cmp	QWORD PTR len$[rsp], 0
	jne	SHORT $LN5@UnmapMemMa

; 103  : 		return;

	jmp	$LN6@UnmapMemMa
$LN5@UnmapMemMa:

; 104  : 
; 105  : 	len = PAGE_ALIGN(len); //simply align the length

	mov	rax, QWORD PTR len$[rsp]
	and	rax, 4095				; 00000fffH
	test	rax, rax
	je	SHORT $LN8@UnmapMemMa
	mov	rax, QWORD PTR len$[rsp]
	add	rax, 4096				; 00001000H
	and	rax, -4096				; fffffffffffff000H
	mov	QWORD PTR tv69[rsp], rax
	jmp	SHORT $LN9@UnmapMemMa
$LN8@UnmapMemMa:
	mov	rax, QWORD PTR len$[rsp]
	mov	QWORD PTR tv69[rsp], rax
$LN9@UnmapMemMa:
	mov	rax, QWORD PTR tv69[rsp]
	mov	QWORD PTR len$[rsp], rax

; 106  : 	uint64_t addr = (uint64_t)address;

	mov	rax, QWORD PTR address$[rsp]
	mov	QWORD PTR addr$[rsp], rax

; 107  : 	for (int i = 0; i < len / PAGE_SIZE; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@UnmapMemMa
$LN3@UnmapMemMa:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@UnmapMemMa:
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv71[rsp], rax
	xor	edx, edx
	mov	rax, QWORD PTR len$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv71[rsp]
	cmp	rcx, rax
	jae	$LN2@UnmapMemMa

; 108  : 		AuVPage* page = AuVmmngrGetPage(addr + i * PAGE_SIZE, VIRT_GETPAGE_ONLY_RET, VIRT_GETPAGE_ONLY_RET);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR addr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 2
	mov	dl, 2
	mov	rcx, rax
	call	AuVmmngrGetPage
	mov	QWORD PTR page$2[rsp], rax

; 109  : 		uint64_t phys = page->bits.page << PAGE_SHIFT;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	shr	rax, 12
	and	rax, 268435455				; 0fffffffH
	shl	rax, 12
	mov	QWORD PTR phys$3[rsp], rax

; 110  : 		if (phys) 

	cmp	QWORD PTR phys$3[rsp], 0
	je	SHORT $LN1@UnmapMemMa

; 111  : 			AuPmmngrFree((void*)phys);

	mov	rcx, QWORD PTR phys$3[rsp]
	call	AuPmmngrFree
$LN1@UnmapMemMa:

; 112  : 
; 113  : 		page->bits.page = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rcx, -1099511623681			; ffffff0000000fffH
	mov	rax, QWORD PTR [rax]
	and	rax, rcx
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax

; 114  : 		page->bits.present = 0;

	mov	rax, QWORD PTR page$2[rsp]
	mov	rax, QWORD PTR [rax]
	and	rax, -2
	mov	rcx, QWORD PTR page$2[rsp]
	mov	QWORD PTR [rcx], rax

; 115  : 	}

	jmp	$LN3@UnmapMemMa
$LN2@UnmapMemMa:
$LN6@UnmapMemMa:

; 116  : 
; 117  : }

	add	rsp, 88					; 00000058H
	ret	0
?UnmapMemMapping@@YAXPEAX_K@Z ENDP			; UnmapMemMapping
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\mm\mmap.cpp
_TEXT	SEGMENT
i$1 = 32
file$ = 40
fsys$ = 48
lookup_addr$ = 56
proc$ = 64
phys$2 = 72
tv81 = 80
file_block_start$3 = 88
curr_thr$ = 96
tv129 = 104
address$ = 128
len$ = 136
prot$ = 144
flags$ = 152
fd$ = 160
offset$ = 168
?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z PROC		; CreateMemMapping

; 48   : 	uint64_t offset) {

$LN16:
	mov	DWORD PTR [rsp+32], r9d
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 120				; 00000078H

; 49   : 	x64_cli();

	call	x64_cli

; 50   : 
; 51   : 	if (!len)

	cmp	QWORD PTR len$[rsp], 0
	jne	SHORT $LN11@CreateMemM

; 52   : 		return 0;

	xor	eax, eax
	jmp	$LN12@CreateMemM
$LN11@CreateMemM:

; 53   : 
; 54   : 	/* for now, memory mapping doesn't support lazy loading 
; 55   : 	 * so everything works at pre-paging */
; 56   : 
; 57   : 	AuThread* curr_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR curr_thr$[rsp], rax

; 58   : 	AuProcess* proc = AuProcessFindThread(curr_thr);

	mov	rcx, QWORD PTR curr_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 59   : 	AuVFSNode *file = NULL;

	mov	QWORD PTR file$[rsp], 0

; 60   : 	AuVFSNode* fsys = NULL;

	mov	QWORD PTR fsys$[rsp], 0

; 61   : 	if (fd != -1) 

	cmp	DWORD PTR fd$[rsp], -1
	je	SHORT $LN10@CreateMemM

; 62   : 		file = proc->fds[fd];

	movsxd	rax, DWORD PTR fd$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8+551]
	mov	QWORD PTR file$[rsp], rax
$LN10@CreateMemM:

; 63   : 	
; 64   : 	size_t lookup_addr = NULL;

	mov	QWORD PTR lookup_addr$[rsp], 0

; 65   : 	if (!address)

	cmp	QWORD PTR address$[rsp], 0
	jne	SHORT $LN9@CreateMemM

; 66   : 		lookup_addr = (size_t)AuGetFreePage(true, (void*)PROCESS_MMAP_ADDRESS);

	mov	edx, -1073741824			; ffffffffc0000000H
	mov	cl, 1
	call	AuGetFreePage
	mov	QWORD PTR lookup_addr$[rsp], rax

; 67   : 	else

	jmp	SHORT $LN8@CreateMemM
$LN9@CreateMemM:

; 68   : 		lookup_addr = (size_t)address;

	mov	rax, QWORD PTR address$[rsp]
	mov	QWORD PTR lookup_addr$[rsp], rax
$LN8@CreateMemM:

; 69   : 
; 70   : 	len = PAGE_ALIGN(len); //simply align the length

	mov	rax, QWORD PTR len$[rsp]
	and	rax, 4095				; 00000fffH
	test	rax, rax
	je	SHORT $LN14@CreateMemM
	mov	rax, QWORD PTR len$[rsp]
	add	rax, 4096				; 00001000H
	and	rax, -4096				; fffffffffffff000H
	mov	QWORD PTR tv81[rsp], rax
	jmp	SHORT $LN15@CreateMemM
$LN14@CreateMemM:
	mov	rax, QWORD PTR len$[rsp]
	mov	QWORD PTR tv81[rsp], rax
$LN15@CreateMemM:
	mov	rax, QWORD PTR tv81[rsp]
	mov	QWORD PTR len$[rsp], rax

; 71   : 
; 72   : 	if (file) {

	cmp	QWORD PTR file$[rsp], 0
	je	SHORT $LN7@CreateMemM

; 73   : 		uint64_t file_block_start = 0;

	mov	QWORD PTR file_block_start$3[rsp], 0

; 74   : 		fsys = AuVFSFind("/");

	lea	rcx, OFFSET FLAT:$SG3465
	call	AuVFSFind
	mov	QWORD PTR fsys$[rsp], rax

; 75   : 		if (!fsys && fd != -1)

	cmp	QWORD PTR fsys$[rsp], 0
	jne	SHORT $LN6@CreateMemM
	cmp	DWORD PTR fd$[rsp], -1
	je	SHORT $LN6@CreateMemM

; 76   : 			return 0;

	xor	eax, eax
	jmp	$LN12@CreateMemM
$LN6@CreateMemM:

; 77   : 		if (!(file->flags & FS_FLAG_DEVICE)) {

	mov	rax, QWORD PTR file$[rsp]
	movzx	eax, WORD PTR [rax+61]
	and	eax, 8
	test	eax, eax
	jne	SHORT $LN5@CreateMemM

; 78   : 			file_block_start = AuVFSGetBlockFor(fsys, file, offset);

	mov	r8, QWORD PTR offset$[rsp]
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSGetBlockFor
	mov	QWORD PTR file_block_start$3[rsp], rax

; 79   : 			file->current = file_block_start;

	mov	rax, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR file_block_start$3[rsp]
	mov	QWORD PTR [rax+53], rcx
$LN5@CreateMemM:
$LN7@CreateMemM:

; 80   : 		}
; 81   : 	}
; 82   : 
; 83   : 	for (int i = 0; i < len / PAGE_SIZE; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@CreateMemM
$LN3@CreateMemM:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@CreateMemM:
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	QWORD PTR tv129[rsp], rax
	xor	edx, edx
	mov	rax, QWORD PTR len$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	mov	rcx, QWORD PTR tv129[rsp]
	cmp	rcx, rax
	jae	SHORT $LN2@CreateMemM

; 84   : 		uint64_t phys = (uint64_t)AuPmmngrAlloc();

	call	AuPmmngrAlloc
	mov	QWORD PTR phys$2[rsp], rax

; 85   : 		if (file)

	cmp	QWORD PTR file$[rsp], 0
	je	SHORT $LN1@CreateMemM

; 86   : 			AuVFSNodeReadBlock(fsys, file, (uint64_t*)phys);

	mov	r8, QWORD PTR phys$2[rsp]
	mov	rdx, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fsys$[rsp]
	call	AuVFSNodeReadBlock
$LN1@CreateMemM:

; 87   : 		AuMapPage(phys, lookup_addr + i * PAGE_SIZE, X86_64_PAGING_USER);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR lookup_addr$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	r8b, 4
	mov	rdx, rax
	mov	rcx, QWORD PTR phys$2[rsp]
	call	AuMapPage

; 88   : 	}

	jmp	SHORT $LN3@CreateMemM
$LN2@CreateMemM:

; 89   : 
; 90   : 	proc->proc_mmap_len += len;

	mov	rax, QWORD PTR proc$[rsp]
	mov	rax, QWORD PTR [rax+1079]
	add	rax, QWORD PTR len$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	QWORD PTR [rcx+1079], rax

; 91   : 	return (void*)lookup_addr;

	mov	rax, QWORD PTR lookup_addr$[rsp]
$LN12@CreateMemM:

; 92   : }

	add	rsp, 120				; 00000078H
	ret	0
?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z ENDP		; CreateMemMapping
_TEXT	ENDS
END
