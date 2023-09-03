;registros especiales
;EAX=numero a evaluar
;EDX=0 si es par, 1 si es impar

;dividir EAX entre 2
mov eax, [numero]
mov ebx, 2
div ebx
;comprobar si el resto es cero
cmp edx, 0
je esPar
mov edx, 1
esPar:
;el resultado se encuentra en EDX


section .data

msg1 db 'El numero es par' 0x0A, 0x0D   
msg2 db 'El numero es impar' 0x0A, 0x0D   

msg1Len equ $-msg1
msg2Len equ $-msg1


section .bss
resultado resb 1 
resultadoLen equ $-resultado


section .text

global _start

_start:

mov al, 5
mov bl, 1

and al, bl

jz par

par:
mov eax, 4
mov ebx, 1
mov ecx, msg1
mov edx, Msg1Len
int 0x80




and al, 48
mov [resultado], al



; mensaje el resultado es
mov eax, 4
mov ebx, 1
mov ecx, msg1
mov edx, Msg1Len
int 0x80

; mostrar resultado
mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, resultadoLen
int 0x80

mov eax, 1
mov eax, 0
int 0x80

;00000000
; el orimer bit es el que determiba si es impar o no

; si and = 1 es par sino inpar

; convirta mayusculas a minusculas usando la compuerta a or

