; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA	; __AuroraBasicAcpi
PUBLIC	?__PCIESupported@@3_NA				; __PCIESupported
PUBLIC	?__ACPIRSDP@@3PEAXEA				; __ACPIRSDP
_BSS	SEGMENT
?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA DQ 01H DUP (?) ; __AuroraBasicAcpi
?__PCIESupported@@3_NA DB 01H DUP (?)			; __PCIESupported
	ALIGN	8

?__ACPIRSDP@@3PEAXEA DQ 01H DUP (?)			; __ACPIRSDP
_BSS	ENDS
CONST	SEGMENT
$SG8792	DB	'[ACPI]: Data structures incomplete ', 0aH, 00H
	ORG $+3
$SG8795	DB	'[ACPI]: Already enabled ', 0aH, 00H
	ORG $+6
$SG8798	DB	'ACPI Enabled successfully', 0aH, 00H
	ORG $+5
$SG8802	DB	'ACPI Enabled successfully', 0aH, 00H
	ORG $+5
$SG8824	DB	'FADT Handler called ', 0aH, 00H
	ORG $+2
$SG8846	DB	'acpi cpu count -> %d ', 0aH, 00H
	ORG $+1
$SG8850	DB	'acpi ioapic base -> %x, gsi -> %d ', 0aH, 00H
	ORG $+4
$SG8854	DB	'acpi interrupt source override gsi -> %d, src-> %d ', 0aH
	DB	00H
	ORG $+3
$SG8884	DB	'FACP', 00H
	ORG $+3
$SG8885	DB	'FACP', 00H
	ORG $+3
$SG8887	DB	'acpi fadt supported ', 0aH, 00H
	ORG $+2
$SG8890	DB	'CIPA', 00H
	ORG $+3
$SG8891	DB	'APIC', 00H
	ORG $+3
$SG8893	DB	'acpi madt supported ', 0aH, 00H
	ORG $+2
$SG8896	DB	'SRAT', 00H
	ORG $+3
$SG8897	DB	'SRAT', 00H
	ORG $+3
$SG8898	DB	'acpi srat supported ', 0aH, 00H
	ORG $+2
$SG8901	DB	'SLIT', 00H
	ORG $+3
$SG8902	DB	'SLIT', 00H
	ORG $+3
$SG8903	DB	'acpi slit supported ', 0aH, 00H
	ORG $+2
$SG8906	DB	'MCFG', 00H
	ORG $+3
$SG8907	DB	'MCFG', 00H
	ORG $+3
$SG8908	DB	'acpi mcfg supported ', 0aH, 00H
	ORG $+2
$SG8912	DB	'HPET', 00H
	ORG $+3
$SG8913	DB	'HPET', 00H
	ORG $+3
$SG8914	DB	'acpi hpet supported ', 0aH, 00H
	ORG $+2
$SG8917	DB	'MCHI', 00H
	ORG $+3
$SG8918	DB	'MCHI', 00H
	ORG $+3
$SG8919	DB	'acpi management controller host interface supported', 0aH
	DB	00H
	ORG $+3
$SG8987	DB	'Failed to initialise acpi subsystem ', 0aH, 00H
	ORG $+2
$SG8989	DB	'Failed to load acpi tables ', 0aH, 00H
CONST	ENDS
PUBLIC	?AuACPIEnable@@YAXXZ				; AuACPIEnable
PUBLIC	?AuACPIInitialise@@YAXPEAX@Z			; AuACPIInitialise
PUBLIC	?AuACPIGetMCFG@@YAPEAUacpiMcfg@@XZ		; AuACPIGetMCFG
PUBLIC	?AuACPIPCIESupported@@YA_NXZ			; AuACPIPCIESupported
PUBLIC	?AuACPIGetRSDP@@YAPEAXXZ			; AuACPIGetRSDP
PUBLIC	?AuInitialiseACPISubsys@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ; AuInitialiseACPISubsys
PUBLIC	?AuGetCPUCount@@YAEXZ				; AuGetCPUCount
PUBLIC	?AuACPIPowerButtonEnable@@YAXXZ			; AuACPIPowerButtonEnable
PUBLIC	?search_s5@@YAPEAEPEAUacpiDsdt@@@Z		; search_s5
PUBLIC	?AuFADTHandler@@YAX_KPEAX@Z			; AuFADTHandler
PUBLIC	?AuACPIParseMADT@@YAXXZ				; AuACPIParseMADT
PUBLIC	??$raw_diff@U_acpi_apic_header_@@UacpiMadt@@@@YAHPEAU_acpi_apic_header_@@PEAUacpiMadt@@@Z ; raw_diff<_acpi_apic_header_,acpiMadt>
PUBLIC	??$raw_offset@PEAU_acpi_apic_header_@@PEAU1@@@YAPEAU_acpi_apic_header_@@PEAU0@H@Z ; raw_offset<_acpi_apic_header_ * __ptr64,_acpi_apic_header_ * __ptr64>
PUBLIC	??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS * __ptr64,_IMAGE_DOS_HEADER_ * __ptr64>
PUBLIC	??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ; raw_offset<_IMAGE_SECTION_HEADER * __ptr64,_IMAGE_OPTIONAL_HEADER_PE32PLUS * __ptr64>
PUBLIC	??$raw_offset@PEAXPEAE@@YAPEAXPEAEH@Z		; raw_offset<void * __ptr64,unsigned char * __ptr64>
EXTRN	AuHalRegisterIRQ:PROC
EXTRN	AuInterruptEnd:PROC
EXTRN	strlen:PROC
EXTRN	strncmp:PROC
EXTRN	strncpy:PROC
EXTRN	memset:PROC
EXTRN	memcpy:PROC
EXTRN	x64_inportw:PROC
EXTRN	x64_outportb:PROC
EXTRN	AuTextOut:PROC
EXTRN	kmalloc:PROC
EXTRN	AuMapPage:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	?AuKernelLinkDLL@@YAXPEAX@Z:PROC		; AuKernelLinkDLL
EXTRN	?AuKernelLinkImports@@YAXPEAX@Z:PROC		; AuKernelLinkImports
EXTRN	__imp_AcpiInitializeSubsystem:PROC
EXTRN	__imp_AcpiLoadTables:PROC
pdata	SEGMENT
$pdata$?AuACPIEnable@@YAXXZ DD imagerel $LN9
	DD	imagerel $LN9+269
	DD	imagerel $unwind$?AuACPIEnable@@YAXXZ
$pdata$?AuACPIInitialise@@YAXPEAX@Z DD imagerel $LN25
	DD	imagerel $LN25+1030
	DD	imagerel $unwind$?AuACPIInitialise@@YAXPEAX@Z
