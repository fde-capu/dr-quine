extern printf

section .data
msg db \
	"section .data", 0x0A, \
	"msg db ", 0x5C, 0x0A, \
	0x09, 0x22, \
	"%s", 0x22, 0x0A, \
	0x0A, \
	"msg_len: equ $ - msg", 0x0A, \
	0x0A, \
	"section .text", 0x0A, \
	0x0A, \
	"global _start", 0x0A, \
	"_start:", 0x0A, \
	0x09, "call main", 0x0A, \
	0x09, "call main", 0x0A, \
	0x09, "mov rax, 60", 0x0A, \
	0x09, "mov rdi, 0", 0x0A, \
	0x09, "syscall", 0x0A, \
	0x0A, \
	"main:", 0x0A, \
	0x09, "mov rax, 1", 0x0A, \
	0x09, "mov rdi, 1", 0x0A, \
	0x09, "lea rsi, [rel msg]", 0x0A, \
	0x09, "mov rdx, msg_len", 0x0A, \
	0x09, "syscall", 0x0A, \
	0x09, "ret", 0x0A, 0x00
msg_len: equ $ - msg

section .text

global _start
_start:
	push rbp
;	call main
	call main
	pop rbp
	mov rax, 60
	mov rdi, 0
	syscall

main:
	mov rax, 0
	mov rdi, msg
	mov rsi, msg
	call printf
	mov rax, 0
	ret
