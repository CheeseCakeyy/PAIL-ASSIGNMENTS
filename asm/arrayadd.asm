global _start

section .data
	global x
	x:
		db 1
		db 2
		db 3
		db 2
	
	sum: 
		db 0,10


section .text
_start:
	mov eax,x
	mov ebx,0
	mov ecx,5
	
addition: 
	add ebx,[eax]
	add eax,1
	
	loop addition

done:
	add ebx,'0'
	mov [sum],ebx
	
display:
	mov eax,4
	mov ebx,1
	mov ecx,sum
	mov edx,1
	int 80h

exit:
	mov eax,1
	xor ebx,ebx
	int 80h
	
