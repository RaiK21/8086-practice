.model small
.stack 100h
.data
    ; Menu messages
    menu_msg db 0Dh, 0Ah, '=== SIMPLE CALCULATOR ===', 0Dh, 0Ah
             db '1. Add (+)', 0Dh, 0Ah
             db '2. Subtract (-)', 0Dh, 0Ah
             db '3. Multiply (x)', 0Dh, 0Ah
             db '4. Divide (/)', 0Dh, 0Ah
             db '5. Read/Display History', 0Dh, 0Ah
             db '6. Delete History Entry', 0Dh, 0Ah
             db '7. Exit', 0Dh, 0Ah
             db 'Choose option (1-7): $'
    
    ; Input prompts
    num1_prompt db 0Dh, 0Ah, 'Enter first number (0-9): $'
    num2_prompt db 'Enter second number (0-9): $'
    
    ; Operation messages
    add_msg db ' + $'
    sub_msg db ' - $'
    mul_msg db ' x $'
    div_msg db ' / $'
    equals_msg db ' = $'
    
    ; Result messages
    result_msg db 0Dh, 0Ah, 'Result: $'
    saved_msg db 0Dh, 0Ah, 'Operation saved to history!', 0Dh, 0Ah, '$'
    
    ; File operations
    filename db 'HISTORY.TXT', 0
    file_handle dw ?
    
    ; History display
    history_msg db 0Dh, 0Ah, '=== CALCULATION HISTORY ===', 0Dh, 0Ah, '$'
    empty_msg db 'No history found.', 0Dh, 0Ah, '$'
    
    ; Delete operations
    delete_msg db 0Dh, 0Ah, 'Delete feature: Clear all history? (Y/N): $'
    cleared_msg db 0Dh, 0Ah, 'History cleared!', 0Dh, 0Ah, '$'
    cancelled_msg db 0Dh, 0Ah, 'Delete cancelled.', 0Dh, 0Ah, '$'
    
    ; Error messages
    error_msg db 0Dh, 0Ah, 'Error: Division by zero!', 0Dh, 0Ah, '$'
    invalid_msg db 0Dh, 0Ah, 'Invalid option! Try again.', 0Dh, 0Ah, '$'
    
    ; Variables
    choice db ?
    num1 db ?
    num2 db ?
    result db ?
    operation db ?
    
    ; Buffer for file operations
    output_buffer db 20 dup(0)
    read_buffer db 1000 dup(0)
    
    ; Newlines
    newline db 0Dh, 0Ah, '$'
    
.code
main proc
    mov ax, @data
    mov ds, ax
    
main_loop:
    ; Display menu
    mov ah, 09h
    lea dx, menu_msg
    int 21h
    
    ; Get user choice
    mov ah, 01h
    int 21h
    mov choice, al
    
    ; Process choice
    cmp choice, '1'
    je do_add
    cmp choice, '2'
    je do_subtract  
    cmp choice, '3'
    je do_multiply
    cmp choice, '4'
    je do_divide
    cmp choice, '5'
    je do_read
    cmp choice, '6'
    je do_delete
    cmp choice, '7'
    je exit_program
    
    ; Invalid choice
    mov ah, 09h
    lea dx, invalid_msg
    int 21h
    jmp main_loop
    
do_add:
    mov operation, '+'
    call get_numbers
    mov al, num1
    add al, num2
    mov result, al
    call save_operation
    call display_result
    jmp main_loop
    
do_subtract:
    mov operation, '-'
    call get_numbers
    mov al, num1
    sub al, num2
    mov result, al
    call save_operation
    call display_result
    jmp main_loop
    
do_multiply:
    mov operation, 'x'
    call get_numbers
    mov al, num1
    mul num2
    mov result, al
    call save_operation
    call display_result
    jmp main_loop
    
do_divide:
    mov operation, '/'
    call get_numbers
    cmp num2, 0
    je division_error
    mov al, num1
    mov ah, 0
    div num2
    mov result, al
    call save_operation
    call display_result
    jmp main_loop
    
division_error:
    mov ah, 09h
    lea dx, error_msg
    int 21h
    jmp main_loop
    
do_read:
    call display_history
    jmp main_loop
    
do_delete:
    call delete_history
    jmp main_loop
    
exit_program:
    mov ax, 4C00h
    int 21h
    
main endp

; Subroutine to get two numbers from user
get_numbers proc
    ; Get first number
    mov ah, 09h
    lea dx, num1_prompt
    int 21h
    
    mov ah, 01h
    int 21h
    sub al, '0'     ; Convert ASCII to number
    mov num1, al
    
    ; Get second number
    mov ah, 09h
    lea dx, num2_prompt
    int 21h
    
    mov ah, 01h
    int 21h
    sub al, '0'     ; Convert ASCII to number
    mov num2, al
    
    ret
