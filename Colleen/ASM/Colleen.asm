section .data
msg db \
	"section .data", 10, \
	"msg db ", 92, 10, \
	9, 34, "%s", 34, 10, \
	"msg_len: equ $ - msg", 10, \
	10, \
	"section .text", 10, \
	10, \
	"global _start", 10, \
	"_start:", 10, \
	9, "call main", 10, \
	9, "mov rax, 60", 10, \
	9, "mov rdi, 0", 10, \
	9, "syscall", 10, \
	10, \
	"main:", 10, \
	9, "mov rax, 1", 10, \
	9, "mov rdi, 1", 10, \
	9, "lea rsi, [rel msg]", 10, \
	9, "mov rdx, msg_len", 10, \
	9, "syscall", 10, \
	9, "ret", 10, 0
msg_len: equ $ - msg

section .text

global _start
_start:
	call main
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

extern printf
