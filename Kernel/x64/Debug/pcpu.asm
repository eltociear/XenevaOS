; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30154.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?cpus@@3PAPEAU_cpu_@@A				; cpus
_BSS	SEGMENT
?cpus@@3PAPEAU_cpu_@@A DQ 0100H DUP (?)			; cpus
_BSS	ENDS
msvcjmc	SEGMENT
__80E45F53_pcpu@cpp DB 01H
msvcjmc	ENDS
PUBLIC	?AuCreatePerCPU@@YAXPEAX@Z			; AuCreatePerCPU
PUBLIC	?AuGetPerCPU@@YAPEAU_cpu_@@E@Z			; AuGetPerCPU
PUBLIC	?AuPerCPUSetCpuID@@YAXE@Z			; AuPerCPUSetCpuID
PUBLIC	?AuPerCPUGetCpuID@@YAEXZ			; AuPerCPUGetCpuID
PUBLIC	?AuPerCPUSetCurrentThread@@YAXPEAX@Z		; AuPerCPUSetCurrentThread
PUBLIC	?AuPerCPUGetCurrentThread@@YAPEAU_au_thread_@@XZ ; AuPerCPUGetCurrentThread
PUBLIC	?AuPerCPUSetKernelTSS@@YAXPEAU_tss@@@Z		; AuPerCPUSetKernelTSS
PUBLIC	?AuPerCPUGetKernelTSS@@YAPEAU_tss@@XZ		; AuPerCPUGetKernelTSS
PUBLIC	__JustMyCode_Default
EXTRN	x64_write_msr:PROC
EXTRN	x64_gs_readb:PROC
EXTRN	x64_gs_readq:PROC
EXTRN	x64_gs_writeb:PROC
EXTRN	x64_gs_writeq:PROC
EXTRN	kmalloc:PROC
EXTRN	memset:PROC
EXTRN	__CheckForDebuggerJustMyCode:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuCreatePerCPU@@YAXPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+117
	DD	imagerel $unwind$?AuCreatePerCPU@@YAXPEAX@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuGetPerCPU@@YAPEAU_cpu_@@E@Z DD imagerel $LN3
	DD	imagerel $LN3+47
	DD	imagerel $unwind$?AuGetPerCPU@@YAPEAU_cpu_@@E@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuPerCPUSetCpuID@@YAXE@Z DD imagerel $LN3
	DD	imagerel $LN3+43
	DD	imagerel $unwind$?AuPerCPUSetCpuID@@YAXE@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuPerCPUGetCpuID@@YAEXZ DD imagerel $LN3
	DD	imagerel $LN3+36
	DD	imagerel $unwind$?AuPerCPUGetCpuID@@YAEXZ
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuPerCPUSetCurrentThread@@YAXPEAX@Z DD imagerel $LN3
	DD	imagerel $LN3+47
	DD	imagerel $unwind$?AuPerCPUSetCurrentThread@@YAXPEAX@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuPerCPUGetCurrentThread@@YAPEAU_au_thread_@@XZ DD imagerel $LN3
	DD	imagerel $LN3+39
	DD	imagerel $unwind$?AuPerCPUGetCurrentThread@@YAPEAU_au_thread_@@XZ
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuPerCPUSetKernelTSS@@YAXPEAU_tss@@@Z DD imagerel $LN3
	DD	imagerel $LN3+47
	DD	imagerel $unwind$?AuPerCPUSetKernelTSS@@YAXPEAU_tss@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuPerCPUGetKernelTSS@@YAPEAU_tss@@XZ DD imagerel $LN3
	DD	imagerel $LN3+39
	DD	imagerel $unwind$?AuPerCPUGetKernelTSS@@YAPEAU_tss@@XZ
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuPerCPUGetKernelTSS@@YAPEAU_tss@@XZ DD 025030b01H
	DD	0b206230bH
	DD	05002H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuPerCPUSetKernelTSS@@YAXPEAU_tss@@@Z DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuPerCPUGetCurrentThread@@YAPEAU_au_thread_@@XZ DD 025030b01H
	DD	0b206230bH
	DD	05002H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuPerCPUSetCurrentThread@@YAXPEAX@Z DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuPerCPUGetCpuID@@YAEXZ DD 025030b01H
	DD	0b206230bH
	DD	05002H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuPerCPUSetCpuID@@YAXE@Z DD 025030e01H
	DD	0b209230eH
	DD	05005H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuGetPerCPU@@YAPEAU_cpu_@@E@Z DD 025030e01H
	DD	0b209230eH
	DD	05005H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuCreatePerCPU@@YAXPEAX@Z DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
