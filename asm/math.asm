global _start
section .data
	result db 0

section .text
_start:
	mov eax,4
	sub eax,3
	add eax,'0'
	mov [result],al
	
	mov eax,4
	mov ebx,1
	mov ecx,result
	mov edx,1
	int 80h
	
	mov eax,1
	xor ebx,ebx
	int 80h
	
