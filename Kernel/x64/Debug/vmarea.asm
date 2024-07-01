; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30154.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

msvcjmc	SEGMENT
__EC895002_vmarea@cpp DB 01H
msvcjmc	ENDS
PUBLIC	?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z ; AuInsertVMArea
PUBLIC	?AuRemoveVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z ; AuRemoveVMArea
PUBLIC	?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z	; AuVMAreaCreate
PUBLIC	?AuVMAreaGet@@YAPEAU_vm_area_@@PEAU_au_proc_@@_K@Z ; AuVMAreaGet
PUBLIC	__JustMyCode_Default
EXTRN	memset:PROC
EXTRN	list_add:PROC
EXTRN	list_remove:PROC
EXTRN	list_get_at:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	__CheckForDebuggerJustMyCode:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z DD imagerel $LN3
	DD	imagerel $LN3+58
	DD	imagerel $unwind$?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuRemoveVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+136
	DD	imagerel $unwind$?AuRemoveVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z DD imagerel $LN3
	DD	imagerel $LN3+155
	DD	imagerel $unwind$?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuVMAreaGet@@YAPEAU_vm_area_@@PEAU_au_proc_@@_K@Z DD imagerel $LN7
	DD	imagerel $LN7+133
	DD	imagerel $unwind$?AuVMAreaGet@@YAPEAU_vm_area_@@PEAU_au_proc_@@_K@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuVMAreaGet@@YAPEAU_vm_area_@@PEAU_au_proc_@@_K@Z DD 025031401H
	DD	0d20f2314H
	DD	0500bH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z DD 025031e01H
	DD	0d219231eH
	DD	05015H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuRemoveVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z DD 025031401H
	DD	0d20f2314H
	DD	0500bH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z DD 025031401H
	DD	0b20f2314H
	DD	0500bH
xdata	ENDS
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
_TEXT	SEGMENT
__JustMyCode_Default PROC				; COMDAT
	ret	0
__JustMyCode_Default ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Mm\vmarea.cpp
;	COMDAT ?AuVMAreaGet@@YAPEAU_vm_area_@@PEAU_au_proc_@@_K@Z
_TEXT	SEGMENT
i$1 = 0
area_$2 = 8
proc$ = 96
address$ = 104
?AuVMAreaGet@@YAPEAU_vm_area_@@PEAU_au_proc_@@_K@Z PROC	; AuVMAreaGet, COMDAT

