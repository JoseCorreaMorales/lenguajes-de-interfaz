%macro imprime 2 
mov eax, 4
mov ebx, 1
mov ecx, %1 
mov edx, %2
int 0x80
%endmacro

section .data
msg1 db "Mensaje 1", 10, 13
msg2 db "Mensaje 2", 10, 13

len1 equ $-msg1
len2 equ $-msg2

section .bss

section .text

global _start
_start:

imprime msg1, len1


mov eax, 1
mov ebx, 0
int 0x80


