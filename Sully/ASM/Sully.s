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
nasm db 'nasm -f elf64 -o Sully_%d.o Sully_%d.s && ld -o Sully_%d Sully_%d.o -m elf_x86_64 -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2 && ./Sully_%d',0
s db '%sdefine N 10%sdefine Q 39%sdefine P 37%smacro D 3%srep %s3%s1 %s2%sendrep%sendmacro%smacro X 0%ssection .data%so db %sSully_%sd.s%s,0%sm db %sw%s,0%sn db N,0%sq db Q,0%sp db P,0%snp db N,P,0%snasm db %snasm -f elf64 -o Sully_%sd.o Sully_%sd.s && ld -o Sully_%sd Sully_%sd.o -m elf_x86_64 -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2 && ./Sully_%sd%s,0%ss db %s%s%s,0%ssection .text%sextern fprintf%sextern sprintf%sextern fopen%sextern fclose%sglobal _start%s_start:%smov r12,%d%scmp r12,1%sjl _out%ssub r12,1%smov rdi,rsp%smov rsi,o%smov rdx,r12%sxor rax,rax%scall sprintf%smov rdi,rsp%smov rsi,m%scall fopen%smov rbx,rax%smov rdi,rbx%smov rsi,s%smov rdx,p%smov rcx,np%smov r8,np%smov r9,np%spush rax%sD push,n,3%spush np%sD push,n,60%spush r12%sD push,n,8%spush q%spush s%spush q%spush n%spush q%sD push,p,5%spush q%sD push,n,5%sD push,q,2%spush n%spush q%spush p%spush q%sD push,n,2%sD push,np,3%spush p%spush np%spush p%spush np%sxor rax,rax%scall fprintf%smov rdi,rbx%scall fclose%smov rdi,rsp%smov rsi,nasm%smov rdx,r12%smov rcx,r12%smov r8,r12%smov r9,r12%sxor rax,rax%scall sprintf%s_out:%smov rax,60%sxor rdi,rdi%ssyscall%sendmacro%sX%s',0
section .text
extern fprintf
extern sprintf
extern fopen
extern fclose
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
mov rdx,p
mov rcx,np
mov r8,np
mov r9,np
push rax
D push,n,3
push np
D push,n,60
push r12
D push,n,8
push q
push s
push q
push n
push q
D push,p,5
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
push np
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
_out:
mov rax,60
xor rdi,rdi
syscall
%endmacro
X
