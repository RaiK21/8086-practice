.model small
.stack 100h
.data
prompt1 db 10,13,'Enter the dividend:$'
prompt2 db 10,13,'Enter the divisor:$'
resultMsg db 10,13,'Result:$'
remainderMsg db 10,13,'Remainder:$'

dividend db ?
divisor db ?

quotient db ?
remainder db ?

.code

print macro msg
lea dx,msg
mov ah,09h
int 21h
endm

getChar macro char
mov ah,01h
int 21h
sub al,30h
mov char,al
endm

putChar macro char
mov dl,char
add dl,30h
mov ah,02h
int 21h
endm

main proc
mov ax,@data
mov ds,ax

;1)Prompt for Dividend

print prompt1
getChar dividend 

;2)Prompt for Divisor

print prompt2
getChar divisor 

;3)Perform Division
xor ax,ax
mov al,dividend
mov bl,divisor
div bl;ah=quotient,al=remainder
mov quotient,ah
mov remainder,al

;4)Print Result
print resultMsg
putChar quotient

;5)Print Remainder
print remainderMsg
putChar remainder

mov ax,4c00h
int 21h
main endp
END
