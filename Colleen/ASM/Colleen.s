;
; X
;
section .data
	quine db ";%1$s; X%1$s;%1$ssection .data%1$s	quine db %2$s%3$s%2$s, 0%1$s	n db 0x0A, 0%1$s	q db 0x22, 0%1$ssection .text%1$s	extern printf%1$s	extern fflush%1$s	global _start%1$s_start:%1$s	call _main%1$s	mov eax, 60%1$s	xor edi, edi%1$s	syscall%1$s_main:%1$s;%1$s; X%1$s;%1$s	call _foonction%1$s	xor rax, rax%1$s	call printf%1$s	mov rdi, 0%1$s	call fflush%1$s	ret%1$s_foonction:%1$s	mov rbp, rsp%1$s	mov rdi, quine%1$s	mov rsi, n%1$s	mov rdx, q%1$s	mov rcx, quine%1$s	ret%1$s", 0
	n db 0x0A, 0
	q db 0x22, 0
section .text
	extern printf
	extern fflush
	global _start
_start:
	call _main
	mov eax, 60
	xor edi, edi
	syscall
_main:
;
; X
;
	call _foonction
	xor rax, rax
	call printf
	mov rdi, 0
	call fflush
	ret
_foonction:
	mov rbp, rsp
	mov rdi, quine
	mov rsi, n
	mov rdx, q
	mov rcx, quine
	ret
