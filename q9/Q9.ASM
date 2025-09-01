.model small
.stack 100h
.data
projectTitle db 'Practical Lab (iii) Question 9',10,13,'$'

para_list label byte
inputBuffer db 25; max length
inputLength db ?; stores actual length
inputData db 25 dup('$');buffer to store input data

prompt db 10,13,'Enter a string:$'
numbersMsg db 10,13,'Numbers:$'
alphabetsMsg db 10,13,'Alphabets:$'

numbers db 0
alphabets db 0

.code
main proc
mov ax,@data
mov ds,ax

lea dx,projectTitle
mov ah,09h
int 21h

lea dx,prompt
mov ah,09h
int 21h

mov ah,0ah
lea dx,para_list
int 21h

mov cl,inputLength
mov ch,0              ; clear upper byte of cx
lea si,inputData

count_loop:
mov al,[si]
cmp al,30h            ; compare with '0'
jl check_alphabet 
cmp al,39h            ; compare with '9'
jg check_alphabet
; it's a number
inc numbers
jmp next_char

check_alphabet:
cmp al,41h            ; compare with 'A'
jl next_char          ; not a letter
cmp al,5Ah            ; compare with 'Z'
jle is_alphabet       ; it's uppercase
cmp al,61h            ; compare with 'a'
jl next_char          ; not a letter
cmp al,7Ah            ; compare with 'z'
jg next_char          ; not a letter

is_alphabet:
inc alphabets

next_char:
inc si
loop count_loop

lea dx,numbersMsg
mov ah,09h
int 21h

mov ah,02h
mov dl,numbers
add dl,30h
int 21h

lea dx,alphabetsMsg
mov ah,09h
int 21h

mov ah,02h
mov dl,alphabets
add dl,30h
int 21h

mov ax,4c00h
int 21h
main endp
end main
