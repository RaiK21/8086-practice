.model small
.stack 100h
.data
prompt1 db 'User Input:$'
msg1 db 'Output:$'
array db 5 dup ('$')

val dw 1000,100,10,1
store dw 4567
val2 dw 123
.code

print macro msg
lea dx,msg
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

;1)Get Number
print prompt1
mov cx,4
lea si,array
get_input:
getChar [si]
inc si
loop get_input

;1.5)Test Printing
;putNewLine
;print array

;2)Convert String to Number
mov di,offset val
lea si,array
mov cx,4
xor bx,bx
gen_num:
xor dx,dx
xor ax,ax
mov al,[si]
sub al,30h
mov ah,0
mov dx,[di]
mul dx
inc si
add di,2
add bx,ax
loop gen_num

;3)Calculate final sum
mov ax,bx
add ax,val2
mov store,ax

;4)Print final sum
putNewLine
print msg1
mov di,offset val
mov cx,4
print_num:
xor dx,dx
mov ax,store
mov bx,[di]
div bx
mov store,dx
add di,2
add al,30h
putChar al
loop print_num;

mov ax,4c00h
int 21h
main endp
END
