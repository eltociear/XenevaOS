; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30154.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_fltused
msvcjmc	SEGMENT
__E98F0051__CRT@cpp DB 01H
msvcjmc	ENDS
_DATA	SEGMENT
_fltused DD	01H
_DATA	ENDS
PUBLIC	??2@YAPEAX_K@Z					; operator new
PUBLIC	??3@YAXPEAX@Z					; operator delete
PUBLIC	??_U@YAPEAX_K@Z					; operator new[]
PUBLIC	__JustMyCode_Default
EXTRN	__CheckForDebuggerJustMyCode:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$??2@YAPEAX_K@Z DD imagerel $LN3
	DD	imagerel $LN3+35
	DD	imagerel $unwind$??2@YAPEAX_K@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$??3@YAXPEAX@Z DD imagerel $LN3
	DD	imagerel $LN3+33
	DD	imagerel $unwind$??3@YAXPEAX@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$??_U@YAPEAX_K@Z DD imagerel $LN3
	DD	imagerel $LN3+35
	DD	imagerel $unwind$??_U@YAPEAX_K@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??_U@YAPEAX_K@Z DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??3@YAXPEAX@Z DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$??2@YAPEAX_K@Z DD 025030f01H
	DD	0b20a230fH
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
; File E:\Xeneva Project\Aurora\Kernel\_CRT.cpp
;	COMDAT ??_U@YAPEAX_K@Z
_TEXT	SEGMENT
size$ = 80
??_U@YAPEAX_K@Z PROC					; operator new[], COMDAT

; 38   : void* __cdecl operator new[](size_t size) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__E98F0051__CRT@cpp
	call	__CheckForDebuggerJustMyCode

; 39   : 	return 0; // malloc(size);

	xor	eax, eax

; 40   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
??_U@YAPEAX_K@Z ENDP					; operator new[]
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\_CRT.cpp
;	COMDAT ??3@YAXPEAX@Z
_TEXT	SEGMENT
p$ = 80
??3@YAXPEAX@Z PROC					; operator delete, COMDAT

; 42   : void __cdecl operator delete (void* p) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__E98F0051__CRT@cpp
	call	__CheckForDebuggerJustMyCode

; 43   : 	//free(p);
; 44   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
??3@YAXPEAX@Z ENDP					; operator delete
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\_CRT.cpp
;	COMDAT ??2@YAPEAX_K@Z
_TEXT	SEGMENT
size$ = 80
??2@YAPEAX_K@Z PROC					; operator new, COMDAT

; 34   : void* __cdecl ::operator new(size_t size){

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__E98F0051__CRT@cpp
	call	__CheckForDebuggerJustMyCode

; 35   : 	return 0; // malloc(size);

	xor	eax, eax

; 36   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
??2@YAPEAX_K@Z ENDP					; operator new
_TEXT	ENDS
END
