section .data
    format db "Hello World!", 0

section .text
    extern printf
		extern fflush
    global _start

_start:
    ; Prepare arguments for printf
    mov rdi, format     ; First argument is the format string
    xor rax, rax        ; Zero out rax to indicate no vector registers used

		push rbp
		mov rbp, rsp

    call printf         ; Call printf

		mov rdi, 0
		call fflush

		mov rsp, rbp
		pop rbp

    ; Exit the program
    mov eax, 60         ; System call number for exit
    xor edi, edi        ; Exit code 0
    syscall             ; Make the system call
