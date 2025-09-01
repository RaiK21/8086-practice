.model small
.stack 100h
.data
prompt1 db 10,13,'Enter a string:$'
numbersMsg db 10,13,'Numbers:$'
alphabetsMsg db 10,13,'Alphabets:$'

para_list label byte
inputBuffer db 25 ; max allowed chars
inputLength db ? ; actual count typed
inputData db 25 dup('$') ; buffer for the data

msgOutput db 10,13,'You typed: $'

.code
main proc
mov ax,@data
mov ds,ax

;1)Prompt
mov ah,09h
lea dx,prompt1
int 21h

;2)Read String
mov ah,0ah
lea dx,para_list
int 21h

;3)Display numbers msg
mov ah,09h
lea dx,numbersMsg
int 21h

;4)Display alphabets msg
mov ah,09h
lea dx,alphabetsMsg
int 21h

;5)Show typed data
mov ah,09h
lea dx,inputData
int 21h

mov ax,4c00h
int 21h
main endp
END
