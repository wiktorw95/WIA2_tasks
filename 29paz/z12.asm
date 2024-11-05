org 100h

mov AX, [b]
mov DL, [c]

div DL

mov BX, [a]

mul BX

mov [y], AX

mov AH, 00h
int 21h

a dw 8h
b dw 4h
c dw 2h
y dw 0h