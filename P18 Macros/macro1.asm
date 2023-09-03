%macro imprime 2 
mov eax, 4
mov ebx, 1
mov ecx, %1 
mov edx, %2
int 0x80
loop for
%endmacro

section .data
msg1 db "@", 10, 13

len1 equ $-msg1

section .bss

section .text

global _start
_start:

for:
and ecx, ebx
imprime msg1, len1
sub ebx, 2


;add eax, 48
;mov [resultado], eax

;imprime msg1, len1


mov eax, 1
mov ebx, 0
int 0x80


