; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30154.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?mice_@@3PEAU__VFS_NODE__@@EA			; mice_
PUBLIC	?kybrd_@@3PEAU__VFS_NODE__@@EA			; kybrd_
_BSS	SEGMENT
?mice_@@3PEAU__VFS_NODE__@@EA DQ 01H DUP (?)		; mice_
?kybrd_@@3PEAU__VFS_NODE__@@EA DQ 01H DUP (?)		; kybrd_
_BSS	ENDS
msvcjmc	SEGMENT
__748639F3_devinput@cpp DB 01H
msvcjmc	ENDS
PUBLIC	?AuDevInputInitialise@@YAXXZ			; AuDevInputInitialise
PUBLIC	AuDevReadMice
PUBLIC	AuDevWriteMice
PUBLIC	AuDevReadKybrd
PUBLIC	AuDevWriteKybrd
PUBLIC	?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputMiceWrite
PUBLIC	?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputMiceRead
PUBLIC	?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputKybrdWrite
PUBLIC	?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputKybrdRead
PUBLIC	?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ; AuDevMouseIoControl
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_0P@EMNNIAPP@Mouse?5ioCtl?5?$AN?6@		; `string'
PUBLIC	??_C@_04PJHBAHNI@?1dev@				; `string'
PUBLIC	??_C@_04EMEKOJAM@mice@				; `string'
PUBLIC	??_C@_01KMDKNFGN@?1@				; `string'
PUBLIC	??_C@_05BPAHAOGO@kybrd@				; `string'
EXTRN	AuVFSFind:PROC
EXTRN	AuDevFSAddFile:PROC
EXTRN	strcpy:PROC
EXTRN	memset:PROC
EXTRN	memcpy:PROC
EXTRN	kmalloc:PROC
EXTRN	?AuPS2MouseSetPos@@YAXHH@Z:PROC			; AuPS2MouseSetPos
EXTRN	SeTextOut:PROC
EXTRN	x64_cli:PROC
EXTRN	__CheckForDebuggerJustMyCode:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuDevInputInitialise@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+458
	DD	imagerel $unwind$?AuDevInputInitialise@@YAXXZ
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuDevReadMice DD imagerel $LN4
	DD	imagerel $LN4+95
	DD	imagerel $unwind$AuDevReadMice
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuDevWriteMice DD imagerel $LN4
	DD	imagerel $LN4+71
	DD	imagerel $unwind$AuDevWriteMice
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuDevReadKybrd DD imagerel $LN4
	DD	imagerel $LN4+95
	DD	imagerel $unwind$AuDevReadKybrd
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuDevWriteKybrd DD imagerel $LN4
	DD	imagerel $LN4+71
	DD	imagerel $unwind$AuDevWriteKybrd
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD imagerel $LN5
	DD	imagerel $LN5+111
	DD	imagerel $unwind$?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD imagerel $LN5
	DD	imagerel $LN5+128
	DD	imagerel $unwind$?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD imagerel $LN5
	DD	imagerel $LN5+111
	DD	imagerel $unwind$?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD imagerel $LN5
	DD	imagerel $LN5+128
	DD	imagerel $unwind$?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD imagerel $LN10
	DD	imagerel $LN10+138
	DD	imagerel $unwind$?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z
pdata	ENDS
;	COMDAT ??_C@_05BPAHAOGO@kybrd@
CONST	SEGMENT
??_C@_05BPAHAOGO@kybrd@ DB 'kybrd', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_01KMDKNFGN@?1@
CONST	SEGMENT
??_C@_01KMDKNFGN@?1@ DB '/', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_04EMEKOJAM@mice@
CONST	SEGMENT
??_C@_04EMEKOJAM@mice@ DB 'mice', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_04PJHBAHNI@?1dev@
CONST	SEGMENT
??_C@_04PJHBAHNI@?1dev@ DB '/dev', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0P@EMNNIAPP@Mouse?5ioCtl?5?$AN?6@
CONST	SEGMENT
??_C@_0P@EMNNIAPP@Mouse?5ioCtl?5?$AN?6@ DB 'Mouse ioCtl ', 0dH, 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z DD 025031801H
	DD	0d2132318H
	DD	0500fH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD 025031e01H
	DD	0d219231eH
	DD	05015H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD 025031e01H
	DD	0d219231eH
	DD	05015H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD 025031e01H
	DD	0d219231eH
	DD	05015H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z DD 025031e01H
	DD	0d219231eH
	DD	05015H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuDevWriteKybrd DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuDevReadKybrd DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuDevWriteMice DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuDevReadMice DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuDevInputInitialise@@YAXXZ DD 025030e01H
	DD	0f209230eH
	DD	05002H
xdata	ENDS
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
_TEXT	SEGMENT
__JustMyCode_Default PROC				; COMDAT
	ret	0
__JustMyCode_Default ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\Dev\devinput.cpp
;	COMDAT ?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z
_TEXT	SEGMENT
ioctl$ = 0
tv69 = 72
file$ = 96
code$ = 104
arg$ = 112
?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z PROC	; AuDevMouseIoControl, COMDAT

; 171  : int AuDevMouseIoControl(AuVFSNode* file, int code, void* arg) {

$LN10:
	mov	QWORD PTR [rsp+24], r8
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__748639F3_devinput@cpp
	call	__CheckForDebuggerJustMyCode

; 172  : 	SeTextOut("Mouse ioCtl \r\n");

	lea	rcx, OFFSET FLAT:??_C@_0P@EMNNIAPP@Mouse?5ioCtl?5?$AN?6@
	call	SeTextOut

; 173  : 	if (!file)

	cmp	QWORD PTR file$[rbp], 0
	jne	SHORT $LN4@AuDevMouse

; 174  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN1@AuDevMouse
$LN4@AuDevMouse:

; 175  : 	AuFileIOControl *ioctl = (AuFileIOControl*)arg;

	mov	rax, QWORD PTR arg$[rbp]
	mov	QWORD PTR ioctl$[rbp], rax

; 176  : 	if (!arg)

	cmp	QWORD PTR arg$[rbp], 0
	jne	SHORT $LN5@AuDevMouse

; 177  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN1@AuDevMouse
$LN5@AuDevMouse:

; 178  : 	if (ioctl->syscall_magic != AURORA_SYSCALL_MAGIC)

	mov	rax, QWORD PTR ioctl$[rbp]
	cmp	DWORD PTR [rax], 86056964		; 05212004H
	je	SHORT $LN6@AuDevMouse

; 179  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN1@AuDevMouse
$LN6@AuDevMouse:

; 180  : 
; 181  : 	switch (code)

	mov	eax, DWORD PTR code$[rbp]
	mov	DWORD PTR tv69[rbp], eax
	cmp	DWORD PTR tv69[rbp], 10
	je	SHORT $LN7@AuDevMouse
	jmp	SHORT $LN8@AuDevMouse
$LN7@AuDevMouse:

; 182  : 	{
; 183  : 	case MOUSE_IOCODE_SETPOS:
; 184  : 		AuPS2MouseSetPos(ioctl->uint_1, ioctl->uint_2);

	mov	rax, QWORD PTR ioctl$[rbp]
	mov	edx, DWORD PTR [rax+14]
	mov	rax, QWORD PTR ioctl$[rbp]
	mov	ecx, DWORD PTR [rax+10]
	call	?AuPS2MouseSetPos@@YAXHH@Z		; AuPS2MouseSetPos
$LN8@AuDevMouse:

; 185  : 		break;
; 186  : 	default:
; 187  : 		break;
; 188  : 	}
; 189  : 
; 190  : 	return 1;

	mov	eax, 1
$LN1@AuDevMouse:

; 191  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ENDP	; AuDevMouseIoControl
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\Dev\devinput.cpp
;	COMDAT ?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
_TEXT	SEGMENT
key_buf$ = 0
fs$ = 96
file$ = 104
buffer$ = 112
length$ = 120
?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC ; AuDevInputKybrdRead, COMDAT

; 153  : size_t AuDevInputKybrdRead(AuVFSNode *fs, AuVFSNode *file, uint64_t* buffer, uint32_t length){

$LN5:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__748639F3_devinput@cpp
	call	__CheckForDebuggerJustMyCode

; 154  : 	x64_cli();

	call	x64_cli

; 155  : 	if (!file)

	cmp	QWORD PTR file$[rbp], 0
	jne	SHORT $LN2@AuDevInput

; 156  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN1@AuDevInput
$LN2@AuDevInput:

; 157  : 	if (!buffer)

	cmp	QWORD PTR buffer$[rbp], 0
	jne	SHORT $LN3@AuDevInput

; 158  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN1@AuDevInput
$LN3@AuDevInput:

; 159  : 	void* key_buf = file->device;

	mov	rax, QWORD PTR file$[rbp]
	mov	rax, QWORD PTR [rax+64]
	mov	QWORD PTR key_buf$[rbp], rax

; 160  : 	memcpy(buffer, key_buf, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rdx, QWORD PTR key_buf$[rbp]
	mov	rcx, QWORD PTR buffer$[rbp]
	call	memcpy

; 161  : 	memset(key_buf, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	mov	rcx, QWORD PTR key_buf$[rbp]
	call	memset

; 162  : 	return (sizeof(AuInputMessage));

	mov	eax, 26
$LN1@AuDevInput:

; 163  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP ; AuDevInputKybrdRead
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\Dev\devinput.cpp
;	COMDAT ?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
_TEXT	SEGMENT
key_buf$ = 0
fs$ = 96
file$ = 104
buffer$ = 112
length$ = 120
?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC ; AuDevInputKybrdWrite, COMDAT

; 135  : size_t AuDevInputKybrdWrite(AuVFSNode *fs, AuVFSNode *file, uint64_t* buffer, uint32_t length){

$LN5:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__748639F3_devinput@cpp
	call	__CheckForDebuggerJustMyCode

; 136  : 	x64_cli();

	call	x64_cli

; 137  : 	if (!file)

	cmp	QWORD PTR file$[rbp], 0
	jne	SHORT $LN2@AuDevInput

; 138  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN1@AuDevInput
$LN2@AuDevInput:

; 139  : 	if (!buffer)

	cmp	QWORD PTR buffer$[rbp], 0
	jne	SHORT $LN3@AuDevInput

; 140  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN1@AuDevInput
$LN3@AuDevInput:

; 141  : 	void* key_buf = file->device;

	mov	rax, QWORD PTR file$[rbp]
	mov	rax, QWORD PTR [rax+64]
	mov	QWORD PTR key_buf$[rbp], rax

; 142  : 	memcpy(key_buf, buffer, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rdx, QWORD PTR buffer$[rbp]
	mov	rcx, QWORD PTR key_buf$[rbp]
	call	memcpy

; 143  : 	return (sizeof(AuInputMessage));

	mov	eax, 26
$LN1@AuDevInput:

; 144  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP ; AuDevInputKybrdWrite
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\Dev\devinput.cpp
;	COMDAT ?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
_TEXT	SEGMENT
mice_buf$ = 0
fs$ = 96
file$ = 104
buffer$ = 112
length$ = 120
?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC ; AuDevInputMiceRead, COMDAT

; 116  : size_t AuDevInputMiceRead(AuVFSNode *fs, AuVFSNode *file, uint64_t* buffer, uint32_t length){

$LN5:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__748639F3_devinput@cpp
	call	__CheckForDebuggerJustMyCode

; 117  : 	x64_cli();

	call	x64_cli

; 118  : 	if (!file)

	cmp	QWORD PTR file$[rbp], 0
	jne	SHORT $LN2@AuDevInput

; 119  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN1@AuDevInput
$LN2@AuDevInput:

; 120  : 	if (!buffer)

	cmp	QWORD PTR buffer$[rbp], 0
	jne	SHORT $LN3@AuDevInput

; 121  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN1@AuDevInput
$LN3@AuDevInput:

; 122  : 	void* mice_buf = file->device;

	mov	rax, QWORD PTR file$[rbp]
	mov	rax, QWORD PTR [rax+64]
	mov	QWORD PTR mice_buf$[rbp], rax

; 123  : 	memcpy(buffer, mice_buf, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rdx, QWORD PTR mice_buf$[rbp]
	mov	rcx, QWORD PTR buffer$[rbp]
	call	memcpy

; 124  : 	memset(mice_buf, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	mov	rcx, QWORD PTR mice_buf$[rbp]
	call	memset

; 125  : 	return (sizeof(AuInputMessage));

	mov	eax, 26
$LN1@AuDevInput:

; 126  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP ; AuDevInputMiceRead
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\Dev\devinput.cpp
;	COMDAT ?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z
_TEXT	SEGMENT
mice_buf$ = 0
fs$ = 96
file$ = 104
buffer$ = 112
length$ = 120
?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z PROC ; AuDevInputMiceWrite, COMDAT

; 98   : size_t AuDevInputMiceWrite(AuVFSNode *fs, AuVFSNode *file, uint64_t* buffer, uint32_t length){

$LN5:
	mov	DWORD PTR [rsp+32], r9d
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__748639F3_devinput@cpp
	call	__CheckForDebuggerJustMyCode

; 99   : 	x64_cli();

	call	x64_cli

; 100  : 	if (!file)

	cmp	QWORD PTR file$[rbp], 0
	jne	SHORT $LN2@AuDevInput

; 101  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN1@AuDevInput
$LN2@AuDevInput:

; 102  : 	if (!buffer)

	cmp	QWORD PTR buffer$[rbp], 0
	jne	SHORT $LN3@AuDevInput

; 103  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN1@AuDevInput
$LN3@AuDevInput:

; 104  : 	void* mice_buf = file->device;

	mov	rax, QWORD PTR file$[rbp]
	mov	rax, QWORD PTR [rax+64]
	mov	QWORD PTR mice_buf$[rbp], rax

; 105  : 	memcpy(mice_buf, buffer, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rdx, QWORD PTR buffer$[rbp]
	mov	rcx, QWORD PTR mice_buf$[rbp]
	call	memcpy

; 106  : 	return (sizeof(AuInputMessage));

	mov	eax, 26
$LN1@AuDevInput:

; 107  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ENDP ; AuDevInputMiceWrite
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\Dev\devinput.cpp
;	COMDAT AuDevWriteKybrd
_TEXT	SEGMENT
outmsg$ = 80
AuDevWriteKybrd PROC					; COMDAT

; 85   : void AuDevWriteKybrd(AuInputMessage* outmsg) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__748639F3_devinput@cpp
	call	__CheckForDebuggerJustMyCode

; 86   : 	if (!kybrd_)

	cmp	QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA, 0 ; kybrd_
	jne	SHORT $LN2@AuDevWrite

; 87   : 		return;

	jmp	SHORT $LN1@AuDevWrite
$LN2@AuDevWrite:

; 88   : 	memcpy(kybrd_->device, outmsg, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rdx, QWORD PTR outmsg$[rbp]
	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	mov	rcx, QWORD PTR [rax+64]
	call	memcpy
$LN1@AuDevWrite:

; 89   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
AuDevWriteKybrd ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\Dev\devinput.cpp
;	COMDAT AuDevReadKybrd
_TEXT	SEGMENT
inputmsg$ = 80
AuDevReadKybrd PROC					; COMDAT

; 74   : void AuDevReadKybrd(AuInputMessage* inputmsg) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__748639F3_devinput@cpp
	call	__CheckForDebuggerJustMyCode

; 75   : 	if (!kybrd_)

	cmp	QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA, 0 ; kybrd_
	jne	SHORT $LN2@AuDevReadK

; 76   : 		return;

	jmp	SHORT $LN1@AuDevReadK
$LN2@AuDevReadK:

; 77   : 	memcpy(inputmsg, kybrd_->device, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	mov	rdx, QWORD PTR [rax+64]
	mov	rcx, QWORD PTR inputmsg$[rbp]
	call	memcpy

; 78   : 	memset(kybrd_->device, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	mov	rcx, QWORD PTR [rax+64]
	call	memset
$LN1@AuDevReadK:

; 79   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
AuDevReadKybrd ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\Dev\devinput.cpp
;	COMDAT AuDevWriteMice
_TEXT	SEGMENT
outmsg$ = 80
AuDevWriteMice PROC					; COMDAT

; 63   : void AuDevWriteMice(AuInputMessage* outmsg) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__748639F3_devinput@cpp
	call	__CheckForDebuggerJustMyCode

; 64   : 	if (!mice_)

	cmp	QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA, 0 ; mice_
	jne	SHORT $LN2@AuDevWrite

; 65   : 		return;

	jmp	SHORT $LN1@AuDevWrite
$LN2@AuDevWrite:

; 66   : 	memcpy(mice_->device, outmsg, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rdx, QWORD PTR outmsg$[rbp]
	mov	rax, QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA ; mice_
	mov	rcx, QWORD PTR [rax+64]
	call	memcpy
$LN1@AuDevWrite:

; 67   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
AuDevWriteMice ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\Dev\devinput.cpp
;	COMDAT AuDevReadMice
_TEXT	SEGMENT
inputmsg$ = 80
AuDevReadMice PROC					; COMDAT

; 52   : void AuDevReadMice(AuInputMessage* inputmsg) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__748639F3_devinput@cpp
	call	__CheckForDebuggerJustMyCode

; 53   : 	if (!mice_)

	cmp	QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA, 0 ; mice_
	jne	SHORT $LN2@AuDevReadM

; 54   : 		return;

	jmp	SHORT $LN1@AuDevReadM
$LN2@AuDevReadM:

; 55   : 	memcpy(inputmsg, mice_->device, sizeof(AuInputMessage));

	mov	r8d, 26
	mov	rax, QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA ; mice_
	mov	rdx, QWORD PTR [rax+64]
	mov	rcx, QWORD PTR inputmsg$[rbp]
	call	memcpy

; 56   : 	memset(mice_->device, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	mov	rax, QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA ; mice_
	mov	rcx, QWORD PTR [rax+64]
	call	memset
$LN1@AuDevReadM:

; 57   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
AuDevReadMice ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\Fs\Dev\devinput.cpp
;	COMDAT ?AuDevInputInitialise@@YAXXZ
_TEXT	SEGMENT
devfs$ = 0
mice_input_buf$ = 8
node$ = 16
keybuf$ = 24
?AuDevInputInitialise@@YAXXZ PROC			; AuDevInputInitialise, COMDAT

; 197  : void AuDevInputInitialise() {

$LN3:
	push	rbp
	sub	rsp, 128				; 00000080H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__748639F3_devinput@cpp
	call	__CheckForDebuggerJustMyCode

; 198  : 	AuVFSNode* devfs = AuVFSFind("/dev");

	lea	rcx, OFFSET FLAT:??_C@_04PJHBAHNI@?1dev@
	call	AuVFSFind
	mov	QWORD PTR devfs$[rbp], rax

; 199  : 
; 200  : 	void* mice_input_buf = kmalloc(sizeof(AuInputMessage));

	mov	ecx, 26
	call	kmalloc
	mov	QWORD PTR mice_input_buf$[rbp], rax

; 201  : 	memset(mice_input_buf, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	mov	rcx, QWORD PTR mice_input_buf$[rbp]
	call	memset

; 202  : 	/* avoiding using pipe for latency issue */
; 203  : 	AuVFSNode* node = (AuVFSNode*)kmalloc(sizeof(AuVFSNode));

	mov	ecx, 178				; 000000b2H
	call	kmalloc
	mov	QWORD PTR node$[rbp], rax

; 204  : 	memset(node, 0, sizeof(AuVFSNode));

	mov	r8d, 178				; 000000b2H
	xor	edx, edx
	mov	rcx, QWORD PTR node$[rbp]
	call	memset

; 205  : 	strcpy(node->filename, "mice");

	mov	rax, QWORD PTR node$[rbp]
	lea	rdx, OFFSET FLAT:??_C@_04EMEKOJAM@mice@
	mov	rcx, rax
	call	strcpy

; 206  : 	node->flags |= FS_FLAG_DEVICE;

	mov	rax, QWORD PTR node$[rbp]
	movzx	eax, WORD PTR [rax+61]
	or	eax, 8
	mov	rcx, QWORD PTR node$[rbp]
	mov	WORD PTR [rcx+61], ax

; 207  : 	node->device = mice_input_buf;

	mov	rax, QWORD PTR node$[rbp]
	mov	rcx, QWORD PTR mice_input_buf$[rbp]
	mov	QWORD PTR [rax+64], rcx

; 208  : 	node->read = AuDevInputMiceRead;

	mov	rax, QWORD PTR node$[rbp]
	lea	rcx, OFFSET FLAT:?AuDevInputMiceRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputMiceRead
	mov	QWORD PTR [rax+90], rcx

; 209  : 	node->write = AuDevInputMiceWrite;

	mov	rax, QWORD PTR node$[rbp]
	lea	rcx, OFFSET FLAT:?AuDevInputMiceWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputMiceWrite
	mov	QWORD PTR [rax+98], rcx

; 210  : 	node->open = 0;

	mov	rax, QWORD PTR node$[rbp]
	mov	QWORD PTR [rax+74], 0

; 211  : 	node->close = 0;

	mov	rax, QWORD PTR node$[rbp]
	mov	QWORD PTR [rax+138], 0

; 212  : 	node->iocontrol = AuDevMouseIoControl;

	mov	rax, QWORD PTR node$[rbp]
	lea	rcx, OFFSET FLAT:?AuDevMouseIoControl@@YAHPEAU__VFS_NODE__@@HPEAX@Z ; AuDevMouseIoControl
	mov	QWORD PTR [rax+170], rcx

; 213  : 	mice_ = node;

	mov	rax, QWORD PTR node$[rbp]
	mov	QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA, rax ; mice_

; 214  : 	AuDevFSAddFile(devfs, "/", mice_);

	mov	r8, QWORD PTR ?mice_@@3PEAU__VFS_NODE__@@EA ; mice_
	lea	rdx, OFFSET FLAT:??_C@_01KMDKNFGN@?1@
	mov	rcx, QWORD PTR devfs$[rbp]
	call	AuDevFSAddFile

; 215  : 
; 216  : 	void* keybuf = kmalloc(sizeof(AuInputMessage));

	mov	ecx, 26
	call	kmalloc
	mov	QWORD PTR keybuf$[rbp], rax

; 217  : 	memset(keybuf, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	mov	rcx, QWORD PTR keybuf$[rbp]
	call	memset

; 218  : 	
; 219  : 	kybrd_ = (AuVFSNode*)kmalloc(sizeof(AuVFSNode));

	mov	ecx, 178				; 000000b2H
	call	kmalloc
	mov	QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA, rax ; kybrd_

; 220  : 	memset(kybrd_, 0, sizeof(AuVFSNode));

	mov	r8d, 178				; 000000b2H
	xor	edx, edx
	mov	rcx, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	call	memset

; 221  : 	strcpy(kybrd_->filename, "kybrd");

	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	lea	rdx, OFFSET FLAT:??_C@_05BPAHAOGO@kybrd@
	mov	rcx, rax
	call	strcpy

; 222  : 	kybrd_->flags |= FS_FLAG_DEVICE;

	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	movzx	eax, WORD PTR [rax+61]
	or	eax, 8
	mov	rcx, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	mov	WORD PTR [rcx+61], ax

; 223  : 	kybrd_->device = keybuf;

	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	mov	rcx, QWORD PTR keybuf$[rbp]
	mov	QWORD PTR [rax+64], rcx

; 224  : 	kybrd_->read = AuDevInputKybrdRead;

	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	lea	rcx, OFFSET FLAT:?AuDevInputKybrdRead@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputKybrdRead
	mov	QWORD PTR [rax+90], rcx

; 225  : 	kybrd_->write = AuDevInputKybrdWrite;

	mov	rax, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	lea	rcx, OFFSET FLAT:?AuDevInputKybrdWrite@@YA_KPEAU__VFS_NODE__@@0PEA_KI@Z ; AuDevInputKybrdWrite
	mov	QWORD PTR [rax+98], rcx

; 226  : 	AuDevFSAddFile(devfs, "/", kybrd_);

	mov	r8, QWORD PTR ?kybrd_@@3PEAU__VFS_NODE__@@EA ; kybrd_
	lea	rdx, OFFSET FLAT:??_C@_01KMDKNFGN@?1@
	mov	rcx, QWORD PTR devfs$[rbp]
	call	AuDevFSAddFile

; 227  : }

	lea	rsp, QWORD PTR [rbp+96]
	pop	rbp
	ret	0
?AuDevInputInitialise@@YAXXZ ENDP			; AuDevInputInitialise
_TEXT	ENDS
END
