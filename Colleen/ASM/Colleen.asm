section .data
	format db "Hello %s!", 0
	world db "World", 0

section .text
	extern printf
	extern fflush
	global _start

_start:
	lea rdi, [rel format]
	lea rsi, [rel world]
	xor rax, rax

	push rbp
	mov rbp, rsp

	call printf

	mov rdi, 0
	call fflush

	mov rsp, rbp
	pop rbp

	mov eax, 60
	xor edi, edi
	syscall

