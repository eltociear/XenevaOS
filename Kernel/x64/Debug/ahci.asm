; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?HBABar@@3PEAXEA				; HBABar
_BSS	SEGMENT
?HBABar@@3PEAXEA DQ 01H DUP (?)				; HBABar
_BSS	ENDS
CONST	SEGMENT
$SG4163	DB	'ahci/sata not found ', 0aH, 00H
	ORG $+2
$SG4173	DB	'ahci/sata version %d.%d found ', 0aH, 00H
$SG4186	DB	'ahci sata drive found at port %d', 0aH, 00H
	ORG $+6
$SG4189	DB	'ahci satapi drive found at port %d', 0aH, 00H
	ORG $+4
$SG4192	DB	'ahci semb drive found at port %d', 0aH, 00H
	ORG $+6
$SG4195	DB	'ahci pm drive found at port %d', 0aH, 00H
CONST	ENDS
PUBLIC	?AuAHCIInitialise@@YAXXZ			; AuAHCIInitialise
PUBLIC	?AHCIInterruptHandler@@YAX_KPEAX@Z		; AHCIInterruptHandler
PUBLIC	?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z		; AuAHCICheckType
EXTRN	AuTextOut:PROC
EXTRN	AuPCIEAllocMSI:PROC
EXTRN	AuPCIEScanClass:PROC
EXTRN	AuPCIEWrite:PROC
EXTRN	AuPCIERead:PROC
EXTRN	setvect:PROC
EXTRN	?APICTimerSleep@@YAXI@Z:PROC			; APICTimerSleep
EXTRN	AuMapMMIO:PROC
EXTRN	?AuAHCIDiskInitialise@@YAXPEAU_hba_port_@@@Z:PROC ; AuAHCIDiskInitialise
_BSS	SEGMENT
__IsAHCI64Bit DB 01H DUP (?)
_BSS	ENDS
pdata	SEGMENT
$pdata$?AuAHCIInitialise@@YAXXZ DD imagerel $LN17
	DD	imagerel $LN17+1004
	DD	imagerel $unwind$?AuAHCIInitialise@@YAXXZ
$pdata$?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z DD imagerel $LN11
	DD	imagerel $LN11+147
	DD	imagerel $unwind$?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuAHCIInitialise@@YAXXZ DD 020701H
	DD	0130107H
$unwind$?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z DD 010901H
	DD	02209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ahci.cpp
_TEXT	SEGMENT
det$ = 0
ipm$ = 1
tv75 = 4
ssts$ = 8
port$ = 32
?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z PROC		; AuAHCICheckType

; 65   : int AuAHCICheckType(HBA_PORT *port) {

$LN11:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 66   : 	uint32_t ssts = port->ssts;

	mov	rax, QWORD PTR port$[rsp]
	mov	eax, DWORD PTR [rax+40]
	mov	DWORD PTR ssts$[rsp], eax

; 67   : 	uint8_t ipm = (ssts >> 8) & 0x0F;

	mov	eax, DWORD PTR ssts$[rsp]
	shr	eax, 8
	and	eax, 15
	mov	BYTE PTR ipm$[rsp], al

; 68   : 	uint8_t det = ssts & 0x0F;

	mov	eax, DWORD PTR ssts$[rsp]
	and	eax, 15
	mov	BYTE PTR det$[rsp], al

; 69   : 
; 70   : 	if (det != HBA_PORT_DET_PRESENT)

	movzx	eax, BYTE PTR det$[rsp]
	cmp	eax, 3
	je	SHORT $LN8@AuAHCIChec

; 71   : 		return AHCI_DEV_NULL;

	xor	eax, eax
	jmp	SHORT $LN9@AuAHCIChec
$LN8@AuAHCIChec:

; 72   : 	if (ipm != HBA_PORT_IPM_ACTIVE)

	movzx	eax, BYTE PTR ipm$[rsp]
	cmp	eax, 1
	je	SHORT $LN7@AuAHCIChec

; 73   : 		return AHCI_DEV_NULL;

	xor	eax, eax
	jmp	SHORT $LN9@AuAHCIChec
$LN7@AuAHCIChec:

; 74   : 
; 75   : 	switch (port->sig) {

	mov	rax, QWORD PTR port$[rsp]
	mov	eax, DWORD PTR [rax+36]
	mov	DWORD PTR tv75[rsp], eax
	cmp	DWORD PTR tv75[rsp], -1771503359	; 96690101H
	je	SHORT $LN2@AuAHCIChec
	cmp	DWORD PTR tv75[rsp], -1019477759	; c33c0101H
	je	SHORT $LN3@AuAHCIChec
	cmp	DWORD PTR tv75[rsp], -351010559		; eb140101H
	je	SHORT $LN4@AuAHCIChec
	jmp	SHORT $LN1@AuAHCIChec
$LN4@AuAHCIChec:

; 76   : 	case SATA_SIG_ATAPI:
; 77   : 		return AHCI_DEV_SATAPI;

	mov	eax, 4
	jmp	SHORT $LN9@AuAHCIChec
$LN3@AuAHCIChec:

; 78   : 	case SATA_SIG_SEMB:
; 79   : 		return AHCI_DEV_SEMB;

	mov	eax, 2
	jmp	SHORT $LN9@AuAHCIChec
$LN2@AuAHCIChec:

; 80   : 	case SATA_SIG_PM:
; 81   : 		return AHCI_DEV_PM;

	mov	eax, 3
	jmp	SHORT $LN9@AuAHCIChec
$LN1@AuAHCIChec:

; 82   : 	default:
; 83   : 		return AHCI_DEV_SATA;

	mov	eax, 1
$LN9@AuAHCIChec:

; 84   : 	}
; 85   : }

	add	rsp, 24
	ret	0
