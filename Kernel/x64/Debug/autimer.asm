; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30154.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?timerFirst@@3PEAU_timer_@@EA			; timerFirst
PUBLIC	?timerLast@@3PEAU_timer_@@EA			; timerLast
_BSS	SEGMENT
?timerFirst@@3PEAU_timer_@@EA DQ 01H DUP (?)		; timerFirst
?timerLast@@3PEAU_timer_@@EA DQ 01H DUP (?)		; timerLast
_BSS	ENDS
msvcjmc	SEGMENT
__27A82F84_autimer@cpp DB 01H
msvcjmc	ENDS
PUBLIC	?AuTimerDataInitialise@@YAXXZ			; AuTimerDataInitialise
PUBLIC	?AuTimerCreate@@YAXGHE@Z			; AuTimerCreate
PUBLIC	?AuTimerStart@@YAXG@Z				; AuTimerStart
PUBLIC	?AuTimerStop@@YAXG@Z				; AuTimerStop
PUBLIC	?AuTimerDestroy@@YAXG@Z				; AuTimerDestroy
PUBLIC	?AuTimerFire@@YAXHHH@Z				; AuTimerFire
PUBLIC	?AuTimerInsert@@YAXPEAU_timer_@@@Z		; AuTimerInsert
PUBLIC	?AuTimerDelete@@YAXPEAU_timer_@@@Z		; AuTimerDelete
PUBLIC	?AuTimerPostMessage@@YAXPEAU_timer_@@@Z		; AuTimerPostMessage
PUBLIC	__JustMyCode_Default
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	memset:PROC
EXTRN	?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z:PROC	; PostBoxPutEvent
EXTRN	__CheckForDebuggerJustMyCode:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuTimerDataInitialise@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+51
	DD	imagerel $unwind$?AuTimerDataInitialise@@YAXXZ
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuTimerCreate@@YAXGHE@Z DD imagerel $LN3
	DD	imagerel $LN3+123
	DD	imagerel $unwind$?AuTimerCreate@@YAXGHE@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuTimerStart@@YAXG@Z DD imagerel $LN7
	DD	imagerel $LN7+93
	DD	imagerel $unwind$?AuTimerStart@@YAXG@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuTimerStop@@YAXG@Z DD imagerel $LN7
	DD	imagerel $LN7+93
	DD	imagerel $unwind$?AuTimerStop@@YAXG@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuTimerDestroy@@YAXG@Z DD imagerel $LN7
	DD	imagerel $LN7+94
	DD	imagerel $unwind$?AuTimerDestroy@@YAXG@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuTimerFire@@YAXHHH@Z DD imagerel $LN28
	DD	imagerel $LN28+445
	DD	imagerel $unwind$?AuTimerFire@@YAXHHH@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuTimerInsert@@YAXPEAU_timer_@@@Z DD imagerel $LN5
	DD	imagerel $LN5+132
	DD	imagerel $unwind$?AuTimerInsert@@YAXPEAU_timer_@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuTimerDelete@@YAXPEAU_timer_@@@Z DD imagerel $LN8
	DD	imagerel $LN8+157
	DD	imagerel $unwind$?AuTimerDelete@@YAXPEAU_timer_@@@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$?AuTimerPostMessage@@YAXPEAU_timer_@@@Z DD imagerel $LN3
	DD	imagerel $LN3+109
	DD	imagerel $unwind$?AuTimerPostMessage@@YAXPEAU_timer_@@@Z
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuTimerPostMessage@@YAXPEAU_timer_@@@Z DD 025041201H
	DD	010d2312H
	DD	050060022H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuTimerDelete@@YAXPEAU_timer_@@@Z DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuTimerInsert@@YAXPEAU_timer_@@@Z DD 025030f01H
	DD	0b20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuTimerFire@@YAXHHH@Z DD 025031701H
	DD	0d2122317H
	DD	0500eH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuTimerDestroy@@YAXG@Z DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuTimerStop@@YAXG@Z DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuTimerStart@@YAXG@Z DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuTimerCreate@@YAXGHE@Z DD 025031801H
	DD	0d2132318H
	DD	0500fH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?AuTimerDataInitialise@@YAXXZ DD 025030b01H
	DD	0b206230bH
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
; File E:\Xeneva Project\Aurora\Kernel\autimer.cpp
;	COMDAT ?AuTimerPostMessage@@YAXPEAU_timer_@@@Z
_TEXT	SEGMENT
e$ = 0
t$ = 256
?AuTimerPostMessage@@YAXPEAU_timer_@@@Z PROC		; AuTimerPostMessage, COMDAT

