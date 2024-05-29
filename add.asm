title adding of two 16bit numbers
.model small
.stack 10h
.data
    num1 dw 5h
    num2 dw 2h
    sum dw 2 dup(0)
.code
    mov ax,data
    mov ds,ax
    mov bx,0
    mov ax,num1
    add ax,num2
    mov sum,ax
    adc bx,0h
    mov sum[2],bx
    hlt