?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z ENDP		; AuAHCICheckType
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ahci.cpp
_TEXT	SEGMENT
v$ = 8
p$ = 16
?AHCIInterruptHandler@@YAX_KPEAX@Z PROC			; AHCIInterruptHandler

; 57   : void AHCIInterruptHandler(size_t v, void* p){

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx

; 58   : }

	ret	0
?AHCIInterruptHandler@@YAX_KPEAX@Z ENDP			; AHCIInterruptHandler
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ahci.cpp
_TEXT	SEGMENT
i$ = 48
AhciNotFound$ = 52
hba$ = 56
func$ = 64
bus$ = 68
dev$ = 72
dt$1 = 76
device$ = 80
pi$ = 88
support_spin$ = 92
cmd$ = 96
hba_phys$ = 104
baseAddr$ = 108
_bit$ = 112
version_minor$ = 116
version_major$ = 120
MMIO$ = 128
num_cmd_slots$ = 136
int_line$ = 140
?AuAHCIInitialise@@YAXXZ PROC				; AuAHCIInitialise

; 90   : void AuAHCIInitialise() {

$LN17:
	sub	rsp, 152				; 00000098H

; 91   : 	int bus, dev, func = 0;

	mov	DWORD PTR func$[rsp], 0

; 92   : 	bool AhciNotFound = false;

	mov	BYTE PTR AhciNotFound$[rsp], 0

; 93   : 
; 94   : 	uint64_t device = AuPCIEScanClass(0x01, 0x06, &bus, &dev, &func);

	lea	rax, QWORD PTR func$[rsp]
	mov	QWORD PTR [rsp+32], rax
	lea	r9, QWORD PTR dev$[rsp]
	lea	r8, QWORD PTR bus$[rsp]
	mov	dl, 6
	mov	cl, 1
	call	AuPCIEScanClass
	mov	QWORD PTR device$[rsp], rax

; 95   : 	if (device == UINT32_MAX)

	mov	eax, -1					; ffffffffH
	cmp	QWORD PTR device$[rsp], rax
	jne	SHORT $LN14@AuAHCIInit

; 96   : 		AhciNotFound = true;

	mov	BYTE PTR AhciNotFound$[rsp], 1
$LN14@AuAHCIInit:

; 97   : 
; 98   : 	if (AhciNotFound) {

	movzx	eax, BYTE PTR AhciNotFound$[rsp]
	test	eax, eax
	je	SHORT $LN13@AuAHCIInit

; 99   : 		device = AuPCIEScanClass(0x01, 0x04, &bus, &dev, &func);

	lea	rax, QWORD PTR func$[rsp]
	mov	QWORD PTR [rsp+32], rax
	lea	r9, QWORD PTR dev$[rsp]
	lea	r8, QWORD PTR bus$[rsp]
	mov	dl, 4
	mov	cl, 1
	call	AuPCIEScanClass
	mov	QWORD PTR device$[rsp], rax

; 100  : 		if (device == UINT32_MAX) {

	mov	eax, -1					; ffffffffH
	cmp	QWORD PTR device$[rsp], rax
	jne	SHORT $LN12@AuAHCIInit

; 101  : 			AuTextOut("ahci/sata not found \n");

	lea	rcx, OFFSET FLAT:$SG4163
	call	AuTextOut

; 102  : 			return;

	jmp	$LN15@AuAHCIInit
$LN12@AuAHCIInit:
$LN13@AuAHCIInit:

; 103  : 		}
; 104  : 	}
; 105  : 
; 106  : 	uint32_t int_line = AuPCIERead(device, PCI_INTERRUPT_LINE, bus, dev, func);

	mov	eax, DWORD PTR func$[rsp]
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR dev$[rsp]
	mov	r8d, DWORD PTR bus$[rsp]
	mov	edx, 60					; 0000003cH
	mov	rcx, QWORD PTR device$[rsp]
	call	AuPCIERead
	mov	DWORD PTR int_line$[rsp], eax

; 107  : 	uint32_t baseAddr = AuPCIERead(device, PCI_BAR5, bus, dev, func);

	mov	eax, DWORD PTR func$[rsp]
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR dev$[rsp]
	mov	r8d, DWORD PTR bus$[rsp]
	mov	edx, 36					; 00000024H
	mov	rcx, QWORD PTR device$[rsp]
	call	AuPCIERead
	mov	DWORD PTR baseAddr$[rsp], eax

; 108  : 
; 109  : 	uint64_t cmd = AuPCIERead(device, PCI_COMMAND, bus, dev, func);

	mov	eax, DWORD PTR func$[rsp]
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR dev$[rsp]
	mov	r8d, DWORD PTR bus$[rsp]
	mov	edx, 4
	mov	rcx, QWORD PTR device$[rsp]
	call	AuPCIERead
	mov	eax, eax
	mov	QWORD PTR cmd$[rsp], rax

; 110  : 	cmd |= (1 << 1);

	mov	rax, QWORD PTR cmd$[rsp]
	or	rax, 2
	mov	QWORD PTR cmd$[rsp], rax

; 111  : 	cmd |= (1 << 10);

	mov	rax, QWORD PTR cmd$[rsp]
	bts	rax, 10
	mov	QWORD PTR cmd$[rsp], rax

; 112  : 	AuPCIEWrite(device, PCI_COMMAND, cmd, bus, dev, func);

	mov	eax, DWORD PTR func$[rsp]
	mov	DWORD PTR [rsp+40], eax
	mov	eax, DWORD PTR dev$[rsp]
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR bus$[rsp]
	mov	r8d, DWORD PTR cmd$[rsp]
	mov	edx, 4
	mov	rcx, QWORD PTR device$[rsp]
	call	AuPCIEWrite

; 113  : 
; 114  : 	AuPCIEAllocMSI(device, 36, bus, dev, func);

	mov	eax, DWORD PTR func$[rsp]
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR dev$[rsp]
	mov	r8d, DWORD PTR bus$[rsp]
	mov	edx, 36					; 00000024H
	mov	rcx, QWORD PTR device$[rsp]
	call	AuPCIEAllocMSI

; 115  : 	setvect(36, AHCIInterruptHandler);

	lea	rdx, OFFSET FLAT:?AHCIInterruptHandler@@YAX_KPEAX@Z ; AHCIInterruptHandler
	mov	ecx, 36					; 00000024H
	call	setvect

; 116  : 
; 117  : 	uint32_t hba_phys = baseAddr & 0xFFFFFFF0;

	mov	eax, DWORD PTR baseAddr$[rsp]
	and	eax, -16				; fffffff0H
	mov	DWORD PTR hba_phys$[rsp], eax

; 118  : 	void* MMIO = AuMapMMIO(hba_phys, 3);

	mov	eax, DWORD PTR hba_phys$[rsp]
	mov	edx, 3
	mov	ecx, eax
	call	AuMapMMIO
	mov	QWORD PTR MMIO$[rsp], rax

; 119  : 	HBA_MEM* hba = (HBA_MEM*)MMIO;

	mov	rax, QWORD PTR MMIO$[rsp]
	mov	QWORD PTR hba$[rsp], rax

; 120  : 	HBABar = MMIO;

	mov	rax, QWORD PTR MMIO$[rsp]
	mov	QWORD PTR ?HBABar@@3PEAXEA, rax		; HBABar

; 121  : 	hba->ghc = 1;

	mov	rax, QWORD PTR hba$[rsp]
	mov	DWORD PTR [rax+4], 1

; 122  : 
; 123  : 	APICTimerSleep(100);

	mov	ecx, 100				; 00000064H
	call	?APICTimerSleep@@YAXI@Z			; APICTimerSleep

; 124  : 	hba->ghc = (1 << 31);

	mov	rax, QWORD PTR hba$[rsp]
	mov	DWORD PTR [rax+4], -2147483648		; 80000000H

; 125  : 	APICTimerSleep(100);

	mov	ecx, 100				; 00000064H
	call	?APICTimerSleep@@YAXI@Z			; APICTimerSleep

; 126  : 
; 127  : 	uint32_t version_major = hba->vs >> 16 & 0xff;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax+16]
	shr	eax, 16
	and	eax, 255				; 000000ffH
	mov	DWORD PTR version_major$[rsp], eax

