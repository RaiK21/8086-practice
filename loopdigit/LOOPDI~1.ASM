.model small
.stack 100h
.data
prompt1 db 10,13,'Please enter a number within 0-9:$'
invalidMsg db 10,13,'Invalid input. Please enter a number within 0-9 only.$'
validMsg db 10,13,'Valid input$'
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
cmp option,30h
jl show_invalid
cmp option,39h
jg show_invalid
jmp show_valid

show_invalid:
print invalidMsg
jmp start_ask

show_valid:
;putNewLine
print validMsg
jmp end_program

end_program:
mov ax,4c00h
int 21h
main endp
END
