section .data
msg1 db "Mensaje 1", 10, 13
msg2 db "Mensaje 2", 10, 13

len1 equ $-msg1
len2 equ $-msg2

section .text

print:
mov eax, 4
mov eax, 1
int 0x80
ret ; regresadmoa donde fue llamada al funcion

global _start
_start:

; no importa el orden de  los registros
mov ecx, msg1
mov edx, len1
call print


mov eax, 1
mov eax, 0
int 0x80