; 128  : 	uint32_t version_minor = hba->vs & 0xff;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax+16]
	and	eax, 255				; 000000ffH
	mov	DWORD PTR version_minor$[rsp], eax

; 129  : 
; 130  : 	AuTextOut("ahci/sata version %d.%d found \n", version_major, version_minor);

	mov	r8d, DWORD PTR version_minor$[rsp]
	mov	edx, DWORD PTR version_major$[rsp]
	lea	rcx, OFFSET FLAT:$SG4173
	call	AuTextOut

; 131  : 
; 132  : 	uint32_t _bit = hba->cap >> 31 & 0xff;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax]
	shr	eax, 31
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _bit$[rsp], eax

; 133  : 	if (_bit)

	cmp	DWORD PTR _bit$[rsp], 0
	je	SHORT $LN11@AuAHCIInit

; 134  : 		__IsAHCI64Bit = true;

	mov	BYTE PTR __IsAHCI64Bit, 1
$LN11@AuAHCIInit:

; 135  : 
; 136  : 	hba->is = UINT32_MAX;

	mov	rax, QWORD PTR hba$[rsp]
	mov	DWORD PTR [rax+8], -1			; ffffffffH

; 137  : 	hba->ghc |= 0x2;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax+4]
	or	eax, 2
	mov	rcx, QWORD PTR hba$[rsp]
	mov	DWORD PTR [rcx+4], eax

