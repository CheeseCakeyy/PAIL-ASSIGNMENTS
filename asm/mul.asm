global _start

section .data
	stat db "Enter a number from (0-4): ",10
	length equ $- stat
	
section .bss
	initial_value resb 1
	
	result resb 1
	
section .text 
_start:
	mov eax,4
	mov ebx,1
	mov ecx,stat
	mov edx,length 
	int 80h

input:
	mov eax,3
	mov ebx,0
	mov ecx,initial_value
	mov edx,1
	int 80h 
	
	mov eax,[initial_value]
	sub eax,'0'
	
multiplication:
	mov ebx,2
	mul ebx
	add eax,'0'
	mov [result],al
	int 80h
	
print:
	mov eax,4
	mov ebx,1
	mov ecx,result
	mov edx,1
	int 80h 

exit:
	mov eax,1
	xor ebx,ebx
	int 80h
