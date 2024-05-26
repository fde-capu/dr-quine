; This data section is not used, but it is
; here for making a point about the project.
section .data
	msg db "Hello, world!", 10

section .text

global _start
_start:
	; THe subject asks for it to have a `main`
	; function. Therefore, the entry point is
	; a call - but I think it could be the
	; entry point itself.
;	call hello ; leave this commented:
	call main
	int 0x80

hello:
	; This is a comment inside the hello function.
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, 14
	int 0x80
	mov eax, 1
	mov ebx, 0
	ret

main:
	; This is the `main` function, but it could
	; have been the _start entry point.
	mov eax, 1
	ret

