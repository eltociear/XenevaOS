; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?VdiskArray@@3PAPEAU_VDISK_@@A			; VdiskArray
_BSS	SEGMENT
?VdiskArray@@3PAPEAU_VDISK_@@A DQ 01aH DUP (?)		; VdiskArray
_BSS	ENDS
CONST	SEGMENT
$SG3409	DB	'EFI PART', 00H
	ORG $+3
$SG3431	DB	'%c', 00H
	ORG $+1
$SG3432	DB	0aH, 00H
	ORG $+2
$SG3440	DB	'%x', 00H
	ORG $+1
$SG3433	DB	'VDisk partition created startLBA -> %d ', 0aH, 00H
	ORG $+3
$SG3441	DB	0aH, 00H
	ORG $+2
$SG3434	DB	'vDisk partition guid : ', 00H
$SG3435	DB	'0x%x-0x%x-0x%x-0x', 00H
	ORG $+2
$SG3442	DB	0aH, 00H
	ORG $+2
$SG3448	DB	'Vdisk registered name -> %s ', 0aH, 00H
CONST	ENDS
PUBLIC	?AuVDiskInitialise@@YAXXZ			; AuVDiskInitialise
PUBLIC	AuVDiskGetIndex
PUBLIC	AuVDiskRegister
PUBLIC	AuCreateVDisk
PUBLIC	AuVDiskRead
PUBLIC	AuVDiskWrite
PUBLIC	AuVDiskDestroy
PUBLIC	?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z	; AuVDiskRegisterPartition
EXTRN	?AuGPTInitialise_FileSystem@@YAXPEAU_VDISK_@@@Z:PROC ; AuGPTInitialise_FileSystem
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	AuTextOut:PROC
EXTRN	strcmp:PROC
EXTRN	memset:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	AuPmmngrFree:PROC
pdata	SEGMENT
$pdata$?AuVDiskInitialise@@YAXXZ DD imagerel $LN6
	DD	imagerel $LN6+53
	DD	imagerel $unwind$?AuVDiskInitialise@@YAXXZ
$pdata$AuVDiskGetIndex DD imagerel $LN7
	DD	imagerel $LN7+59
	DD	imagerel $unwind$AuVDiskGetIndex
$pdata$AuVDiskRegister DD imagerel $LN4
	DD	imagerel $LN4+117
	DD	imagerel $unwind$AuVDiskRegister
$pdata$AuCreateVDisk DD imagerel $LN3
	DD	imagerel $LN3+47
	DD	imagerel $unwind$AuCreateVDisk
$pdata$AuVDiskRead DD imagerel $LN4
	DD	imagerel $LN4+87
	DD	imagerel $unwind$AuVDiskRead
$pdata$AuVDiskWrite DD imagerel $LN4
	DD	imagerel $LN4+87
	DD	imagerel $unwind$AuVDiskWrite
$pdata$AuVDiskDestroy DD imagerel $LN7
	DD	imagerel $LN7+123
	DD	imagerel $unwind$AuVDiskDestroy
$pdata$?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z DD imagerel $LN20
	DD	imagerel $LN20+788
	DD	imagerel $unwind$?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuVDiskInitialise@@YAXXZ DD 010401H
	DD	02204H
$unwind$AuVDiskGetIndex DD 010401H
	DD	02204H
$unwind$AuVDiskRegister DD 010901H
	DD	06209H
$unwind$AuCreateVDisk DD 010401H
	DD	06204H
$unwind$AuVDiskRead DD 011801H
	DD	04218H
$unwind$AuVDiskWrite DD 011801H
	DD	04218H
$unwind$AuVDiskDestroy DD 010901H
	DD	06209H
$unwind$?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z DD 010901H
	DD	0c209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\vdisk.cpp
_TEXT	SEGMENT
m$1 = 32
m$2 = 36
part$3 = 40
j$4 = 48
k$5 = 52
i$6 = 56
buffer$ = 64
header$ = 72
aligned_buf$ = 80
part_lba$ = 88
vdisk$ = 112
?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z PROC	; AuVDiskRegisterPartition

