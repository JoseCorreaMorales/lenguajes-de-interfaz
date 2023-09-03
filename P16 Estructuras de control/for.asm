section .data

section .bss

resultado resb 1

section .text

global _start

_start:


mov ecx, 5
mov eax, 0

for:

;dividir EAX entre 2
mov eax, [numero]
mov ebx, 2
div ebx
;comprobar si el resto es cero
cmp edx, 0
je esPar
mov edx, 1




loop for
 

esPar:
add eax, ecx
jz for


add eax, [48]
mov [resultados], eax


mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1
int 0x80

mov eax, 1
mov ebx, 0
int 0x80


