; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30154.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

msvcjmc	SEGMENT
__C0B476A7_stack@cpp DB 01H
msvcjmc	ENDS
PUBLIC	AuStackCreate
PUBLIC	AuStackPush
PUBLIC	AuStackPop
PUBLIC	__JustMyCode_Default
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	memset:PROC
EXTRN	__CheckForDebuggerJustMyCode:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuStackCreate DD imagerel $LN3
	DD	imagerel $LN3+64
	DD	imagerel $unwind$AuStackCreate
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuStackPush DD imagerel $LN3
	DD	imagerel $LN3+105
	DD	imagerel $unwind$AuStackPush
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AuStackPop DD imagerel $LN4
	DD	imagerel $LN4+136
	DD	imagerel $unwind$AuStackPop
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuStackPop DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuStackPush DD 025031401H
	DD	0d20f2314H
	DD	0500bH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AuStackCreate DD 025030b01H
	DD	0d206230bH
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
; File E:\Xeneva Project\Aurora\Kernel\stack.cpp
;	COMDAT AuStackPop
_TEXT	SEGMENT
data$ = 0
si$ = 8
stack$ = 96
AuStackPop PROC						; COMDAT

; 61   : void* AuStackPop(AuStack* stack) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__C0B476A7_stack@cpp
	call	__CheckForDebuggerJustMyCode

; 62   : 	void* data = NULL;

	mov	QWORD PTR data$[rbp], 0

; 63   : 	if (!stack->top)

	mov	rax, QWORD PTR stack$[rbp]
	cmp	QWORD PTR [rax], 0
	jne	SHORT $LN2@AuStackPop

; 64   : 		return NULL;

	xor	eax, eax
	jmp	SHORT $LN1@AuStackPop
$LN2@AuStackPop:

; 65   : 	AuStackItem* si;
; 66   : 	si = stack->top;

	mov	rax, QWORD PTR stack$[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR si$[rbp], rax

; 67   : 	stack->top = stack->top->link;

	mov	rax, QWORD PTR stack$[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR stack$[rbp]
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR [rcx], rax

; 68   : 	si->link = NULL;

	mov	rax, QWORD PTR si$[rbp]
	mov	QWORD PTR [rax+8], 0

; 69   : 	data = si->data;

	mov	rax, QWORD PTR si$[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR data$[rbp], rax

; 70   : 	kfree(si);

	mov	rcx, QWORD PTR si$[rbp]
	call	kfree

; 71   : 	stack->itemCount--;

	mov	rax, QWORD PTR stack$[rbp]
	mov	eax, DWORD PTR [rax+8]
	dec	eax
	mov	rcx, QWORD PTR stack$[rbp]
	mov	DWORD PTR [rcx+8], eax

; 72   : 	return data;

	mov	rax, QWORD PTR data$[rbp]
$LN1@AuStackPop:

; 73   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
AuStackPop ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\stack.cpp
;	COMDAT AuStackPush
_TEXT	SEGMENT
newItem$ = 0
stack$ = 96
data$ = 104
AuStackPush PROC					; COMDAT

; 49   : void AuStackPush(AuStack *stack, void *data){

$LN3:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__C0B476A7_stack@cpp
	call	__CheckForDebuggerJustMyCode

; 50   : 	AuStackItem* newItem = (AuStackItem*)kmalloc(sizeof(AuStackItem));

	mov	ecx, 16
	call	kmalloc
	mov	QWORD PTR newItem$[rbp], rax

; 51   : 	newItem->data = data;

	mov	rax, QWORD PTR newItem$[rbp]
	mov	rcx, QWORD PTR data$[rbp]
	mov	QWORD PTR [rax], rcx

; 52   : 	newItem->link = stack->top;

	mov	rax, QWORD PTR newItem$[rbp]
	mov	rcx, QWORD PTR stack$[rbp]
	mov	rcx, QWORD PTR [rcx]
	mov	QWORD PTR [rax+8], rcx

; 53   : 	stack->top = newItem;

	mov	rax, QWORD PTR stack$[rbp]
	mov	rcx, QWORD PTR newItem$[rbp]
	mov	QWORD PTR [rax], rcx

; 54   : 	stack->itemCount += 1;

	mov	rax, QWORD PTR stack$[rbp]
	mov	eax, DWORD PTR [rax+8]
	inc	eax
	mov	rcx, QWORD PTR stack$[rbp]
	mov	DWORD PTR [rcx+8], eax

; 55   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
AuStackPush ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\stack.cpp
;	COMDAT AuStackCreate
_TEXT	SEGMENT
stack$ = 0
AuStackCreate PROC					; COMDAT

; 38   : AuStack* AuStackCreate(){

$LN3:
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__C0B476A7_stack@cpp
	call	__CheckForDebuggerJustMyCode

; 39   : 	AuStack* stack = (AuStack*)kmalloc(sizeof(AuStack));

	mov	ecx, 16
	call	kmalloc
	mov	QWORD PTR stack$[rbp], rax

; 40   : 	memset(stack, 0, sizeof(AuStack));

	mov	r8d, 16
	xor	edx, edx
	mov	rcx, QWORD PTR stack$[rbp]
	call	memset

; 41   : 	return stack;

	mov	rax, QWORD PTR stack$[rbp]

; 42   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
AuStackCreate ENDP
_TEXT	ENDS
END