$pdata$?AuInitialiseACPISubsys@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z DD imagerel $LN14
	DD	imagerel $LN14+621
	DD	imagerel $unwind$?AuInitialiseACPISubsys@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z
$pdata$?search_s5@@YAPEAEPEAUacpiDsdt@@@Z DD imagerel $LN6
	DD	imagerel $LN6+104
	DD	imagerel $unwind$?search_s5@@YAPEAEPEAUacpiDsdt@@@Z
$pdata$?AuFADTHandler@@YAX_KPEAX@Z DD imagerel $LN3
	DD	imagerel $LN3+51
	DD	imagerel $unwind$?AuFADTHandler@@YAX_KPEAX@Z
$pdata$?AuACPIParseMADT@@YAXXZ DD imagerel $LN12
	DD	imagerel $LN12+291
	DD	imagerel $unwind$?AuACPIParseMADT@@YAXXZ
pdata	ENDS
xdata	SEGMENT
$unwind$?AuACPIEnable@@YAXXZ DD 010401H
	DD	06204H
$unwind$?AuACPIInitialise@@YAXPEAX@Z DD 010901H
	DD	0c209H
$unwind$?AuInitialiseACPISubsys@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z DD 020c01H
	DD	013010cH
$unwind$?search_s5@@YAPEAEPEAUacpiDsdt@@@Z DD 010901H
	DD	02209H
$unwind$?AuFADTHandler@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?AuACPIParseMADT@@YAXXZ DD 010401H
	DD	0a204H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\basehdr\stdint.h
;	COMDAT ??$raw_offset@PEAXPEAE@@YAPEAXPEAEH@Z
_TEXT	SEGMENT
p1$ = 8
offset$ = 16
??$raw_offset@PEAXPEAE@@YAPEAXPEAEH@Z PROC		; raw_offset<void * __ptr64,unsigned char * __ptr64>, COMDAT

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
??$raw_offset@PEAXPEAE@@YAPEAXPEAEH@Z ENDP		; raw_offset<void * __ptr64,unsigned char * __ptr64>
_TEXT	ENDS
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
; File e:\xeneva project\aurora\basehdr\stdint.h
;	COMDAT ??$raw_offset@PEAU_acpi_apic_header_@@PEAU1@@@YAPEAU_acpi_apic_header_@@PEAU0@H@Z
_TEXT	SEGMENT
p1$ = 8
offset$ = 16
??$raw_offset@PEAU_acpi_apic_header_@@PEAU1@@@YAPEAU_acpi_apic_header_@@PEAU0@H@Z PROC ; raw_offset<_acpi_apic_header_ * __ptr64,_acpi_apic_header_ * __ptr64>, COMDAT

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
??$raw_offset@PEAU_acpi_apic_header_@@PEAU1@@@YAPEAU_acpi_apic_header_@@PEAU0@H@Z ENDP ; raw_offset<_acpi_apic_header_ * __ptr64,_acpi_apic_header_ * __ptr64>
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\basehdr\stdint.h
;	COMDAT ??$raw_diff@U_acpi_apic_header_@@UacpiMadt@@@@YAHPEAU_acpi_apic_header_@@PEAUacpiMadt@@@Z
_TEXT	SEGMENT
p1$ = 8
p2$ = 16
??$raw_diff@U_acpi_apic_header_@@UacpiMadt@@@@YAHPEAU_acpi_apic_header_@@PEAUacpiMadt@@@Z PROC ; raw_diff<_acpi_apic_header_,acpiMadt>, COMDAT

; 203  : 	{

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx

; 204  : 		return (intptr_t)p1 - (intptr_t)p2;

	mov	eax, DWORD PTR p2$[rsp]
	mov	ecx, DWORD PTR p1$[rsp]
	sub	ecx, eax
	mov	eax, ecx

; 205  : 	};

	ret	0
??$raw_diff@U_acpi_apic_header_@@UacpiMadt@@@@YAHPEAU_acpi_apic_header_@@PEAUacpiMadt@@@Z ENDP ; raw_diff<_acpi_apic_header_,acpiMadt>
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\basicacpi.cpp
_TEXT	SEGMENT
tv76 = 32
apic_header$ = 40
lapic$1 = 48
io_apic$2 = 56
over$3 = 64
?AuACPIParseMADT@@YAXXZ PROC				; AuACPIParseMADT

; 117  : void AuACPIParseMADT() {

$LN12:
	sub	rsp, 88					; 00000058H

; 118  : 	acpiApicHeader* apic_header = (acpiApicHeader*)__AuroraBasicAcpi->madt->entry;

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+1]
	add	rax, 44					; 0000002cH
	mov	QWORD PTR apic_header$[rsp], rax
$LN9@AuACPIPars:

