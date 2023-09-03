section .data
msg1 db "" 10, 13
msg2 db "" 10, 13

len1 equ $-msg1
len2 equ $-msg2

section .text

mov ecx, 5


print:
mov eax, 4
mov ebx, 1
int 0x80
ret

global _start
_start:

mov ecx, msg1
mov edx, len1


for1:
and ecx, ebx
jz for2
sub ebx, 2

for2:



triangle:
;add eax, ecx
loop for



mov eax, 1
mov ebx, 0
int 0x80


