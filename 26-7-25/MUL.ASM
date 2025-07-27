.model small
.stack 100h
.data
digit1Prompt db 10,13,'enter 1st single digit:$'
digit2Prompt db 10,13,'enter 2nd single digit:$'
digit1 db ?
digit2 db ?
digit3 db ?
resultOutput db 10,13,'multiplication result:$'
.code

main proc
mov ax,@data
mov ds,ax

input_1:
lea dx,digit1Prompt
mov ah,09h
int 21h
mov ah,01h
int 21h
cmp al,30h
jl input_1
cmp al,39h
jg input_1

sub al,30h
mov digit1,al

input_2:
lea dx,digit2Prompt
mov ah,09h
int 21h
mov ah,01h
int 21h
cmp al,30h
jl input_2
cmp al,39h
jg input_2

sub al,30h
mov digit2,al

lea dx,resultOutput
mov ah,09h
int 21h

mov al,digit1
mov bl,digit2
mul bl
mov digit3,al

cmp digit3,9
jg display_2_digit

display_1_digit:
mov dl,digit3
add dl,30h
mov ah,02h
int 21h
jmp end_program

display_2_digit:
mov al,digit3
mov bl,10
div bl;ah=remainder,al=quotient
mov cl,ah

mov dl,al
add dl,30h
mov ah,02h
int 21h

mov dl,cl
add dl,30h
mov ah,02h
int 21h

end_program:
mov ax,4c00h
int 21h
main endp
END