; 119  : 
; 120  : 	while (raw_diff(apic_header, __AuroraBasicAcpi->madt) < __AuroraBasicAcpi->madt->header.length) {

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rdx, QWORD PTR [rax+1]
	mov	rcx, QWORD PTR apic_header$[rsp]
	call	??$raw_diff@U_acpi_apic_header_@@UacpiMadt@@@@YAHPEAU_acpi_apic_header_@@PEAUacpiMadt@@@Z ; raw_diff<_acpi_apic_header_,acpiMadt>
	mov	rcx, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rcx, QWORD PTR [rcx+1]
	cmp	eax, DWORD PTR [rcx+4]
	jae	$LN8@AuACPIPars

; 121  : 		switch (apic_header->type) {

	mov	rax, QWORD PTR apic_header$[rsp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR tv76[rsp], al
	cmp	BYTE PTR tv76[rsp], 0
	je	SHORT $LN5@AuACPIPars
	cmp	BYTE PTR tv76[rsp], 1
	je	SHORT $LN3@AuACPIPars
	cmp	BYTE PTR tv76[rsp], 2
	je	SHORT $LN2@AuACPIPars
	jmp	$LN1@AuACPIPars
$LN5@AuACPIPars:

; 122  : 		case ACPI_APICTYPE_LAPIC: {
; 123  : 									  acpiLocalApic* lapic = (acpiLocalApic*)apic_header;

	mov	rax, QWORD PTR apic_header$[rsp]
	mov	QWORD PTR lapic$1[rsp], rax

; 124  : 									  if (lapic->procId != 0)

	mov	rax, QWORD PTR lapic$1[rsp]
	movzx	eax, BYTE PTR [rax+2]
	test	eax, eax
	je	SHORT $LN4@AuACPIPars

; 125  : 										  __AuroraBasicAcpi->num_cpu = lapic->procId;

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rcx, QWORD PTR lapic$1[rsp]
	movzx	ecx, BYTE PTR [rcx+2]
	mov	BYTE PTR [rax+45], cl
$LN4@AuACPIPars:

; 126  : 									  AuTextOut("acpi cpu count -> %d \n", __AuroraBasicAcpi->num_cpu);

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	movzx	eax, BYTE PTR [rax+45]
	mov	edx, eax
	lea	rcx, OFFSET FLAT:$SG8846
	call	AuTextOut

; 127  : 									  break;

	jmp	SHORT $LN6@AuACPIPars
$LN3@AuACPIPars:

; 128  : 		}
; 129  : 		case ACPI_APICTYPE_IOAPIC:{
; 130  : 									  acpiIoApic* io_apic = (acpiIoApic*)apic_header;

	mov	rax, QWORD PTR apic_header$[rsp]
	mov	QWORD PTR io_apic$2[rsp], rax

; 131  : 									  AuTextOut("acpi ioapic base -> %x, gsi -> %d \n", io_apic->ioApicAddr, io_apic->gsiBase);

	mov	rax, QWORD PTR io_apic$2[rsp]
	mov	r8d, DWORD PTR [rax+8]
	mov	rax, QWORD PTR io_apic$2[rsp]
	mov	edx, DWORD PTR [rax+4]
	lea	rcx, OFFSET FLAT:$SG8850
	call	AuTextOut

; 132  : 									  break;

	jmp	SHORT $LN6@AuACPIPars
$LN2@AuACPIPars:

; 133  : 		}
; 134  : 		case ACPI_APICTYPE_ISOVER:{
; 135  : 									  apic_interrupt_override* over = (apic_interrupt_override*)apic_header;

	mov	rax, QWORD PTR apic_header$[rsp]
	mov	QWORD PTR over$3[rsp], rax

; 136  : 									  AuTextOut("acpi interrupt source override gsi -> %d, src-> %d \n", over->interrupt, over->source);

	mov	rax, QWORD PTR over$3[rsp]
	movzx	eax, BYTE PTR [rax+3]
	mov	r8d, eax
	mov	rax, QWORD PTR over$3[rsp]
	mov	edx, DWORD PTR [rax+4]
	lea	rcx, OFFSET FLAT:$SG8854
	call	AuTextOut
$LN1@AuACPIPars:
$LN6@AuACPIPars:

; 137  : 									  break;
; 138  : 		}
; 139  : 
; 140  : 		default:
; 141  : 			break;
; 142  : 		}
; 143  : 
; 144  : 		apic_header = raw_offset<acpiApicHeader*>(apic_header, apic_header->length);

	mov	rax, QWORD PTR apic_header$[rsp]
	movzx	eax, BYTE PTR [rax+1]
	mov	edx, eax
	mov	rcx, QWORD PTR apic_header$[rsp]
	call	??$raw_offset@PEAU_acpi_apic_header_@@PEAU1@@@YAPEAU_acpi_apic_header_@@PEAU0@H@Z ; raw_offset<_acpi_apic_header_ * __ptr64,_acpi_apic_header_ * __ptr64>
	mov	QWORD PTR apic_header$[rsp], rax

; 145  : 	}

	jmp	$LN9@AuACPIPars
$LN8@AuACPIPars:

; 146  : }

	add	rsp, 88					; 00000058H
	ret	0
?AuACPIParseMADT@@YAXXZ ENDP				; AuACPIParseMADT
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\basicacpi.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?AuFADTHandler@@YAX_KPEAX@Z PROC			; AuFADTHandler

; 108  : void AuFADTHandler(size_t v, void* p) {

$LN3:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 109  : 	AuTextOut("FADT Handler called \n");

	lea	rcx, OFFSET FLAT:$SG8824
	call	AuTextOut

; 110  : 	AuInterruptEnd(__AuroraBasicAcpi->fadt->sciInt);

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	movzx	ecx, BYTE PTR [rax+46]
	call	AuInterruptEnd

; 111  : }

	add	rsp, 40					; 00000028H
	ret	0
?AuFADTHandler@@YAX_KPEAX@Z ENDP			; AuFADTHandler
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\basicacpi.cpp
_TEXT	SEGMENT
l$ = 0
tv72 = 4
S5$ = 8
header$ = 32
?search_s5@@YAPEAEPEAUacpiDsdt@@@Z PROC			; search_s5

; 91   : uint8_t* search_s5(acpiDsdt* header) {

$LN6:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24

; 92   : 	uint32_t l;
; 93   : 	uint32_t* S5;
; 94   : 
; 95   : 	l = header->header.length - sizeof(acpiDsdt);

	mov	rax, QWORD PTR header$[rsp]
	mov	eax, DWORD PTR [rax+4]
	sub	rax, 36					; 00000024H
	mov	DWORD PTR l$[rsp], eax

; 96   : 	S5 = (uint32_t*)(header + sizeof(acpiDsdt));

	mov	rax, QWORD PTR header$[rsp]
	add	rax, 1296				; 00000510H
	mov	QWORD PTR S5$[rsp], rax
$LN3@search_s5:

; 97   : 	while (l--) {

	mov	eax, DWORD PTR l$[rsp]
	mov	DWORD PTR tv72[rsp], eax
	mov	eax, DWORD PTR l$[rsp]
	dec	eax
	mov	DWORD PTR l$[rsp], eax
	cmp	DWORD PTR tv72[rsp], 0
	je	SHORT $LN2@search_s5

; 98   : 		if (*S5 == (uint32_t)'_5S_') {

	mov	rax, QWORD PTR S5$[rsp]
	cmp	DWORD PTR [rax], 1597330271		; 5f35535fH
	jne	SHORT $LN1@search_s5

; 99   : 			return (uint8_t*)S5;

	mov	rax, QWORD PTR S5$[rsp]
	jmp	SHORT $LN4@search_s5
$LN1@search_s5:

; 100  : 		}
; 101  : 		S5 = (uint32_t*)((uint32_t)S5 + 1);

	mov	eax, DWORD PTR S5$[rsp]
	inc	eax
	mov	eax, eax
	mov	QWORD PTR S5$[rsp], rax

; 102  : 	}

	jmp	SHORT $LN3@search_s5
$LN2@search_s5:

; 103  : 
; 104  : 	return (uint8_t*)NULL;

	xor	eax, eax
$LN4@search_s5:

; 105  : }

	add	rsp, 24
	ret	0
