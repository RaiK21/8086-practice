.model small
.stack 100h
.data
prompt1 db 10,13,'Press Y or N:$'
invalidMsg db 10,13,'Invalid input. Please enter Y or N:$'
option db ?

.code
print macro msg1
lea dx,msg1
mov ah,09h
int 21h
endm

getChar macro option
mov ah,01h
int 21h
mov option,al
endm

putChar macro char
mov dl,char
mov ah,02h
int 21h
endm

putNewLine macro
putChar 10
putChar 13
endm

main proc
mov ax,@data
mov ds,ax

start_ask:
print prompt1
getChar option
cmp option,'y'
je show_a
cmp option,'Y'
je show_a
cmp option,'n'
je show_b
cmp option,'N'
je show_b
print invalidMsg
jmp start_ask

show_a:
putNewLine
putChar 'A'
jmp end_program

show_b:
putNewLine
putChar 'B'
jmp end_program

end_program:
mov ax,4c00h
int 21h
main endp
END