; 106  : void AuVDiskRegisterPartition(AuVDisk* vdisk){

$LN20:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 104				; 00000068H

; 107  : 	uint64_t* buffer = (uint64_t*)AuPmmngrAlloc();

	call	AuPmmngrAlloc
	mov	QWORD PTR buffer$[rsp], rax

; 108  : 	memset(buffer, 0, 4096);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR buffer$[rsp]
	call	memset

; 109  : 	vdisk->Read(vdisk,1, 1, buffer);

	mov	r9, QWORD PTR buffer$[rsp]
	mov	r8d, 1
	mov	edx, 1
	mov	rcx, QWORD PTR vdisk$[rsp]
	mov	rax, QWORD PTR vdisk$[rsp]
	call	QWORD PTR [rax+114]

; 110  : 	uint8_t* aligned_buf = (uint8_t*)buffer;

	mov	rax, QWORD PTR buffer$[rsp]
	mov	QWORD PTR aligned_buf$[rsp], rax

; 111  : 
; 112  : 	GPTHeader* header = (GPTHeader*)aligned_buf;

	mov	rax, QWORD PTR aligned_buf$[rsp]
	mov	QWORD PTR header$[rsp], rax

; 113  : 
; 114  : 	/* check if it's Efi partition */
; 115  : 	if (strcmp(header->sig, "EFI PART") != 0)

	mov	rax, QWORD PTR header$[rsp]
	lea	rdx, OFFSET FLAT:$SG3409
	mov	rcx, rax
	call	strcmp
	test	eax, eax
	je	SHORT $LN17@AuVDiskReg

; 116  : 		return;

	jmp	$LN18@AuVDiskReg
$LN17@AuVDiskReg:

; 117  : 
; 118  : 	uint64_t part_lba = header->part_table_lba;

	mov	rax, QWORD PTR header$[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR part_lba$[rsp], rax

; 119  : 
; 120  : 	for (int i = 0; i < header->num_part_entries; i++) {

	mov	DWORD PTR i$6[rsp], 0
	jmp	SHORT $LN16@AuVDiskReg
$LN15@AuVDiskReg:
	mov	eax, DWORD PTR i$6[rsp]
	inc	eax
	mov	DWORD PTR i$6[rsp], eax
$LN16@AuVDiskReg:
	mov	rax, QWORD PTR header$[rsp]
	mov	eax, DWORD PTR [rax+80]
	cmp	DWORD PTR i$6[rsp], eax
	jae	$LN14@AuVDiskReg

; 121  : 		memset(buffer, 0, 4096);

	mov	r8d, 4096				; 00001000H
	xor	edx, edx
	mov	rcx, QWORD PTR buffer$[rsp]
	call	memset

; 122  : 		vdisk->Read(vdisk, part_lba, 1, buffer);

	mov	r9, QWORD PTR buffer$[rsp]
	mov	r8d, 1
	mov	rdx, QWORD PTR part_lba$[rsp]
	mov	rcx, QWORD PTR vdisk$[rsp]
	mov	rax, QWORD PTR vdisk$[rsp]
	call	QWORD PTR [rax+114]

; 123  : 		aligned_buf = (uint8_t*)buffer;

	mov	rax, QWORD PTR buffer$[rsp]
	mov	QWORD PTR aligned_buf$[rsp], rax

; 124  : 		GPTPartition* part = (GPTPartition*)aligned_buf;

	mov	rax, QWORD PTR aligned_buf$[rsp]
	mov	QWORD PTR part$3[rsp], rax

; 125  : 		if (part->first_lba != 0) {

	mov	rax, QWORD PTR part$3[rsp]
	cmp	QWORD PTR [rax+32], 0
	je	$LN13@AuVDiskReg

; 126  : 			vdisk->startingLBA = part->first_lba;

	mov	rax, QWORD PTR vdisk$[rsp]
	mov	rcx, QWORD PTR part$3[rsp]
	mov	rcx, QWORD PTR [rcx+32]
	mov	QWORD PTR [rax+56], rcx

; 127  : 			vdisk->currentLBA = vdisk->startingLBA;

	mov	rax, QWORD PTR vdisk$[rsp]
	mov	rcx, QWORD PTR vdisk$[rsp]
	mov	rcx, QWORD PTR [rcx+56]
	mov	QWORD PTR [rax+64], rcx

; 128  : 			vdisk->num_partition = 1;

	mov	rax, QWORD PTR vdisk$[rsp]
	mov	BYTE PTR [rax+73], 1

; 129  : 			vdisk->part_guid.Data1 = part->part_guid.Data1;

	mov	rax, QWORD PTR vdisk$[rsp]
	mov	rcx, QWORD PTR part$3[rsp]
	mov	ecx, DWORD PTR [rcx]
	mov	DWORD PTR [rax+74], ecx

; 130  : 			vdisk->part_guid.Data2 = part->part_guid.Data2;

	mov	rax, QWORD PTR vdisk$[rsp]
	mov	rcx, QWORD PTR part$3[rsp]
	movzx	ecx, WORD PTR [rcx+4]
	mov	WORD PTR [rax+78], cx

; 131  : 			vdisk->part_guid.Data3 = part->part_guid.Data3;

	mov	rax, QWORD PTR vdisk$[rsp]
	mov	rcx, QWORD PTR part$3[rsp]
	movzx	ecx, WORD PTR [rcx+6]
	mov	WORD PTR [rax+80], cx

; 132  : 			for (int m = 0; m < 8; m++)

	mov	DWORD PTR m$2[rsp], 0
	jmp	SHORT $LN12@AuVDiskReg
$LN11@AuVDiskReg:
	mov	eax, DWORD PTR m$2[rsp]
	inc	eax
	mov	DWORD PTR m$2[rsp], eax
$LN12@AuVDiskReg:
	cmp	DWORD PTR m$2[rsp], 8
	jge	SHORT $LN10@AuVDiskReg

; 133  : 				vdisk->part_guid.Data4[m] = part->part_guid.Data4[m];

	movsxd	rax, DWORD PTR m$2[rsp]
	movsxd	rcx, DWORD PTR m$2[rsp]
	mov	rdx, QWORD PTR vdisk$[rsp]
	mov	r8, QWORD PTR part$3[rsp]
	movzx	eax, BYTE PTR [r8+rax+8]
	mov	BYTE PTR [rdx+rcx+82], al
	jmp	SHORT $LN11@AuVDiskReg
$LN10@AuVDiskReg:

; 134  : 
; 135  : 			vdisk->part_unique_guid.Data1 = part->part_unique_guid.Data1;

	mov	rax, QWORD PTR vdisk$[rsp]
	mov	rcx, QWORD PTR part$3[rsp]
	mov	ecx, DWORD PTR [rcx+16]
	mov	DWORD PTR [rax+90], ecx

; 136  : 			vdisk->part_unique_guid.Data2 = part->part_unique_guid.Data2;

	mov	rax, QWORD PTR vdisk$[rsp]
	mov	rcx, QWORD PTR part$3[rsp]
	movzx	ecx, WORD PTR [rcx+20]
	mov	WORD PTR [rax+94], cx

; 137  : 			vdisk->part_unique_guid.Data3 = part->part_unique_guid.Data3;

	mov	rax, QWORD PTR vdisk$[rsp]
	mov	rcx, QWORD PTR part$3[rsp]
	movzx	ecx, WORD PTR [rcx+22]
	mov	WORD PTR [rax+96], cx

; 138  : 			for (int m = 0; m < 8; m++)

	mov	DWORD PTR m$1[rsp], 0
	jmp	SHORT $LN9@AuVDiskReg
$LN8@AuVDiskReg:
	mov	eax, DWORD PTR m$1[rsp]
	inc	eax
	mov	DWORD PTR m$1[rsp], eax
$LN9@AuVDiskReg:
	cmp	DWORD PTR m$1[rsp], 8
	jge	SHORT $LN7@AuVDiskReg

; 139  : 				vdisk->part_unique_guid.Data4[m] = part->part_guid.Data4[m];

	movsxd	rax, DWORD PTR m$1[rsp]
	movsxd	rcx, DWORD PTR m$1[rsp]
	mov	rdx, QWORD PTR vdisk$[rsp]
	mov	r8, QWORD PTR part$3[rsp]
	movzx	eax, BYTE PTR [r8+rax+8]
	mov	BYTE PTR [rdx+rcx+98], al
	jmp	SHORT $LN8@AuVDiskReg
$LN7@AuVDiskReg:

; 140  : 
; 141  : 			for (int j = 0; j < 70; j++)

	mov	DWORD PTR j$4[rsp], 0
	jmp	SHORT $LN6@AuVDiskReg
$LN5@AuVDiskReg:
	mov	eax, DWORD PTR j$4[rsp]
	inc	eax
	mov	DWORD PTR j$4[rsp], eax
$LN6@AuVDiskReg:
	cmp	DWORD PTR j$4[rsp], 70			; 00000046H
	jge	SHORT $LN4@AuVDiskReg

; 142  : 				AuTextOut("%c", part->part_name[j]);

	movsxd	rax, DWORD PTR j$4[rsp]
	mov	rcx, QWORD PTR part$3[rsp]
	movsx	eax, BYTE PTR [rcx+rax+56]
	mov	edx, eax
	lea	rcx, OFFSET FLAT:$SG3431
	call	AuTextOut
	jmp	SHORT $LN5@AuVDiskReg
$LN4@AuVDiskReg:
$LN13@AuVDiskReg:

; 143  : 		}
; 144  : 		part_lba++;

	mov	rax, QWORD PTR part_lba$[rsp]
	inc	rax
	mov	QWORD PTR part_lba$[rsp], rax

; 145  : 	}

	jmp	$LN15@AuVDiskReg
$LN14@AuVDiskReg:

; 146  : 	AuTextOut("\n");

	lea	rcx, OFFSET FLAT:$SG3432
	call	AuTextOut

; 147  : 	AuTextOut("VDisk partition created startLBA -> %d \n", vdisk->startingLBA);

	mov	rax, QWORD PTR vdisk$[rsp]
	mov	rdx, QWORD PTR [rax+56]
	lea	rcx, OFFSET FLAT:$SG3433
	call	AuTextOut

; 148  : 	AuTextOut("vDisk partition guid : ");

	lea	rcx, OFFSET FLAT:$SG3434
	call	AuTextOut

; 149  : 	AuTextOut("0x%x-0x%x-0x%x-0x", vdisk->part_guid.Data1, vdisk->part_guid.Data2, vdisk->part_guid.Data3);

	mov	rax, QWORD PTR vdisk$[rsp]
	movzx	eax, WORD PTR [rax+80]
	mov	rcx, QWORD PTR vdisk$[rsp]
	movzx	ecx, WORD PTR [rcx+78]
	mov	r9d, eax
	mov	r8d, ecx
	mov	rax, QWORD PTR vdisk$[rsp]
	mov	edx, DWORD PTR [rax+74]
	lea	rcx, OFFSET FLAT:$SG3435
	call	AuTextOut

; 150  : 	for (int k = 0; k < 8; k++)

	mov	DWORD PTR k$5[rsp], 0
	jmp	SHORT $LN3@AuVDiskReg
$LN2@AuVDiskReg:
	mov	eax, DWORD PTR k$5[rsp]
	inc	eax
	mov	DWORD PTR k$5[rsp], eax
$LN3@AuVDiskReg:
	cmp	DWORD PTR k$5[rsp], 8
	jge	SHORT $LN1@AuVDiskReg

; 151  : 		AuTextOut("%x", vdisk->part_guid.Data4[k]);

	movsxd	rax, DWORD PTR k$5[rsp]
	mov	rcx, QWORD PTR vdisk$[rsp]
	movzx	eax, BYTE PTR [rcx+rax+82]
	mov	edx, eax
	lea	rcx, OFFSET FLAT:$SG3440
	call	AuTextOut
	jmp	SHORT $LN2@AuVDiskReg
$LN1@AuVDiskReg:

; 152  : 
; 153  : 	AuTextOut("\n");

	lea	rcx, OFFSET FLAT:$SG3441
	call	AuTextOut

; 154  : 	/* call gpt file system verifier to load
; 155  : 	 * the desired file system 
; 156  : 	 */
; 157  : 	AuGPTInitialise_FileSystem(vdisk);

	mov	rcx, QWORD PTR vdisk$[rsp]
	call	?AuGPTInitialise_FileSystem@@YAXPEAU_VDISK_@@@Z ; AuGPTInitialise_FileSystem

; 158  : 
; 159  : 	AuTextOut("\n");

	lea	rcx, OFFSET FLAT:$SG3442
	call	AuTextOut

; 160  : 	AuPmmngrFree(buffer);

	mov	rcx, QWORD PTR buffer$[rsp]
	call	AuPmmngrFree
$LN18@AuVDiskReg:

; 161  : }

	add	rsp, 104				; 00000068H
	ret	0
?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z ENDP	; AuVDiskRegisterPartition
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\vdisk.cpp
_TEXT	SEGMENT
i$1 = 32
_index$ = 33
disk$2 = 40
vdisk$ = 64
AuVDiskDestroy PROC

; 186  : void AuVDiskDestroy(AuVDisk *vdisk) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 187  : 	uint8_t _index = 0;

	mov	BYTE PTR _index$[rsp], 0

; 188  : 	for (uint8_t i = 0; i < MAX_VDISK_DEVICES; i++){

	mov	BYTE PTR i$1[rsp], 0
	jmp	SHORT $LN4@AuVDiskDes
$LN3@AuVDiskDes:
	movzx	eax, BYTE PTR i$1[rsp]
	inc	al
	mov	BYTE PTR i$1[rsp], al
$LN4@AuVDiskDes:
	movzx	eax, BYTE PTR i$1[rsp]
	cmp	eax, 26
	jge	SHORT $LN2@AuVDiskDes

; 189  : 		AuVDisk *disk = VdiskArray[i];

	movzx	eax, BYTE PTR i$1[rsp]
	lea	rcx, OFFSET FLAT:?VdiskArray@@3PAPEAU_VDISK_@@A ; VdiskArray
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR disk$2[rsp], rax

; 190  : 		if (disk == vdisk){

	mov	rax, QWORD PTR vdisk$[rsp]
	cmp	QWORD PTR disk$2[rsp], rax
	jne	SHORT $LN1@AuVDiskDes

; 191  : 			_index = i;

	movzx	eax, BYTE PTR i$1[rsp]
	mov	BYTE PTR _index$[rsp], al

; 192  : 			break;

	jmp	SHORT $LN2@AuVDiskDes
$LN1@AuVDiskDes:

; 193  : 		}
; 194  : 	}

	jmp	SHORT $LN3@AuVDiskDes
$LN2@AuVDiskDes:

; 195  : 
; 196  : 	VdiskArray[_index] = NULL;

	movzx	eax, BYTE PTR _index$[rsp]
	lea	rcx, OFFSET FLAT:?VdiskArray@@3PAPEAU_VDISK_@@A ; VdiskArray
	mov	QWORD PTR [rcx+rax*8], 0

; 197  : 	kfree(vdisk);

	mov	rcx, QWORD PTR vdisk$[rsp]
	call	kfree

; 198  : }

	add	rsp, 56					; 00000038H
	ret	0