?search_s5@@YAPEAEPEAUacpiDsdt@@@Z ENDP			; search_s5
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\basicacpi.cpp
_TEXT	SEGMENT
?AuACPIPowerButtonEnable@@YAXXZ PROC			; AuACPIPowerButtonEnable

; 57   : 	__AuroraBasicAcpi->fadt->pm1aEventBlock = (1<<9) |  ACPI_POWER_BUTTON_ENABLE | 1<<5;

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	mov	DWORD PTR [rax+56], 800			; 00000320H

; 58   : }

	ret	0
?AuACPIPowerButtonEnable@@YAXXZ ENDP			; AuACPIPowerButtonEnable
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\basicacpi.cpp
_TEXT	SEGMENT
?AuGetCPUCount@@YAEXZ PROC				; AuGetCPUCount

; 297  : 	return __AuroraBasicAcpi->num_cpu;

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	movzx	eax, BYTE PTR [rax+45]

; 298  : }

	ret	0
?AuGetCPUCount@@YAEXZ ENDP				; AuGetCPUCount
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\basicacpi.cpp
_TEXT	SEGMENT
j$1 = 32
status$ = 36
i$2 = 40
ntHeaders$ = 48
imageBase$ = 56
i$3 = 64
secthdr$ = 72
dos_header$ = 80
hdrsz$ = 88
load_addr$4 = 96
sectSize$5 = 104
tv143 = 112
tv151 = 120
tv89 = 128
tv157 = 136
info$ = 160
?AuInitialiseACPISubsys@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z PROC ; AuInitialiseACPISubsys

