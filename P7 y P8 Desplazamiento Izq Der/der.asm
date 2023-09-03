section .text
    global _start

_start:


mov ebx, 2
shr ebx, 1  ; desplazamiento a la derecha de un bit

add ebx, 48
mov [resultado], abx

mov eax, 4
mov ebx, 1
mov ecx, resultados
mov edx, 1
int 0x80

mov eax, 1
mov ebx, 0
int 0x80