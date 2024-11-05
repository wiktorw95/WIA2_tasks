org 100h
continuek:
mov AH, 01h
int 21h

cmp AL, 'Q'

jne continuek

koniec:
mov AH, 00h
int 21h