; 260  : void AuInitialiseACPISubsys(KERNEL_BOOT_INFO *info) {

$LN14:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 152				; 00000098H

; 261  : 	/* get the image size and base address */
; 262  : 	PIMAGE_DOS_HEADER dos_header = (PIMAGE_DOS_HEADER)info->driver_entry1;

	mov	rax, QWORD PTR info$[rsp]
	mov	rax, QWORD PTR [rax+114]
	mov	QWORD PTR dos_header$[rsp], rax

; 263  : 	PIMAGE_NT_HEADERS ntHeaders = raw_offset<PIMAGE_NT_HEADERS>(dos_header, dos_header->e_lfanew);

	mov	rax, QWORD PTR dos_header$[rsp]
	movzx	eax, WORD PTR [rax+60]
	mov	edx, eax
	mov	rcx, QWORD PTR dos_header$[rsp]
	call	??$raw_offset@PEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@@@YAPEAU_IMAGE_NT_HEADERS_PE32PLUS@@PEAU_IMAGE_DOS_HEADER_@@H@Z ; raw_offset<_IMAGE_NT_HEADERS_PE32PLUS * __ptr64,_IMAGE_DOS_HEADER_ * __ptr64>
	mov	QWORD PTR ntHeaders$[rsp], rax

; 264  : 	PSECTION_HEADER secthdr = raw_offset<PSECTION_HEADER>(&ntHeaders->OptionalHeader, ntHeaders->FileHeader.SizeOfOptionaHeader);

	mov	rax, QWORD PTR ntHeaders$[rsp]
	movzx	eax, WORD PTR [rax+20]
	mov	rcx, QWORD PTR ntHeaders$[rsp]
	add	rcx, 24
	mov	edx, eax
	call	??$raw_offset@PEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@@@YAPEAU_IMAGE_SECTION_HEADER@@PEAU_IMAGE_OPTIONAL_HEADER_PE32PLUS@@H@Z ; raw_offset<_IMAGE_SECTION_HEADER * __ptr64,_IMAGE_OPTIONAL_HEADER_PE32PLUS * __ptr64>
	mov	QWORD PTR secthdr$[rsp], rax

; 265  : 	size_t imageBase = ntHeaders->OptionalHeader.ImageBase;

	mov	rax, QWORD PTR ntHeaders$[rsp]
	mov	rax, QWORD PTR [rax+48]
	mov	QWORD PTR imageBase$[rsp], rax

; 266  : 	size_t hdrsz = ntHeaders->OptionalHeader.SizeOfHeaders;

	mov	rax, QWORD PTR ntHeaders$[rsp]
	mov	eax, DWORD PTR [rax+84]
	mov	QWORD PTR hdrsz$[rsp], rax

; 267  : 
; 268  : 	for (size_t i = 0; i < hdrsz / 4096 + 1; i++)

	mov	QWORD PTR i$3[rsp], 0
	jmp	SHORT $LN11@AuInitiali
$LN10@AuInitiali:
	mov	rax, QWORD PTR i$3[rsp]
	inc	rax
	mov	QWORD PTR i$3[rsp], rax
$LN11@AuInitiali:
	xor	edx, edx
	mov	rax, QWORD PTR hdrsz$[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	inc	rax
	cmp	QWORD PTR i$3[rsp], rax
	jae	SHORT $LN9@AuInitiali

; 269  : 		AuMapPage((uint64_t)AuPmmngrAlloc(), imageBase + i * 4096, 0);

	imul	rax, QWORD PTR i$3[rsp], 4096		; 00001000H
	mov	rcx, QWORD PTR imageBase$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR tv89[rsp], rax
	call	AuPmmngrAlloc
	xor	r8d, r8d
	mov	rcx, QWORD PTR tv89[rsp]
	mov	rdx, rcx
	mov	rcx, rax
	call	AuMapPage
	jmp	SHORT $LN10@AuInitiali
$LN9@AuInitiali:

; 270  : 	memcpy((void*)imageBase, info->driver_entry1, hdrsz);

	mov	r8, QWORD PTR hdrsz$[rsp]
	mov	rax, QWORD PTR info$[rsp]
	mov	rdx, QWORD PTR [rax+114]
	mov	rcx, QWORD PTR imageBase$[rsp]
	call	memcpy

; 271  : 
; 272  : 	for (size_t i = 0; i < ntHeaders->FileHeader.NumberOfSections; i++) {

	mov	QWORD PTR i$2[rsp], 0
	jmp	SHORT $LN8@AuInitiali
$LN7@AuInitiali:
	mov	rax, QWORD PTR i$2[rsp]
	inc	rax
	mov	QWORD PTR i$2[rsp], rax
$LN8@AuInitiali:
	mov	rax, QWORD PTR ntHeaders$[rsp]
	movzx	eax, WORD PTR [rax+6]
	cmp	QWORD PTR i$2[rsp], rax
	jae	$LN6@AuInitiali

; 273  : 		size_t load_addr = imageBase + secthdr[i].VirtualAddress;

	imul	rax, QWORD PTR i$2[rsp], 40		; 00000028H
	mov	rcx, QWORD PTR secthdr$[rsp]
	mov	eax, DWORD PTR [rcx+rax+12]
	mov	rcx, QWORD PTR imageBase$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR load_addr$4[rsp], rax

; 274  : 		size_t sectSize = secthdr[i].SizeOfRawData;

	imul	rax, QWORD PTR i$2[rsp], 40		; 00000028H
	mov	rcx, QWORD PTR secthdr$[rsp]
	mov	eax, DWORD PTR [rcx+rax+16]
	mov	QWORD PTR sectSize$5[rsp], rax

; 275  : 		for (int j = 0; j < sectSize / 4096 + 4; j++)

	mov	DWORD PTR j$1[rsp], 0
	jmp	SHORT $LN5@AuInitiali
$LN4@AuInitiali:
	mov	eax, DWORD PTR j$1[rsp]
	inc	eax
	mov	DWORD PTR j$1[rsp], eax
$LN5@AuInitiali:
	movsxd	rax, DWORD PTR j$1[rsp]
	mov	QWORD PTR tv143[rsp], rax
	xor	edx, edx
	mov	rax, QWORD PTR sectSize$5[rsp]
	mov	ecx, 4096				; 00001000H
	div	rcx
	add	rax, 4
	mov	rcx, QWORD PTR tv143[rsp]
	cmp	rcx, rax
	jae	SHORT $LN3@AuInitiali

; 276  : 			AuMapPage((uint64_t)AuPmmngrAlloc(), load_addr + j * 4096, NULL);

	imul	eax, DWORD PTR j$1[rsp], 4096		; 00001000H
	cdqe
	mov	rcx, QWORD PTR load_addr$4[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR tv151[rsp], rax
	call	AuPmmngrAlloc
	xor	r8d, r8d
	mov	rcx, QWORD PTR tv151[rsp]
	mov	rdx, rcx
	mov	rcx, rax
	call	AuMapPage
	jmp	SHORT $LN4@AuInitiali
$LN3@AuInitiali:

; 277  : 
; 278  : 		memcpy((void*)load_addr, raw_offset<void*>(info->driver_entry1, secthdr[i].PointerToRawData), secthdr[i].SizeOfRawData);

	imul	rax, QWORD PTR i$2[rsp], 40		; 00000028H
	mov	rcx, QWORD PTR secthdr$[rsp]
	mov	eax, DWORD PTR [rcx+rax+16]
	mov	QWORD PTR tv157[rsp], rax
	imul	rcx, QWORD PTR i$2[rsp], 40		; 00000028H
	mov	rdx, QWORD PTR secthdr$[rsp]
	mov	edx, DWORD PTR [rdx+rcx+20]
	mov	rcx, QWORD PTR info$[rsp]
	mov	rcx, QWORD PTR [rcx+114]
	call	??$raw_offset@PEAXPEAE@@YAPEAXPEAEH@Z	; raw_offset<void * __ptr64,unsigned char * __ptr64>
	mov	rcx, QWORD PTR tv157[rsp]
	mov	r8, rcx
	mov	rdx, rax
	mov	rcx, QWORD PTR load_addr$4[rsp]
	call	memcpy

; 279  : 	}

	jmp	$LN7@AuInitiali
$LN6@AuInitiali:

; 280  : 
; 281  : 	AuKernelLinkImports((void*)imageBase);

	mov	rcx, QWORD PTR imageBase$[rsp]
	call	?AuKernelLinkImports@@YAXPEAX@Z		; AuKernelLinkImports

; 282  : 	AuKernelLinkDLL((void*)imageBase);

	mov	rcx, QWORD PTR imageBase$[rsp]
	call	?AuKernelLinkDLL@@YAXPEAX@Z		; AuKernelLinkDLL

; 283  : 	
; 284  : 	ACPI_STATUS status = AcpiInitializeSubsystem();

	call	QWORD PTR __imp_AcpiInitializeSubsystem
	mov	DWORD PTR status$[rsp], eax

; 285  : 	if (ACPI_FAILURE(status))

	cmp	DWORD PTR status$[rsp], 0
	je	SHORT $LN2@AuInitiali

; 286  : 		AuTextOut("Failed to initialise acpi subsystem \n");

	lea	rcx, OFFSET FLAT:$SG8987
	call	AuTextOut
$LN2@AuInitiali:

; 287  : 	status = AcpiLoadTables();

	call	QWORD PTR __imp_AcpiLoadTables
	mov	DWORD PTR status$[rsp], eax

; 288  : 	if (ACPI_FAILURE(status))

	cmp	DWORD PTR status$[rsp], 0
	je	SHORT $LN1@AuInitiali

; 289  : 		AuTextOut("Failed to load acpi tables \n");

	lea	rcx, OFFSET FLAT:$SG8989
	call	AuTextOut
$LN1@AuInitiali:

; 290  : }

	add	rsp, 152				; 00000098H
	ret	0
?AuInitialiseACPISubsys@@YAXPEAU_KERNEL_BOOT_INFO_@@@Z ENDP ; AuInitialiseACPISubsys
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\basicacpi.cpp
_TEXT	SEGMENT
?AuACPIGetRSDP@@YAPEAXXZ PROC				; AuACPIGetRSDP

; 252  : 	return __ACPIRSDP;

	mov	rax, QWORD PTR ?__ACPIRSDP@@3PEAXEA	; __ACPIRSDP

; 253  : }

	ret	0
?AuACPIGetRSDP@@YAPEAXXZ ENDP				; AuACPIGetRSDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\basicacpi.cpp
_TEXT	SEGMENT
?AuACPIPCIESupported@@YA_NXZ PROC			; AuACPIPCIESupported

; 244  : 	return __PCIESupported;

	movzx	eax, BYTE PTR ?__PCIESupported@@3_NA	; __PCIESupported

; 245  : }

	ret	0
?AuACPIPCIESupported@@YA_NXZ ENDP			; AuACPIPCIESupported
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\basicacpi.cpp
_TEXT	SEGMENT
?AuACPIGetMCFG@@YAPEAUacpiMcfg@@XZ PROC			; AuACPIGetMCFG

; 236  : 	return __AuroraBasicAcpi->mcfg;

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+33]

; 237  : }

	ret	0
?AuACPIGetMCFG@@YAPEAUacpiMcfg@@XZ ENDP			; AuACPIGetMCFG
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\basicacpi.cpp
_TEXT	SEGMENT
count$1 = 32
entries$ = 36
sig$ = 40
S5Block$2 = 48
header$ = 56
rsdp$ = 64
rsdt$ = 72
xsdt$ = 80
acpi_base$ = 112
?AuACPIInitialise@@YAXPEAX@Z PROC			; AuACPIInitialise

