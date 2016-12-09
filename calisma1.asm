;vim calisma1.asm
;nasm -f elf32 calisma1.asm
;ld -g calisma1.o
;./a.out

section .data

	msg: db "Hello World !",0xa
	len:equ $-msg

segment .bss

section .text

	global _start

_start:

	
	call main

	mov eax,1
	int 0x80


main:
	mov edx,len
	mov ecx,msg
	mov ebx,1
	mov eax,4
	int 0x80
	ret	
