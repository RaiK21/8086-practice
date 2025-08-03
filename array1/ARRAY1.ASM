.model small
.stack 100h
.data
array1 db 'hello$'
;array2 db '*****$'
array2 db 5 dup ('*'),'$'

msg1 db 10,13,'Before Copying:$'
msg2 db 10,13,'After Copying:$'
array1Msg db 10,13,'array1:$'
array2Msg db 10,13,'array2:$'
                           
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

print msg1
print array1Msg
print array1
print array2Msg
print array2

lea si,array1
lea di,array2
mov cx,5

copy_array:
mov al,[si]
mov [di],al
inc si
inc di
loop copy_array


print msg2
print array1Msg
print array1
print array2Msg
print array2
         
end_program:
mov ax,4c00h
int 21h
main endp
END
