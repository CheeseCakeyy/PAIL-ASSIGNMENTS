global _start
section .data
	name db "Enter the input",10
	length equ $-name
	
section .bss
	input resb 64;
	
section .text 
_start:
      mov eax,4
      mov ebx,1
      mov ecx,name
      mov edx,length
      int 80h;
      
inputx: 
      mov eax,3
      mov ebx,0
      mov ecx,input
      mov edx,64
      int 80h;;
      
output:
	mov edx,eax
	mov eax,4
	mov ebx,1
	mov ecx,input
	int 80h
	
exit:
      mov eax,1
      xor ebx,ebx
      int 80h;
