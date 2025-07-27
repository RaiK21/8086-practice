.model small
.stack 100h
.data
    ; Simple menu
    menu db 0Dh, 0Ah, '=== CALCULATOR ===', 0Dh, 0Ah
         db '1-Add  2-Sub  3-Mul  4-Div', 0Dh, 0Ah
         db '5-History  6-Clear  7-Exit', 0Dh, 0Ah
         db 'Choice: $'
    
    ; Prompts
    prompt1 db 0Dh, 0Ah, 'First number (0-9): $'
    prompt2 db 'Second number (0-9): $'
    result_msg db 0Dh, 0Ah, 'Result: $'
    
    ; Messages
    saved_msg db ' (Saved!)', 0Dh, 0Ah, '$'
    error_msg db 0Dh, 0Ah, 'Error: Cannot divide by 0!', 0Dh, 0Ah, '$'
    invalid_msg db 0Dh, 0Ah, 'Invalid choice!', 0Dh, 0Ah, '$'
    history_header db 0Dh, 0Ah, '--- HISTORY ---', 0Dh, 0Ah, '$'
    no_history_msg db 'No calculations yet.', 0Dh, 0Ah, '$'
    cleared_msg db 0Dh, 0Ah, 'History cleared!', 0Dh, 0Ah, '$'
    
    ; Variables
    choice db ?
    num1 db ?
    num2 db ?
    result db ?
    operation db ?
    
    ; Simple history storage (in memory)
    history_count db 0
    history_entries db 50 dup('$')  ; Store up to 10 entries of 5 chars each
    
.code
main proc
    mov ax, @data
    mov ds, ax
    
main_loop:
    ; Show menu
    mov ah, 09h
    lea dx, menu
    int 21h
    
    ; Get choice
    mov ah, 01h
    int 21h
    mov choice, al
    
    ; Process choice
    cmp choice, '1'
    je do_add
    cmp choice, '2' 
    je do_sub
    cmp choice, '3'
    je do_mul
    cmp choice, '4'
    je do_div
    cmp choice, '5'
    je call_show_history
    cmp choice, '6'
    je clear_history
    cmp choice, '7'
    je exit_prog
    
    ; Invalid
    mov ah, 09h
    lea dx, invalid_msg
    int 21h
    jmp main_loop

call_show_history:
    call show_history
    jmp main_loop
    
do_add:
    mov operation, '+'
    call get_two_numbers
    mov al, num1
    add al, num2
    mov result, al
    call show_result
    call save_to_history
    jmp main_loop
    
do_sub:
    mov operation, '-'
    call get_two_numbers
    mov al, num1
    sub al, num2
    mov result, al
    call show_result
    call save_to_history
    jmp main_loop
    
do_mul:
    mov operation, 'x'
    call get_two_numbers
    mov al, num1
    mul num2
    mov result, al
    call show_result
    call save_to_history
    jmp main_loop
    
do_div:
    mov operation, '/'
    call get_two_numbers
    cmp num2, 0
    je div_by_zero
    mov al, num1
    mov ah, 0
    div num2
    mov result, al
    call show_result
    call save_to_history
    jmp main_loop
    
div_by_zero:
    mov ah, 09h
    lea dx, error_msg
    int 21h
    jmp main_loop
    
show_history:
    mov ah, 09h
    lea dx, history_header
    int 21h
    
    cmp history_count, 0
    je no_history
    
    ; Display all history entries
    mov cl, history_count
    mov ch, 0
    lea si, history_entries
    
display_loop:
    cmp cx, 0
    je history_done
    
    ; Display one entry (5 characters: "1+2=3")
    mov bx, 5
display_entry:
    mov ah, 02h
    mov dl, [si]
    int 21h
    inc si
    dec bx
    cmp bx, 0
    jne display_entry
    
    ; Add newline
    mov ah, 02h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h
    
    dec cx
    jmp display_loop
    
no_history:
    mov ah, 09h
    lea dx, no_history_msg
    int 21h
    
history_done:
    ret
    
clear_history:
    mov history_count, 0
    mov ah, 09h
    lea dx, cleared_msg
    int 21h
    jmp main_loop
    
exit_prog:
    mov ax, 4C00h
    int 21h
    
main endp

; Get two single-digit numbers
get_two_numbers proc
    mov ah, 09h
    lea dx, prompt1
    int 21h
    
    mov ah, 01h
    int 21h
    sub al, '0'
    mov num1, al
    
    mov ah, 09h
    lea dx, prompt2
    int 21h
    
    mov ah, 01h
    int 21h
    sub al, '0'
    mov num2, al
    
    ret
get_two_numbers endp

; Display calculation result
show_result proc
    mov ah, 09h
    lea dx, result_msg
    int 21h
    
    ; Show: num1 op num2 = result
    mov al, num1
    add al, '0'
    mov ah, 02h
    mov dl, al
    int 21h
    
    mov ah, 02h
    mov dl, operation
    int 21h
    
    mov al, num2
    add al, '0'
    mov ah, 02h
    mov dl, al
    int 21h
    
    mov ah, 02h
    mov dl, '='
    int 21h
    
    mov al, result
    add al, '0'
    mov ah, 02h
    mov dl, al
    int 21h
    
    mov ah, 09h
    lea dx, saved_msg
    int 21h
    
    ret
show_result endp

; Save calculation to memory history
save_to_history proc
    ; Check if history is full (max 10 entries)
    cmp history_count, 10
    jge history_full
    
    ; Calculate position in history array
    mov al, history_count
    mov bl, 5              ; Each entry is 5 bytes
    mul bl
    lea si, history_entries
    add si, ax
    
    ; Store: num1, operation, num2, =, result
    mov al, num1
    add al, '0'
    mov [si], al
    inc si
    
    mov al, operation
    mov [si], al
    inc si
    
    mov al, num2
    add al, '0'
    mov [si], al
    inc si
    
    mov byte ptr [si], '='
    inc si
    
    mov al, result
    add al, '0'
    mov [si], al
    
    inc history_count
    
history_full:
    ret
save_to_history endp

END main
