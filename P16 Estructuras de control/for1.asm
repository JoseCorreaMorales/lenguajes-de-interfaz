section .bss
resultado resb 1

section .text
global start

_Start:
mov ecx, 3
Mov eax, 0
mov ebx, ecx

for:
and ecx, ebx
jz suma
sub ebx, 2

suma:
add eax, ecx
loop for

add eax, 48
mov [resultado], eax

mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1
int 0x80

mov eax, 1
mov ebx, 0
int 0x80