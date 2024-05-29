title Packing two digits into a  byte

.model small

.stack 10h

.data

    num1 db 09h
    num2 db 05h
    pack db dup(0)

.code

    mov ax,data
    mov ds,ax
                  
    mov al,num1
    mov bl,num2
    
    ror al,4
    or al,bl
    mov pack,al
   
    
    hlt
