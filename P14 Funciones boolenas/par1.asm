section .data
    msg2 db "Es par", 10, 13
    lonmsg2 equ $-msg2
    msg3 db "Es impar", 10, 13
    lonmsg3 equ $-msg3

 section .text
    global _start

 _start:
  mov al, 7
  mov bl, 1

  and al, bl

  jz espar

    mov eax, 4
    mov ebx, 1
    mov ecx, msg3
    mov edx, lonmsg3
    int 0x80

    jmp salir

  espar:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, lonmsg2
    int 0x80

  salir:
    mov eax, 1
    mov ebx, 0
    int 0x80