; 153  : void AuACPIInitialise(void* acpi_base) {

$LN25:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 104				; 00000068H

; 154  : 	__AuroraBasicAcpi = (AuroraBasicACPI*)kmalloc(sizeof(AuroraBasicACPI));

	mov	ecx, 46					; 0000002eH
	call	kmalloc
	mov	QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA, rax ; __AuroraBasicAcpi

; 155  : 	memset(__AuroraBasicAcpi, 0, sizeof(AuroraBasicACPI));

	mov	r8d, 46					; 0000002eH
	xor	edx, edx
	mov	rcx, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	call	memset

; 156  : 	__ACPIRSDP = acpi_base;

	mov	rax, QWORD PTR acpi_base$[rsp]
	mov	QWORD PTR ?__ACPIRSDP@@3PEAXEA, rax	; __ACPIRSDP

; 157  : 	acpiRsdp *rsdp = (acpiRsdp*)acpi_base;

	mov	rax, QWORD PTR acpi_base$[rsp]
	mov	QWORD PTR rsdp$[rsp], rax

; 158  : 	acpiRsdt* rsdt = (acpiRsdt*)rsdp->rsdtAddr;

	mov	rax, QWORD PTR rsdp$[rsp]
	mov	eax, DWORD PTR [rax+16]
	mov	QWORD PTR rsdt$[rsp], rax

; 159  : 	acpiXsdt* xsdt = (acpiXsdt*)rsdp->xsdtAddr;

	mov	rax, QWORD PTR rsdp$[rsp]
	mov	rax, QWORD PTR [rax+24]
	mov	QWORD PTR xsdt$[rsp], rax

; 160  : 	char sig[5];
; 161  : 	int entries = (rsdt->header.length - sizeof(rsdt->header)) / 4;

	mov	rax, QWORD PTR rsdt$[rsp]
	mov	eax, DWORD PTR [rax+4]
	sub	rax, 36					; 00000024H
	xor	edx, edx
	mov	ecx, 4
	div	rcx
	mov	DWORD PTR entries$[rsp], eax

; 162  : 	acpiSysDescHeader* header = NULL;

	mov	QWORD PTR header$[rsp], 0

; 163  : 	__PCIESupported = false;

	mov	BYTE PTR ?__PCIESupported@@3_NA, 0	; __PCIESupported

; 164  : 
; 165  : 	for (int count = 0; count < entries; count++) {

	mov	DWORD PTR count$1[rsp], 0
	jmp	SHORT $LN22@AuACPIInit
$LN21@AuACPIInit:
	mov	eax, DWORD PTR count$1[rsp]
	inc	eax
	mov	DWORD PTR count$1[rsp], eax
$LN22@AuACPIInit:
	mov	eax, DWORD PTR entries$[rsp]
	cmp	DWORD PTR count$1[rsp], eax
	jge	$LN20@AuACPIInit

; 166  : 		header = (acpiSysDescHeader*)rsdt->entry[count];

	movsxd	rax, DWORD PTR count$1[rsp]
	mov	rcx, QWORD PTR rsdt$[rsp]
	mov	eax, DWORD PTR [rcx+rax*4+36]
	mov	QWORD PTR header$[rsp], rax

; 167  : 		strncpy(sig, header->signature, 4);

	mov	rax, QWORD PTR header$[rsp]
	mov	r8d, 4
	mov	rdx, rax
	lea	rcx, QWORD PTR sig$[rsp]
	call	strncpy

; 168  : 		sig[4] = '\0';

	mov	eax, 1
	imul	rax, rax, 4
	mov	BYTE PTR sig$[rsp+rax], 0

; 169  : 
; 170  : 		if (!strncmp(sig, ACPI_SIG_FADT, strlen(ACPI_SIG_FADT))) {

	lea	rcx, OFFSET FLAT:$SG8884
	call	strlen
	mov	r8, rax
	lea	rdx, OFFSET FLAT:$SG8885
	lea	rcx, QWORD PTR sig$[rsp]
	call	strncmp
	test	eax, eax
	jne	SHORT $LN19@AuACPIInit

; 171  : 			__AuroraBasicAcpi->fadt = (acpiFadt*)header;

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rcx, QWORD PTR header$[rsp]
	mov	QWORD PTR [rax+9], rcx

; 172  : 			AuTextOut("acpi fadt supported \n");

	lea	rcx, OFFSET FLAT:$SG8887
	call	AuTextOut
	jmp	$LN18@AuACPIInit
$LN19@AuACPIInit:

; 173  : 		}
; 174  : 
; 175  : 		else if (!strncmp(sig, ACPI_SIG_APIC, strlen("CIPA"))) {

	lea	rcx, OFFSET FLAT:$SG8890
	call	strlen
	mov	r8, rax
	lea	rdx, OFFSET FLAT:$SG8891
	lea	rcx, QWORD PTR sig$[rsp]
	call	strncmp
	test	eax, eax
	jne	SHORT $LN17@AuACPIInit

; 176  : 			__AuroraBasicAcpi->madt = (acpiMadt*)header;

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rcx, QWORD PTR header$[rsp]
	mov	QWORD PTR [rax+1], rcx

; 177  : 			AuTextOut("acpi madt supported \n");

	lea	rcx, OFFSET FLAT:$SG8893
	call	AuTextOut
	jmp	$LN16@AuACPIInit
$LN17@AuACPIInit:

; 178  : 		}
; 179  : 		else if (!strncmp(sig, ACPI_SIG_SRAT, strlen(ACPI_SIG_SRAT))) {

	lea	rcx, OFFSET FLAT:$SG8896
	call	strlen
	mov	r8, rax
	lea	rdx, OFFSET FLAT:$SG8897
	lea	rcx, QWORD PTR sig$[rsp]
	call	strncmp
	test	eax, eax
	jne	SHORT $LN15@AuACPIInit

; 180  : 			AuTextOut("acpi srat supported \n");

	lea	rcx, OFFSET FLAT:$SG8898
	call	AuTextOut
	jmp	$LN14@AuACPIInit
$LN15@AuACPIInit:

; 181  : 			/* here needs to parse the srat table for
; 182  : 			 * numa memory */
; 183  : 		}
; 184  : 		else if (!strncmp(sig, ACPI_SIG_SLIT, strlen(ACPI_SIG_SLIT))) {

	lea	rcx, OFFSET FLAT:$SG8901
	call	strlen
	mov	r8, rax
	lea	rdx, OFFSET FLAT:$SG8902
	lea	rcx, QWORD PTR sig$[rsp]
	call	strncmp
	test	eax, eax
	jne	SHORT $LN13@AuACPIInit

; 185  : 			AuTextOut("acpi slit supported \n");

	lea	rcx, OFFSET FLAT:$SG8903
	call	AuTextOut
	jmp	$LN12@AuACPIInit
$LN13@AuACPIInit:

; 186  : 		}
; 187  : 		else if (!strncmp(sig, ACPI_SIG_MCFG, strlen(ACPI_SIG_MCFG))) {

	lea	rcx, OFFSET FLAT:$SG8906
	call	strlen
	mov	r8, rax
	lea	rdx, OFFSET FLAT:$SG8907
	lea	rcx, QWORD PTR sig$[rsp]
	call	strncmp
	test	eax, eax
	jne	SHORT $LN11@AuACPIInit

; 188  : 			AuTextOut("acpi mcfg supported \n");

	lea	rcx, OFFSET FLAT:$SG8908
	call	AuTextOut

; 189  : 			__AuroraBasicAcpi->mcfg = (acpiMcfg*)header;

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rcx, QWORD PTR header$[rsp]
	mov	QWORD PTR [rax+33], rcx

; 190  : 			__PCIESupported = true;

	mov	BYTE PTR ?__PCIESupported@@3_NA, 1	; __PCIESupported
	jmp	SHORT $LN10@AuACPIInit
$LN11@AuACPIInit:

; 191  : 		}
; 192  : 		else if (!strncmp(sig, ACPI_SIG_HPET, strlen(ACPI_SIG_HPET))) {

	lea	rcx, OFFSET FLAT:$SG8912
	call	strlen
	mov	r8, rax
	lea	rdx, OFFSET FLAT:$SG8913
	lea	rcx, QWORD PTR sig$[rsp]
	call	strncmp
	test	eax, eax
	jne	SHORT $LN9@AuACPIInit

; 193  : 			AuTextOut("acpi hpet supported \n");

	lea	rcx, OFFSET FLAT:$SG8914
	call	AuTextOut
	jmp	SHORT $LN8@AuACPIInit
$LN9@AuACPIInit:

; 194  : 		}
; 195  : 		else if (!strncmp(sig, ACPI_SIG_MCHI, strlen(ACPI_SIG_MCHI))) {

	lea	rcx, OFFSET FLAT:$SG8917
	call	strlen
	mov	r8, rax
	lea	rdx, OFFSET FLAT:$SG8918
	lea	rcx, QWORD PTR sig$[rsp]
	call	strncmp
	test	eax, eax
	jne	SHORT $LN7@AuACPIInit

; 196  : 			AuTextOut("acpi management controller host interface supported\n");

	lea	rcx, OFFSET FLAT:$SG8919
	call	AuTextOut
$LN7@AuACPIInit:
$LN8@AuACPIInit:
$LN10@AuACPIInit:
$LN12@AuACPIInit:
$LN14@AuACPIInit:
$LN16@AuACPIInit:
$LN18@AuACPIInit:

; 197  : 		}
; 198  : 	}

	jmp	$LN21@AuACPIInit
$LN20@AuACPIInit:

; 199  : 
; 200  : 	if (__AuroraBasicAcpi->fadt && __AuroraBasicAcpi->fadt->facsAddr) 

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	cmp	QWORD PTR [rax+9], 0
	je	SHORT $LN6@AuACPIInit
	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	cmp	DWORD PTR [rax+36], 0
	je	SHORT $LN6@AuACPIInit

; 201  : 		__AuroraBasicAcpi->facs = (acpiFacs*)__AuroraBasicAcpi->fadt->facsAddr;

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	mov	eax, DWORD PTR [rax+36]
	mov	rcx, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	QWORD PTR [rcx+17], rax
$LN6@AuACPIInit:

; 202  : 
; 203  : 	if (__AuroraBasicAcpi->fadt && __AuroraBasicAcpi->fadt->dsdtAddr) {

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	cmp	QWORD PTR [rax+9], 0
	je	$LN5@AuACPIInit
	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	cmp	DWORD PTR [rax+40], 0
	je	$LN5@AuACPIInit

; 204  : 		__AuroraBasicAcpi->dsdt = (acpiDsdt*)__AuroraBasicAcpi->fadt->dsdtAddr;

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	mov	eax, DWORD PTR [rax+40]
	mov	rcx, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	QWORD PTR [rcx+25], rax

; 205  : 		AuHalRegisterIRQ(__AuroraBasicAcpi->fadt->sciInt, AuFADTHandler, __AuroraBasicAcpi->fadt->sciInt, false);

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	mov	rcx, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rcx, QWORD PTR [rcx+9]
	movzx	ecx, WORD PTR [rcx+46]
	xor	r9d, r9d
	movzx	r8d, BYTE PTR [rax+46]
	lea	rdx, OFFSET FLAT:?AuFADTHandler@@YAX_KPEAX@Z ; AuFADTHandler
	call	AuHalRegisterIRQ

; 206  : 
; 207  : 		uint8_t *S5Block = search_s5(__AuroraBasicAcpi->dsdt);

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rcx, QWORD PTR [rax+25]
	call	?search_s5@@YAPEAEPEAUacpiDsdt@@@Z	; search_s5
	mov	QWORD PTR S5Block$2[rsp], rax

; 208  : 		if (S5Block) {

	cmp	QWORD PTR S5Block$2[rsp], 0
	je	$LN4@AuACPIInit

; 209  : 			S5Block += 4;

	mov	rax, QWORD PTR S5Block$2[rsp]
	add	rax, 4
	mov	QWORD PTR S5Block$2[rsp], rax

; 210  : 			S5Block += ((*S5Block & 0xC0) >> 6) + 2;

	mov	rax, QWORD PTR S5Block$2[rsp]
	movzx	eax, BYTE PTR [rax]
	and	eax, 192				; 000000c0H
	sar	eax, 6
	add	eax, 2
	cdqe
	mov	rcx, QWORD PTR S5Block$2[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR S5Block$2[rsp], rax

; 211  : 
; 212  : 			if (*S5Block == 0x0A)

	mov	rax, QWORD PTR S5Block$2[rsp]
	movzx	eax, BYTE PTR [rax]
	cmp	eax, 10
	jne	SHORT $LN3@AuACPIInit

; 213  : 				S5Block++;

	mov	rax, QWORD PTR S5Block$2[rsp]
	inc	rax
	mov	QWORD PTR S5Block$2[rsp], rax
$LN3@AuACPIInit:

; 214  : 			__AuroraBasicAcpi->slp_typa = *S5Block;

	mov	rax, QWORD PTR S5Block$2[rsp]
	movzx	eax, BYTE PTR [rax]
	mov	rcx, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	WORD PTR [rcx+41], ax

; 215  : 			S5Block++;

	mov	rax, QWORD PTR S5Block$2[rsp]
	inc	rax
	mov	QWORD PTR S5Block$2[rsp], rax

; 216  : 
; 217  : 			if(*S5Block == 0x0A)

	mov	rax, QWORD PTR S5Block$2[rsp]
	movzx	eax, BYTE PTR [rax]
	cmp	eax, 10
	jne	SHORT $LN2@AuACPIInit

; 218  : 				S5Block++;

	mov	rax, QWORD PTR S5Block$2[rsp]
	inc	rax
	mov	QWORD PTR S5Block$2[rsp], rax
$LN2@AuACPIInit:

; 219  : 
; 220  : 			__AuroraBasicAcpi->slp_typb = *S5Block;

	mov	rax, QWORD PTR S5Block$2[rsp]
	movzx	eax, BYTE PTR [rax]
	mov	rcx, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	WORD PTR [rcx+43], ax
$LN4@AuACPIInit:
$LN5@AuACPIInit:

; 221  : 
; 222  : 		}
; 223  : 	}
; 224  : 
; 225  : 	if (__AuroraBasicAcpi->madt)

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	cmp	QWORD PTR [rax+1], 0
	je	SHORT $LN1@AuACPIInit

; 226  : 		AuACPIParseMADT();

	call	?AuACPIParseMADT@@YAXXZ			; AuACPIParseMADT
$LN1@AuACPIInit:

; 227  : 
; 228  : 	AuACPIEnable();

	call	?AuACPIEnable@@YAXXZ			; AuACPIEnable

; 229  : }

	add	rsp, 104				; 00000068H
	ret	0
?AuACPIInitialise@@YAXPEAX@Z ENDP			; AuACPIInitialise
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\basicacpi.cpp
_TEXT	SEGMENT
word$ = 32
word_1$ = 36
word_3$1 = 40
?AuACPIEnable@@YAXXZ PROC				; AuACPIEnable

; 64   : void AuACPIEnable() {

$LN9:
	sub	rsp, 56					; 00000038H

; 65   : 	if (!__AuroraBasicAcpi->fadt || !__AuroraBasicAcpi->fadt->pm1aCtrlBlock) {

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	cmp	QWORD PTR [rax+9], 0
	je	SHORT $LN5@AuACPIEnab
	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	cmp	DWORD PTR [rax+64], 0
	jne	SHORT $LN6@AuACPIEnab
$LN5@AuACPIEnab:

; 66   : 		AuTextOut("[ACPI]: Data structures incomplete \n");

	lea	rcx, OFFSET FLAT:$SG8792
	call	AuTextOut

; 67   : 		return;

	jmp	$LN7@AuACPIEnab
$LN6@AuACPIEnab:

; 68   : 	}
; 69   : 
; 70   : 	uint16_t word = x64_inportw(__AuroraBasicAcpi->fadt->pm1aCtrlBlock);

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	movzx	ecx, WORD PTR [rax+64]
	call	x64_inportw
	mov	WORD PTR word$[rsp], ax

; 71   : 	if ((word & ACPI_PMCTRL_SCI_EN) == 1) {

	movzx	eax, WORD PTR word$[rsp]
	and	eax, 1
	cmp	eax, 1
	jne	SHORT $LN4@AuACPIEnab

; 72   : 		AuTextOut("[ACPI]: Already enabled \n");

	lea	rcx, OFFSET FLAT:$SG8795
	call	AuTextOut

; 73   : 		return;

	jmp	$LN7@AuACPIEnab
$LN4@AuACPIEnab:

; 74   : 	}
; 75   : 
; 76   : 	x64_outportb(__AuroraBasicAcpi->fadt->sciCmdPort, __AuroraBasicAcpi->fadt->acpiEnable);

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	mov	rcx, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rcx, QWORD PTR [rcx+9]
	movzx	edx, BYTE PTR [rax+52]
	movzx	ecx, WORD PTR [rcx+48]
	call	x64_outportb

; 77   : 	uint16_t word_1 = x64_inportw(__AuroraBasicAcpi->fadt->pm1aCtrlBlock);

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	movzx	ecx, WORD PTR [rax+64]
	call	x64_inportw
	mov	WORD PTR word_1$[rsp], ax

; 78   : 	if ((word_1 & ACPI_PMCTRL_SCI_EN) == 1)

	movzx	eax, WORD PTR word_1$[rsp]
	and	eax, 1
	cmp	eax, 1
	jne	SHORT $LN3@AuACPIEnab

; 79   : 		AuTextOut("ACPI Enabled successfully\n");

	lea	rcx, OFFSET FLAT:$SG8798
	call	AuTextOut
$LN3@AuACPIEnab:

; 80   : 
; 81   : 	if (__AuroraBasicAcpi->fadt->pm1bCtrlBlock) {

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	cmp	DWORD PTR [rax+68], 0
	je	SHORT $LN2@AuACPIEnab

; 82   : 		uint16_t word_3 = x64_inportw(__AuroraBasicAcpi->fadt->pm1bCtrlBlock);

	mov	rax, QWORD PTR ?__AuroraBasicAcpi@@3PEAU_aurora_acpi_@@EA ; __AuroraBasicAcpi
	mov	rax, QWORD PTR [rax+9]
	movzx	ecx, WORD PTR [rax+68]
	call	x64_inportw
	mov	WORD PTR word_3$1[rsp], ax

; 83   : 		if ((word_3 & ACPI_PMCTRL_SCI_EN) == 1)

	movzx	eax, WORD PTR word_3$1[rsp]
	and	eax, 1
	cmp	eax, 1
	jne	SHORT $LN1@AuACPIEnab

; 84   : 			AuTextOut("ACPI Enabled successfully\n");

	lea	rcx, OFFSET FLAT:$SG8802
	call	AuTextOut
$LN1@AuACPIEnab:
$LN2@AuACPIEnab:

; 85   : 
; 86   : 	}
; 87   : 
; 88   : 	AuACPIPowerButtonEnable();

	call	?AuACPIPowerButtonEnable@@YAXXZ		; AuACPIPowerButtonEnable
$LN7@AuACPIEnab:

; 89   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuACPIEnable@@YAXXZ ENDP				; AuACPIEnable
_TEXT	ENDS
END