; 144  : void AuTimerPostMessage(AuTimer* t) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 272				; 00000110H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__27A82F84_autimer@cpp
	call	__CheckForDebuggerJustMyCode

; 145  : 	PostEvent e;
; 146  : 	memset(&e, 0, sizeof(PostEvent));

	mov	r8d, 169				; 000000a9H
	xor	edx, edx
	lea	rcx, QWORD PTR e$[rbp]
	call	memset

; 147  : 	e.type = TIMER_MESSAGE_CODE;

	mov	BYTE PTR e$[rbp], 8

; 148  : 	e.to_id = t->threadId;

	mov	rax, QWORD PTR t$[rbp]
	movzx	eax, WORD PTR [rax+5]
	mov	WORD PTR e$[rbp+1], ax

; 149  : 	e.dword = t->lastTick;

	mov	rax, QWORD PTR t$[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR e$[rbp+5], eax

; 150  : 	e.dword2 = t->tickDifference;

	mov	rax, QWORD PTR t$[rbp]
	mov	eax, DWORD PTR [rax+7]
	mov	DWORD PTR e$[rbp+9], eax

; 151  : 	PostBoxPutEvent(&e);

	lea	rcx, QWORD PTR e$[rbp]
	call	?PostBoxPutEvent@@YAXPEAU_post_event_@@@Z ; PostBoxPutEvent

; 152  : }

	lea	rsp, QWORD PTR [rbp+240]
	pop	rbp
	ret	0
?AuTimerPostMessage@@YAXPEAU_timer_@@@Z ENDP		; AuTimerPostMessage
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\autimer.cpp
;	COMDAT ?AuTimerDelete@@YAXPEAU_timer_@@@Z
_TEXT	SEGMENT
timer$ = 80
?AuTimerDelete@@YAXPEAU_timer_@@@Z PROC			; AuTimerDelete, COMDAT