_TEXT	SEGMENT
__JustMyCode_Default PROC				; COMDAT
	ret	0
__JustMyCode_Default ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Hal\pcpu.cpp
;	COMDAT ?AuPerCPUGetKernelTSS@@YAPEAU_tss@@XZ
_TEXT	SEGMENT
?AuPerCPUGetKernelTSS@@YAPEAU_tss@@XZ PROC		; AuPerCPUGetKernelTSS, COMDAT

; 108  : TSS* AuPerCPUGetKernelTSS() {

$LN3:
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__80E45F53_pcpu@cpp
	call	__CheckForDebuggerJustMyCode

; 109  : 	return (TSS*)x64_gs_readq(9);

	mov	ecx, 9
	call	x64_gs_readq

; 110  : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuPerCPUGetKernelTSS@@YAPEAU_tss@@XZ ENDP		; AuPerCPUGetKernelTSS
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Hal\pcpu.cpp
;	COMDAT ?AuPerCPUSetKernelTSS@@YAXPEAU_tss@@@Z
_TEXT	SEGMENT
tss$ = 80
?AuPerCPUSetKernelTSS@@YAXPEAU_tss@@@Z PROC		; AuPerCPUSetKernelTSS, COMDAT

; 101  : void AuPerCPUSetKernelTSS(TSS *tss){

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__80E45F53_pcpu@cpp
	call	__CheckForDebuggerJustMyCode

; 102  : 	x64_gs_writeq(9, (uint64_t)tss);

	mov	rdx, QWORD PTR tss$[rbp]
	mov	ecx, 9
	call	x64_gs_writeq

; 103  : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuPerCPUSetKernelTSS@@YAXPEAU_tss@@@Z ENDP		; AuPerCPUSetKernelTSS
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Hal\pcpu.cpp
;	COMDAT ?AuPerCPUGetCurrentThread@@YAPEAU_au_thread_@@XZ
_TEXT	SEGMENT
?AuPerCPUGetCurrentThread@@YAPEAU_au_thread_@@XZ PROC	; AuPerCPUGetCurrentThread, COMDAT

; 93   : AuThread* AuPerCPUGetCurrentThread() {

$LN3:
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__80E45F53_pcpu@cpp
	call	__CheckForDebuggerJustMyCode

; 94   : 	return (AuThread*)x64_gs_readq(1);

	mov	ecx, 1
	call	x64_gs_readq

; 95   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuPerCPUGetCurrentThread@@YAPEAU_au_thread_@@XZ ENDP	; AuPerCPUGetCurrentThread
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Hal\pcpu.cpp
;	COMDAT ?AuPerCPUSetCurrentThread@@YAXPEAX@Z
_TEXT	SEGMENT
thread$ = 80
?AuPerCPUSetCurrentThread@@YAXPEAX@Z PROC		; AuPerCPUSetCurrentThread, COMDAT

; 85   : void AuPerCPUSetCurrentThread(void* thread) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__80E45F53_pcpu@cpp
	call	__CheckForDebuggerJustMyCode

; 86   : 	x64_gs_writeq(1, (size_t)thread);

	mov	rdx, QWORD PTR thread$[rbp]
	mov	ecx, 1
	call	x64_gs_writeq

; 87   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuPerCPUSetCurrentThread@@YAXPEAX@Z ENDP		; AuPerCPUSetCurrentThread
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Hal\pcpu.cpp
;	COMDAT ?AuPerCPUGetCpuID@@YAEXZ
_TEXT	SEGMENT
?AuPerCPUGetCpuID@@YAEXZ PROC				; AuPerCPUGetCpuID, COMDAT

; 76   : uint8_t AuPerCPUGetCpuID() {

$LN3:
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__80E45F53_pcpu@cpp
	call	__CheckForDebuggerJustMyCode

; 77   : 	return x64_gs_readb(0);

	xor	ecx, ecx
	call	x64_gs_readb

; 78   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuPerCPUGetCpuID@@YAEXZ ENDP				; AuPerCPUGetCpuID
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Hal\pcpu.cpp
;	COMDAT ?AuPerCPUSetCpuID@@YAXE@Z
_TEXT	SEGMENT
id$ = 80
?AuPerCPUSetCpuID@@YAXE@Z PROC				; AuPerCPUSetCpuID, COMDAT

; 68   : void AuPerCPUSetCpuID(uint8_t id) {

$LN3:
	mov	BYTE PTR [rsp+8], cl
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__80E45F53_pcpu@cpp
	call	__CheckForDebuggerJustMyCode

; 69   : 	x64_gs_writeb(0, id);

	movzx	edx, BYTE PTR id$[rbp]
	xor	ecx, ecx
	call	x64_gs_writeb

; 70   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuPerCPUSetCpuID@@YAXE@Z ENDP				; AuPerCPUSetCpuID
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Hal\pcpu.cpp
;	COMDAT ?AuGetPerCPU@@YAPEAU_cpu_@@E@Z
_TEXT	SEGMENT
id$ = 80
?AuGetPerCPU@@YAPEAU_cpu_@@E@Z PROC			; AuGetPerCPU, COMDAT

; 60   : CPUStruc* AuGetPerCPU(uint8_t id) {

$LN3:
	mov	BYTE PTR [rsp+8], cl
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__80E45F53_pcpu@cpp
	call	__CheckForDebuggerJustMyCode

; 61   : 	return cpus[id];

	movzx	eax, BYTE PTR id$[rbp]
	lea	rcx, OFFSET FLAT:?cpus@@3PAPEAU_cpu_@@A	; cpus
	mov	rax, QWORD PTR [rcx+rax*8]

; 62   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuGetPerCPU@@YAPEAU_cpu_@@E@Z ENDP			; AuGetPerCPU
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Hal\pcpu.cpp
;	COMDAT ?AuCreatePerCPU@@YAXPEAX@Z
_TEXT	SEGMENT
cpu$ = 0
alloc$ = 96
?AuCreatePerCPU@@YAXPEAX@Z PROC				; AuCreatePerCPU, COMDAT

; 42   : void AuCreatePerCPU(void* alloc) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__80E45F53_pcpu@cpp
	call	__CheckForDebuggerJustMyCode

; 43   : 	CPUStruc *cpu;
; 44   : 	if (alloc != 0) 

	cmp	QWORD PTR alloc$[rbp], 0
	je	SHORT $LN2@AuCreatePe

; 45   : 		cpu = (CPUStruc*)alloc;

	mov	rax, QWORD PTR alloc$[rbp]
	mov	QWORD PTR cpu$[rbp], rax
	jmp	SHORT $LN3@AuCreatePe
$LN2@AuCreatePe:

; 46   : 	else {
; 47   : 		cpu = (CPUStruc*)kmalloc(sizeof(CPUStruc));

	mov	ecx, 17
	call	kmalloc
	mov	QWORD PTR cpu$[rbp], rax

; 48   : 		memset(cpu, 0, sizeof(CPUStruc));

	mov	r8d, 17
	xor	edx, edx
	mov	rcx, QWORD PTR cpu$[rbp]
	call	memset
$LN3@AuCreatePe:

; 49   : 	}
; 50   : 
; 51   : 	cpus[cpu->cpu_id] = cpu;

	mov	rax, QWORD PTR cpu$[rbp]
	movzx	eax, BYTE PTR [rax]
	lea	rcx, OFFSET FLAT:?cpus@@3PAPEAU_cpu_@@A	; cpus
	mov	rdx, QWORD PTR cpu$[rbp]
	mov	QWORD PTR [rcx+rax*8], rdx

; 52   : 	x64_write_msr(MSR_IA32_GS_BASE, (size_t)cpu);

	mov	rdx, QWORD PTR cpu$[rbp]
	mov	ecx, -1073741567			; c0000101H
	call	x64_write_msr

; 53   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuCreatePerCPU@@YAXPEAX@Z ENDP				; AuCreatePerCPU
_TEXT	ENDS
END
