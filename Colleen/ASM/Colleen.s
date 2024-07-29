; Comment!
section .data
	quine db "; Comment!%ssection .data%squine db %s%s%s, 0%sn db 0x0A, 0%snt db 0x0A, 0x09, 0%sq db 0x22, 0%sp db 0x25, 0%ssection .text%sextern printf%sextern fflush%sglobal _start%s%smacro X 2%s%srep %s2%spush %s1%s%sendrep%s%sendmacro%s_start:%scall _main%smov eax, 60%sxor edi, edi%ssyscall%s_main:%s; Comment inside main.%spush rbp%smov rbp, rsp%smov rdi, quine%smov rsi, n%smov rdx, nt%smov rcx, q%smov r8, quine%smov r9, q%spush n%sX nt, 6%spush n%sX nt, 31%sX n, 2%sX nt, 4%spush n%spush p%scall npn%spush p%spush nt%sX p, 2%scall npn%sX nt, 3%spush n%sX nt, 4%sxor rax, rax%scall printf%smov rdi, 0%scall fflush%smov rsp, rbp%spop rbp%sret%snpn:%spop rax%spush n%spush p%spush n%spush rax%sret%s", 0
	n db 0x0A, 0
	nt db 0x0A, 0x09, 0
	q db 0x22, 0
	p db 0x25, 0
section .text
	extern printf
	extern fflush
	global _start
%macro X 2
%rep %2
	push %1
%endrep
%endmacro
_start:
	call _main
	mov eax, 60
	xor edi, edi
	syscall
_main:
; Comment inside main.
	push rbp
	mov rbp, rsp
	mov rdi, quine
	mov rsi, n
	mov rdx, nt
	mov rcx, q
	mov r8, quine
	mov r9, q
	push n
	X nt, 6
	push n
	X nt, 31
	X n, 2
	X nt, 4
	push n
	push p
	call npn
	push p
	push nt
	X p, 2
	call npn
	X nt, 3
	push n
	X nt, 4
	xor rax, rax
	call printf
	mov rdi, 0
	call fflush
	mov rsp, rbp
	pop rbp
	ret
npn:
	pop rax
	push n
	push p
	push n
	push rax
	ret
