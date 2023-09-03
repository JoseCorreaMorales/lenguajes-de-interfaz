section .data
resultado db "El resultado es: ", 10, 0

num1 db 5
mun2 db 20

section .text

global _start

_start:

mov al, mun1
sub al, num2

add al, 48

mov edx, 17 
mov ecx, resultado
mov ebx, 1
mov eax, 4
int 0x80

mov eax, 1
xor ebx, abx
int 0x80