get_numbers endp

; Subroutine to display result
display_result proc
    mov ah, 09h
    lea dx, result_msg
    int 21h
    
    ; Display: num1 operation num2 = result
    mov al, num1
    add al, '0'
    mov ah, 02h
    mov dl, al
    int 21h
    
    ; Display operation symbol
    mov ah, 09h
    cmp operation, '+'
    je show_add
    cmp operation, '-'
    je show_sub
    cmp operation, 'x'
    je show_mul
    cmp operation, '/'
    je show_div
    
show_add:
    lea dx, add_msg
    jmp show_op
show_sub:
    lea dx, sub_msg
    jmp show_op
show_mul:
    lea dx, mul_msg
    jmp show_op
show_div:
    lea dx, div_msg
    
show_op:
    int 21h
    
    ; Display second number
    mov al, num2
    add al, '0'
    mov ah, 02h
    mov dl, al
    int 21h
    
    ; Display equals
    mov ah, 09h
    lea dx, equals_msg
    int 21h
    
    ; Display result
    mov al, result
    add al, '0'
    mov ah, 02h
    mov dl, al
    int 21h
    
    mov ah, 09h
    lea dx, newline
    int 21h
    
    ret
display_result endp

; Subroutine to save operation to file
save_operation proc
    ; Create/Open file for append
    mov ah, 3Ch         ; Create file
    mov cx, 0           ; Normal file
    lea dx, filename
    int 21h
    jc save_error
    mov file_handle, ax
    
    ; Prepare output string: "num1 op num2 = result\r\n"
    lea si, output_buffer
    
    ; Add first number
    mov al, num1
    add al, '0'
    mov [si], al
    inc si
    
    ; Add space
    mov byte ptr [si], ' '
    inc si
    
    ; Add operation
    mov al, operation
    mov [si], al
    inc si
    
    ; Add space  
    mov byte ptr [si], ' '
    inc si
    
    ; Add second number
    mov al, num2
    add al, '0'
    mov [si], al
    inc si
    
    ; Add equals
    mov byte ptr [si], ' '
    inc si
    mov byte ptr [si], '='
    inc si
    mov byte ptr [si], ' '
    inc si
    
    ; Add result
    mov al, result
    add al, '0'
    mov [si], al
    inc si
    
    ; Add newline
    mov byte ptr [si], 0Dh
    inc si
    mov byte ptr [si], 0Ah
    inc si
    
    ; Calculate length
    lea ax, output_buffer
    sub si, ax
    mov cx, si
    
    ; Write to file
    mov ah, 40h
    mov bx, file_handle
    lea dx, output_buffer
    int 21h
    
    ; Close file
    mov ah, 3Eh
    mov bx, file_handle
    int 21h
    
    ; Show success message
    mov ah, 09h
    lea dx, saved_msg
    int 21h
    
save_error:
    ret
save_operation endp

; Subroutine to display history
display_history proc
    ; Open file for reading
    mov ah, 3Dh         ; Open file
    mov al, 0           ; Read only
    lea dx, filename
    int 21h
    jc no_history
    mov file_handle, ax
    
    ; Display header
    mov ah, 09h
    lea dx, history_msg
    int 21h
    
    ; Read file content
    mov ah, 3Fh
    mov bx, file_handle
    mov cx, 1000
    lea dx, read_buffer
    int 21h
    
    ; Close file
    push ax             ; Save bytes read
    mov ah, 3Eh
    mov bx, file_handle
    int 21h
    pop ax              ; Restore bytes read
    
    ; Check if file was empty
    cmp ax, 0
    je no_history
    
    ; Null terminate and display
    mov si, ax
    mov read_buffer[si], '$'
    mov ah, 09h
    lea dx, read_buffer
    int 21h
    ret
    
no_history:
    mov ah, 09h
    lea dx, empty_msg
    int 21h
    ret
display_history endp

; Subroutine to delete history
delete_history proc
    mov ah, 09h
    lea dx, delete_msg
    int 21h
    
    mov ah, 01h
    int 21h
    
    cmp al, 'Y'
    je confirm_delete
    cmp al, 'y'
    je confirm_delete
    
    ; Cancel delete
    mov ah, 09h
    lea dx, cancelled_msg
    int 21h
    ret
    
confirm_delete:
    ; Delete file by creating empty file
    mov ah, 3Ch
    mov cx, 0
    lea dx, filename
    int 21h
    jc delete_done
    
    ; Close immediately (creates empty file)
    mov bx, ax
    mov ah, 3Eh
    int 21h
    
delete_done:
    mov ah, 09h
    lea dx, cleared_msg
    int 21h
    ret
delete_history endp

END main
