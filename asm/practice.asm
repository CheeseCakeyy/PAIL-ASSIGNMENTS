global _start

section .text 
_start:
	mov ax,33
	push ax
	mov ax,32
	push ax
	
	pop bx
	pop bx
	
	
	mov eax,1
	xor ebx,ebx
	int 80h
