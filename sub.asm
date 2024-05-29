title subtraction of two 16bit numbers

.model small

.stack 10h

.data

    num1 dw 0fff0h
    num2 dw 1234h
    diff  dw 2 dup(0)

.code

    mov ax,data
    mov ds,ax
    
    mov bx,0h
    mov ax,num1
    sub ax,num2
    mov diff,ax
    adc bx,0h
    mov diff[2],bx
    
    hlt
