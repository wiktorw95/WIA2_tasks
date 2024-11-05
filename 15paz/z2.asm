org 100h

mov AH, 09h ;| Wyswietlanie tekstu
mov DX, tekst
int 21h

mov AH, 02h 
mov DL,  0Dh ;| Drukowanie enterow
int 21h


mov byte [tekst+3], '$' ;| zmiana 4 znaku
int 21h

mov AH, 09h ;| Wyswietlenie tekstu jeszcze raz
mov DX, tekst
int 21h

mov AH, 00h ;| Koniec programu
int 21h

tekst db "niewiemsam$"