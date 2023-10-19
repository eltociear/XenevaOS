; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG4769	DB	'BootDev HID -> %x, UID -> %x, CID -> %x ', 0dH, 0aH, 00H
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
EXTRN	?SharedMemMapListInitialise@@YAXXZ:PROC		; SharedMemMapListInitialise
EXTRN	?AuAHCIInitialise@@YAXXZ:PROC			; AuAHCIInitialise
EXTRN	?AuTTYInitialise@@YAXXZ:PROC			; AuTTYInitialise
EXTRN	?AuPS2MouseInitialise@@YAXXZ:PROC		; AuPS2MouseInitialise
EXTRN	?AuPS2KybrdInitialize@@YAXXZ:PROC		; AuPS2KybrdInitialize
EXTRN	?AuRTCInitialize@@YAXXZ:PROC			; AuRTCInitialize
EXTRN	?AuDrvMngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z:PROC ; AuDrvMngrInitialize
EXTRN	?AuInitialiseLoader@@YAXXZ:PROC			; AuInitialiseLoader
EXTRN	?AuSoundInitialise@@YAXXZ:PROC			; AuSoundInitialise
EXTRN	?AuInitialiseNet@@YAXXZ:PROC			; AuInitialiseNet
EXTRN	?AuIPCPostBoxInitialise@@YAXXZ:PROC		; AuIPCPostBoxInitialise
EXTRN	?FontManagerInitialise@@YAXXZ:PROC		; FontManagerInitialise
pdata	SEGMENT
$pdata$?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z DD imagerel $LN5
	DD	imagerel $LN5+225
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

; 73   : void _AuMain(KERNEL_BOOT_INFO *info) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 74   : 	AuConsoleInitialize(info, true);

	mov	dl, 1
	mov	rcx, QWORD PTR info$[rsp]
	call	?AuConsoleInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@_N@Z ; AuConsoleInitialize

; 75   : 	AuPmmngrInitialize(info);

	mov	rcx, QWORD PTR info$[rsp]
	call	?AuPmmngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ; AuPmmngrInitialize

; 76   : 	AuVmmngrInitialize();

	call	?AuVmmngrInitialize@@YAXXZ		; AuVmmngrInitialize

; 77   : 	AuHeapInitialize();

	call	AuHeapInitialize

; 78   : 
; 79   : 	AuHalInitialise(info);

	mov	rcx, QWORD PTR info$[rsp]
	call	AuHalInitialise

; 80   : 	AuInitialiseSerial();

	call	?AuInitialiseSerial@@YAXXZ		; AuInitialiseSerial

; 81   : 	AuVFSInitialise();

	call	?AuVFSInitialise@@YAXXZ			; AuVFSInitialise

; 82   : 	SeTextOut("BootDev HID -> %x, UID -> %x, CID -> %x \r\n", info->hid, info->uid, info->cid);

	mov	rax, QWORD PTR info$[rsp]
	mov	r9d, DWORD PTR [rax+178]
	mov	rax, QWORD PTR info$[rsp]
	mov	r8d, DWORD PTR [rax+174]
	mov	rax, QWORD PTR info$[rsp]
	mov	edx, DWORD PTR [rax+170]
	lea	rcx, OFFSET FLAT:$SG4769
	call	SeTextOut

; 83   : 	AuAHCIInitialise();

	call	?AuAHCIInitialise@@YAXXZ		; AuAHCIInitialise

; 84   : 	
; 85   : 	AuConsolePostInitialise(info);

	mov	rcx, QWORD PTR info$[rsp]
	call	?AuConsolePostInitialise@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ; AuConsolePostInitialise

; 86   : 	/* Here initialize all legacy bus system
; 87   : 	 * like ps2.... using AuLegacyBusInitialize() */
; 88   : 	AuPS2MouseInitialise();

	call	?AuPS2MouseInitialise@@YAXXZ		; AuPS2MouseInitialise

; 89   : 	AuRTCInitialize();

	call	?AuRTCInitialize@@YAXXZ			; AuRTCInitialize

; 90   : 	AuPS2KybrdInitialize();

	call	?AuPS2KybrdInitialize@@YAXXZ		; AuPS2KybrdInitialize

; 91   : 
; 92   : 	/*initialise kernel tty */
; 93   : 	AuTTYInitialise();

	call	?AuTTYInitialise@@YAXXZ			; AuTTYInitialise

; 94   : 
; 95   : 	/* initialise the shared mem man */
; 96   : 	AuInitialiseSHMMan();

	call	?AuInitialiseSHMMan@@YAXXZ		; AuInitialiseSHMMan

; 97   : 
; 98   : 	SharedMemMapListInitialise();

	call	?SharedMemMapListInitialise@@YAXXZ	; SharedMemMapListInitialise

; 99   : 
; 100  : 	/* initialise sound service */
; 101  : 	AuSoundInitialise();

	call	?AuSoundInitialise@@YAXXZ		; AuSoundInitialise

; 102  : 
; 103  : 	/* initialise PostBoxIPCManager */
; 104  : 	AuIPCPostBoxInitialise();

	call	?AuIPCPostBoxInitialise@@YAXXZ		; AuIPCPostBoxInitialise

; 105  : 
; 106  : 	/* initialise pre network service*/
; 107  : 	AuInitialiseNet();

	call	?AuInitialiseNet@@YAXXZ			; AuInitialiseNet

; 108  : 
; 109  : 	x64_cli();

	call	x64_cli

; 110  : 	AuSchedulerInitialise();

	call	?AuSchedulerInitialise@@YAXXZ		; AuSchedulerInitialise

; 111  : 	
; 112  : 	/*initialise aurora driver manager*/
; 113  : 	AuDrvMngrInitialize(info);

	mov	rcx, QWORD PTR info$[rsp]
	call	?AuDrvMngrInitialize@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ; AuDrvMngrInitialize

; 114  : 
; 115  : 	/* intiialise all system fonts */
; 116  : 	FontManagerInitialise();

	call	?FontManagerInitialise@@YAXXZ		; FontManagerInitialise

; 117  : 	
; 118  : 	/* initialise all application processors*/
; 119  : 	AuHalPostInitialise();

	call	AuHalPostInitialise

; 120  : 	
; 121  : 	AuInitialiseLoader();

	call	?AuInitialiseLoader@@YAXXZ		; AuInitialiseLoader

; 122  : 
; 123  : 	/* make the kernel standalone*/
; 124  : 	AuVmmngrBootFree();

	call	?AuVmmngrBootFree@@YAXXZ		; AuVmmngrBootFree

; 125  : 	/* Process initialisation begins here */
; 126  : 	AuStartRootProc();

	call	?AuStartRootProc@@YAXXZ			; AuStartRootProc

; 127  : 	AuSchedulerStart();

	call	?AuSchedulerStart@@YAXXZ		; AuSchedulerStart
$LN2@AuMain:

; 128  : 	for (;;);

	jmp	SHORT $LN2@AuMain

; 129  : }

	add	rsp, 40					; 00000028H
	ret	0
?_AuMain@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ENDP		; _AuMain
_TEXT	ENDS
END
