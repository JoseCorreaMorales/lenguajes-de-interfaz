section .data

msg1 db 'El resultado es ' 0x0A, 0x0D   

msg1Len equ $-msg1


section .bss
resultado resb 1 
resultadoLen equ $-resultado


section .text

global _start

_start:

mov al, 2
mov bl, 1

and al, bl

and al, 48
mov [resultado], al


mov eax, 4
mov ebx, 1
mov ecx, msg1
mov edx, Msg1Len
int 0x80

mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, resultadoLen
int 0x80

mov eax, 1
mov eax, 0
int 0x80


;       2 00000010
;       1 00000001