AuVDiskDestroy ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\vdisk.cpp
_TEXT	SEGMENT
disk$ = 48
lba$ = 56
count$ = 64
buffer$ = 72
AuVDiskWrite PROC

; 93   : size_t AuVDiskWrite(AuVDisk* disk, uint64_t lba, uint32_t count, uint64_t* buffer) {

$LN4:
	mov	QWORD PTR [rsp+32], r9
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 94   : 	if (disk->Write)

	mov	rax, QWORD PTR disk$[rsp]
	cmp	QWORD PTR [rax+122], 0
	je	SHORT $LN1@AuVDiskWri

; 95   : 		return disk->Write(disk, disk->startingLBA + lba, count, buffer);

	mov	rax, QWORD PTR disk$[rsp]
	mov	rax, QWORD PTR [rax+56]
	add	rax, QWORD PTR lba$[rsp]
	mov	r9, QWORD PTR buffer$[rsp]
	mov	r8d, DWORD PTR count$[rsp]
	mov	rdx, rax
	mov	rcx, QWORD PTR disk$[rsp]
	mov	rax, QWORD PTR disk$[rsp]
	call	QWORD PTR [rax+122]
	cdqe
	jmp	SHORT $LN2@AuVDiskWri
$LN1@AuVDiskWri:

; 96   : 	return 0;

	xor	eax, eax
$LN2@AuVDiskWri:

; 97   : }

	add	rsp, 40					; 00000028H
	ret	0
