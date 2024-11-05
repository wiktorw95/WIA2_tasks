org 100h

mov AX, [a]
add AX, [b]
sub AX, [c]
mov DL, 2h

mul DL

mov [y], AX

mov AH, 00h
int 21h

a dw 5h
b dw 4h
c dw 2h
y dw 0h