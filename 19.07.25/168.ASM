.model small
.stack 100h
.data
num1 dw 168
.code

main proc

mov ax,@data
mov ds,ax

mov dx,0
mov ax,168
mov bx,10
div bx
push dx

mov dx,0
div bx
push dx
mov dx,ax
push dx

pop dx
add dl,30h
mov ah,02h
int 21h

pop dx
add dl,30h
mov ah,02h
int 21h

pop dx
add dl,30h
mov ah,02h
int 21h

main endp

mov ax,4c00h
int 21h
END
