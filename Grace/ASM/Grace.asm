section .data
o db 'Grace_kid.asm', 0
m db 'w', 0
s db '%s', 0
section .text
extern fprintf
extern fopen
extern fclose
global _start
_start:
mov rdi,o
mov rsi,m
call fopen ; now rax - FILE* to operate
mov rdi,rax
mov rsi,s
mov rdx,o
push rax
xor rax,rax
call fprintf
pop rdi
call fclose
mov rax, 60
xor rdi, rdi
syscall