; 65   : void AuTimerDelete(AuTimer* timer) {

$LN8:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__27A82F84_autimer@cpp
	call	__CheckForDebuggerJustMyCode

; 66   : 	if (timerFirst == NULL)

	cmp	QWORD PTR ?timerFirst@@3PEAU_timer_@@EA, 0 ; timerFirst
	jne	SHORT $LN2@AuTimerDel

; 67   : 		return;

	jmp	SHORT $LN1@AuTimerDel
$LN2@AuTimerDel:

; 68   : 
; 69   : 	if (timer == timerFirst){

	mov	rax, QWORD PTR ?timerFirst@@3PEAU_timer_@@EA ; timerFirst
	cmp	QWORD PTR timer$[rbp], rax
	jne	SHORT $LN3@AuTimerDel

; 70   : 		timerFirst = timerFirst->next;

	mov	rax, QWORD PTR ?timerFirst@@3PEAU_timer_@@EA ; timerFirst
	mov	rax, QWORD PTR [rax+16]
	mov	QWORD PTR ?timerFirst@@3PEAU_timer_@@EA, rax ; timerFirst

; 71   : 	}

	jmp	SHORT $LN4@AuTimerDel
$LN3@AuTimerDel:

; 72   : 	else {
; 73   : 		timer->prev->next = timer->next;

	mov	rax, QWORD PTR timer$[rbp]
	mov	rax, QWORD PTR [rax+24]
	mov	rcx, QWORD PTR timer$[rbp]
	mov	rcx, QWORD PTR [rcx+16]
	mov	QWORD PTR [rax+16], rcx
$LN4@AuTimerDel:

; 74   : 	}
; 75   : 
; 76   : 	if (timer == timerLast){

	mov	rax, QWORD PTR ?timerLast@@3PEAU_timer_@@EA ; timerLast
	cmp	QWORD PTR timer$[rbp], rax
	jne	SHORT $LN5@AuTimerDel

; 77   : 		timerLast = timer->prev;

	mov	rax, QWORD PTR timer$[rbp]
	mov	rax, QWORD PTR [rax+24]
	mov	QWORD PTR ?timerLast@@3PEAU_timer_@@EA, rax ; timerLast

; 78   : 	}

	jmp	SHORT $LN6@AuTimerDel
$LN5@AuTimerDel:

; 79   : 	else {
; 80   : 		timer->next->prev = timer->prev;

	mov	rax, QWORD PTR timer$[rbp]
	mov	rax, QWORD PTR [rax+16]
	mov	rcx, QWORD PTR timer$[rbp]
	mov	rcx, QWORD PTR [rcx+24]
	mov	QWORD PTR [rax+24], rcx
$LN6@AuTimerDel:

; 81   : 	}
; 82   : 	kfree(timer);

	mov	rcx, QWORD PTR timer$[rbp]
	call	kfree
$LN1@AuTimerDel:

; 83   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuTimerDelete@@YAXPEAU_timer_@@@Z ENDP			; AuTimerDelete
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\autimer.cpp
;	COMDAT ?AuTimerInsert@@YAXPEAU_timer_@@@Z
_TEXT	SEGMENT
timer$ = 80
?AuTimerInsert@@YAXPEAU_timer_@@@Z PROC			; AuTimerInsert, COMDAT

; 49   : void AuTimerInsert(AuTimer* timer) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__27A82F84_autimer@cpp
	call	__CheckForDebuggerJustMyCode

; 50   : 	timer->next = NULL;

	mov	rax, QWORD PTR timer$[rbp]
	mov	QWORD PTR [rax+16], 0

; 51   : 	timer->prev = NULL;

	mov	rax, QWORD PTR timer$[rbp]
	mov	QWORD PTR [rax+24], 0

; 52   : 
; 53   : 	if (timerFirst == NULL){

	cmp	QWORD PTR ?timerFirst@@3PEAU_timer_@@EA, 0 ; timerFirst
	jne	SHORT $LN2@AuTimerIns

; 54   : 		timerLast = timer;

	mov	rax, QWORD PTR timer$[rbp]
	mov	QWORD PTR ?timerLast@@3PEAU_timer_@@EA, rax ; timerLast

; 55   : 		timerFirst = timer;

	mov	rax, QWORD PTR timer$[rbp]
	mov	QWORD PTR ?timerFirst@@3PEAU_timer_@@EA, rax ; timerFirst

; 56   : 	}

	jmp	SHORT $LN3@AuTimerIns
$LN2@AuTimerIns:

; 57   : 	else {
; 58   : 		timerLast->next = timer;

	mov	rax, QWORD PTR ?timerLast@@3PEAU_timer_@@EA ; timerLast
	mov	rcx, QWORD PTR timer$[rbp]
	mov	QWORD PTR [rax+16], rcx

; 59   : 		timer->prev = timerLast;

	mov	rax, QWORD PTR timer$[rbp]
	mov	rcx, QWORD PTR ?timerLast@@3PEAU_timer_@@EA ; timerLast
	mov	QWORD PTR [rax+24], rcx
$LN3@AuTimerIns:

; 60   : 	}
; 61   : 
; 62   : 	timerLast = timer;

	mov	rax, QWORD PTR timer$[rbp]
	mov	QWORD PTR ?timerLast@@3PEAU_timer_@@EA, rax ; timerLast

; 63   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuTimerInsert@@YAXPEAU_timer_@@@Z ENDP			; AuTimerInsert
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\autimer.cpp
;	COMDAT ?AuTimerFire@@YAXHHH@Z
_TEXT	SEGMENT
t$1 = 0
sec$ = 96
min$ = 104
hour$ = 112
?AuTimerFire@@YAXHHH@Z PROC				; AuTimerFire, COMDAT

; 160  : void AuTimerFire(int sec, int min, int hour) {

$LN28:
	mov	DWORD PTR [rsp+24], r8d
	mov	DWORD PTR [rsp+16], edx
	mov	DWORD PTR [rsp+8], ecx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__27A82F84_autimer@cpp
	call	__CheckForDebuggerJustMyCode

; 161  : 	if (timerFirst) {

	cmp	QWORD PTR ?timerFirst@@3PEAU_timer_@@EA, 0 ; timerFirst
	je	$LN5@AuTimerFir

; 162  : 		for (AuTimer* t = timerFirst; t != NULL; t = t->next) {

	mov	rax, QWORD PTR ?timerFirst@@3PEAU_timer_@@EA ; timerFirst
	mov	QWORD PTR t$1[rbp], rax
	jmp	SHORT $LN4@AuTimerFir
$LN2@AuTimerFir:
	mov	rax, QWORD PTR t$1[rbp]
	mov	rax, QWORD PTR [rax+16]
	mov	QWORD PTR t$1[rbp], rax
$LN4@AuTimerFir:
	cmp	QWORD PTR t$1[rbp], 0
	je	$LN3@AuTimerFir

; 163  : 			if (t->run) {

	mov	rax, QWORD PTR t$1[rbp]
	movzx	eax, BYTE PTR [rax+15]
	test	eax, eax
	je	$LN6@AuTimerFir

; 164  : 				if (t->updateOrder == TIMER_UPDATE_ORDER_HOUR) {

	mov	rax, QWORD PTR t$1[rbp]
	movzx	eax, BYTE PTR [rax+4]
	cmp	eax, 3
	jne	SHORT $LN7@AuTimerFir

; 165  : 					if (t->maxTick != -1) {

	mov	rax, QWORD PTR t$1[rbp]
	cmp	DWORD PTR [rax+11], -1
	je	SHORT $LN9@AuTimerFir

; 166  : 						if (t->lastTick == t->maxTick)

	mov	rax, QWORD PTR t$1[rbp]
	mov	rcx, QWORD PTR t$1[rbp]
	mov	ecx, DWORD PTR [rcx+11]
	cmp	DWORD PTR [rax], ecx
	jne	SHORT $LN10@AuTimerFir

; 167  : 							t->run = false;

	mov	rax, QWORD PTR t$1[rbp]
	mov	BYTE PTR [rax+15], 0
$LN10@AuTimerFir:
$LN9@AuTimerFir:

; 168  : 					}
; 169  : 					if (t->lastTick != hour) {

	mov	rax, QWORD PTR t$1[rbp]
	mov	ecx, DWORD PTR hour$[rbp]
	cmp	DWORD PTR [rax], ecx
	je	SHORT $LN11@AuTimerFir

; 170  : 						if (t->maxTick != -1){

	mov	rax, QWORD PTR t$1[rbp]
	cmp	DWORD PTR [rax+11], -1
	je	SHORT $LN12@AuTimerFir

; 171  : 							if (t->lastTick == t->maxTick)

	mov	rax, QWORD PTR t$1[rbp]
	mov	rcx, QWORD PTR t$1[rbp]
	mov	ecx, DWORD PTR [rcx+11]
	cmp	DWORD PTR [rax], ecx
	jne	SHORT $LN13@AuTimerFir

; 172  : 								t->run = false;

	mov	rax, QWORD PTR t$1[rbp]
	mov	BYTE PTR [rax+15], 0
$LN13@AuTimerFir:
$LN12@AuTimerFir:

; 173  : 						}
; 174  : 						AuTimerPostMessage(t);

	mov	rcx, QWORD PTR t$1[rbp]
	call	?AuTimerPostMessage@@YAXPEAU_timer_@@@Z	; AuTimerPostMessage

; 175  : 						t->lastTick = hour;

	mov	rax, QWORD PTR t$1[rbp]
	mov	ecx, DWORD PTR hour$[rbp]
	mov	DWORD PTR [rax], ecx
$LN11@AuTimerFir:

; 176  : 					}
; 177  : 				}

	jmp	$LN8@AuTimerFir
$LN7@AuTimerFir:

; 178  : 				else if (t->updateOrder == TIMER_UPDATE_ORDER_MINUTE){

	mov	rax, QWORD PTR t$1[rbp]
	movzx	eax, BYTE PTR [rax+4]
	cmp	eax, 2
	jne	SHORT $LN14@AuTimerFir

; 179  : 					if (t->maxTick != -1){

	mov	rax, QWORD PTR t$1[rbp]
	cmp	DWORD PTR [rax+11], -1
	je	SHORT $LN16@AuTimerFir

; 180  : 						if (t->lastTick == t->maxTick)

	mov	rax, QWORD PTR t$1[rbp]
	mov	rcx, QWORD PTR t$1[rbp]
	mov	ecx, DWORD PTR [rcx+11]
	cmp	DWORD PTR [rax], ecx
	jne	SHORT $LN17@AuTimerFir

; 181  : 							t->run = false;

	mov	rax, QWORD PTR t$1[rbp]
	mov	BYTE PTR [rax+15], 0
$LN17@AuTimerFir:
$LN16@AuTimerFir:

; 182  : 					}
; 183  : 					if (t->lastTick != min) {

	mov	rax, QWORD PTR t$1[rbp]
	mov	ecx, DWORD PTR min$[rbp]
	cmp	DWORD PTR [rax], ecx
	je	SHORT $LN18@AuTimerFir

; 184  : 						AuTimerPostMessage(t);

	mov	rcx, QWORD PTR t$1[rbp]
	call	?AuTimerPostMessage@@YAXPEAU_timer_@@@Z	; AuTimerPostMessage

; 185  : 						t->lastTick = min;

	mov	rax, QWORD PTR t$1[rbp]
	mov	ecx, DWORD PTR min$[rbp]
	mov	DWORD PTR [rax], ecx
$LN18@AuTimerFir:

; 186  : 					}
; 187  : 				}

	jmp	$LN15@AuTimerFir
$LN14@AuTimerFir:

; 188  : 				else if (t->updateOrder == TIMER_UPDATE_ORDER_SECOND) {

	mov	rax, QWORD PTR t$1[rbp]
	movzx	eax, BYTE PTR [rax+4]
	cmp	eax, 1
	jne	SHORT $LN19@AuTimerFir

; 189  : 					if (t->maxTick != -1){

	mov	rax, QWORD PTR t$1[rbp]
	cmp	DWORD PTR [rax+11], -1
	je	SHORT $LN21@AuTimerFir

; 190  : 						if (t->lastTick == t->maxTick)

	mov	rax, QWORD PTR t$1[rbp]
	mov	rcx, QWORD PTR t$1[rbp]
	mov	ecx, DWORD PTR [rcx+11]
	cmp	DWORD PTR [rax], ecx
	jne	SHORT $LN22@AuTimerFir

; 191  : 							t->run = false;

	mov	rax, QWORD PTR t$1[rbp]
	mov	BYTE PTR [rax+15], 0
$LN22@AuTimerFir:
$LN21@AuTimerFir:

; 192  : 					}
; 193  : 					if (t->lastTick != sec){

	mov	rax, QWORD PTR t$1[rbp]
	mov	ecx, DWORD PTR sec$[rbp]
	cmp	DWORD PTR [rax], ecx
	je	SHORT $LN23@AuTimerFir

; 194  : 						AuTimerPostMessage(t);

	mov	rcx, QWORD PTR t$1[rbp]
	call	?AuTimerPostMessage@@YAXPEAU_timer_@@@Z	; AuTimerPostMessage

; 195  : 						t->lastTick = sec;

	mov	rax, QWORD PTR t$1[rbp]
	mov	ecx, DWORD PTR sec$[rbp]
	mov	DWORD PTR [rax], ecx
$LN23@AuTimerFir:

; 196  : 					}
; 197  : 				}

	jmp	SHORT $LN20@AuTimerFir
$LN19@AuTimerFir:

; 198  : 				else if (t->updateOrder == TIMER_UPDATE_ORDER_INTERVAL) {

	mov	rax, QWORD PTR t$1[rbp]
	movzx	eax, BYTE PTR [rax+4]
	cmp	eax, 4
	jne	SHORT $LN24@AuTimerFir

; 199  : 					if (t->lastTick >= t->tickDifference) {

	mov	rax, QWORD PTR t$1[rbp]
	mov	rcx, QWORD PTR t$1[rbp]
	mov	ecx, DWORD PTR [rcx+7]
	cmp	DWORD PTR [rax], ecx
	jl	SHORT $LN25@AuTimerFir

; 200  : 						AuTimerPostMessage(t);

	mov	rcx, QWORD PTR t$1[rbp]
	call	?AuTimerPostMessage@@YAXPEAU_timer_@@@Z	; AuTimerPostMessage

; 201  : 						t->lastTick = 0;

	mov	rax, QWORD PTR t$1[rbp]
	mov	DWORD PTR [rax], 0

; 202  : 					}

	jmp	SHORT $LN26@AuTimerFir
$LN25@AuTimerFir:

; 203  : 					else{
; 204  : 						t->lastTick++;

	mov	rax, QWORD PTR t$1[rbp]
	mov	eax, DWORD PTR [rax]
	inc	eax
	mov	rcx, QWORD PTR t$1[rbp]
	mov	DWORD PTR [rcx], eax
$LN26@AuTimerFir:
$LN24@AuTimerFir:
$LN20@AuTimerFir:
$LN15@AuTimerFir:
$LN8@AuTimerFir:
$LN6@AuTimerFir:

; 205  : 					}
; 206  : 				}
; 207  : 			}
; 208  : 		}

	jmp	$LN2@AuTimerFir
$LN3@AuTimerFir:
$LN5@AuTimerFir:

; 209  : 	}
; 210  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuTimerFire@@YAXHHH@Z ENDP				; AuTimerFire
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\autimer.cpp
;	COMDAT ?AuTimerDestroy@@YAXG@Z
_TEXT	SEGMENT
t$1 = 0
threadID$ = 96
?AuTimerDestroy@@YAXG@Z PROC				; AuTimerDestroy, COMDAT

; 130  : void AuTimerDestroy(uint16_t threadID) {

$LN7:
	mov	WORD PTR [rsp+8], cx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__27A82F84_autimer@cpp
	call	__CheckForDebuggerJustMyCode

; 131  : 	for (AuTimer* t = timerFirst; t != NULL; t = t->next) {

	mov	rax, QWORD PTR ?timerFirst@@3PEAU_timer_@@EA ; timerFirst
	mov	QWORD PTR t$1[rbp], rax
	jmp	SHORT $LN4@AuTimerDes
$LN2@AuTimerDes:
	mov	rax, QWORD PTR t$1[rbp]
	mov	rax, QWORD PTR [rax+16]
	mov	QWORD PTR t$1[rbp], rax
$LN4@AuTimerDes:
	cmp	QWORD PTR t$1[rbp], 0
	je	SHORT $LN3@AuTimerDes

; 132  : 		if (t->threadId == threadID){

	mov	rax, QWORD PTR t$1[rbp]
	movzx	eax, WORD PTR [rax+5]
	movzx	ecx, WORD PTR threadID$[rbp]
	cmp	eax, ecx
	jne	SHORT $LN5@AuTimerDes

; 133  : 			AuTimerDelete(t);

	mov	rcx, QWORD PTR t$1[rbp]
	call	?AuTimerDelete@@YAXPEAU_timer_@@@Z	; AuTimerDelete

; 134  : 			break;

	jmp	SHORT $LN3@AuTimerDes
$LN5@AuTimerDes:

; 135  : 		}
; 136  : 	}

	jmp	SHORT $LN2@AuTimerDes
$LN3@AuTimerDes:

; 137  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuTimerDestroy@@YAXG@Z ENDP				; AuTimerDestroy
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\autimer.cpp
;	COMDAT ?AuTimerStop@@YAXG@Z
_TEXT	SEGMENT
t$1 = 0
threadId$ = 96
?AuTimerStop@@YAXG@Z PROC				; AuTimerStop, COMDAT

; 116  : void AuTimerStop(uint16_t threadId) {

$LN7:
	mov	WORD PTR [rsp+8], cx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__27A82F84_autimer@cpp
	call	__CheckForDebuggerJustMyCode

; 117  : 	for (AuTimer* t = timerFirst; t != NULL; t = t->next) {

	mov	rax, QWORD PTR ?timerFirst@@3PEAU_timer_@@EA ; timerFirst
	mov	QWORD PTR t$1[rbp], rax
	jmp	SHORT $LN4@AuTimerSto
$LN2@AuTimerSto:
	mov	rax, QWORD PTR t$1[rbp]
	mov	rax, QWORD PTR [rax+16]
	mov	QWORD PTR t$1[rbp], rax
$LN4@AuTimerSto:
	cmp	QWORD PTR t$1[rbp], 0
	je	SHORT $LN3@AuTimerSto

; 118  : 		if (t->threadId == threadId){

	mov	rax, QWORD PTR t$1[rbp]
	movzx	eax, WORD PTR [rax+5]
	movzx	ecx, WORD PTR threadId$[rbp]
	cmp	eax, ecx
	jne	SHORT $LN5@AuTimerSto

; 119  : 			t->run = false;

	mov	rax, QWORD PTR t$1[rbp]
	mov	BYTE PTR [rax+15], 0

; 120  : 			break;

	jmp	SHORT $LN3@AuTimerSto
$LN5@AuTimerSto:

; 121  : 		}
; 122  : 	}

	jmp	SHORT $LN2@AuTimerSto
$LN3@AuTimerSto:

; 123  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuTimerStop@@YAXG@Z ENDP				; AuTimerStop
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\autimer.cpp
;	COMDAT ?AuTimerStart@@YAXG@Z
_TEXT	SEGMENT
t$1 = 0
threadId$ = 96
?AuTimerStart@@YAXG@Z PROC				; AuTimerStart, COMDAT

; 102  : void AuTimerStart(uint16_t threadId) {

$LN7:
	mov	WORD PTR [rsp+8], cx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__27A82F84_autimer@cpp
	call	__CheckForDebuggerJustMyCode

; 103  : 	for (AuTimer* t = timerFirst; t != NULL; t = t->next) {

	mov	rax, QWORD PTR ?timerFirst@@3PEAU_timer_@@EA ; timerFirst
	mov	QWORD PTR t$1[rbp], rax
	jmp	SHORT $LN4@AuTimerSta
$LN2@AuTimerSta:
	mov	rax, QWORD PTR t$1[rbp]
	mov	rax, QWORD PTR [rax+16]
	mov	QWORD PTR t$1[rbp], rax
$LN4@AuTimerSta:
	cmp	QWORD PTR t$1[rbp], 0
	je	SHORT $LN3@AuTimerSta

; 104  : 		if (t->threadId == threadId) {

	mov	rax, QWORD PTR t$1[rbp]
	movzx	eax, WORD PTR [rax+5]
	movzx	ecx, WORD PTR threadId$[rbp]
	cmp	eax, ecx
	jne	SHORT $LN5@AuTimerSta

; 105  : 			t->run = true;

	mov	rax, QWORD PTR t$1[rbp]
	mov	BYTE PTR [rax+15], 1

; 106  : 			break;

	jmp	SHORT $LN3@AuTimerSta
$LN5@AuTimerSta:

; 107  : 		}
; 108  : 	}

	jmp	SHORT $LN2@AuTimerSta
$LN3@AuTimerSta:

; 109  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuTimerStart@@YAXG@Z ENDP				; AuTimerStart
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\autimer.cpp
;	COMDAT ?AuTimerCreate@@YAXGHE@Z
_TEXT	SEGMENT
timer$ = 0
thread_id$ = 96
maxTickLimit$ = 104
updateOrder$ = 112
?AuTimerCreate@@YAXGHE@Z PROC				; AuTimerCreate, COMDAT

; 88   : void AuTimerCreate(uint16_t thread_id, int maxTickLimit, uint8_t updateOrder){

$LN3:
	mov	BYTE PTR [rsp+24], r8b
	mov	DWORD PTR [rsp+16], edx
	mov	WORD PTR [rsp+8], cx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__27A82F84_autimer@cpp
	call	__CheckForDebuggerJustMyCode

; 89   : 	AuTimer* timer = (AuTimer*)kmalloc(sizeof(AuTimer));

	mov	ecx, 32					; 00000020H
	call	kmalloc
	mov	QWORD PTR timer$[rbp], rax

; 90   : 	memset(timer, 0, sizeof(AuTimer));

	mov	r8d, 32					; 00000020H
	xor	edx, edx
	mov	rcx, QWORD PTR timer$[rbp]
	call	memset

; 91   : 	timer->threadId = thread_id;

	mov	rax, QWORD PTR timer$[rbp]
	movzx	ecx, WORD PTR thread_id$[rbp]
	mov	WORD PTR [rax+5], cx

; 92   : 	timer->maxTick = maxTickLimit;

	mov	rax, QWORD PTR timer$[rbp]
	mov	ecx, DWORD PTR maxTickLimit$[rbp]
	mov	DWORD PTR [rax+11], ecx

; 93   : 	timer->updateOrder = updateOrder;

	mov	rax, QWORD PTR timer$[rbp]
	movzx	ecx, BYTE PTR updateOrder$[rbp]
	mov	BYTE PTR [rax+4], cl

; 94   : 	timer->run = false;

	mov	rax, QWORD PTR timer$[rbp]
	mov	BYTE PTR [rax+15], 0

; 95   : 	AuTimerInsert(timer);

	mov	rcx, QWORD PTR timer$[rbp]
	call	?AuTimerInsert@@YAXPEAU_timer_@@@Z	; AuTimerInsert

; 96   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
?AuTimerCreate@@YAXGHE@Z ENDP				; AuTimerCreate
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\autimer.cpp
;	COMDAT ?AuTimerDataInitialise@@YAXXZ
_TEXT	SEGMENT
?AuTimerDataInitialise@@YAXXZ PROC			; AuTimerDataInitialise, COMDAT

; 44   : void AuTimerDataInitialise() {

$LN3:
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__27A82F84_autimer@cpp
	call	__CheckForDebuggerJustMyCode

; 45   : 	timerFirst = NULL;

	mov	QWORD PTR ?timerFirst@@3PEAU_timer_@@EA, 0 ; timerFirst

; 46   : 	timerLast = NULL;

	mov	QWORD PTR ?timerLast@@3PEAU_timer_@@EA, 0 ; timerLast

; 47   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
?AuTimerDataInitialise@@YAXXZ ENDP			; AuTimerDataInitialise
_TEXT	ENDS
END
