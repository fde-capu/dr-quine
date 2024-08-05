;
; X
;
%define N 10
%define Q 39
%define P 37
%macro D 3
%rep %3
%1 %2
%endrep
%endmacro
%macro X 0
section .data
o db 'Grace_kid.s',0
m db 'w',0
n db N,0
q db Q,0
p db P,0
np db N,P,0
s db ';X%s%sdefine N 10%s%sdefine Q 39%sdefine P 37%smacro D 3%srep %s3%s1 %s2%sendrep%sendmacro%smacro X 0%ssection .data%so db %sGrace_kid.s%s,0%sm db %sw%s,0%sn db N,0%sq db Q,0%sp db P,0%snp db N,P,0%ss db %s%s%s,0%ssection .text%sextern fprintf%sextern fopen%sextern fclose%sglobal _start%s_start:%smov rdi,o%smov rsi,m%scall fopen%smov rdi,rax%smov rsi,s%smov rdx,n%smov rcx,p%smov r8,n%smov r9,p%spush rax%sD push,n,2%spush np%sD push,n,39%spush q%spush s%spush q%sD push,n,5%sD push,q,2%spush n%sD push,q,2%sD push,n,2%sD push,np,3%spush p%spush np%spush p%sD push,np,3%sxor rax,rax%scall fprintf%sD pop,rdi,67%scall fclose%smov rax,60%sxor rdi,rdi%ssyscall%sendmacro%sX%s',0
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
mov rdx,n
mov rcx,q
mov r8,p
mov r9,s
xor rax,rax
call fprintf
D pop,rdi,67
call fclose
mov rax,60
xor rdi,rdi
syscall
%endmacro
X
