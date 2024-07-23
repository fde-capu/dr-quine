; Comment A
section .data
s db "; Comment A%csection .data%cc db %c%cn%ct%c%c%c%c%c%cs...", 0
f db 10,10,34,92,92,92,34,92,92,34,34

section .text
extern printf

global _start
_start:
	lea rdi, [f]
	lea rsi, [s]
	mov ecx, 11
	xor edx, edx

	call main
	mov rax, 60
	mov rdi, 0
	syscall

main:
	; Comment B
	dec ecx
	cmp ecx, 0
	je done
	mov al, ','
	stosb
	inc byte [esi]
	jmp main

done:
	call printf
	ret
