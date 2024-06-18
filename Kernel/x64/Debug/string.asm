; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30154.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

msvcjmc	SEGMENT
__3C03ACC5_string@cpp DB 01H
msvcjmc	ENDS
PUBLIC	strcmp
PUBLIC	strcpy
PUBLIC	strlen
PUBLIC	strncmp
PUBLIC	strncpy
PUBLIC	strchr
PUBLIC	strcat
PUBLIC	strncat
PUBLIC	memset
PUBLIC	memcpy
PUBLIC	memcmp
PUBLIC	strdup
PUBLIC	__JustMyCode_Default
EXTRN	kmalloc:PROC
EXTRN	_fastcpy:PROC
EXTRN	__CheckForDebuggerJustMyCode:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$strcmp DD imagerel $LN9
	DD	imagerel $LN9+155
	DD	imagerel $unwind$strcmp
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$strcpy DD imagerel $LN7
	DD	imagerel $LN7+121
	DD	imagerel $unwind$strcpy
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$strlen DD imagerel $LN5
	DD	imagerel $LN5+84
	DD	imagerel $unwind$strlen
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$strncmp DD imagerel $LN7
	DD	imagerel $LN7+156
	DD	imagerel $unwind$strncmp
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$strncpy DD imagerel $LN11
	DD	imagerel $LN11+177
	DD	imagerel $unwind$strncpy
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$strchr DD imagerel $LN7
	DD	imagerel $LN7+84
	DD	imagerel $unwind$strchr
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$strcat DD imagerel $LN12
	DD	imagerel $LN12+178
	DD	imagerel $unwind$strcat
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$strncat DD imagerel $LN15
	DD	imagerel $LN15+223
	DD	imagerel $unwind$strncat
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$memset DD imagerel $LN5
	DD	imagerel $LN5+93
	DD	imagerel $unwind$memset
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$memcpy DD imagerel $LN3
	DD	imagerel $LN3+60
	DD	imagerel $unwind$memcpy
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$memcmp DD imagerel $LN9
	DD	imagerel $LN9+170
	DD	imagerel $unwind$memcmp
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$strdup DD imagerel $LN3
	DD	imagerel $LN3+88
	DD	imagerel $unwind$strdup
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$strdup DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$memcmp DD 025031901H
	DD	0d2142319H
	DD	05010H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$memcpy DD 025031901H
	DD	0b2142319H
	DD	05010H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$memset DD 025031801H
	DD	0d2132318H
	DD	0500fH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$strncat DD 025031901H
	DD	0d2142319H
	DD	05010H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$strcat DD 025031401H
	DD	0d20f2314H
	DD	0500bH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$strchr DD 025031301H
	DD	0d20e2313H
	DD	0500aH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$strncpy DD 025031901H
	DD	0d2142319H
	DD	05010H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$strncmp DD 025031901H
	DD	0d2142319H
	DD	05010H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$strlen DD 025030f01H
	DD	0d20a230fH
	DD	05006H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$strcpy DD 025031401H
	DD	0d20f2314H
	DD	0500bH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$strcmp DD 025031401H
	DD	0d20f2314H
	DD	0500bH
xdata	ENDS
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
_TEXT	SEGMENT
__JustMyCode_Default PROC				; COMDAT
	ret	0
__JustMyCode_Default ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\string.cpp
;	COMDAT strdup
_TEXT	SEGMENT
out$ = 0
c$ = 96
strdup	PROC						; COMDAT

; 236  : char* strdup(const char*  c) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C03ACC5_string@cpp
	call	__CheckForDebuggerJustMyCode

; 237  : 	char *out = (char*)kmalloc(strlen(c) + 1);

	mov	rcx, QWORD PTR c$[rbp]
	call	strlen
	inc	rax
	mov	ecx, eax
	call	kmalloc
	mov	QWORD PTR out$[rbp], rax

