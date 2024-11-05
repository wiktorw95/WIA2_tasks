org 100h

mov AH, 01h
int 21h

cmp AL, '_'

jl mniejsze
jg wieksze
je rowne

mniejsze:
mov AH, 02h
mov DL, '<'
int 21h
jmp koniec

wieksze:
mov AH, 02h
mov DL, '>'
int 21h
jmp koniec

rowne:
mov AH, 02h
mov DL, '='
int 21h


koniec:
mov AH, 00h
int 21h