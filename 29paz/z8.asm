org 100h

mov AL, [a]
mov DL, [b]

mul DL

add AL, [c]

mov [y], AL

mov AH, 00h
int 21h

a dw 5h
b dw 4h
c dw 2h
y dw 0h