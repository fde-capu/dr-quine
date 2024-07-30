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
o db 'Sully_%d.s',0
m db 'w',0
n db N,0
q db Q,0
p db P,0
np db N,P,0

nasm db 'nasm -f elf64 -o Sully_%d.o Sully_%d.s && ld -o Sully_%d Sully_%d.o -m elf_x86_64 -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2',0

s db ';X%s%sdefine N 10%s%sdefine Q 39%sdefine P 37%smacro D 3%srep %s3%s1 %s2%sendrep%sendmacro%smacro X 0%ssection .data%so db %sSully_%sd.s%s,0%sm db %sw%s,0%sn db N,0%sq db Q,0%sp db P,0%snp db N,P,0%ss db %s%s%s,0%ssection .text%sextern fprintf%sextern fopen%sextern fclose%sglobal _start%s_start:%smov r12,5%scmp r12,1%sjl _out%ssub r12,1%smov rdi,o%smov rsi,m%scall fopen%smov rdi,rax%smov rsi,s%smov rdx,n%smov rcx,p%smov r8,n%smov r9,p%spush rax%sD push,n,2%spush np%sD push,n,44%spush q%spush s%spush q%sD push,n,5%sD push,q,2%spush n%sD push,q,2%sD push,n,2%sD push,np,3%spush p%spush np%spush p%sD push,np,3%sxor rax,rax%scall fprintf%sD pop,rdi,72%scall fclose%s_out:%smov rax,60%sxor rdi,rdi%ssyscall%sendmacro%sX%s',0
section .text
extern fprintf
extern sprintf
extern fopen
extern fclose
extern system
global _start
_start:
mov r12,5
cmp r12,1
jl _out
sub r12,1

mov rdi,rsp
mov rsi,o
mov rdx,r12
xor rax,rax
call sprintf

mov rdi,rsp
mov rsi,m
call fopen
mov rbx,rax

mov rdi,rbx
mov rsi,s
mov rdx,n
mov rcx,p
mov r8,n
mov r9,p
push rax
D push,n,2
push np
D push,n,44
push q
push s
push q
D push,n,5
D push,q,2
push n
push q
push p
push q
D push,n,2
D push,np,3
push p
push np
push p
D push,np,3
xor rax,rax
call fprintf

mov rdi,rbx
call fclose

mov rdi,rsp
mov rsi,nasm
mov rdx,r12
mov rcx,r12
mov r8,r12
mov r9,r12
xor rax,rax
call sprintf

mov rdi,rsp
push rsp
call system

_out:
mov rax,60
xor rdi,rdi
syscall
%endmacro
X
