.model small
.stack 100h
.data
projectTitle db 'Practical Lab (iii) Question 8',10,13,'$'
inputMsg db 'Input:$'
outputMsg db 10,13,'Output (After Add 123):$'
newline db 10,13,'$'
array db 4 dup('$')
val dw 0

.code
main proc
mov ax,@data
mov ds,ax

lea dx,projectTitle
mov ah,09h
int 21h

lea dx,inputMsg
mov ah,09h
int 21h

;INPUT
mov cx,4
lea si,array

input_loop:
mov ah,01h
int 21h
mov [si],al
inc si
loop input_loop

;CONVERT TO NUMBER
lea si,array
mov bx,1000

convert_loop:
xor ax,ax
mov al,[si]
sub al,30h
mul bx
add val,ax

mov ax,bx
mov bx,10
xor dx,dx
div bx;Quotient:AX,Remainder:DX
mov bx,ax
inc si
loop convert_loop

;ADD 123
add val,123

;DISPLAY OUTPUT
lea dx,outputMsg
mov ah,09h
int 21h

mov cx,4
mov ax,val
mov bx,1000

display_loop:
xor dx,dx
div bx;Quotient:AX,Remainder:DX

push dx
mov ah,02h
mov dl,al
add dl,30h
int 21h

mov ax,bx
mov bx,10
xor dx,dx
div bx

mov bx,ax
pop ax
loop display_loop

mov ax,4c00h
int 21h
main endp
end main
