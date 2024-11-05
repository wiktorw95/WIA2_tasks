org 100h

mov AH, 01h
int 21h

;|-----------------
cmp AL, 41h

jge sprawdz_dalej
jl errorek

sprawdz_dalej:
cmp AL, 5Ah
jl wielka
jge sprawdz_dalej1

;|-----------------

sprawdz_dalej1:
cmp AL, 61h
jge sprawdz_dalej2
jl errorek

sprawdz_dalej2:
cmp AL, 7Ah
jl mala
jge errorek
;|-----------------

wielka:
mov AH, 09h
mov DX, tekst1
int 21h
jmp koniec

mala:
mov AH, 09h
mov DX, tekst2
int 21h
jmp koniec
;|-----------------
errorek:
mov AH, 09h
mov DX, tekst3
int 21h

koniec:
mov AH, 00h
int 21h

tekst1 db "wielka_litera$"
tekst2 db "mala_litera$"
tekst3 db "errorek$"