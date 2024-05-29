title count the number of zeros in the given byte

.model small

.stack 10h

.data

    num1 db 0f4h
    

.code

    mov ax,data
    mov ds,ax
    
    mov al,num1
    mov cx,8
    mov bl,0h
    
    again:  rcr al,1
            jc skip
            inc bl
            
    skip:   loop again
    
    hlt
