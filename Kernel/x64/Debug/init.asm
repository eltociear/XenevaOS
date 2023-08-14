; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG4560	DB	'BootDev HID -> %x, UID -> %x, CID -> %x ', 0dH, 0aH, 00H
CONST	ENDS
PUBLIC	?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z		; _AuMain
EXTRN	?AuConsoleInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@_N@Z:PROC ; AuConsoleInitialize
EXTRN	?AuConsolePostInitialise@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z:PROC ; AuConsolePostInitialise
EXTRN	?AuPmmngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z:PROC ; AuPmmngrInitialize
EXTRN	?AuVmmngrInitialize@@YAXXZ:PROC			; AuVmmngrInitialize
EXTRN	?AuVmmngrBootFree@@YAXXZ:PROC			; AuVmmngrBootFree
EXTRN	?AuVFSInitialise@@YAXXZ:PROC			; AuVFSInitialise
EXTRN	?AuSchedulerStart@@YAXXZ:PROC			; AuSchedulerStart
EXTRN	?AuSchedulerInitialise@@YAXXZ:PROC		; AuSchedulerInitialise
EXTRN	?AuStartRootProc@@YAXXZ:PROC			; AuStartRootProc
EXTRN	?AuInitialiseSHMMan@@YAXXZ:PROC			; AuInitialiseSHMMan
EXTRN	AuHalInitialise:PROC
EXTRN	AuHalPostInitialise:PROC
EXTRN	x64_cli:PROC
EXTRN	?AuInitialiseSerial@@YAXXZ:PROC			; AuInitialiseSerial
EXTRN	SeTextOut:PROC
EXTRN	AuHeapInitialize:PROC
EXTRN	?AuAHCIInitialise@@YAXXZ:PROC			; AuAHCIInitialise
EXTRN	?AuPS2MouseInitialise@@YAXXZ:PROC		; AuPS2MouseInitialise
EXTRN	?AuPS2KybrdInitialize@@YAXXZ:PROC		; AuPS2KybrdInitialize
EXTRN	?AuRTCInitialize@@YAXXZ:PROC			; AuRTCInitialize
EXTRN	?AuDrvMngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z:PROC ; AuDrvMngrInitialize
EXTRN	?AuInitialiseLoader@@YAXXZ:PROC			; AuInitialiseLoader
EXTRN	?AuSoundInitialise@@YAXXZ:PROC			; AuSoundInitialise
pdata	SEGMENT
$pdata$?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z DD imagerel $LN5
	DD	imagerel $LN5+200
	DD	imagerel $unwind$?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z DD 010901H
	DD	04209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\init.cpp
_TEXT	SEGMENT
info$ = 48
?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z PROC		; _AuMain

; 68   : void _AuMain(KERNEL_BOOT_INFO *info) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 69   : 	AuConsoleInitialize(info, true);

	mov	dl, 1
	mov	rcx, QWORD PTR info$[rsp]
	call	?AuConsoleInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@_N@Z ; AuConsoleInitialize

; 70   : 	AuPmmngrInitialize(info);

	mov	rcx, QWORD PTR info$[rsp]
	call	?AuPmmngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ; AuPmmngrInitialize

; 71   : 	AuVmmngrInitialize();

	call	?AuVmmngrInitialize@@YAXXZ		; AuVmmngrInitialize

; 72   : 	AuHeapInitialize();

	call	AuHeapInitialize

; 73   : 
; 74   : 	AuHalInitialise(info);

	mov	rcx, QWORD PTR info$[rsp]
	call	AuHalInitialise

; 75   : 	AuInitialiseSerial();

	call	?AuInitialiseSerial@@YAXXZ		; AuInitialiseSerial

; 76   : 	AuVFSInitialise();

	call	?AuVFSInitialise@@YAXXZ			; AuVFSInitialise

; 77   : 	SeTextOut("BootDev HID -> %x, UID -> %x, CID -> %x \r\n", info->hid, info->uid, info->cid);

	mov	rax, QWORD PTR info$[rsp]
	mov	r9d, DWORD PTR [rax+178]
	mov	rax, QWORD PTR info$[rsp]
	mov	r8d, DWORD PTR [rax+174]
	mov	rax, QWORD PTR info$[rsp]
	mov	edx, DWORD PTR [rax+170]
	lea	rcx, OFFSET FLAT:$SG4560
	call	SeTextOut

; 78   : 	AuAHCIInitialise();

	call	?AuAHCIInitialise@@YAXXZ		; AuAHCIInitialise

; 79   : 	
; 80   : 	AuConsolePostInitialise(info);

	mov	rcx, QWORD PTR info$[rsp]
	call	?AuConsolePostInitialise@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ; AuConsolePostInitialise

; 81   : 	/* Here initialize all legacy bus system
; 82   : 	 * like ps2.... using AuLegacyBusInitialize() */
; 83   : 	AuPS2MouseInitialise();

	call	?AuPS2MouseInitialise@@YAXXZ		; AuPS2MouseInitialise

; 84   : 	AuRTCInitialize();

	call	?AuRTCInitialize@@YAXXZ			; AuRTCInitialize

; 85   : 	AuPS2KybrdInitialize();

	call	?AuPS2KybrdInitialize@@YAXXZ		; AuPS2KybrdInitialize

; 86   : 
; 87   : 	/* initialise the shared mem man */
; 88   : 	AuInitialiseSHMMan();

	call	?AuInitialiseSHMMan@@YAXXZ		; AuInitialiseSHMMan

; 89   : 
; 90   : 	/* initialise sound service */
; 91   : 	AuSoundInitialise();

	call	?AuSoundInitialise@@YAXXZ		; AuSoundInitialise

; 92   : 
; 93   : 	x64_cli();

	call	x64_cli

; 94   : 	AuSchedulerInitialise();

	call	?AuSchedulerInitialise@@YAXXZ		; AuSchedulerInitialise

; 95   : 	
; 96   : 	/*initialise aurora driver manager*/
; 97   : 	AuDrvMngrInitialize(info);

	mov	rcx, QWORD PTR info$[rsp]
	call	?AuDrvMngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ; AuDrvMngrInitialize

; 98   : 
; 99   : 	/* initialise all application processors*/
; 100  : 	AuHalPostInitialise();

	call	AuHalPostInitialise

; 101  : 
; 102  : 	AuInitialiseLoader();

	call	?AuInitialiseLoader@@YAXXZ		; AuInitialiseLoader

; 103  : 
; 104  : 	/* make the kernel standalone*/
; 105  : 	AuVmmngrBootFree();

	call	?AuVmmngrBootFree@@YAXXZ		; AuVmmngrBootFree

; 106  : 
; 107  : 	/* Process initialisation begins here */
; 108  : 	AuStartRootProc();

	call	?AuStartRootProc@@YAXXZ			; AuStartRootProc

; 109  : 	AuSchedulerStart();

	call	?AuSchedulerStart@@YAXXZ		; AuSchedulerStart
$LN2@AuMain:

; 110  : 	for (;;);

	jmp	SHORT $LN2@AuMain

; 111  : }

	add	rsp, 40					; 00000028H
	ret	0
?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ENDP		; _AuMain
_TEXT	ENDS
END
