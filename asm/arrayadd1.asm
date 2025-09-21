global _start

section .data
	global x
	x:
		db 1
		db 2
		db 3
		db 2
		db 5
		
	resl db 0 
	resh db 0


section .text
_start:
	mov ecx,x
	mov eax,0
	mov ebx,5
	
addition: 
	add eax,[ecx]
	add ecx,1
	dec ebx
	
	jnz addition
	
	daa
	
	;add al,'0'
	mov [resl],al
	;add ah,'0'
	mov [resh],ah
	
display:
	mov eax,4
	mov ebx,1
	mov ecx,resh
	mov edx,1
	int 80h
	
	mov eax,4
	mov ebx,1
	mov ecx,resl
	mov edx,1
	int 80h

exit:
	mov eax,1
	xor ebx,ebx
	int 80h
	
