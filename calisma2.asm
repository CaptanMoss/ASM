;vim calisma2.asm
;nasm -f elf32 calisma2.asm
;ld -g calisma2.o
;./a.out


section .data 

	msg : db "Bir sayi giriniz : "
	len : equ $-msg

segment .bss

	sayi1 resb 2 ; 2 byte reserve et
	
section .text

	global _start

_start:

	mov edx,len
	mov ecx,msg
	mov ebx,1
	mov eax,4
	int 0x80
	
	mov edx,2
	mov ecx,sayi1
	mov ebx,2
	mov eax,3
	int 0x80

exit:
	
	mov eax,1
	int 0x80
