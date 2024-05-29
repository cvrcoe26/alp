title decimal adjustment after addition
.model small
.stack 10h
.data
    n1 db 35h
    n2 db 37h
.code
    mov ax,data
    mov ds,ax
    mov ax,0h
    mov al,n1
    add al,n2
    daa
    hlt