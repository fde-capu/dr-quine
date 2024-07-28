;X
%define N 10
%define Q 34
%define F 'Grace_kit.asm'
%macro X 0
section .data
o db F, 0
m db 'w', 0
n db N
q db Q
s db '%s', 0
section .text
extern fprintf
extern fopen
extern fclose
global _start
_start:
mov rdi,o
mov rsi,m
call fopen
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
%endmacro
X