; 85   : AuVMArea* AuVMAreaGet(AuProcess* proc, size_t address) {

$LN7:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__EC895002_vmarea@cpp
	call	__CheckForDebuggerJustMyCode

; 86   : 	for (int i = 0; i < proc->vmareas->pointer; i++) {

	mov	DWORD PTR i$1[rbp], 0
	jmp	SHORT $LN4@AuVMAreaGe
$LN2@AuVMAreaGe:
	mov	eax, DWORD PTR i$1[rbp]
	inc	eax
	mov	DWORD PTR i$1[rbp], eax
$LN4@AuVMAreaGe:
	mov	rax, QWORD PTR proc$[rbp]
	mov	rax, QWORD PTR [rax+1063]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$1[rbp], eax
	jae	SHORT $LN3@AuVMAreaGe

; 87   : 		AuVMArea* area_ = (AuVMArea*)list_get_at(proc->vmareas, i);

	mov	edx, DWORD PTR i$1[rbp]
	mov	rax, QWORD PTR proc$[rbp]
	mov	rcx, QWORD PTR [rax+1063]
	call	list_get_at
	mov	QWORD PTR area_$2[rbp], rax

; 88   : 		if (address >= area_->start && address <= area_->end)

	mov	rax, QWORD PTR area_$2[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR address$[rbp], rax
	jb	SHORT $LN5@AuVMAreaGe
	mov	rax, QWORD PTR area_$2[rbp]
	mov	rax, QWORD PTR [rax+8]
	cmp	QWORD PTR address$[rbp], rax
	ja	SHORT $LN5@AuVMAreaGe

; 89   : 			return area_;

	mov	rax, QWORD PTR area_$2[rbp]
	jmp	SHORT $LN1@AuVMAreaGe
$LN5@AuVMAreaGe:

; 90   : 	}

	jmp	SHORT $LN2@AuVMAreaGe
$LN3@AuVMAreaGe:

; 91   : 	return NULL;

	xor	eax, eax
$LN1@AuVMAreaGe:

; 92   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuVMAreaGet@@YAPEAU_vm_area_@@PEAU_au_proc_@@_K@Z ENDP	; AuVMAreaGet
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Mm\vmarea.cpp
;	COMDAT ?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z
_TEXT	SEGMENT
area$ = 0
start$ = 96
end$ = 104
prot$ = 112
len$ = 120
type$ = 128
?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z PROC		; AuVMAreaCreate, COMDAT

; 67   : AuVMArea* AuVMAreaCreate(size_t start, size_t end, uint8_t prot, size_t len, uint8_t type) {

$LN3:
	mov	QWORD PTR [rsp+32], r9
	mov	BYTE PTR [rsp+24], r8b
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__EC895002_vmarea@cpp
	call	__CheckForDebuggerJustMyCode

; 68   : 	AuVMArea *area = (AuVMArea*)kmalloc(sizeof(AuVMArea));

	mov	ecx, 40					; 00000028H
	call	kmalloc
	mov	QWORD PTR area$[rbp], rax

; 69   : 	memset(area, 0, sizeof(AuVMArea));

	mov	r8d, 40					; 00000028H
	xor	edx, edx
	mov	rcx, QWORD PTR area$[rbp]
	call	memset

; 70   : 	area->start = start;

	mov	rax, QWORD PTR area$[rbp]
	mov	rcx, QWORD PTR start$[rbp]
	mov	QWORD PTR [rax], rcx

; 71   : 	area->end = end;

	mov	rax, QWORD PTR area$[rbp]
	mov	rcx, QWORD PTR end$[rbp]
	mov	QWORD PTR [rax+8], rcx

; 72   : 	area->prot_flags = prot;

	mov	rax, QWORD PTR area$[rbp]
	movzx	ecx, BYTE PTR prot$[rbp]
	mov	BYTE PTR [rax+24], cl

; 73   : 	area->len = len;

	mov	rax, QWORD PTR area$[rbp]
	mov	rcx, QWORD PTR len$[rbp]
	mov	QWORD PTR [rax+16], rcx

; 74   : 	area->type = type;

	mov	rax, QWORD PTR area$[rbp]
	movzx	ecx, BYTE PTR type$[rbp]
	mov	BYTE PTR [rax+25], cl

; 75   : 	area->file = NULL;

	mov	rax, QWORD PTR area$[rbp]
	mov	QWORD PTR [rax+32], 0

; 76   : 	return area;

	mov	rax, QWORD PTR area$[rbp]

; 77   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuVMAreaCreate@@YAPEAU_vm_area_@@_K0E0E@Z ENDP		; AuVMAreaCreate
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Mm\vmarea.cpp
;	COMDAT ?AuRemoveVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z
_TEXT	SEGMENT
i$1 = 0
area_$2 = 8
proc$ = 96
area$ = 104
?AuRemoveVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z PROC ; AuRemoveVMArea, COMDAT

; 49   : void AuRemoveVMArea(AuProcess* proc, AuVMArea* area) {

$LN7:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__EC895002_vmarea@cpp
	call	__CheckForDebuggerJustMyCode

; 50   : 	for (int i = 0; i < proc->vmareas->pointer; i++) {

	mov	DWORD PTR i$1[rbp], 0
	jmp	SHORT $LN4@AuRemoveVM
$LN2@AuRemoveVM:
	mov	eax, DWORD PTR i$1[rbp]
	inc	eax
	mov	DWORD PTR i$1[rbp], eax
$LN4@AuRemoveVM:
	mov	rax, QWORD PTR proc$[rbp]
	mov	rax, QWORD PTR [rax+1063]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$1[rbp], eax
	jae	SHORT $LN3@AuRemoveVM

; 51   : 		AuVMArea* area_ = (AuVMArea*)list_get_at(proc->vmareas, i);

	mov	edx, DWORD PTR i$1[rbp]
	mov	rax, QWORD PTR proc$[rbp]
	mov	rcx, QWORD PTR [rax+1063]
	call	list_get_at
	mov	QWORD PTR area_$2[rbp], rax

; 52   : 		if (area_ == area)

	mov	rax, QWORD PTR area$[rbp]
	cmp	QWORD PTR area_$2[rbp], rax
	jne	SHORT $LN5@AuRemoveVM

; 53   : 			list_remove(proc->vmareas, i);

	mov	edx, DWORD PTR i$1[rbp]
	mov	rax, QWORD PTR proc$[rbp]
	mov	rcx, QWORD PTR [rax+1063]
	call	list_remove
$LN5@AuRemoveVM:

; 54   : 	}

	jmp	SHORT $LN2@AuRemoveVM
$LN3@AuRemoveVM:

; 55   : 	kfree(area);

	mov	rcx, QWORD PTR area$[rbp]
	call	kfree

; 56   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuRemoveVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z ENDP ; AuRemoveVMArea
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Mm\vmarea.cpp
;	COMDAT ?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z
_TEXT	SEGMENT
proc$ = 80
area$ = 88
?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z PROC ; AuInsertVMArea, COMDAT

; 39   : void AuInsertVMArea(AuProcess* proc, AuVMArea* area) {

$LN3:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__EC895002_vmarea@cpp
	call	__CheckForDebuggerJustMyCode

; 40   : 	list_add(proc->vmareas, area);

	mov	rdx, QWORD PTR area$[rbp]
	mov	rax, QWORD PTR proc$[rbp]
	mov	rcx, QWORD PTR [rax+1063]
	call	list_add

; 41   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuInsertVMArea@@YAXPEAU_au_proc_@@PEAU_vm_area_@@@Z ENDP ; AuInsertVMArea
_TEXT	ENDS
END