AuVDiskWrite ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\vdisk.cpp
_TEXT	SEGMENT
disk$ = 48
lba$ = 56
count$ = 64
buffer$ = 72
AuVDiskRead PROC

; 79   : size_t AuVDiskRead(AuVDisk *disk, uint64_t lba, uint32_t count, uint64_t* buffer) {

$LN4:
	mov	QWORD PTR [rsp+32], r9
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 80   : 	if (disk->Read) 

	mov	rax, QWORD PTR disk$[rsp]
	cmp	QWORD PTR [rax+114], 0
	je	SHORT $LN1@AuVDiskRea

; 81   : 		return disk->Read(disk, disk->startingLBA + lba, count, buffer);

	mov	rax, QWORD PTR disk$[rsp]
	mov	rax, QWORD PTR [rax+56]
	add	rax, QWORD PTR lba$[rsp]
	mov	r9, QWORD PTR buffer$[rsp]
	mov	r8d, DWORD PTR count$[rsp]
	mov	rdx, rax
	mov	rcx, QWORD PTR disk$[rsp]
	mov	rax, QWORD PTR disk$[rsp]
	call	QWORD PTR [rax+114]
	cdqe
	jmp	SHORT $LN2@AuVDiskRea
$LN1@AuVDiskRea:

; 82   : 	return 0;

	xor	eax, eax
$LN2@AuVDiskRea:

; 83   : }

	add	rsp, 40					; 00000028H
	ret	0
