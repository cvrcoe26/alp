title ascii adjustment after addition
.model small
.stack 10h
.data
    n1 db '3'
    n2 db '9'
.code
    mov ax,data
    mov ds,ax
    mov ax,0h
    mov al,n1
    add al,n2
    aaa
    hlt