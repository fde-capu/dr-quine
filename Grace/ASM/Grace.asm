section .text
	extern fprintf
	extern fopen
	extern fclose
	global _start
_start:
	mov eax, 60
	xor edi, edi
	syscall