AuVDiskRead ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\vdisk.cpp
_TEXT	SEGMENT
vdisk$ = 32
AuCreateVDisk PROC

; 66   : AuVDisk *AuCreateVDisk(){

$LN3:
	sub	rsp, 56					; 00000038H

; 67   : 	AuVDisk* vdisk = (AuVDisk*)kmalloc(sizeof(AuVDisk));

	mov	ecx, 130				; 00000082H
	call	kmalloc
	mov	QWORD PTR vdisk$[rsp], rax

; 68   : 	memset(vdisk, 0, sizeof(AuVDisk));

	mov	r8d, 130				; 00000082H
	xor	edx, edx
	mov	rcx, QWORD PTR vdisk$[rsp]
	call	memset

; 69   : 	return vdisk;

	mov	rax, QWORD PTR vdisk$[rsp]

; 70   : }

	add	rsp, 56					; 00000038H
	ret	0
AuCreateVDisk ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\vdisk.cpp
_TEXT	SEGMENT
_index$ = 32
disk$ = 64
AuVDiskRegister PROC

; 167  : void AuVDiskRegister(AuVDisk* disk) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 168  : 	uint8_t _index = AuVDiskGetIndex();

	call	AuVDiskGetIndex
	mov	BYTE PTR _index$[rsp], al

