; salto de linea
section .data
    msg db 'El resultado es: '
    ln db 10, 13
    lonln equ 2

section .bss
    resultado resb 1

section .text
    global _start

_start:
            ; 128    64     32    16    8     4      2        1
            ;| 1   |  0 |  0   |  0 |   0   | 0    |  0   |   0   |
             ;| 0  |  0 |  0   |  0 |   0   | 0    |  0   |   1   |
mov bl, 128
rol bl, 1   ; rotacion  a la izq

mov eax, 4
mov ebx, 1
mov ecx, msg
mov edx, 13
int 0x80

add bl, 48
mov [resultado], bl

mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1
int 0x80


; salto de linea
mov eax, 4
mov ebx, 1
mov ecx, ln
mov edx, lonln
int 0x80
 

mov eax, 1
mov ebx, 0
int 0x80