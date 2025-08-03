.model small
.stack 100h
.data

stackNum dw 1234

num dw ?

.code

main proc
mov ax,@data
mov ds,ax

;1)Push value into stack
push stackNum

;2)Pop value into num
pop num
xor cx,cx
divide_start:
mov ax,num
mov bx,10
xor dx,dx
div bx;Quotient:AX, Remainder:DX
mov num,ax

push dx
inc cx
cmp num,0
jg divide_start

print_start:
;3)Print num
pop dx
add dl,30h
mov ah,02h
int 21h
loop print_start

mov ax,4c00h
int 21h

main endp
END