; 138  : 
; 139  : 	uint32_t num_cmd_slots = hba->cap >> 8 & 0xff;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax]
	shr	eax, 8
	and	eax, 255				; 000000ffH
	mov	DWORD PTR num_cmd_slots$[rsp], eax

; 140  : 	uint8_t support_spin = hba->cap & (1 << 27);

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax]
	and	eax, 134217728				; 08000000H
	mov	BYTE PTR support_spin$[rsp], al

; 141  : 
; 142  : 
; 143  : 	uint32_t pi = hba->pi;

	mov	rax, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rax+12]
	mov	DWORD PTR pi$[rsp], eax

; 144  : 	int i = 0;

	mov	DWORD PTR i$[rsp], 0
$LN10@AuAHCIInit:

; 145  : 	while (i < 32) {

	cmp	DWORD PTR i$[rsp], 32			; 00000020H
	jge	$LN9@AuAHCIInit

; 146  : 		if (pi & 1) {

	mov	eax, DWORD PTR pi$[rsp]
	and	eax, 1
	test	eax, eax
	je	$LN8@AuAHCIInit

; 147  : 			int dt = AuAHCICheckType(&hba->port[i]);

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 128				; 00000080H
	mov	rcx, QWORD PTR hba$[rsp]
	lea	rax, QWORD PTR [rcx+rax+256]
	mov	rcx, rax
	call	?AuAHCICheckType@@YAHPEAU_hba_port_@@@Z	; AuAHCICheckType
	mov	DWORD PTR dt$1[rsp], eax

; 148  : 			if (dt == AHCI_DEV_SATA) {

	cmp	DWORD PTR dt$1[rsp], 1
	jne	$LN7@AuAHCIInit

; 149  : 				AuTextOut("ahci sata drive found at port %d\n", i);

	mov	edx, DWORD PTR i$[rsp]
	lea	rcx, OFFSET FLAT:$SG4186
	call	AuTextOut

; 150  : 				hba->port[i].sctl &= ~PX_SCTL_IPM_MASK;

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 128				; 00000080H
	mov	rcx, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rcx+rax+300]
	and	eax, -4096				; fffff000H
	movsxd	rcx, DWORD PTR i$[rsp]
	imul	rcx, rcx, 128				; 00000080H
	mov	rdx, QWORD PTR hba$[rsp]
	mov	DWORD PTR [rdx+rcx+300], eax

; 151  : 				hba->port[i].sctl |= PX_SCTL_IPM_NONE;

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 128				; 00000080H
	mov	rcx, QWORD PTR hba$[rsp]
	mov	eax, DWORD PTR [rcx+rax+300]
	or	eax, 768				; 00000300H
	movsxd	rcx, DWORD PTR i$[rsp]
	imul	rcx, rcx, 128				; 00000080H
	mov	rdx, QWORD PTR hba$[rsp]
	mov	DWORD PTR [rdx+rcx+300], eax

; 152  : 				AuAHCIDiskInitialise(&hba->port[i]);

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 128				; 00000080H
	mov	rcx, QWORD PTR hba$[rsp]
	lea	rax, QWORD PTR [rcx+rax+256]
	mov	rcx, rax
	call	?AuAHCIDiskInitialise@@YAXPEAU_hba_port_@@@Z ; AuAHCIDiskInitialise
	jmp	SHORT $LN6@AuAHCIInit
$LN7@AuAHCIInit:

; 153  : 			}
; 154  : 			else if (dt == AHCI_DEV_SATAPI) {

	cmp	DWORD PTR dt$1[rsp], 4
	jne	SHORT $LN5@AuAHCIInit

; 155  : 				AuTextOut("ahci satapi drive found at port %d\n", i);

	mov	edx, DWORD PTR i$[rsp]
	lea	rcx, OFFSET FLAT:$SG4189
	call	AuTextOut
	jmp	SHORT $LN4@AuAHCIInit
$LN5@AuAHCIInit:

; 156  : 			}
; 157  : 			else if (dt == AHCI_DEV_SEMB) {

	cmp	DWORD PTR dt$1[rsp], 2
	jne	SHORT $LN3@AuAHCIInit

; 158  : 				AuTextOut("ahci semb drive found at port %d\n", i);

	mov	edx, DWORD PTR i$[rsp]
	lea	rcx, OFFSET FLAT:$SG4192
	call	AuTextOut
	jmp	SHORT $LN2@AuAHCIInit
$LN3@AuAHCIInit:

; 159  : 			}
; 160  : 			else if (dt == AHCI_DEV_PM) {

	cmp	DWORD PTR dt$1[rsp], 3
	jne	SHORT $LN1@AuAHCIInit

; 161  : 				AuTextOut("ahci pm drive found at port %d\n", i);

	mov	edx, DWORD PTR i$[rsp]
	lea	rcx, OFFSET FLAT:$SG4195
	call	AuTextOut
$LN1@AuAHCIInit:
$LN2@AuAHCIInit:
$LN4@AuAHCIInit:
$LN6@AuAHCIInit:
$LN8@AuAHCIInit:

; 162  : 			}
; 163  : 		}
; 164  : 		pi >>= 1;

	mov	eax, DWORD PTR pi$[rsp]
	shr	eax, 1
	mov	DWORD PTR pi$[rsp], eax

; 165  : 		i++;

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax

; 166  : 	}

	jmp	$LN10@AuAHCIInit
$LN9@AuAHCIInit:
$LN15@AuAHCIInit:

; 167  : }

	add	rsp, 152				; 00000098H
	ret	0
?AuAHCIInitialise@@YAXXZ ENDP				; AuAHCIInitialise
_TEXT	ENDS
END
