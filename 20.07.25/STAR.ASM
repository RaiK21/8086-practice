.model small
.stack 100h
.data
val1 db ?
msg1 db 10,13,'Stars ? (1-9):$'
.code

main proc
mov ax,@data
mov ds,ax

get_count:
lea dx,msg1
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,30h
cmp al,1
jl  get_count
cmp al,9
jg  get_count
mov val1,al

mov dl,10
mov ah,02h
int 21h
mov dl,13
mov ah,02h
int 21h

mov bl,val1
mov cl,bl

star:
mov dl,'*'
mov ah,02h
int 21h
loop star

mov dl,10
mov ah,02h
int 21h
mov dl,13
mov ah,02h
int 21h

dec bl
mov cl,bl
cmp cl,0
jg star

mov ax,4c00h
int 21h
main endp
END
