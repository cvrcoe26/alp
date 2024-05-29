title multiplication of two 16bit numbers

.model small

.stack 10h

.data

    num1 dw 000fh
    num2 dw 000ah
    prod  dw 2 dup(0)

.code

    mov ax,data
    mov ds,ax
    
    mov ax,num1
    mul num2
    mov prod,ax
    mov prod[2],dx
    
    hlt
