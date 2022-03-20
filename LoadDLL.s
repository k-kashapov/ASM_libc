global _start
extern printf, fflush, stdout

section .text

_start:
	push 0x32
	push 0x42
	push 0x9b
	mov r9,  5
	mov r8,  4
	mov rcx, 3
	mov rdx, 2
	mov rsi, 13
	lea rdi, [String]
	
	mov rax, 0

	call printf

	times 3 pop rax

	mov rdi, [stdout]
	call fflush

	mov rax, 0x3c	; exit (rdi)
	xor rdi, rdi
	syscall

section .data

String db 'Hello World %d %x %x %x %x %x %x %x'
