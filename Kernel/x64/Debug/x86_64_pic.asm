; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

_BSS	SEGMENT
pic_counter DQ	01H DUP (?)
_BSS	ENDS
CONST	SEGMENT
$SG3439	DB	'iNITIALISING PIC ', 0aH, 00H
	ORG $+5
$SG3477	DB	'PIC/PIT initialised ', 0aH, 00H
CONST	ENDS
PUBLIC	?AuInitialisePIC@@YAXXZ				; AuInitialisePIC
PUBLIC	?AuPICSetMask@@YAXE@Z				; AuPICSetMask
PUBLIC	?AuPICClearMask@@YAXE@Z				; AuPICClearMask
PUBLIC	?AuPITSleepMS@@YAXI@Z				; AuPITSleepMS
PUBLIC	?AuPICInterruptEOI@@YAXI@Z			; AuPICInterruptEOI
PUBLIC	?AuPITHandler@@YAX_KPEAX@Z			; AuPITHandler
EXTRN	AuTextOut:PROC
EXTRN	setvect:PROC
EXTRN	x64_inportb:PROC
EXTRN	x64_outportb:PROC
;	COMDAT ?ticks@?1??AuPITSleepMS@@YAXI@Z@4HA
_BSS	SEGMENT
?ticks@?1??AuPITSleepMS@@YAXI@Z@4HA DD 01H DUP (?)	; `AuPITSleepMS'::`2'::ticks
_BSS	ENDS
;	COMDAT ?$S1@?1??AuPITSleepMS@@YAXI@Z@4IA
_BSS	SEGMENT
?$S1@?1??AuPITSleepMS@@YAXI@Z@4IA DD 01H DUP (?)	; S1<`template-parameter-2',PITSleepMS,unsigned int, ?? &>
_BSS	ENDS
pdata	SEGMENT
$pdata$?AuInitialisePIC@@YAXXZ DD imagerel $LN27
	DD	imagerel $LN27+534
	DD	imagerel $unwind$?AuInitialisePIC@@YAXXZ
$pdata$?AuPICSetMask@@YAXE@Z DD imagerel $LN5
	DD	imagerel $LN5+105
	DD	imagerel $unwind$?AuPICSetMask@@YAXE@Z
$pdata$?AuPICClearMask@@YAXE@Z DD imagerel $LN5
	DD	imagerel $LN5+107
	DD	imagerel $unwind$?AuPICClearMask@@YAXE@Z
$pdata$?AuPICInterruptEOI@@YAXI@Z DD imagerel $LN5
	DD	imagerel $LN5+51
	DD	imagerel $unwind$?AuPICInterruptEOI@@YAXI@Z
$pdata$?AuPITHandler@@YAX_KPEAX@Z DD imagerel $LN3
	DD	imagerel $LN3+43
	DD	imagerel $unwind$?AuPITHandler@@YAX_KPEAX@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuInitialisePIC@@YAXXZ DD 010401H
	DD	0a204H
$unwind$?AuPICSetMask@@YAXE@Z DD 010801H
	DD	06208H
$unwind$?AuPICClearMask@@YAXE@Z DD 010801H
	DD	06208H
$unwind$?AuPICInterruptEOI@@YAXI@Z DD 010801H
	DD	04208H
$unwind$?AuPITHandler@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_pic.cpp
_TEXT	SEGMENT
v$ = 48
param$ = 56
?AuPITHandler@@YAX_KPEAX@Z PROC				; AuPITHandler

; 46   : void AuPITHandler(size_t v, void* param) {

$LN3:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 47   : 	pic_counter++;

	mov	rax, QWORD PTR pic_counter
	inc	rax
	mov	QWORD PTR pic_counter, rax

; 48   : 	AuPICInterruptEOI(0);

	xor	ecx, ecx
	call	?AuPICInterruptEOI@@YAXI@Z		; AuPICInterruptEOI

; 49   : }

	add	rsp, 40					; 00000028H
	ret	0
?AuPITHandler@@YAX_KPEAX@Z ENDP				; AuPITHandler
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_pic.cpp
_TEXT	SEGMENT
intno$ = 48
?AuPICInterruptEOI@@YAXI@Z PROC				; AuPICInterruptEOI

; 34   : void AuPICInterruptEOI(unsigned int intno) {

$LN5:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 40					; 00000028H

; 35   : 	if (intno > 16)

	cmp	DWORD PTR intno$[rsp], 16
	jbe	SHORT $LN2@AuPICInter

; 36   : 		return;

	jmp	SHORT $LN3@AuPICInter
$LN2@AuPICInter:

; 37   : 
; 38   : 	if (intno >= 8)

	cmp	DWORD PTR intno$[rsp], 8
	jb	SHORT $LN1@AuPICInter

; 39   : 		x64_outportb(PIC2_COMMAND, PIC_EOI);

	mov	dl, 32					; 00000020H
	mov	cx, 160					; 000000a0H
	call	x64_outportb
$LN1@AuPICInter:

; 40   : 
; 41   : 	x64_outportb(PIC1_COMMAND, PIC_EOI);

	mov	dl, 32					; 00000020H
	mov	cx, 32					; 00000020H
	call	x64_outportb
$LN3@AuPICInter:

; 42   : }

	add	rsp, 40					; 00000028H
	ret	0
?AuPICInterruptEOI@@YAXI@Z ENDP				; AuPICInterruptEOI
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_pic.cpp
_TEXT	SEGMENT
ms$ = 8
?AuPITSleepMS@@YAXI@Z PROC				; AuPITSleepMS

; 81   : void AuPITSleepMS(uint32_t ms) {

	mov	DWORD PTR [rsp+8], ecx

; 82   : 	static int ticks = ms + pic_counter;

	mov	eax, DWORD PTR ?$S1@?1??AuPITSleepMS@@YAXI@Z@4IA
	and	eax, 1
	test	eax, eax
	jne	SHORT $LN3@AuPITSleep
	mov	eax, DWORD PTR ?$S1@?1??AuPITSleepMS@@YAXI@Z@4IA
	or	eax, 1
	mov	DWORD PTR ?$S1@?1??AuPITSleepMS@@YAXI@Z@4IA, eax
	mov	eax, DWORD PTR ms$[rsp]
	add	rax, QWORD PTR pic_counter
	mov	DWORD PTR ?ticks@?1??AuPITSleepMS@@YAXI@Z@4HA, eax
$LN3@AuPITSleep:
$LN2@AuPITSleep:

; 83   : 	while (ticks > pic_counter)

	movsxd	rax, DWORD PTR ?ticks@?1??AuPITSleepMS@@YAXI@Z@4HA
	cmp	rax, QWORD PTR pic_counter
	jbe	SHORT $LN1@AuPITSleep

; 84   : 		;

	jmp	SHORT $LN2@AuPITSleep
$LN1@AuPITSleep:

; 85   : }

	ret	0
?AuPITSleepMS@@YAXI@Z ENDP				; AuPITSleepMS
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_pic.cpp
_TEXT	SEGMENT
value$ = 32
port$ = 36
irq$ = 64
?AuPICClearMask@@YAXE@Z PROC				; AuPICClearMask

; 66   : void AuPICClearMask(uint8_t irq) {

$LN5:
	mov	BYTE PTR [rsp+8], cl
	sub	rsp, 56					; 00000038H

; 67   : 	uint16_t port;
; 68   : 	uint8_t value;
; 69   : 
; 70   : 	if (irq < 8)

	movzx	eax, BYTE PTR irq$[rsp]
	cmp	eax, 8
	jge	SHORT $LN2@AuPICClear

; 71   : 		port = PIC1_DATA;

	mov	eax, 33					; 00000021H
	mov	WORD PTR port$[rsp], ax

; 72   : 	else {

	jmp	SHORT $LN1@AuPICClear
$LN2@AuPICClear:

; 73   : 		port = PIC2_DATA;

	mov	eax, 161				; 000000a1H
	mov	WORD PTR port$[rsp], ax

; 74   : 		irq -= 8;

	movzx	eax, BYTE PTR irq$[rsp]
	sub	eax, 8
	mov	BYTE PTR irq$[rsp], al
$LN1@AuPICClear:

; 75   : 	}
; 76   : 
; 77   : 	value = x64_inportb(port) & ~(1 << irq);

	movzx	ecx, WORD PTR port$[rsp]
	call	x64_inportb
	movzx	eax, al
	movzx	ecx, BYTE PTR irq$[rsp]
	mov	edx, 1
	shl	edx, cl
	mov	ecx, edx
	not	ecx
	and	eax, ecx
	mov	BYTE PTR value$[rsp], al

; 78   : 	x64_outportb(port, value);

	movzx	edx, BYTE PTR value$[rsp]
	movzx	ecx, WORD PTR port$[rsp]
	call	x64_outportb

; 79   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuPICClearMask@@YAXE@Z ENDP				; AuPICClearMask
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_pic.cpp
_TEXT	SEGMENT
value$ = 32
port$ = 36
irq$ = 64
?AuPICSetMask@@YAXE@Z PROC				; AuPICSetMask

; 51   : void AuPICSetMask(uint8_t irq) {

$LN5:
	mov	BYTE PTR [rsp+8], cl
	sub	rsp, 56					; 00000038H

; 52   : 	uint16_t port;
; 53   : 	uint8_t value;
; 54   : 
; 55   : 	if (irq < 8)

	movzx	eax, BYTE PTR irq$[rsp]
	cmp	eax, 8
	jge	SHORT $LN2@AuPICSetMa

; 56   : 		port = PIC1_DATA;

	mov	eax, 33					; 00000021H
	mov	WORD PTR port$[rsp], ax

; 57   : 	else{

	jmp	SHORT $LN1@AuPICSetMa
$LN2@AuPICSetMa:

; 58   : 		port = PIC2_DATA;

	mov	eax, 161				; 000000a1H
	mov	WORD PTR port$[rsp], ax

; 59   : 		irq -= 8;

	movzx	eax, BYTE PTR irq$[rsp]
	sub	eax, 8
	mov	BYTE PTR irq$[rsp], al
$LN1@AuPICSetMa:

; 60   : 	}
; 61   : 
; 62   : 	value = x64_inportb(port) | (1 << irq);

	movzx	ecx, WORD PTR port$[rsp]
	call	x64_inportb
	movzx	eax, al
	movzx	ecx, BYTE PTR irq$[rsp]
	mov	edx, 1
	shl	edx, cl
	mov	ecx, edx
	or	eax, ecx
	mov	BYTE PTR value$[rsp], al

; 63   : 	x64_outportb(port, value);

	movzx	edx, BYTE PTR value$[rsp]
	movzx	ecx, WORD PTR port$[rsp]
	call	x64_outportb

; 64   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuPICSetMask@@YAXE@Z ENDP				; AuPICSetMask
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_pic.cpp
_TEXT	SEGMENT
base1$ = 32
a1$ = 33
base0$ = 34
a2$ = 35
i$1 = 36
i$2 = 40
i$3 = 44
i$4 = 48
i$5 = 52
i$6 = 56
i$7 = 60
i$8 = 64
divisor$ = 68
?AuInitialisePIC@@YAXXZ PROC				; AuInitialisePIC

; 87   : void AuInitialisePIC() {

$LN27:
	sub	rsp, 88					; 00000058H

; 88   : 	AuTextOut("iNITIALISING PIC \n");

	lea	rcx, OFFSET FLAT:$SG3439
	call	AuTextOut

; 89   : 	uint8_t base0 = 0x20;

	mov	BYTE PTR base0$[rsp], 32		; 00000020H

; 90   : 	uint8_t base1 = 0x28;

	mov	BYTE PTR base1$[rsp], 40		; 00000028H

; 91   : 
; 92   : 	unsigned char a1, a2;
; 93   : 	a1 = x64_inportb(PIC1_DATA);

	mov	cx, 33					; 00000021H
	call	x64_inportb
	mov	BYTE PTR a1$[rsp], al

; 94   : 	a2 = x64_inportb(PIC2_DATA);

	mov	cx, 161					; 000000a1H
	call	x64_inportb
	mov	BYTE PTR a2$[rsp], al

; 95   : 
; 96   : 	x64_outportb(PIC1_COMMAND, ICW1_INIT | ICW1_ICW4);

	mov	dl, 17
	mov	cx, 32					; 00000020H
	call	x64_outportb

; 97   : 	for (int i = 0; i < 1000; i++)

	mov	DWORD PTR i$4[rsp], 0
	jmp	SHORT $LN24@AuInitiali
$LN23@AuInitiali:
	mov	eax, DWORD PTR i$4[rsp]
	inc	eax
	mov	DWORD PTR i$4[rsp], eax
$LN24@AuInitiali:
	cmp	DWORD PTR i$4[rsp], 1000		; 000003e8H
	jge	SHORT $LN22@AuInitiali

; 98   : 		;

	jmp	SHORT $LN23@AuInitiali
$LN22@AuInitiali:

; 99   : 	x64_outportb(PIC2_COMMAND, ICW1_INIT | ICW1_ICW4);

	mov	dl, 17
	mov	cx, 160					; 000000a0H
	call	x64_outportb

; 100  : 	for (int i = 0; i < 1000; i++)

	mov	DWORD PTR i$6[rsp], 0
	jmp	SHORT $LN21@AuInitiali
$LN20@AuInitiali:
	mov	eax, DWORD PTR i$6[rsp]
	inc	eax
	mov	DWORD PTR i$6[rsp], eax
$LN21@AuInitiali:
	cmp	DWORD PTR i$6[rsp], 1000		; 000003e8H
	jge	SHORT $LN19@AuInitiali

; 101  : 		;

	jmp	SHORT $LN20@AuInitiali
$LN19@AuInitiali:

; 102  : 	x64_outportb(PIC1_DATA, base0);

	movzx	edx, BYTE PTR base0$[rsp]
	mov	cx, 33					; 00000021H
	call	x64_outportb

; 103  : 	for (int i = 0; i < 1000; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN18@AuInitiali
$LN17@AuInitiali:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN18@AuInitiali:
	cmp	DWORD PTR i$1[rsp], 1000		; 000003e8H
	jge	SHORT $LN16@AuInitiali

; 104  : 		;

	jmp	SHORT $LN17@AuInitiali
$LN16@AuInitiali:

; 105  : 	x64_outportb(PIC2_DATA, base1);

	movzx	edx, BYTE PTR base1$[rsp]
	mov	cx, 161					; 000000a1H
	call	x64_outportb

; 106  : 	for (int i = 0; i < 1000; i++)

	mov	DWORD PTR i$8[rsp], 0
	jmp	SHORT $LN15@AuInitiali
$LN14@AuInitiali:
	mov	eax, DWORD PTR i$8[rsp]
	inc	eax
	mov	DWORD PTR i$8[rsp], eax
$LN15@AuInitiali:
	cmp	DWORD PTR i$8[rsp], 1000		; 000003e8H
	jge	SHORT $LN13@AuInitiali

; 107  : 		;

	jmp	SHORT $LN14@AuInitiali
$LN13@AuInitiali:

; 108  : 	x64_outportb(PIC1_DATA, 4);

	mov	dl, 4
	mov	cx, 33					; 00000021H
	call	x64_outportb

; 109  : 	for (int i = 0; i < 1000; i++)

	mov	DWORD PTR i$2[rsp], 0
	jmp	SHORT $LN12@AuInitiali
$LN11@AuInitiali:
	mov	eax, DWORD PTR i$2[rsp]
	inc	eax
	mov	DWORD PTR i$2[rsp], eax
$LN12@AuInitiali:
	cmp	DWORD PTR i$2[rsp], 1000		; 000003e8H
	jge	SHORT $LN10@AuInitiali

; 110  : 		;

	jmp	SHORT $LN11@AuInitiali
$LN10@AuInitiali:

; 111  : 	x64_outportb(PIC2_DATA, 2);

	mov	dl, 2
	mov	cx, 161					; 000000a1H
	call	x64_outportb

; 112  : 	for (int i = 0; i < 1000; i++)

	mov	DWORD PTR i$3[rsp], 0
	jmp	SHORT $LN9@AuInitiali
$LN8@AuInitiali:
	mov	eax, DWORD PTR i$3[rsp]
	inc	eax
	mov	DWORD PTR i$3[rsp], eax
$LN9@AuInitiali:
	cmp	DWORD PTR i$3[rsp], 1000		; 000003e8H
	jge	SHORT $LN7@AuInitiali

; 113  : 		;

	jmp	SHORT $LN8@AuInitiali
$LN7@AuInitiali:

; 114  : 	x64_outportb(PIC1_DATA, ICW4_8086);

	mov	dl, 1
	mov	cx, 33					; 00000021H
	call	x64_outportb

; 115  : 	for (int i = 0; i < 1000; i++)

	mov	DWORD PTR i$5[rsp], 0
	jmp	SHORT $LN6@AuInitiali
$LN5@AuInitiali:
	mov	eax, DWORD PTR i$5[rsp]
	inc	eax
	mov	DWORD PTR i$5[rsp], eax
$LN6@AuInitiali:
	cmp	DWORD PTR i$5[rsp], 1000		; 000003e8H
	jge	SHORT $LN4@AuInitiali

; 116  : 		;

	jmp	SHORT $LN5@AuInitiali
$LN4@AuInitiali:

; 117  : 	x64_outportb(PIC2_DATA, ICW4_8086);

	mov	dl, 1
	mov	cx, 161					; 000000a1H
	call	x64_outportb

; 118  : 	for (int i = 0; i < 1000; i++)

	mov	DWORD PTR i$7[rsp], 0
	jmp	SHORT $LN3@AuInitiali
$LN2@AuInitiali:
	mov	eax, DWORD PTR i$7[rsp]
	inc	eax
	mov	DWORD PTR i$7[rsp], eax
$LN3@AuInitiali:
	cmp	DWORD PTR i$7[rsp], 1000		; 000003e8H
	jge	SHORT $LN1@AuInitiali

; 119  : 		;

	jmp	SHORT $LN2@AuInitiali
$LN1@AuInitiali:

; 120  : 	x64_outportb(PIC1_DATA, a1);

	movzx	edx, BYTE PTR a1$[rsp]
	mov	cx, 33					; 00000021H
	call	x64_outportb

; 121  : 	x64_outportb(PIC2_DATA, a2);

	movzx	edx, BYTE PTR a2$[rsp]
	mov	cx, 161					; 000000a1H
	call	x64_outportb

; 122  : 
; 123  : 	unsigned int divisor = 1193181 / 100;

	mov	DWORD PTR divisor$[rsp], 11931		; 00002e9bH

; 124  : 	x64_outportb(0x43, 0x00 | 0x06 | 0x30 | 0x00);

	mov	dl, 54					; 00000036H
	mov	cx, 67					; 00000043H
	call	x64_outportb

; 125  : 	x64_outportb(0x40, divisor);

	movzx	edx, BYTE PTR divisor$[rsp]
	mov	cx, 64					; 00000040H
	call	x64_outportb

; 126  : 	x64_outportb(0x40, divisor >> 8);

	mov	eax, DWORD PTR divisor$[rsp]
	shr	eax, 8
	movzx	edx, al
	mov	cx, 64					; 00000040H
	call	x64_outportb

; 127  : 	setvect(32 + 0, AuPITHandler);

	lea	rdx, OFFSET FLAT:?AuPITHandler@@YAX_KPEAX@Z ; AuPITHandler
	mov	ecx, 32					; 00000020H
	call	setvect

; 128  : 	AuTextOut("PIC/PIT initialised \n");

	lea	rcx, OFFSET FLAT:$SG3477
	call	AuTextOut

; 129  : 	pic_counter = 0;

	mov	QWORD PTR pic_counter, 0

; 130  : 	AuPICClearMask(0);

	xor	ecx, ecx
	call	?AuPICClearMask@@YAXE@Z			; AuPICClearMask

; 131  : }

	add	rsp, 88					; 00000058H
	ret	0
?AuInitialisePIC@@YAXXZ ENDP				; AuInitialisePIC
_TEXT	ENDS
END