; 238  : 	memcpy(out, (void*)c, strlen(c) + 1);

	mov	rcx, QWORD PTR c$[rbp]
	call	strlen
	inc	rax
	mov	r8, rax
	mov	rdx, QWORD PTR c$[rbp]
	mov	rcx, QWORD PTR out$[rbp]
	call	memcpy

; 239  : 	return out;

	mov	rax, QWORD PTR out$[rbp]

; 240  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
strdup	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\string.cpp
;	COMDAT memcmp
_TEXT	SEGMENT
count$ = 0
first$ = 96
second$ = 104
length$ = 112
memcmp	PROC						; COMDAT

; 47   : int memcmp(const void *first, const void *second, size_t length){

$LN9:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C03ACC5_string@cpp
	call	__CheckForDebuggerJustMyCode

; 48   : 	size_t count;
; 49   : 	for (count = 0; count < length; count++)

	mov	QWORD PTR count$[rbp], 0
	jmp	SHORT $LN4@memcmp
$LN2@memcmp:
	mov	rax, QWORD PTR count$[rbp]
	inc	rax
	mov	QWORD PTR count$[rbp], rax
$LN4@memcmp:
	mov	rax, QWORD PTR length$[rbp]
	cmp	QWORD PTR count$[rbp], rax
	jae	SHORT $LN3@memcmp

; 50   : 	{
; 51   : 		if (((unsigned char*)first)[count] != ((unsigned char *)second)[count])

	mov	rax, QWORD PTR count$[rbp]
	mov	rcx, QWORD PTR first$[rbp]
	add	rcx, rax
	mov	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	rcx, QWORD PTR count$[rbp]
	mov	rdx, QWORD PTR second$[rbp]
	add	rdx, rcx
	mov	rcx, rdx
	movzx	ecx, BYTE PTR [rcx]
	cmp	eax, ecx
	je	SHORT $LN5@memcmp

; 52   : 		{
; 53   : 			if (((unsigned char*)first)[count] < ((unsigned char *)second)[count])

	mov	rax, QWORD PTR count$[rbp]
	mov	rcx, QWORD PTR first$[rbp]
	add	rcx, rax
	mov	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	rcx, QWORD PTR count$[rbp]
	mov	rdx, QWORD PTR second$[rbp]
	add	rdx, rcx
	mov	rcx, rdx
	movzx	ecx, BYTE PTR [rcx]
	cmp	eax, ecx
	jge	SHORT $LN6@memcmp

; 54   : 			{
; 55   : 				return (-1);

	mov	eax, -1
	jmp	SHORT $LN1@memcmp

; 56   : 			}

	jmp	SHORT $LN7@memcmp
$LN6@memcmp:

; 57   : 			else
; 58   : 			{
; 59   : 				return (1);

	mov	eax, 1
	jmp	SHORT $LN1@memcmp
$LN7@memcmp:
$LN5@memcmp:

; 60   : 			}
; 61   : 		}
; 62   : 	}

	jmp	SHORT $LN2@memcmp
$LN3@memcmp:

; 63   : 
; 64   : 	return (0); //return successful code

	xor	eax, eax
$LN1@memcmp:

; 65   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
memcmp	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\string.cpp
;	COMDAT memcpy
_TEXT	SEGMENT
dest$ = 80
src$ = 88
count$ = 96
memcpy	PROC						; COMDAT

; 68   : void memcpy(void *dest, void *src, size_t count){

$LN3:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 96					; 00000060H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C03ACC5_string@cpp
	call	__CheckForDebuggerJustMyCode

; 69   : 	_fastcpy(dest, src, count);

	mov	r8, QWORD PTR count$[rbp]
	mov	rdx, QWORD PTR src$[rbp]
	mov	rcx, QWORD PTR dest$[rbp]
	call	_fastcpy

; 70   : }

	lea	rsp, QWORD PTR [rbp+64]
	pop	rbp
	ret	0
memcpy	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\string.cpp
;	COMDAT memset
_TEXT	SEGMENT
t$ = 0
tv66 = 72
targ$ = 96
val$ = 104
len$ = 112
memset	PROC						; COMDAT

; 41   : void memset(void *targ, uint8_t val, uint32_t len){

$LN5:
	mov	DWORD PTR [rsp+24], r8d
	mov	BYTE PTR [rsp+16], dl
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C03ACC5_string@cpp
	call	__CheckForDebuggerJustMyCode

; 42   : 	uint8_t *t = (uint8_t*)targ;

	mov	rax, QWORD PTR targ$[rbp]
	mov	QWORD PTR t$[rbp], rax
$LN2@memset:

; 43   : 	while (len--)

	mov	eax, DWORD PTR len$[rbp]
	mov	DWORD PTR tv66[rbp], eax
	mov	eax, DWORD PTR len$[rbp]
	dec	eax
	mov	DWORD PTR len$[rbp], eax
	cmp	DWORD PTR tv66[rbp], 0
	je	SHORT $LN3@memset

; 44   : 		*t++ = val;

	mov	rax, QWORD PTR t$[rbp]
	movzx	ecx, BYTE PTR val$[rbp]
	mov	BYTE PTR [rax], cl
	mov	rax, QWORD PTR t$[rbp]
	inc	rax
	mov	QWORD PTR t$[rbp], rax
	jmp	SHORT $LN2@memset
$LN3@memset:

; 45   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
memset	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\string.cpp
;	COMDAT strncat
_TEXT	SEGMENT
count1$ = 0
count2$ = 4
endFlag$ = 8
sourceChar$ = 12
destString$ = 96
sourceString$ = 104
maxLength$ = 112
strncat	PROC						; COMDAT

; 188  : {

$LN15:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C03ACC5_string@cpp
	call	__CheckForDebuggerJustMyCode

; 189  : 	unsigned count1, count2;
; 190  : 	int endFlag = 0;

	mov	DWORD PTR endFlag$[rbp], 0

; 191  : 	char sourceChar;
; 192  : 
; 193  : 	// Find the end of the first String
; 194  : 	for (count1 = 0; count1 < MAX_STRING_LENGTH;)

	mov	DWORD PTR count1$[rbp], 0
$LN2@strncat:
	cmp	DWORD PTR count1$[rbp], 25
	jae	SHORT $LN3@strncat

; 195  : 	{
; 196  : 		if (destString[count1] == '\0')

	mov	eax, DWORD PTR count1$[rbp]
	mov	rcx, QWORD PTR destString$[rbp]
	movsx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	jne	SHORT $LN8@strncat

; 197  : 			break;

	jmp	SHORT $LN3@strncat
	jmp	SHORT $LN9@strncat
$LN8@strncat:

; 198  : 		else
; 199  : 			count1++;

	mov	eax, DWORD PTR count1$[rbp]
	inc	eax
	mov	DWORD PTR count1$[rbp], eax
$LN9@strncat:

; 200  : 	}

	jmp	SHORT $LN2@strncat
$LN3@strncat:

; 201  : 
; 202  : 	// If this is true, then we probably have an unterminated string
; 203  : 	// constant.  Checking for a string that exceeds MAXSTRINGLENGTH will
; 204  : 	// help to prevent the function from running off too far into memory.
; 205  : 	if (count1 >= MAX_STRING_LENGTH)

	cmp	DWORD PTR count1$[rbp], 25
	jb	SHORT $LN10@strncat

; 206  : 	{
; 207  : 		//errno = ERR_BOUNDS;
; 208  : 		return (destString = NULL);

	mov	QWORD PTR destString$[rbp], 0
	mov	rax, QWORD PTR destString$[rbp]
	jmp	SHORT $LN1@strncat
$LN10@strncat:

; 209  : 	}
; 210  : 
; 211  : 	// Now copy the source string into the dest.  If source is shorter than
; 212  : 	// maxLength, pad dest with NULL characters.
; 213  : 	for (count2 = 0; count2 < maxLength;)

	mov	DWORD PTR count2$[rbp], 0
$LN5@strncat:
	mov	eax, DWORD PTR count2$[rbp]
	cmp	rax, QWORD PTR maxLength$[rbp]
	jae	SHORT $LN6@strncat

; 214  : 	{
; 215  : 		if ((sourceString[count2] == '\0') || (endFlag == 1))

	mov	eax, DWORD PTR count2$[rbp]
	mov	rcx, QWORD PTR sourceString$[rbp]
	movsx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	je	SHORT $LN13@strncat
	cmp	DWORD PTR endFlag$[rbp], 1
	jne	SHORT $LN11@strncat
$LN13@strncat:

; 216  : 		{
; 217  : 			endFlag = 1;

	mov	DWORD PTR endFlag$[rbp], 1

; 218  : 			sourceChar = (char)NULL;

	mov	BYTE PTR sourceChar$[rbp], 0

; 219  : 		}

	jmp	SHORT $LN12@strncat
$LN11@strncat:

; 220  : 		else
; 221  : 		{
; 222  : 			sourceChar = sourceString[count2];

	mov	eax, DWORD PTR count2$[rbp]
	mov	rcx, QWORD PTR sourceString$[rbp]
	movzx	eax, BYTE PTR [rcx+rax]
	mov	BYTE PTR sourceChar$[rbp], al
$LN12@strncat:

; 223  : 		}
; 224  : 
; 225  : 		destString[count1] = sourceChar;

	mov	eax, DWORD PTR count1$[rbp]
	mov	rcx, QWORD PTR destString$[rbp]
	movzx	edx, BYTE PTR sourceChar$[rbp]
	mov	BYTE PTR [rcx+rax], dl

; 226  : 		count1++; count2++;

	mov	eax, DWORD PTR count1$[rbp]
	inc	eax
	mov	DWORD PTR count1$[rbp], eax
	mov	eax, DWORD PTR count2$[rbp]
	inc	eax
	mov	DWORD PTR count2$[rbp], eax

; 227  : 	}

	jmp	SHORT $LN5@strncat
$LN6@strncat:

; 228  : 
; 229  : 	// Make sure there's a NULL at the end
; 230  : 	destString[count1] = NULL;

	mov	eax, DWORD PTR count1$[rbp]
	mov	rcx, QWORD PTR destString$[rbp]
	mov	BYTE PTR [rcx+rax], 0

; 231  : 
; 232  : 	// Return success
; 233  : 	return (destString);

	mov	rax, QWORD PTR destString$[rbp]
$LN1@strncat:

; 234  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
strncat	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\string.cpp
;	COMDAT strcat
_TEXT	SEGMENT
count1$ = 0
count2$ = 4
destString$ = 96
sourceString$ = 104
strcat	PROC						; COMDAT

; 153  : {

$LN12:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C03ACC5_string@cpp
	call	__CheckForDebuggerJustMyCode

; 154  : 	int count1, count2;
; 155  : 
; 156  : 	// Find the end of the first String
; 157  : 	for (count1 = 0; count1 < MAX_STRING_LENGTH;)

	mov	DWORD PTR count1$[rbp], 0
$LN2@strcat:
	cmp	DWORD PTR count1$[rbp], 25
	jge	SHORT $LN3@strcat

; 158  : 	{
; 159  : 		if (!destString[count1])

	movsxd	rax, DWORD PTR count1$[rbp]
	mov	rcx, QWORD PTR destString$[rbp]
	movsx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	jne	SHORT $LN8@strcat

; 160  : 			break;

	jmp	SHORT $LN3@strcat
$LN8@strcat:

; 161  : 
; 162  : 		count1 += 1;

	mov	eax, DWORD PTR count1$[rbp]
	inc	eax
	mov	DWORD PTR count1$[rbp], eax

; 163  : 	}

	jmp	SHORT $LN2@strcat
$LN3@strcat:

; 164  : 
; 165  : 	// If this is true, then we possibly have an unterminated string constant.
; 166  : 	// Checking for a string that exceeds MAXSTRINGLENGTH will help to prevent
; 167  : 	// the function from running off too far into memory.
; 168  : 	if (count1 >= MAX_STRING_LENGTH)

	cmp	DWORD PTR count1$[rbp], 25
	jl	SHORT $LN9@strcat

; 169  : 	{
; 170  : 		//errno = ERR_BOUNDS;
; 171  : 		return (destString = NULL);

	mov	QWORD PTR destString$[rbp], 0
	mov	rax, QWORD PTR destString$[rbp]
	jmp	SHORT $LN1@strcat
$LN9@strcat:

; 172  : 	}
; 173  : 
; 174  : 	// Now copy the source string into the dest until the source is a NULL
; 175  : 	// character.
; 176  : 	for (count2 = 0; count1 < MAX_STRING_LENGTH; count1++, count2++)

	mov	DWORD PTR count2$[rbp], 0
	jmp	SHORT $LN7@strcat
$LN5@strcat:
	mov	eax, DWORD PTR count1$[rbp]
	inc	eax
	mov	DWORD PTR count1$[rbp], eax
	mov	eax, DWORD PTR count2$[rbp]
	inc	eax
	mov	DWORD PTR count2$[rbp], eax
$LN7@strcat:
	cmp	DWORD PTR count1$[rbp], 25
	jge	SHORT $LN6@strcat

; 177  : 	{
; 178  : 		destString[count1] = sourceString[count2];

	movsxd	rax, DWORD PTR count2$[rbp]
	movsxd	rcx, DWORD PTR count1$[rbp]
	mov	rdx, QWORD PTR destString$[rbp]
	mov	r8, QWORD PTR sourceString$[rbp]
	movzx	eax, BYTE PTR [r8+rax]
	mov	BYTE PTR [rdx+rcx], al

; 179  : 
; 180  : 		if (!sourceString[count2])

	movsxd	rax, DWORD PTR count2$[rbp]
	mov	rcx, QWORD PTR sourceString$[rbp]
	movsx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	jne	SHORT $LN10@strcat

; 181  : 			break;

	jmp	SHORT $LN6@strcat
$LN10@strcat:

; 182  : 	}

	jmp	SHORT $LN5@strcat
$LN6@strcat:

; 183  : 
; 184  : 	return (destString);

	mov	rax, QWORD PTR destString$[rbp]
$LN1@strcat:

; 185  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
strcat	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\string.cpp
;	COMDAT strchr
_TEXT	SEGMENT
tv69 = 64
str$ = 96
character$ = 104
strchr	PROC						; COMDAT

; 142  : char* strchr(char* str, int character) {

$LN7:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C03ACC5_string@cpp
	call	__CheckForDebuggerJustMyCode
$LN4@strchr:

; 143  : 
; 144  : 	do {
; 145  : 		if (*str == character)

	mov	rax, QWORD PTR str$[rbp]
	movsx	eax, BYTE PTR [rax]
	cmp	eax, DWORD PTR character$[rbp]
	jne	SHORT $LN5@strchr

; 146  : 			return (char*)str;

	mov	rax, QWORD PTR str$[rbp]
	jmp	SHORT $LN1@strchr
$LN5@strchr:

; 147  : 	} while (*str++);

	mov	rax, QWORD PTR str$[rbp]
	movsx	eax, BYTE PTR [rax]
	mov	DWORD PTR tv69[rbp], eax
	mov	rax, QWORD PTR str$[rbp]
	inc	rax
	mov	QWORD PTR str$[rbp], rax
	cmp	DWORD PTR tv69[rbp], 0
	jne	SHORT $LN4@strchr

; 148  : 
; 149  : 	return 0;

	xor	eax, eax
$LN1@strchr:

; 150  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
strchr	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\string.cpp
;	COMDAT strncpy
_TEXT	SEGMENT
count$ = 0
destString$ = 96
sourceString$ = 104
maxLength$ = 112
strncpy	PROC						; COMDAT

; 114  : char *strncpy(char *destString, const char* sourceString, size_t maxLength){

$LN11:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C03ACC5_string@cpp
	call	__CheckForDebuggerJustMyCode

; 115  : 	unsigned count;
; 116  : 
; 117  : 	if ((destString == (char*)NULL) || (sourceString == (char*)NULL))

	cmp	QWORD PTR destString$[rbp], 0
	je	SHORT $LN6@strncpy
	cmp	QWORD PTR sourceString$[rbp], 0
	jne	SHORT $LN5@strncpy
$LN6@strncpy:

; 118  : 	{
; 119  : 		return (destString = NULL);

	mov	QWORD PTR destString$[rbp], 0
	mov	rax, QWORD PTR destString$[rbp]
	jmp	SHORT $LN1@strncpy
$LN5@strncpy:

; 120  : 	}
; 121  : 
; 122  : 	if (maxLength > MAX_STRING_LENGTH)

	cmp	QWORD PTR maxLength$[rbp], 25
	jbe	SHORT $LN7@strncpy

; 123  : 		maxLength = MAX_STRING_LENGTH;

	mov	QWORD PTR maxLength$[rbp], 25
$LN7@strncpy:

; 124  : 
; 125  : 	for (count = 0; count < maxLength; count++)

	mov	DWORD PTR count$[rbp], 0
	jmp	SHORT $LN4@strncpy
$LN2@strncpy:
	mov	eax, DWORD PTR count$[rbp]
	inc	eax
	mov	DWORD PTR count$[rbp], eax
$LN4@strncpy:
	mov	eax, DWORD PTR count$[rbp]
	cmp	rax, QWORD PTR maxLength$[rbp]
	jae	SHORT $LN3@strncpy

; 126  : 	{
; 127  : 		destString[count] = sourceString[count];

	mov	eax, DWORD PTR count$[rbp]
	mov	ecx, DWORD PTR count$[rbp]
	mov	rdx, QWORD PTR destString$[rbp]
	mov	r8, QWORD PTR sourceString$[rbp]
	movzx	eax, BYTE PTR [r8+rax]
	mov	BYTE PTR [rdx+rcx], al

; 128  : 
; 129  : 		if (sourceString[count] == '\0')

	mov	eax, DWORD PTR count$[rbp]
	mov	rcx, QWORD PTR sourceString$[rbp]
	movsx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	jne	SHORT $LN8@strncpy

; 130  : 			break;

	jmp	SHORT $LN3@strncpy
$LN8@strncpy:

; 131  : 	}

	jmp	SHORT $LN2@strncpy
$LN3@strncpy:

; 132  : 
; 133  : 	if (count >= MAX_STRING_LENGTH)

	cmp	DWORD PTR count$[rbp], 25
	jb	SHORT $LN9@strncpy

; 134  : 	{
; 135  : 		return (destString = NULL);

	mov	QWORD PTR destString$[rbp], 0
	mov	rax, QWORD PTR destString$[rbp]
	jmp	SHORT $LN1@strncpy
$LN9@strncpy:

; 136  : 	}
; 137  : 
; 138  : 	return (destString);

	mov	rax, QWORD PTR destString$[rbp]
$LN1@strncpy:

; 139  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
strncpy	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\string.cpp
;	COMDAT strncmp
_TEXT	SEGMENT
tv78 = 64
s1$ = 96
s2$ = 104
n$ = 112
strncmp	PROC						; COMDAT

; 106  : int strncmp(const char* s1, const char *s2, size_t n){

$LN7:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C03ACC5_string@cpp
	call	__CheckForDebuggerJustMyCode
$LN2@strncmp:

; 107  : 	while (n > 0 && *s1 != '\0' && *s1 == *s2) {

	cmp	QWORD PTR n$[rbp], 0
	jbe	SHORT $LN3@strncmp
	mov	rax, QWORD PTR s1$[rbp]
	movsx	eax, BYTE PTR [rax]
	test	eax, eax
	je	SHORT $LN3@strncmp
	mov	rax, QWORD PTR s1$[rbp]
	movsx	eax, BYTE PTR [rax]
	mov	rcx, QWORD PTR s2$[rbp]
	movsx	ecx, BYTE PTR [rcx]
	cmp	eax, ecx
	jne	SHORT $LN3@strncmp

; 108  : 		n--, s1++, s2++;

	mov	rax, QWORD PTR n$[rbp]
	dec	rax
	mov	QWORD PTR n$[rbp], rax
	mov	rax, QWORD PTR s1$[rbp]
	inc	rax
	mov	QWORD PTR s1$[rbp], rax
	mov	rax, QWORD PTR s2$[rbp]
	inc	rax
	mov	QWORD PTR s2$[rbp], rax

; 109  : 	}

	jmp	SHORT $LN2@strncmp
$LN3@strncmp:

; 110  : 
; 111  : 	return (n == 0) ? 0 : (size_t)((unsigned char)*s1 - (unsigned char)*s2);

	cmp	QWORD PTR n$[rbp], 0
	jne	SHORT $LN5@strncmp
	mov	QWORD PTR tv78[rbp], 0
	jmp	SHORT $LN6@strncmp
$LN5@strncmp:
	mov	rax, QWORD PTR s1$[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	rcx, QWORD PTR s2$[rbp]
	movzx	ecx, BYTE PTR [rcx]
	sub	eax, ecx
	cdqe
	mov	QWORD PTR tv78[rbp], rax
$LN6@strncmp:
	mov	eax, DWORD PTR tv78[rbp]

; 112  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
strncmp	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\string.cpp
;	COMDAT strlen
_TEXT	SEGMENT
len$ = 0
tv69 = 72
str$ = 96
strlen	PROC						; COMDAT

; 99   : size_t strlen(const char* str){

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C03ACC5_string@cpp
	call	__CheckForDebuggerJustMyCode

; 100  : 	size_t len = 0;

	mov	QWORD PTR len$[rbp], 0
$LN2@strlen:

; 101  : 	while (str[len++]);

	mov	rax, QWORD PTR len$[rbp]
	mov	rcx, QWORD PTR str$[rbp]
	add	rcx, rax
	mov	rax, rcx
	movsx	eax, BYTE PTR [rax]
	mov	DWORD PTR tv69[rbp], eax
	mov	rax, QWORD PTR len$[rbp]
	inc	rax
	mov	QWORD PTR len$[rbp], rax
	cmp	DWORD PTR tv69[rbp], 0
	je	SHORT $LN3@strlen
	jmp	SHORT $LN2@strlen
$LN3@strlen:

; 102  : 	return len;

	mov	rax, QWORD PTR len$[rbp]

; 103  : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
strlen	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\string.cpp
;	COMDAT strcpy
_TEXT	SEGMENT
s1_p$ = 0
tv70 = 72
s1$ = 96
s2$ = 104
strcpy	PROC						; COMDAT

; 90   : {

$LN7:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C03ACC5_string@cpp
	call	__CheckForDebuggerJustMyCode

; 91   : 	if (s1 == NULL || s2 == NULL)

	cmp	QWORD PTR s1$[rbp], 0
	je	SHORT $LN5@strcpy
	cmp	QWORD PTR s2$[rbp], 0
	jne	SHORT $LN4@strcpy
$LN5@strcpy:

; 92   : 		return NULL;

	xor	eax, eax
	jmp	SHORT $LN1@strcpy
$LN4@strcpy:

; 93   : 
; 94   : 	char *s1_p = s1;

	mov	rax, QWORD PTR s1$[rbp]
	mov	QWORD PTR s1_p$[rbp], rax
$LN2@strcpy:

; 95   : 	while (*s1++ = *s2++);

	mov	rax, QWORD PTR s1$[rbp]
	mov	rcx, QWORD PTR s2$[rbp]
	movzx	ecx, BYTE PTR [rcx]
	mov	BYTE PTR [rax], cl
	mov	rax, QWORD PTR s1$[rbp]
	movsx	eax, BYTE PTR [rax]
	mov	DWORD PTR tv70[rbp], eax
	mov	rax, QWORD PTR s1$[rbp]
	inc	rax
	mov	QWORD PTR s1$[rbp], rax
	mov	rax, QWORD PTR s2$[rbp]
	inc	rax
	mov	QWORD PTR s2$[rbp], rax
	cmp	DWORD PTR tv70[rbp], 0
	je	SHORT $LN3@strcpy
	jmp	SHORT $LN2@strcpy
$LN3@strcpy:

; 96   : 	return s1_p;

	mov	rax, QWORD PTR s1_p$[rbp]
$LN1@strcpy:

; 97   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
strcpy	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /ZI
; File E:\Xeneva Project\Aurora\Kernel\string.cpp
;	COMDAT strcmp
_TEXT	SEGMENT
res$ = 0
str1$ = 96
str2$ = 104
strcmp	PROC						; COMDAT

; 73   : int strcmp(const char* str1, const char* str2){

$LN9:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	sub	rsp, 112				; 00000070H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C03ACC5_string@cpp
	call	__CheckForDebuggerJustMyCode

; 74   : 	if (str1 == NULL || str2 == NULL)

	cmp	QWORD PTR str1$[rbp], 0
	je	SHORT $LN5@strcmp
	cmp	QWORD PTR str2$[rbp], 0
	jne	SHORT $LN4@strcmp
$LN5@strcmp:

; 75   : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN1@strcmp
$LN4@strcmp:

; 76   : 
; 77   : 	int res = 0;

	mov	DWORD PTR res$[rbp], 0
$LN2@strcmp:

; 78   : 	while (!(res = *(unsigned char*)str1 - *(unsigned char*)str2) && *str2)

	mov	rax, QWORD PTR str1$[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	rcx, QWORD PTR str2$[rbp]
	movzx	ecx, BYTE PTR [rcx]
	sub	eax, ecx
	mov	DWORD PTR res$[rbp], eax
	cmp	DWORD PTR res$[rbp], 0
	jne	SHORT $LN3@strcmp
	mov	rax, QWORD PTR str2$[rbp]
	movsx	eax, BYTE PTR [rax]
	test	eax, eax
	je	SHORT $LN3@strcmp

; 79   : 		++str1, ++str2;

	mov	rax, QWORD PTR str1$[rbp]
	inc	rax
	mov	QWORD PTR str1$[rbp], rax
	mov	rax, QWORD PTR str2$[rbp]
	inc	rax
	mov	QWORD PTR str2$[rbp], rax
	jmp	SHORT $LN2@strcmp
$LN3@strcmp:

; 80   : 
; 81   : 	if (res < 0)

	cmp	DWORD PTR res$[rbp], 0
	jge	SHORT $LN6@strcmp

; 82   : 		res = -1;

	mov	DWORD PTR res$[rbp], -1
$LN6@strcmp:

; 83   : 	if (res > 0)

	cmp	DWORD PTR res$[rbp], 0
	jle	SHORT $LN7@strcmp

; 84   : 		res = 1;

	mov	DWORD PTR res$[rbp], 1
$LN7@strcmp:

; 85   : 
; 86   : 	return res;

	mov	eax, DWORD PTR res$[rbp]
$LN1@strcmp:

; 87   : }

	lea	rsp, QWORD PTR [rbp+80]
	pop	rbp
	ret	0
strcmp	ENDP
_TEXT	ENDS
END
