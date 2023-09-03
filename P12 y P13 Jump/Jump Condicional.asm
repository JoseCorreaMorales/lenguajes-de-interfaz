section .data

;saltos incondicionales

msg1 db "etiqueta 1", 10, 13
msg2 db "etiqueta 2", 10, 13


longmsg1 equ $-msg1 
longmsg2 equ $-msg2 

section .text

section .bss


global _start


_start:

jmp etiqueta2



etiqueta1:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, longmsg1
    int 0x80

etiqueta2:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, longmsg2
    int 0x80


; salir
mov eax, 1
mov ebx, 0
int 0x80

