;y realizar la operacion y mostrar :
; el resutlado es: \

; dependiendo del simbolo de entrada, + -, *
; comparacion del ASCCI DEL VALOR DEL SIMBOLO

; pedir dos valores y realizar la operacion y mostrar :
; el resutlado es: \

; dependiendo del simbolo de entrada, + -, *
; comparacion del ASCCI DEL VALOR DEL SIMBOLO


section .data
msg1 db 10, 13 'Introduce el primer valor: ' 10, 13
msg2 db 10, 13 'Introduce el segundo valor: ' 10, 13
msg3 db 10, 13 'Introduce el simbolo de la operacion a realizar' 10, 13
msg4 db 10, 13 'El resultado es: ' 10, 13

error db 10, 13 'Error operacion invalida' 10, 13

numero1 db 0
numero2 db 0
simbolo db 0

msg1Len equ $-msg1
msg2Len equ $-msg2
msg3Len equ $-msg3
msg4Len equ $-msg4
errorLen equ $-error


section .bss
resultado resb 2 ; reservamos un byte
resultadoLen equ $-resultado

section .text



global _start

_start:


; Mensaje pedir el primer numero
mov eax, 4
mov ebx, 1
mov ecx, msg1
mov edx, Msg1Len
int 0x80

; Input primer numero 
mov eax, 3
mov ebx, 1
mov ecx, numero1
mov edx, 2 
int 0x80

; Mensaje pedir el segundo numero
mov eax, 4
mov ebx, 1
mov ecx, msg2
mov edx, Msg2Len
int 0x80

; Input segundo numero 
mov eax, 3
mov ebx, 1
mov ecx, numero2
mov edx, 2 
int 0x80


; Mensaje pedir el simbolo para la operacion
mov eax, 4
mov ebx, 1
mov ecx, msg3
mov edx, Msg3Len
int 0x80

; Input simbolo de la operacion
mov eax, 3
mov ebx, 1
mov ecx, simbolo
mov edx, 1
int 0x80


; if symbol == character then go to the function, +43, -45, *45 and /47
cmp byte [simbolo], '+'
je suma
cmp byte [simbolo], '-'
je resta
cmp byte [simbolo], '*'
je multiplicacion
cmp byte [simbolo], '/'
je divicion



suma: 
mov al, [numero1]
add al, [numero2]
add al, 48 ; convertir a ASCII
mov byte [resultado], al

je mostrar

resta:
mov al, [numero1]
sub al, [numero2]
add al, 48 ; convertir a ASCII
mov byte [resultado], al

je mostrar

multiplicacion:
mov al, [numero1]
mul byte [numero2]
add al, 48 ; convertir a ASCII
mov byte [resultado], al

jmp mostrar 

divicion:
mov al, [numero1]
mov bl, [numero2]
cmp bl, 0
je error
div bl
add al, 48 ; convertir a ASCII
mov byte [resultado], al
jmp mostrar

error:
mov eax, 4
mov ebx, 1
mov ecx, error
mov edx, errorLen
int 0x80
jmp fin

mostrar:
; Mensaje para imprrimir el resultado
mov eax, 4
mov ebx, 1
mov ecx, msg4
mov edx, msg4Len
int 0x80

; Imprimir el valor del resultado
mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, resultadoLen
int 0x80


; End the program
fin:
mov eax, 1
mov ebx, 0
int 0x80


mov eax, 1
mov ebx, 0
int 0x80

;mov eax, [numero1] 


; otra vercion de suma:
;mov al, [numero1]
;add al, [numero2]
;add al, 48 ; convertir a ASCII
;mov byte [resultado], al
;jmp mostrar


