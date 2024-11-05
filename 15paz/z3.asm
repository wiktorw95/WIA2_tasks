org 100h

mov AH, 10h
mov AL, 21h
cmp AL, AH

jl mniejsze
jge wieksze

mniejsze:
mov AH, 02h
mov DL, '<'
int 21h
jmp koniec

wieksze:
mov AH, 02h
mov DL, '>'
int 21h

koniec:
mov AH, 00h ;|
int 21h ;| zamykanie programu