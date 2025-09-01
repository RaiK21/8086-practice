.MODEL SMALL
.DATA
MSG0 db "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! $"
MSG00 db "==================================================== $"

MSG1 db " Please enter your username: $"
MSG2 db 0dh,0ah, "               Valid username $"
MSG3 db 0dh,0ah, "              Invalid username $"
system_username db "csassignment123"

MSG4 db " Please enter your password: $"
MSG5 db 0dh,0ah, "               Valid password $"
MSG6 db 0dh,0ah, "              Invalid password $"
system_password db "goodassignment"

MSG7 db 0dh,0ah, " -----------Welcome to CTRL Phamacy----------- $"

MSGerror db 0dh,0ah, "      Invalid INPUT. Please Enter again $"

MSG8 db " ######### MAIN MENU ######### $"
MSG9 db 0dh,0ah, " 1) Funtion $"
MSG10 db 0dh,0ah, " 2) Item List $"
MSG11 db 0dh,0ah, " Choose an option 1 or 2 (0 to EXIT): $"

MSG12 db 0dh,0ah," ######### Item List ######### $"
MSG13 db 0dh,0ah, " 1) Medicine $"
MSG14 db 0dh,0ah, " 2) Supplement $"
MSG15 db 0dh,0ah, " Choose an option 1 or 2(0 to Main menu): $"

MSG16 db 0dh,0ah," ######### Function ######### $"
MSG17 db 0dh,0ah, " 1) Order Item $"
MSG18 db 0dh,0ah, " 2) Calculate total amount $"
MSG20 db 0dh,0ah, " 3) Calculate changes $"
MSG19 db 0dh,0ah, " Choose an option 1 or 3 (0 to Main menu): $"

    m0 db 0dh,0ah," Medicine: $"
    m1 db 0Dh, 0Ah," a) Aspirin         RM3  Pain Relief $"
    m2 db 0Dh, 0Ah," b) Paracetamol     RM2  Fever Reducer $"
    m3 db 0Dh, 0Ah," c) Cough Syrup     RM4  Cough and Cold $"
    m4 db 0Dh, 0Ah," d) Cough Derops    RM2  Cough and Cold $"
    m5 db 0Dh, 0Ah," e) Allergy Relief  RM6  Allergies Treatment $"

    
    s0 db 0dh,0ah," Supliment: $"
    s1 db 0Dh, 0Ah," f) Vitamin C       RM5  Immune Support $"
    s2 db 0Dh, 0Ah," g) Fish Oil        RM8  Omega-3 Fatty Acids $"
    s3 db 0Dh, 0Ah," h) Calcium         RM7  Bone Health $"
    s4 db 0Dh, 0Ah," i) Vitamin D       RM6  Bone Health $"
    s5 db 0Dh, 0Ah," j) Vitamin B12     RM9  Energy Boost $"

    
NAME_INPUT LABEL BYTE
MAX DB 20  
ACT DB 0    
username DB 20 DUP (" ")  

PW_MAX LABEL BYTE 
pw_MAX DB 20
pw_ACT DB 0 
password DB 20 DUP (" ") 

    msg_confirm db 0Dh, 0Ah," Do you want to continue buying(Y or N)?$"
    msg_invalid db 0Dh, 0Ah," Invalid input!!!$"
    msg_choose db 0Dh, 0Ah," Choose an option (a to j): $"
    quantity_prompt db 0Dh, 0Ah," Enter the quantity to buy(0 - 20): $"
    order_prompt db 0dh,0ah, " Item ordered: $"
    medicine_prompt db 0dh,0ah, " ~~~~~~~Medicine~~~~~~~ $"
    totalamounta_prompt db 0Dh, 0Ah," Total Amount A:RM $"
    totalamountb_prompt db 0Dh, 0Ah," Total Amount B:RM $"
    totalamountc_prompt db 0Dh, 0Ah," Total Amount C:RM $"
    totalamountd_prompt db 0Dh, 0Ah," Total Amount D:RM $"
    totalamounte_prompt db 0Dh, 0Ah," Total Amount E:RM $"
    supliment_prompt db 0dh,0ah, " ~~~~~~~Supliment~~~~~~~ $"
    totalamountf_prompt db 0Dh, 0Ah," Total Amount F:RM $"
    totalamountg_prompt db 0Dh, 0Ah," Total Amount G:RM $"
    totalamounth_prompt db 0Dh, 0Ah," Total Amount H:RM $"
    totalamounti_prompt db 0Dh, 0Ah," Total Amount I:RM $"
    totalamountj_prompt db 0Dh, 0Ah," Total Amount J:RM $"
    finalamount_prompt db 0Dh, 0Ah," All Total Amount:RM $"
    after_prompt db 0Dh, 0Ah," Final Amount(5% Tax included) :RM $"
    
    
    paydisplay  db 0ah,0dh, " ~~~~~PAYMENT~~~~~ $"
    needpay db 0ah,0dh, " Need To Pay: RM $"
    payment_prompt  db 0ah,0dh, " Enter Pay Amount: RM $"
    payerror db 0ah,0dh, " Pay Amount cannot less than Total Price $"
    changegive  db 0ah,0dh, " Change Give: RM$"

    bye db 0Dh, 0Ah," Thanks for using!!! BYE...... $"
    
resultaa dw 10 dup(""), '$'
resulta dw 10 dup(""), '$'
numa dw 0
inputa label byte
maxa   db 10
acta  db ?
dataa  dw 10 dup("?")

resultab dw 10 dup(""), '$'
resultb dw 10 dup(""), '$'
numb dw 0
inputb label byte
maxb   db 10
actb   db ?
datab  dw 10 dup("?")

resultac dw 10 dup(""), '$'
resultc dw 10 dup(""), '$'
numc dw 0
inputc label byte
maxc   db 10
actc   db ?
datac  dw 10 dup("?")

