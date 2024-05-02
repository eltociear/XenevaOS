; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG3276	DB	'TCP Socket created ', 0dH, 0aH, 00H
CONST	ENDS
PUBLIC	?CreateTCPSocket@@YAHXZ				; CreateTCPSocket
EXTRN	kmalloc:PROC
EXTRN	memset:PROC
EXTRN	AuGetCurrentThread:PROC
EXTRN	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindThread
EXTRN	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindSubThread
EXTRN	?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z:PROC ; AuProcessGetFileDesc
EXTRN	SeTextOut:PROC
pdata	SEGMENT
$pdata$?CreateTCPSocket@@YAHXZ DD imagerel $LN6
	DD	imagerel $LN6+184
	DD	imagerel $unwind$?CreateTCPSocket@@YAHXZ
pdata	ENDS
xdata	SEGMENT
$unwind$?CreateTCPSocket@@YAHXZ DD 010401H
	DD	08204H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\net\tcp.cpp
_TEXT	SEGMENT
fd$ = 32
proc$ = 40
thread$ = 48
sock$ = 56
?CreateTCPSocket@@YAHXZ PROC				; CreateTCPSocket

; 39   : int CreateTCPSocket() {

$LN6:
	sub	rsp, 72					; 00000048H

; 40   : 	int fd = -1;

	mov	DWORD PTR fd$[rsp], -1

; 41   : 	AuThread *thread = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thread$[rsp], rax

; 42   : 	if (!thread)

	cmp	QWORD PTR thread$[rsp], 0
	jne	SHORT $LN3@CreateTCPS

; 43   : 		return -1;

	mov	eax, -1
	jmp	$LN4@CreateTCPS
$LN3@CreateTCPS:

; 44   : 	AuProcess *proc = AuProcessFindThread(thread);

	mov	rcx, QWORD PTR thread$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 45   : 	if (!proc) 

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN2@CreateTCPS

; 46   : 		proc = AuProcessFindSubThread(thread);

	mov	rcx, QWORD PTR thread$[rsp]
	call	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindSubThread
	mov	QWORD PTR proc$[rsp], rax
$LN2@CreateTCPS:

; 47   : 		if (!proc)

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN1@CreateTCPS

; 48   : 			return -1;

	mov	eax, -1
	jmp	SHORT $LN4@CreateTCPS
$LN1@CreateTCPS:

; 49   : 	AuSocket *sock = (AuSocket*)kmalloc(sizeof(AuSocket));

	mov	ecx, 232				; 000000e8H
	call	kmalloc
	mov	QWORD PTR sock$[rsp], rax

; 50   : 	memset(sock, 0, sizeof(AuSocket));

	mov	r8d, 232				; 000000e8H
	xor	edx, edx
	mov	rcx, QWORD PTR sock$[rsp]
	call	memset

; 51   : 	fd = AuProcessGetFileDesc(proc);

	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuProcessGetFileDesc@@YAHPEAU_au_proc_@@@Z ; AuProcessGetFileDesc
	mov	DWORD PTR fd$[rsp], eax

; 52   : 	proc->fds[fd] = (AuVFSNode*)sock;

	movsxd	rax, DWORD PTR fd$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	mov	rdx, QWORD PTR sock$[rsp]
	mov	QWORD PTR [rcx+rax*8+576], rdx

; 53   : 	SeTextOut("TCP Socket created \r\n");

	lea	rcx, OFFSET FLAT:$SG3276
	call	SeTextOut

; 54   : 	return fd;

	mov	eax, DWORD PTR fd$[rsp]
$LN4@CreateTCPS:

; 55   : }

	add	rsp, 72					; 00000048H
	ret	0
?CreateTCPSocket@@YAHXZ ENDP				; CreateTCPSocket
_TEXT	ENDS
END