; 169  : 	/* check for last time, for any errors */
; 170  : 	if (VdiskArray[_index])

	movzx	eax, BYTE PTR _index$[rsp]
	lea	rcx, OFFSET FLAT:?VdiskArray@@3PAPEAU_VDISK_@@A ; VdiskArray
	cmp	QWORD PTR [rcx+rax*8], 0
	je	SHORT $LN1@AuVDiskReg

; 171  : 		return;

	jmp	SHORT $LN2@AuVDiskReg
$LN1@AuVDiskReg:

; 172  : 
; 173  : 	VdiskArray[_index] = disk;

	movzx	eax, BYTE PTR _index$[rsp]
	lea	rcx, OFFSET FLAT:?VdiskArray@@3PAPEAU_VDISK_@@A ; VdiskArray
	mov	rdx, QWORD PTR disk$[rsp]
	mov	QWORD PTR [rcx+rax*8], rdx

; 174  : 	AuTextOut("Vdisk registered name -> %s \n", disk->diskname);

	mov	rax, QWORD PTR disk$[rsp]
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG3448
	call	AuTextOut

; 175  : 
; 176  : 	disk->__VDiskID = _index;

	mov	rax, QWORD PTR disk$[rsp]
	movzx	ecx, BYTE PTR _index$[rsp]
	mov	BYTE PTR [rax+72], cl

