;X
%define N 10
%define Q 39
%define P 37 ;;; X
%macro R 2
%rep %2
push %1
%endrep
%endmacro
%macro X 0
section .data
o db 'Grace_kid.asm',0
m db 'w',0
n db N,0
q db Q,0
p db P,0
pn db P,N,0
s db ';X--%s%s%s%s%s--',0
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
push rax
mov rsi,s
mov rdx,q
mov rcx,q
mov r8,q
mov r9,q
xor rax,rax
call fprintf
pop rdi
call fclose
mov rax,60
xor rdi,rdi
syscall
%endmacro
X
