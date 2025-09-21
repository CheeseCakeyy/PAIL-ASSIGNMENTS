global _start

section .data
    x db "Looping!", 10      ; "Looping!" with a newline
    y equ $ - x               ; Length of the string (number of bytes in x)

section .text  
_start:
    mov ecx, 5               ; Set ECX to 5 (loop will run 5 times)
looping_part:
    mov eax, 4               ; syscall number for sys_write (4)
    mov ebx, 1               ; File descriptor 1 (stdout)
    mov edx, y               ; Length of the string (y)
    mov ecx, x               ; Address of the string
    int 80h                  ; Make the syscall (print the string)
    
    loop looping_part        ; Decrement ECX and loop if ECX != 0

exit:
    mov eax, 1               ; syscall number for sys_exit (1)
    xor ebx, ebx             ; Return code 0
    int 80h                  ; Make the syscall (exit)