; 177  : 	disk->num_partition = 1;

	mov	rax, QWORD PTR disk$[rsp]
	mov	BYTE PTR [rax+73], 1

; 178  : 	/* Register a partition and initialise the file system*/
; 179  : 	AuVDiskRegisterPartition(disk);

	mov	rcx, QWORD PTR disk$[rsp]
	call	?AuVDiskRegisterPartition@@YAXPEAU_VDISK_@@@Z ; AuVDiskRegisterPartition
$LN2@AuVDiskReg:

; 180  : }

	add	rsp, 56					; 00000038H
	ret	0
AuVDiskRegister ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\vdisk.cpp
_TEXT	SEGMENT
i$1 = 0
AuVDiskGetIndex PROC

; 54   : uint8_t AuVDiskGetIndex() {

$LN7:
	sub	rsp, 24

; 55   : 	for (uint8_t i = 0; i < MAX_VDISK_DEVICES; i++){

	mov	BYTE PTR i$1[rsp], 0
	jmp	SHORT $LN4@AuVDiskGet
$LN3@AuVDiskGet:
	movzx	eax, BYTE PTR i$1[rsp]
	inc	al
	mov	BYTE PTR i$1[rsp], al
$LN4@AuVDiskGet:
	movzx	eax, BYTE PTR i$1[rsp]
	cmp	eax, 26
	jge	SHORT $LN2@AuVDiskGet

; 56   : 		if (!VdiskArray[i])

	movzx	eax, BYTE PTR i$1[rsp]
	lea	rcx, OFFSET FLAT:?VdiskArray@@3PAPEAU_VDISK_@@A ; VdiskArray
	cmp	QWORD PTR [rcx+rax*8], 0
	jne	SHORT $LN1@AuVDiskGet

; 57   : 			return i;

	movzx	eax, BYTE PTR i$1[rsp]
	jmp	SHORT $LN5@AuVDiskGet
$LN1@AuVDiskGet:

; 58   : 	}

	jmp	SHORT $LN3@AuVDiskGet
$LN2@AuVDiskGet:
$LN5@AuVDiskGet:

; 59   : }

	add	rsp, 24
	ret	0
AuVDiskGetIndex ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\vdisk.cpp
_TEXT	SEGMENT
i$1 = 0
?AuVDiskInitialise@@YAXXZ PROC				; AuVDiskInitialise

; 46   : void AuVDiskInitialise() {

$LN6:
	sub	rsp, 24

; 47   : 	for (int i = 0; i < MAX_VDISK_DEVICES; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@AuVDiskIni
$LN2@AuVDiskIni:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuVDiskIni:
	cmp	DWORD PTR i$1[rsp], 26
	jge	SHORT $LN1@AuVDiskIni

; 48   : 		VdiskArray[i] = NULL;

	movsxd	rax, DWORD PTR i$1[rsp]
	lea	rcx, OFFSET FLAT:?VdiskArray@@3PAPEAU_VDISK_@@A ; VdiskArray
	mov	QWORD PTR [rcx+rax*8], 0
	jmp	SHORT $LN2@AuVDiskIni
$LN1@AuVDiskIni:

; 49   : }

	add	rsp, 24
	ret	0
?AuVDiskInitialise@@YAXXZ ENDP				; AuVDiskInitialise
_TEXT	ENDS
END
