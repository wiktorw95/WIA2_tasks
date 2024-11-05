org 100h

mov AX, [a]
mov DL, [b]

div DL

add AX, [c]

mov [y], AX

mov AH, 00h
int 21h

a dw 8h
b dw 4h
c dw 2h
y dw 0h