resultad dw 10 dup(""), '$'
resultd dw 10 dup(""), '$'
numd dw 0
inputd label byte
maxd   db 10
actd   db ?
datad  dw 10 dup("?")

resultae dw 10 dup(""), '$'
resulte dw 10 dup(""), '$'
nume dw 0
inpute label byte
maxe   db 10
acte   db ?
datae  dw 10 dup("?")

resultaf dw 10 dup(""), '$'
resultf dw 10 dup(""), '$'
numf dw 0
inputf label byte
maxf   db 10
actf   db ?
dataf  dw 10 dup("?")

resultag dw 10 dup(""), '$'
resultg dw 10 dup(""), '$'
numg dw 0
inputg label byte
maxg   db 10
actg   db ?
datag  dw 10 dup("?")

resultah dw 10 dup(""), '$'
resulth dw 10 dup(""), '$'
numh dw 0
inputh label byte
maxh   db 10
acth   db ?
datah  dw 10 dup("?")

resultai dw 10 dup(""), '$'
resulti dw 10 dup(""), '$'
numi dw 0
inputi label byte
maxi   db 10
acti   db ?
datai  dw 10 dup("?")

resultaj dw 10 dup(""), '$'
resultj dw 10 dup(""), '$'
numj dw 0
inputj label byte
maxj   db 10
actj   db ?
dataj  dw 10 dup("?")

finalamount dw 10 dup(""), '$'
finalnonconvert dw 10 dup(""), '$'
finaltotal dw 10 dup(""), '$'

medicine_option db ?
confirm db ?

quotient dw 0
divider dw 100     
ten dw 10
dpoint1 dw 0    
dpoint2 dw 0    
ddpoint1 dw 0
ddpoint2 dw 0
ddpoint1cvt dw 10 dup(""),'$'
ddpoint2cvt dw 10 dup(""),'$'

quotient1 dw 0
divider1 dw 100      
ten1 dw 10
dpoint11 dw 0    
dpoint21 dw 0    
dpprinta dw 0
dpprinta1 dw 0
quotient_decimal1 dw 6 dup(" "), "$"
dcpoint11 dw 0
dcpoint21 dw 0
num_digit1 dw 0
dp_digit1 dw 0
taxprice1 dw 0
taxpriceprint1 dw 0
    
    
input_pay1 label byte
    maxpay1   db 10
    actpay1   db ?
    
    pay1   dw 10 dup("?")    
    changeg1 dw 3 dup(""), '$'
    payment_input1 dw 0
    
