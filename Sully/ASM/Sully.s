section .data
o db 'Sully_%d.s',0
m db 'w',0
n db 10
q db 39
p db 37

nasm db 'nasm -f elf64 -o Sully_%d.o Sully_%d.s',0
ld db 'ld -o Sully_%d Sully_%d.o -m elf_x86_64 -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2',0
run db './Sully_%d',0

s db 'section .data%1$co db %2$cSully_%3$cd.s%2$c,0%1$cm db %2$cw%2$c,0%1$cn db 10%1$cq db 39%1$cp db 37%1$c%1$cnasm db %2$cnasm -f elf64 -o Sully_%3$cd.o Sully_%3$cd.s%2$c,0%1$cld db %2$cld -o Sully_%3$cd Sully_%3$cd.o -m elf_x86_64 -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2%2$c,0%1$crun db %2$c./Sully_%3$cd%2$c,0%1$c%1$cs db %2$c%5$s%2$c,0%1$c%1$csection .text%1$cextern fprintf%1$cextern sprintf%1$cextern fopen%1$cextern fclose%1$cextern system%1$cglobal _start%1$c%1$c_start:%1$cmov r12,$5%d%1$ccmp r12,1%1$cjl _out%1$csub r12,1%1$c%1$c_out_file:%1$cmov rdi,rsp%1$cmov rsi,o%1$cmov rdx,r12%1$cxor rax,rax%1$ccall sprintf%1$cmov rdi,rsp%1$cmov rsi,m%1$ccall fopen%1$cmov rbx,rax%1$c%1$c_format_s:%1$cmov rdi,rax%1$cmov rsi,s%1$cmov rdx,[n]%1$cmov rcx,[q]%1$cmov r8,[p]%1$cmov r9,s%1$cpush r12%1$cxor rax,rax%1$ccall fprintf%1$cpop r12%1$c%1$cmov rdi,rbx%1$ccall fclose%1$c%1$c_format_nasm_str:%1$clea rdi,[rsp]%1$cmov rsi,nasm%1$cmov rdx,r12%1$cmov rcx,r12%1$cmov r8,r12%1$cmov r9,r12%1$cxor rax,rax%1$ccall sprintf%1$c%1$c_compile:%1$cmov rdi,rsi%1$ccall system%1$c%1$c_out:%1$cmov rax,60%1$cxor rdi,rdi%1$csyscall%1$c',0

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

_out_file:
mov rdi,rsp
mov rsi,o
mov rdx,r12
xor rax,rax
call sprintf
mov rdi,rsp
mov rsi,m
call fopen
mov rbx,rax

_format_s:
mov rdi,rax
mov rsi,s
mov rdx,[n]
mov rcx,[q]
mov r8,[p]
mov r9,s
push r12
xor rax,rax
call fprintf
pop r12

mov rdi,rbx
call fclose

_format_nasm_str:
lea rdi,[rsp]
mov rsi,nasm
mov rdx,r12
mov rcx,r12
mov r8,r12
mov r9,r12
xor rax,rax
call sprintf

_compile:
mov rdi,rsi
call system

_out:
mov rax,60
xor rdi,rdi
syscall
