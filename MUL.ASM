;multiply 2 single digits
.model small
.stack 100h
.data
.code

main proc
mov ax,@data
mov ds,ax

mov ax,4c00h
int 21h
main endp
END