num_digit dw 0
quotient_decimal dw 6 dup(" "), "$"

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~initialise data segment
.CODE
MAIN PROC

    MOV AX,@data    
    MOV DS,AX

    ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~interface
    LEA DX,MSG7
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG1
    MOV AH,09H
    INT 21H
    
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~receive string (name
 inputuser:
    LEA DX,NAME_INPUT
    MOV AH,0AH
    INT 21H

 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Validation

    MOV CX,15 ;loop 15 times
    LEA SI,system_username 
    LEA DI,username   
    
 uagain:
    MOV AL,[SI]        ;get content of address SI
    MOV BL,[DI]  
   
    CMP AL,BL          ;compare AL and BL
    JE uequal
    JMP uinvalid
    
uinvalid: 
    
    MOV AH, 02H    ;set cursor to top left corner (clear screen must use)   
    MOV BH, 00H     
    MOV DX, 0000H    
    INT 10H    
 
    MOV AH, 06H     ;clear screen
    MOV BH, 07H  
    MOV CX, 0000H  
    MOV DX, 184FH  
    INT 10H  
    
    LEA DX,MSG0
    MOV AH,09H
    INT 21H
    
    LEA DX,MSG3
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG0
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
                ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG1
    MOV AH,09H
    INT 21H
  
    JMP inputuser
    
uequal:
    INC SI         
    INC DI
    LOOP uagain
    
    MOV AH, 02H    ;set cursor to top left corner (clear screen must use)   
    MOV BH, 00H     
    MOV DX, 0000H    
    INT 10H    
 
    MOV AH, 06H     ;clear screen
    MOV BH, 07H  
    MOV CX, 0000H  
    MOV DX, 184FH  
    INT 10H  
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    LEA DX,MSG2
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
                ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG4
    MOV AH,09H
    INT 21H
    
    JMP inputpw
    
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

inputpw:
    LEA DX,PW_MAX
    MOV AH,0AH
    INT 21H
 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Validation
    MOV CX,14 ;loop 14 times
    LEA SI,system_password 
    LEA DI,password   
   
pagain:
    MOV AL,[SI]        ;get content of address SI
    MOV BL,[DI]  
   
    CMP AL,BL          ;compare AL and BL
    JE pequal
    JMP pinvalid
    
pinvalid: 
    
    MOV AH, 02H    ;set cursor to top left corner (clear screen must use)   
    MOV BH, 00H     
    MOV DX, 0000H    
    INT 10H    
 
    MOV AH, 06H     ;clear screen
    MOV BH, 07H  
    MOV CX, 0000H  
    MOV DX, 184FH  
    INT 10H  
    
    LEA DX,MSG0
    MOV AH,09H
    INT 21H
    
    LEA DX,MSG6
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG0
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
                 ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    LEA DX,MSG4
    MOV AH,09H
    INT 21H
    
    JMP inputpw
    
 pequal:
    INC SI         
    INC DI
    LOOP pagain
    
    MOV AH, 02H    ;set cursor to top left corner (clear screen must use)   
    MOV BH, 00H     
    MOV DX, 0000H    
    INT 10H    
 
    MOV AH, 06H     ;clear screen
    MOV BH, 07H  
    MOV CX, 0000H  
    MOV DX, 184FH  
    INT 10H  
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    LEA DX,MSG5
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
                ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    JMP mainmenu1
   
  
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`main menu
 mainmenu1:
 
    LEA DX,MSG8
    MOV AH,09H
    INT 21H
    
    LEA DX,MSG9
    INT 21H
    
    LEA DX,MSG10
    INT 21H
    
    LEA DX,MSG11
    INT 21H
    
     
    ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~receive single input
    MOV AH, 01H
    INT 21H
    MOV BL,AL         
    
 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Validation
 
    MOV AH, 02H    ;set cursor to top left corner (clear screen must use)   
    MOV BH, 00H     
    MOV DX, 0000H    
    INT 10H    
 
    MOV AH, 06H     ;clear screen
    MOV BH, 07H  
    MOV CX, 0000H  
    MOV DX, 184FH  
    INT 10H 
    
    MOV AL,31h          ;option = 1
    CMP AL,BL
    JE functionmenu
    
    MOV AL,32h          ;option = 2
    CMP AL,BL
    JE itemlist
    
    MOV AL,30h          ;option = 0
    CMP AL,BL
    JE exit
    
    JMP inputinvalid
    

    ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`   
 itemlist:  
 
    LEA DX,MSG12
    MOV AH,09H
    INT 21H
    
    LEA DX,MSG13
    INT 21H
    
    LEA DX,MSG14
    INT 21H
    
    LEA DX,MSG15
    INT 21H
    
    MOV AH, 01H ;recived input 1 or 2
    INT 21H
    MOV BL,AL 
 
    MOV AH, 02H    ;set cursor to top left corner (clear screen must use)   
    MOV BH, 00H     
    MOV DX, 0000H    
    INT 10H    
 
    MOV AH, 06H     ;clear screen
    MOV BH, 07H  
    MOV CX, 0000H  
    MOV DX, 184FH  
    INT 10H  
    
    MOV AL,30h          ;opgion = 0
    CMP AL,BL
    JE mainmenu1
    
    MOV AL,31h          ;option = 1
    CMP AL,BL
    JE Medicine
    
    MOV AL,32h          ;option = 2
    CMP AL,BL
    JE Supplement
    
    JMP inputinvalid
  
 functionmenu: jmp functionmenu1 
 exit:jmp exit1
 
    
 Medicine:
    ;print medicine
    LEA DX,m0
    MOV AH,09H
    INT 21H
    
    LEA DX,m1
    MOV AH,09H
    INT 21H
    
    LEA DX,m2
    MOV AH,09H
    INT 21H
    
    LEA DX,m3
    MOV AH,09H
    INT 21H
    
    LEA DX,m4
    MOV AH,09H
    INT 21H
    
    LEA DX,m5
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,msg00
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    JMP itemlist
  
  
  Supplement:
   
  ;print supllement
    LEA DX,s0
    MOV AH,09H
    INT 21H
    
   LEA DX,s1
    MOV AH,09H
    INT 21H
    
    LEA DX,s2
    MOV AH,09H
    INT 21H
    
    LEA DX,s3
    MOV AH,09H
    INT 21H
    
    LEA DX,s4
    MOV AH,09H
    INT 21H
    
    LEA DX,s5
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,msg00
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    JMP itemlist
    
  mainmenu2:JMP mainmenu1  
  ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    
functionmenu1:  
 

LEA DX,MSG16
    MOV AH,09H
    INT 21H
    
    LEA DX,MSG17
    INT 21H
    
    LEA DX,MSG18
    INT 21H
    
    LEA DX,MSG20
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG19
    mov ah,09h
    INT 21H
    
    MOV AH, 01H ;received input submenu1
    INT 21H
    MOV BL,AL
    
    MOV AH, 02H    ;set cursor to top left corner (clear screen must use)   
    MOV BH, 00H     
    MOV DX, 0000H    
    INT 10H    
 
    MOV AH, 06H     ;clear screen
    MOV BH, 07H  
    MOV CX, 0000H  
    MOV DX, 184FH  
    INT 10H 
    
    MOV AL,31h          ;option = 1
    CMP AL,BL
    JE function1
    
    MOV AL,32h          ;option = 2
    CMP AL,BL
    JE j1function2
    
    MOV AL,33h          ;option = 3
    CMP AL,BL
    JE j1function3
    
    MOV AL,30h          ;option = 0
    CMP AL,BL
    JE mainmenu2

    JMP inputinvalid
    
  j1function2:JMP j2function2
  j1function3:jmp j2function3
    ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    
 function1:
    
purchase:   
    LEA DX, msg_choose    
    MOV AH, 09H
    INT 21H
    
    MOV AH, 01H         ;receive input
    INT 21H
    
    MOV medicine_option, AL     ;compare with item to detect jump
    CMP medicine_option,'a'
    JE jumpa
    CMP medicine_option,'A'
    JE jumpa
    CMP medicine_option,'b'
    JE jumpb
    CMP medicine_option,'B'
    JE jumpb
    CMP medicine_option,'c'
    JE jumpc
    CMP medicine_option,'C'
    JE jumpc
    CMP medicine_option,'d'
    JE jumpd
    CMP medicine_option,'D'
    JE jumpd
    CMP medicine_option,'e'
    JE jumpe
    CMP medicine_option,'E'
    JE jumpe
    jmp supplementorder
    jumpa:jmp itema
    jumpb:jmp itemb
    
    supplementorder:
    CMP medicine_option,'f'
    JE jump1f
    CMP medicine_option,'F'
    JE jump1f
    CMP medicine_option,'g'
    JE jump1g
    CMP medicine_option,'G'
    JE jump1g
    CMP medicine_option,'h'
    JE jump1h
    CMP medicine_option,'H'
    JE jump1h
    CMP medicine_option,'i'
    JE jump1i
    CMP medicine_option,'I'
    JE jump1i
    CMP medicine_option,'j'
    JE jump1j
    CMP medicine_option,'J'
    JE jump1j
    

    JMP purchase
    
 
    jumpc:JMP itemc 
    jumpd:JMP itemd
    jumpe:JMP iteme 
    jump1f:JMP itemf 
    jump1g:JMP itemg 
    jump1h:JMP itemh
    jump1i:JMP itemi 
    jump1j:JMP itemj

    
    ;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\    
itema:

    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
  
    LEA DX,m1
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    LEA DX, quantity_prompt
    MOV AH, 09H
    INT 21H

 
    
    ; Receive input
    lea dx, inputa
    mov ah, 0ah
    int 21h
    
    ; Convert input string (data) to integer (num)
    lea si, dataa
    mov bx, 10
    mov ax, 0
    mov cx, 0
    mov cl, acta
    againa1:
    mov ax, [si]
    mov ah, 0
    sub ax, 30h
    add ax, numa
    mul bx
    mov numa, ax
    inc si
    loop againa1
    mov ax, numa
    div bx
    mov numa, ax        

    ; Check if quantity is within the valid range (0 - 20)
    cmp numa, 0
    jl itemacln
    cmp numa, 20
    jg itemacln
    
    ; Calculate the cost of the current item (e.g., 3 * quantity)
    mov ax, numa
    mov bx, 3
    mul bx
    mov resulta, ax  ; Store the cost in resulta


    jmp comfirmation
    
    itemacln:
    mov numa, 0
    jmp itema

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\  
 itemb:
 
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
  
    LEA DX,m2
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    LEA DX, quantity_prompt
    MOV AH, 09H
    INT 21H
    
  
    
    ; Receive input
    lea dx, inputb
    mov ah, 0ah
    int 21h

    ; Convert input string (data) to integer (num) 
    lea si, datab
    mov bx, 10
    mov ax, 0
    mov cx, 0
    mov cl, actb
    againb1:
    mov ax, [si]
    mov ah, 0
    sub ax, 30h
    add ax, numb
    mul bx
    mov numb, ax
    inc si
    loop againb1
    mov ax, numb
    div bx
    mov numb, ax        

    ; Check if quantity is within the valid range (0 - 20)
    cmp numb, 0
    jl itembcln
    cmp numb, 20
    jg itembcln
    ; Calculate the cost of the current item (e.g., 2 * quantity)
    mov ax, numb
    mov bx, 2
    mul bx
    mov resultb, ax  ; Store the cost in resultb

    jmp comfirmation
    
    itembcln:
    mov numb, 0
    
    LEA DX,m3
    MOV AH,09H
    INT 21H
    
    jmp itemb
    
 ;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\  
itemc:
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
  
    LEA DX,m3
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    LEA DX, quantity_prompt
    MOV AH, 09H
    INT 21H

    
    ; Receive input
    lea dx, inputc
    mov ah, 0ah
    int 21h

    ; Convert input string (data) to integer (num) 
    lea si, datac
    mov bx, 10
    mov ax, 0
    mov cx, 0
    mov cl, actc
    againc1:
    mov ax, [si]
    mov ah, 0
    sub ax, 30h
    add ax, numc
    mul bx
    mov numc, ax
    inc si
    loop againc1
    mov ax, numc
    div bx
    mov numc, ax        

    ; Check if quantity is within the valid range (0 - 20)
    cmp numc, 0
    jl itemccln
    cmp numc, 20
    jg itemccln
    
    ; Calculate the cost of the current item (e.g., 4 * quantity)
    mov ax, numc
    mov bx, 4
    mul bx
    mov resultc, ax  ; Store the cost in resultc
    
    jmp comfirmation
    
    itemccln:
    mov numc, 0
    jmp itemc
  ;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\  

j2function3:jmp j25function3
  
itemd:
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
  
    LEA DX,m4
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    LEA DX, quantity_prompt
    MOV AH, 09H
    INT 21H

    
    ; Receive input
    lea dx, inputd
    mov ah, 0ah
    int 21h

    ; Convert input string (data) to integer (num) 
    lea si, datad
    mov bx, 10
    mov ax, 0
    mov cx, 0
    mov cl, actd
    againd1:
    mov ax, [si]
    mov ah, 0
    sub ax, 30h
    add ax, numd
    mul bx
    mov numd, ax
    inc si
    loop againd1
    mov ax, numd
    div bx
    mov numd, ax        

    ; Check if quantity is within the valid range (0 - 20)
    cmp numd, 0
    jl itemdcln
    cmp numd, 20
    jg itemdcln
    
    ; Calculate the cost of the current item (e.g., 2 * quantity)
    mov ax, numd
    mov bx, 2
    mul bx
    mov resultd, ax  ; Store the cost in resultd
    
    jmp comfirmation
    
    itemdcln:
    mov numd, 0
    jmp itemd
    
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\      
iteme:
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
  
    LEA DX,m5
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    LEA DX, quantity_prompt
    MOV AH, 09H
    INT 21H

    ; Receive input
    lea dx, inpute
    mov ah, 0ah
    int 21h

    ; Convert input string (data) to integer (num)
    lea si, datae
    mov bx, 10
    mov ax, 0
    mov cx, 0
    mov cl, acte
    againe1:
    mov ax, [si]
    mov ah, 0
    sub ax, 30h
    add ax, nume
    mul bx
    mov nume, ax
    inc si
    loop againe1
    mov ax, nume
    div bx
    mov nume, ax          

    ; Check if quantity is within the valid range (0 - 20)
    cmp nume, 0
    jl itemecln
    cmp nume, 20
    jg itemecln
    
    ; Calculate the cost of the current item (e.g., 6 * quantity)
    mov ax, nume
    mov bx, 6
    mul bx
    mov resulte, ax  ; Store the cost in resulte
    jmp comfirmation
    
    itemecln:
    mov nume, 0
    jmp iteme
  ;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\    
itemf:
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
  
    LEA DX,s1
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    LEA DX, quantity_prompt
    MOV AH, 09H
    INT 21H


    
    ; Receive input
    lea dx, inputf
    mov ah, 0ah
    int 21h

    ; Convert input string (data) to integer (num)
    lea si, dataf
    mov bx, 10
    mov ax, 0
    mov cx, 0
    mov cl, actf
    againf1:
    mov ax, [si]
    mov ah, 0
    sub ax, 30h
    add ax, numf
    mul bx
    mov numf, ax
    inc si
    loop againf1
    mov ax, numf
    div bx
    mov numf, ax          

    ; Check if quantity is within the valid range (0 - 20)
    cmp numf, 0
    jl itemfcln
    cmp numf, 20
    jg itemfcln
    
    ; Calculate the cost of the current item (e.g., 5 * quantity)
    mov ax, numf
    mov bx, 5
    mul bx
    mov resultf, ax  ; Store the cost in resultf
    jmp comfirmation
    
    itemfcln:
    mov numf, 0
    jmp itemf
 
jumpi:JMP itemi
jumpj:JMP itemj 
j2function2:JMP j3function2
j25function3: jmp j3function3

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\  
 itemg:
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
  
    LEA DX,s2
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    LEA DX, quantity_prompt
    MOV AH, 09H
    INT 21H

    
    
    ; Receive input
    lea dx, inputg
    mov ah, 0ah
    int 21h

    ; Convert input string (data) to integer (num) 
    lea si, datag
    mov bx, 10
    mov ax, 0
    mov cx, 0
    mov cl, actg
    againg1:
    mov ax, [si]
    mov ah, 0
    sub ax, 30h
    add ax, numg
    mul bx
    mov numg, ax
    inc si
    loop againg1
    mov ax, numg
    div bx
    mov numg, ax         

    ; Check if quantity is within the valid range (0 - 20)
    cmp numg, 0
    jl itemgcln
    cmp numg, 20
    jg itemgcln
    
    ; Calculate the cost of the current item (e.g., 8 * quantity)
    mov ax, numg
    mov bx, 8
    mul bx
    mov resultg, ax  ; Store the cost in resultg

    jmp comfirmation
    
    itemgcln:
    mov numg, 0
    jmp itemg
 ;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\  
    itemh:
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
  
    LEA DX,s3
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    LEA DX, quantity_prompt
    MOV AH, 09H
    INT 21H

  
    ; Receive input
    lea dx, inputh
    mov ah, 0ah
    int 21h

    ; Convert input string (data) to integer (num) 
    lea si, datah
    mov bx, 10
    mov ax, 0
    mov cx, 0
    mov cl, acth
    againh1:
    mov ax, [si]
    mov ah, 0
    sub ax, 30h
    add ax, numh
    mul bx
    mov numh, ax
    inc si
    loop againh1
    mov ax, numh
    div bx
    mov numh, ax          

    ; Check if quantity is within the valid range (0 - 20)
    cmp numh, 0
    jl itemhcln
    cmp numh, 20
    jg itemhcln
    
    ; Calculate the cost of the current item (e.g., 7 * quantity)
    mov ax, numh
    mov bx, 7
    mul bx
    mov resulth, ax  ; Store the cost in resulth

    jmp comfirmation
    
    itemhcln:
    mov numh, 0
    jmp itemh
   ;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\   
    itemi:
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
  
    LEA DX,s4
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
   
    
    LEA DX, quantity_prompt
    MOV AH, 09H
    INT 21H

    ; Receive input
    lea dx, inputi
    mov ah, 0ah
    int 21h

    ; Convert input string (data) to integer (num) 
    lea si, datai
    mov bx, 10
    mov ax, 0
    mov cx, 0
    mov cl, acti
    againi1:
    mov ax, [si]
    mov ah, 0
    sub ax, 30h
    add ax, numi
    mul bx
    mov numi, ax
    inc si
    loop againi1
    mov ax, numi
    div bx
    mov numi, ax          

    ; Check if quantity is within the valid range (0 - 20)
    cmp numi, 0
    jl itemicln
    cmp numi, 20
    jg itemicln
    
    ; Calculate the cost of the current item (e.g., 6 * quantity)
    mov ax, numi
    mov bx, 6
    mul bx
    mov resulti, ax  ; Store the cost in resulti

    jmp comfirmation
    
    itemicln:
    mov numi, 0
    jmp itemi
    ;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\  
    itemj:
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
  
    LEA DX,s5
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    LEA DX, quantity_prompt
    MOV AH, 09H
    INT 21H

    
    
    ; Receive input
    lea dx, inputj
    mov ah, 0ah
    int 21h

    ; Convert input string (data) to integer (num)
    lea si, dataj
    mov bx, 10
    mov ax, 0
    mov cx, 0
    mov cl, actj
    againj1:
    mov ax, [si]
    mov ah, 0
    sub ax, 30h
    add ax, numj
    mul bx
    mov numj, ax
    inc si
    loop againj1
    mov ax, numj
    div bx
    mov numj, ax          

    ; Check if quantity is within the valid range (0 - 20)
    cmp numj, 0
    jl itemjcln
    cmp numj, 20
    jg itemjcln
    
    ; Calculate the cost of the current item (e.g., 9 * quantity)
    mov ax, numj
    mov bx, 9
    mul bx
    mov resultj, ax  ; Store the cost in resultj


    jmp comfirmation
    
    itemjcln:
    mov numj, 0
    jmp itemj
    
j3function2:JMP function2
j3function3: jmp j4function3

    ; Ask if the user wants to continue
comfirmation:
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX, msg_confirm
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H

    MOV confirm, AL
    MOV AL, 79h      ; y=79h
    CMP AL, confirm
    JE yes
    MOV AL, 59h      ; Y=59h
    CMP AL, confirm
    JE yes
    MOV AL, 6Eh      ; n=6Eh
    CMP AL, confirm
    JE no
    MOV AL, 4Eh      ; N=4Eh
    CMP AL, confirm
    JE no
    JMP error
     
    
    yes:
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    JMP purchase
    
    
    
    no:
    
    MOV AH, 02H    ;set cursor to top left corner (clear screen must use)   
    MOV BH, 00H     
    MOV DX, 0000H    
    INT 10H    
 
    MOV AH, 06H     ;clear screen
    MOV BH, 07H  
    MOV CX, 0000H  
    MOV DX, 184FH  
    INT 10H  
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    JMP functionmenu  
    
    j4function3:jmp function3
    
   error:
    LEA DX, msg_invalid
    MOV AH, 09H
    INT 21H
    JMP comfirmation
 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    
 function2:
 
    mov ax,0 ; Initialize ax to zero
    mov bx,0 ; Initialize bx to zero
  
    mov ax, [resulta]       ;add al result to calculate total amount
    mov bx, [resultb]
    add ax, bx
    mov bx, [resultc]
    add ax, bx
    mov bx, [resultd]
    add ax, bx
    mov bx, [resulte]
    add ax, bx
    mov bx, [resultf]
    add ax, bx
    mov bx, [resultg]
    add ax, bx
    mov bx, [resulth]
    add ax, bx
    mov bx, [resulti]
    add ax, bx
    mov bx, [resultj]
    add ax, bx
    
    mov finalnonconvert,ax
    
    lea si, finalamount+5
    mov cx, ax  ; Store finalamount in cx for conversion
    mov bx, 10
    convert_finalamount:
        mov dx, 0
        div bx
        add dl, 30h
        mov [si], dl     ; store to 'finalamount'
        dec si
        cmp ax, 9
        jg convert_finalamount
        add al, 30h
        mov [si], al
        
    
    lea si, resultaa
    add si, 5

    mov ax, resulta
    mov bx, 10
    againa:
    mov dx, 0
    div bx
    add dl, 30h
    mov [si], dl     ; store to 'resultaa'
    dec si
    cmp ax, 9
    jg againa
    add al, 30h
    mov [si], al
    
    lea si, resultab
    add si, 5

    mov ax, resultb
    mov bx, 10
    againb:
    mov dx, 0
    div bx
    add dl, 30h
    mov [si], dl     ; store to 'resultab'
    dec si
    cmp ax, 9
    jg againb
    add al, 30h
    mov [si], al
    
    lea si, resultac
    add si, 5

    mov ax, resultc
    mov bx, 10
    againc:
    mov dx, 0
    div bx
    add dl, 30h
    mov [si], dl     ; store to 'resultac'
    dec si
    cmp ax, 9
    jg againc
    add al, 30h
    mov [si], al
    
    lea si, resultad
    add si, 5

    mov ax, resultd
    mov bx, 10
    againd:
    mov dx, 0
    div bx
    add dl, 30h
    mov [si], dl     ; store to 'resultad'
    dec si
    cmp ax, 9
    jg againd
    add al, 30h
    mov [si], al
    
    lea si, resultae
    add si, 5

    mov ax, resulte
    mov bx, 10
    againe:
    mov dx, 0
    div bx
    add dl, 30h
    mov [si], dl     ; store to 'resultae'
    dec si
    cmp ax, 9
    jg againe
    add al, 30h
    mov [si], al
    
    lea si, resultaf
    add si, 5

    mov ax, resultf
    mov bx, 10
    againf:
    mov dx, 0
    div bx
    add dl, 30h
    mov [si], dl     ; store to 'resultaf'
    dec si
    cmp ax, 9
    jg againf
    add al, 30h
    mov [si], al
    
    lea si, resultag
    add si, 5

    mov ax, resultg
    mov bx, 10
    againg:
    mov dx, 0
    div bx
    add dl, 30h
    mov [si], dl     ; store to 'resultag'
    dec si
    cmp ax, 9
    jg againg
    add al, 30h
    mov [si], al
    
    lea si, resultah
    add si, 5

    mov ax, resulth
    mov bx, 10
    againh:
    mov dx, 0
    div bx
    add dl, 30h
    mov [si], dl     ; store to 'resultah'
    dec si
    cmp ax, 9
    jg againh
    add al, 30h
    mov [si], al
    
    lea si, resultai
    add si, 5

    mov ax, resulti
    mov bx, 10
    againi:
    mov dx, 0
    div bx
    add dl, 30h
    mov [si], dl     ; store to 'resultai'
    dec si
    cmp ax, 9
    jg againi
    add al, 30h
    mov [si], al
    
    lea si, resultaj
    add si, 5

    mov ax, resultj
    mov bx, 10
    againj:
    mov dx, 0
    div bx
    add dl, 30h
    mov [si], dl     ; store to 'resultaj'
    dec si
    cmp ax, 9
    jg againj
    add al, 30h
    mov [si], al
    
;~~~~~~~~~~~~~~~~~~~~~~~~~~   

    mov dl,0dh
    mov ah,02h
    int 21h
    mov dl,0ah
    int 21h
    
    LEA DX, order_prompt    
    MOV AH, 09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX, MSG00    
    MOV AH, 09H
    INT 21H
    
    LEA DX, medicine_prompt    
    MOV AH, 09H
    INT 21H
    jmp caltotala
    
    

    caltotala:
    mov ax,resulta
    cmp ax,0
    jg displaytotala
    je caltotalb
    
    
    displaytotala:
    LEA DX, totalamounta_prompt    
    MOV AH, 09H
    INT 21H
    
    lea dx, resultaa
    mov ah, 09H
    int 21h
    

    caltotalb:
    mov ax,resultb
    cmp ax,0
    jg displaytotalb
    je caltotalc
    
    displaytotalb:
    LEA DX, totalamountb_prompt    
    MOV AH, 09H
    INT 21H
    
    lea dx, resultab
    mov ah, 09H
    int 21h
    
    caltotalc:
    mov ax,resultc
    cmp ax,0
    jg displaytotalc
    je caltotald

    displaytotalc:
    LEA DX, totalamountc_prompt    
    MOV AH, 09H
    INT 21H
    
    lea dx, resultac
    mov ah, 09H
    int 21h
    

    caltotald:
    mov ax,resultd
    cmp ax,0
    jg displaytotald
    je caltotale
    
    displaytotald:
    LEA DX, totalamountd_prompt    
    MOV AH, 09H
    INT 21H
    
    lea dx, resultad
    mov ah, 09H
    int 21h
    
    caltotale:
    mov ax,resulte
    cmp ax,0
    jg displaytotale
    je suplimentprint
    
    displaytotale:
    LEA DX, totalamounte_prompt    
    MOV AH, 09H
    INT 21H
    
    lea dx, resultae
    mov ah, 09H
    int 21h
    
   suplimentprint:
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX, MSG00    
    MOV AH, 09H
    INT 21H
    
    
    LEA DX, supliment_prompt    
    MOV AH, 09H
    INT 21H
    jmp caltotalf
    
    caltotalf:
    mov ax,resultf
    cmp ax,0
    jg displaytotalf
    jmp caltotalg
    
    displaytotalf:
    LEA DX, totalamountf_prompt    
    MOV AH, 09H
    INT 21H
    
    lea dx, resultaf
    mov ah, 09H
    int 21h
    
    caltotalg:
    mov ax,resultg
    cmp ax,0
    jg displaytotalg
    jmp caltotalh
    
    displaytotalg:
    LEA DX, totalamountg_prompt    
    MOV AH, 09H
    INT 21H
    
    lea dx, resultag
    mov ah, 09H
    int 21h
    
    caltotalh:
    mov ax,resulth
    cmp ax,0
    jg displaytotalh
    jmp caltotali
    
    displaytotalh:
    LEA DX, totalamounth_prompt    
    MOV AH, 09H
    INT 21H
    
    lea dx, resultah
    mov ah, 09H
    int 21h
    
    caltotali:
    mov ax,resulti
    cmp ax,0
    jg displaytotali
    jmp caltotalj

    displaytotali:
    LEA DX, totalamounti_prompt    
    MOV AH, 09H
    INT 21H
    
    lea dx, resultai
    mov ah, 09H
    int 21h
    
    caltotalj:
    mov ax,resultj
    cmp ax,0
    jg displaytotalj
    jmp displayfinal

    displaytotalj:
    LEA DX, totalamountj_prompt    
    MOV AH, 09H
    INT 21H
    
    lea dx, resultaj
    mov ah, 09H
    int 21h
    
    displayfinal:
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX, MSG00    
    MOV AH, 09H
    INT 21H
    
    LEA DX, finalamount_prompt
    MOV AH, 09H
    INT 21H

    lea dx, finalamount
    mov ah, 09H
    int 21h
    
    
    
    ;~~~~~~ tax calculation ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~``~
    mov cx,105     
    mov ax, [resulta]
    mov bx, [resultb]
    add ax, bx
    mov bx, [resultc]
    add ax, bx
    mov bx, [resultd]
    add ax, bx
    mov bx, [resulte]
    add ax, bx
    mov bx, [resultf]
    add ax, bx
    mov bx, [resultg]
    add ax, bx
    mov bx, [resulth]
    add ax, bx
    mov bx, [resulti]
    add ax, bx
    mov bx, [resultj]
    add ax, bx    
    mul cx
    mov bx,divider     ; 100
    

    mov dx,0            
    div bx              ;bx is 16-bit
    mov quotient,ax     ;ax => quotient
                        ;dx => remainder                        
  
    mov ax,dx
    mul ten 
    div bx  
    mov dpoint1,ax       
    
    mov ax,dx
    mul ten
    div bx
    mov dpoint2,ax 

    
    
;note: change quotient(hex) to dec if it is more than 9

;~~~~~~ Convert hex to dec ~~~~~~     
    lea di,quotient_decimal
    mov ax,quotient         
    mov bx,10
again: 
    mov dx,0            
    div bx
    add dl,30h
    mov [di],dl         
    add num_digit, 1
    inc di
    cmp ax,9
    jg again
    add al,30h
    mov [di],al         
    add num_digit, 1 

    mov cx, num_digit
    lea bx, quotient_decimal        
    add bx, num_digit     
    dec bx         

    LEA DX,after_prompt
    MOV AH,09H
    INT 21H
    
    print1:    
    mov dl,[bx]
    mov ah,02H
    int 21h
    dec bx
    loop print1


    mov ah,02h  
    mov dl,'.'
    int 21h    
    mov dx,dpoint1
    add dx,30h
    int 21h    
    mov dx,dpoint2
    add dx,30h
    int 21h
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    JMP functionmenu
  
    
 function3:
    ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  
    
    ;~~~~~~ Division ~~~~~~  
    mov cx,105   
    mov ax,finalnonconvert   
    mul cx
    mov bx,divider1    

    mov dx,0            
    div bx              ;bx is 16-bit
    mov quotient1,ax     ;ax => quotient
                        ;dx => remainder
    mov taxprice1,ax                

    mov ax,dx
    mul ten1 
    div bx  
    mov dpoint11,ax 
    mov dpprinta,ax    
    
    mov ax,dx
    mul ten1
    div bx
    mov dpoint21,ax 
    mov dpprinta1,ax
   
    
    
;note: change quotient(hex) to dec if it is more than 9

;~~~~~~ Convert hex to dec ~~~~~~     
    lea di,quotient_decimal1
    mov ax,quotient1         
    mov bx,10
    againdecimal1: 
    mov dx,0            
    div bx
    add dl,30h
    mov [di],dl         
    add num_digit1, 1
    inc di
    cmp ax,9
    jg againdecimal1
    add al,30h
    mov [di],al         
    add num_digit1, 1 
    
    
    
    mov cx, num_digit1
    lea bx, quotient_decimal1        
    add bx, num_digit1     
    dec bx          
 
    
    LEA DX, paydisplay
    MOV AH, 09H
    INT 21H
    
    LEA DX, needpay
    INT 21H
    
 
    
    printdecimal1:    
    mov dl,[bx]
    mov ah,02H
    int 21h
    dec bx
    loop printdecimal1
    
    
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,dpprinta
    add dx,30h
    int 21h    
    mov dx,dpprinta1
    add dx,30h
    int 21h 

    

 
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    
input_loop:   

    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    
    LEA DX, payment_prompt
    mov ah,09h
    INT 21H
    
    mov payment_input1,0
    
    ;-----------receive string (amount)
    LEA DX, input_pay1
    MOV AH, 0AH
    INT 21H

    ;convert input string (pay) to integer (num) 
    lea si,pay1
    mov bx,10
    mov ax,0
    mov cx,0
    mov cl,actpay1
    againpayment:
    mov ax,[si]
    mov ah,0
    sub ax,30h
    add ax,payment_input1
    mul bx
    mov payment_input1,ax
    inc si
    loop againpayment
    mov ax,payment_input1
    div bx
    mov payment_input1,ax          
 
    
    ; Check if payment is less than totalprice
    mov ax, payment_input1
    mov bx,taxprice1
    add bx,1
    cmp ax, bx
    jl payerror1  ; If less, display an error message and exit
    
    ;next line
    mov dl,0dh
    mov ah,02h
    int 21h
    mov dl,0ah
    int 21h
    
    
    ;simple calculation e.g. mul, add
    mov ax,payment_input1
    mov bx,taxprice1
    add bx,1
    SUB AX,BX
    mov payment_input1,ax          
    
    ;convert hex (num) to dec (changeg)
    lea si,changeg1
    add si,5
    
    mov ax,payment_input1
    mov bx,10
    againpay1: 
    mov dx,0
    div bx
    add dl,30h
    mov [si],dl     ;store to 'changeg'
    dec si
    cmp ax,9
    jg againpay1
    add al,30h
    mov [si],al    
    
    
    ;---------display string (msg3)
    mov ax,0
    mov bx,0
    mov cx,0
    mov dx,0
    
    LEA DX, changegive   
    MOV AH, 09H
    INT 21H
    
    lea dx,changeg1
    mov ah,09H
    int 21h
    
    mov ax,0
    mov ax,dpoint21
    add ax,30h
    cmp ax,'5'
    je dpis5
    cmp ax,'5'
    jg dpis5
    cmp ax,'5'
    jl dpnot5
    
    payerror1:jmp payerrorloop
    
    dpis5:
    mov ax,dpoint11
    add ax,30h
    cmp ax,'0'
    je dprint9jmp1
    cmp ax,'1'
    je dprint8jmp1
     cmp ax,'2'
     je dprint7jmp1
    cmp ax,'3'
    je dprint6jmp1
    cmp ax,'4'
    je dprint5jmp1
    cmp ax,'5'
    je dprint4jmp1
    cmp ax,'6'
    je dprint3jmp1
    cmp ax,'7'
    je dprint2jmp1
    cmp ax,'8'
    je dprint1jmp1
    cmp ax,'9'
    je dprint0jmp1
    
    dpnot5:
    mov ax,dpoint11
    add ax,30h
    cmp ax,'1'
    je dprint9njmp
    cmp ax,'2'
     je dprint8njmp
     cmp ax,'3'
    je dprint7njmp
    cmp ax,'4'
    je dprint6njmp
    cmp ax,'5'
    je dprint5njmp
    cmp ax,'6'
    je dprint4njmp
    cmp ax,'7'
    je dprint3njmp
    cmp ax,'8'
    je dprint2njmp
    cmp ax,'9'
    je dprint1njmp
    cmp ax,'0'
    je dprint0njmp
    
    dprint9jmp1: jmp dprint9
    dprint8jmp1: jmp dprint8
    dprint7jmp1: jmp dprint7
    dprint6jmp1: jmp dprint6
    dprint5jmp1: jmp dprint5
    dprint4jmp1: jmp dprint4
    dprint3jmp1: jmp dprint3
    dprint2jmp1: jmp dprint2
    dprint1jmp1: jmp dprint1
    dprint0jmp1: jmp dprint0
    
    dprint9njmp:jmp dprint9n
    dprint8njmp:jmp dprint8n
    dprint7njmp:jmp dprint7n
    dprint6njmp:jmp dprint6n
    dprint5njmp:jmp dprint5n
    dprint4njmp:jmp dprint4n
    dprint3njmp:jmp dprint3n
    dprint2njmp:jmp dprint2n
    dprint1njmp:jmp dprint1n
    dprint0njmp:jmp dprint0n
    
    dprint9:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,00
    add dx,39
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint8:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,38h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint7:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,37h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint6:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,36h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
  jmp exit
    
    dprint5:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,35h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint4:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,34h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint3:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,33h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint2:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,32h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint1:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,31h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint0:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,30h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint9n:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,39h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint8n:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,38h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint7n:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,37h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
   jmp exit
   
    dprint6n:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,36h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint5n:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,35h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint4n:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,34h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint3n:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,33h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint2n:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,32h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint1n:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,31h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    dprint0n:
    mov ah,02h  
    mov dl,'.'
    int 21h   
    
    mov dx,0
    add dx,30h
    int 21h    
    mov dx,dpoint21
    add dx,30h
    int 21h 
    jmp exit
    
    
 
    payerrorloop:
    ; Display error message
    LEA DX, payerror  
    MOV AH, 09H
    INT 21H
    JMP input_loop
    
 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    
 inputinvalid:

    LEA DX,MSG0
    MOV AH,09H
    INT 21H
    
    LEA DX,MSGerror
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG0
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
                 ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H   
    
    jmp mainmenu2
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~EXIT
exit1:   
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    LEA DX,MSG00
    MOV AH,09H
    INT 21H
     
    LEA DX,bye
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX,MSG00
    MOV AH,09H
    INT 21H
    
    MOV AH, 02H ;\n
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
  
    MOV AX,4C00H
    INT 21H
    
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
MAIN ENDP
END MAIN