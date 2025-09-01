.model small
.stack 100h
.data
projectTitle db 'Practical Lab (iii) Question 7$'
msgBefore db 10,13,'Before:$'
msgAfter db 10,13,'After: $'
newline db 10,13,'$'
array1Label db 10,13,'Array 1:$'
array2Label db 10,13,'Array 2:$'
array1 db 'Peace$'
array2 db 5 dup('*'),'$'

.code
main proc
mov ax,@data
mov ds,ax

;INTRO
lea dx,projectTitle
mov ah,09h
int 21h

;BEFORE
lea dx,msgBefore
mov ah,09h
int 21h

lea dx,array1Label
mov ah,09h
int 21h

lea dx,array1
mov ah,09h
int 21h

lea dx,array2Label
mov ah,09h
int 21h

lea dx,array2
mov ah,09h
int 21h

;PROCESS ARRAY
lea si,array1
lea di,array2
mov cx,5

convert_loop:
xor ax,ax;
mov al,[si]
mov [di],al
inc si
inc di
loop convert_loop

;AFTER
lea dx,newline
mov ah,09h
int 21h

lea dx,msgAfter
mov ah,09h
int 21h

lea dx,array1Label
mov ah,09h
int 21h

lea dx,array1
mov ah,09h
int 21h

lea dx,array2Label
mov ah,09h
int 21h

lea dx,array2
mov ah,09h
int 21h

mov ax,4c00h
int 21h

main endp
end main
