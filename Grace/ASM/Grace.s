;
; X
;
%define N 10
%define Q 39
%define P 37
%macro FT 0
section .data
o db 'Grace_kid.s',0
m db 'w',0
n db N,0
q db Q,0
p db P,0
s db ';%1$s; X%1$s;%1$s%3$sdefine N 10%1$s%3$sdefine Q 39%1$s%3$sdefine P 37%1$s%3$smacro FT 0%1$ssection .data%1$so db %2$sGrace_kid.s%2$s,0%1$sm db %2$sw%2$s,0%1$sn db N,0%1$sq db Q,0%1$sp db P,0%1$ss db %2$s%4$s%2$s,0%1$ssection .text%1$sextern fprintf%1$sextern fopen%1$sextern fclose%1$sglobal _start%1$s_start:%1$smov rdi,o%1$smov rsi,m%1$scall fopen%1$smov rbx,rax%1$smov rdi,rbx%1$smov rsi,s%1$smov rdx,n%1$smov rcx,q%1$smov r8,p%1$smov r9,s%1$sxor rax,rax%1$scall fprintf%1$smov rdi,rbx%1$sxor rax,rax%1$scall fclose%1$smov rax,60%1$sxor rdi,rdi%1$ssyscall%1$s%3$sendmacro%1$sFT%1$s',0
section .text
extern fprintf
extern fopen
extern fclose
global _start
_start:
mov rdi,o
mov rsi,m
call fopen
mov rbx,rax
mov rdi,rbx
mov rsi,s
mov rdx,n
mov rcx,q
mov r8,p
mov r9,s
xor rax,rax
call fprintf
mov rdi,rbx
xor rax,rax
call fclose
mov rax,60
xor rdi,rdi
syscall
%endmacro
FT
