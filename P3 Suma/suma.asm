section .data
    resultado db '0' ; Define un Byte, que se inicializa en 0


section .text
    global _start

_start:

MOV eax, 2  ;eax = 2
MOV ebx, 3 ; ebx = 3
add eax, ebx ; el resultado se guarda en eax, (el primero) aquí eax vale 5
add eax, 48   ; 48 es 0 en ASCCI 
MOV [resultado], eax ;sobre escribiendo el valor tal cual de registro


; Escribiendo el resultado
MOV eax, 4
MOV ebx, 1
MOV edx, resultado
MOV edx, 1 ; cuantos bytes vamos a imprimir
int 0x80


; Terminado el programa, un return 0
mov eax, 1
MOV ebx, 0
int 0x80