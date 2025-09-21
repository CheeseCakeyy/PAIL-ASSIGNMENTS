global _start
section .data
	prompt1 db "enter your name",10
	length1 equ $- prompt1;
	
section .bss
	input resb 64;

section .text
_start:
	mov eax,4
	mov ebx,1
	mov ecx, prompt1
	mov edx, length1
	int 80h

inputcall: 
	mov eax,3
	mov ebx,0
	mov ecx,input
	mov edx,64
	int 80h
printname: 
	mov edx,eax
	mov eax,4
	mov ebx,1
	mov ecx,input
	int 80h
exit: 
	xor ebx,ebx
	mov eax,1
	int 80h

