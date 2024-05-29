title checking nature of number
.model small
.stack 10h
.data
    n db 00h
    positive db "The number is positive$"
    negative db "The number is negative$"
    zero db "The number is zero$"
.code
    mov ax,data
    mov ds,ax
    mov al,n
    cmp al,0
    je zeroes
    jl lesser
    jmp greater
    greater: 
            mov ah,09h
            lea dx,positive
            int 21h
            jmp end
    lesser:
            mov ah,09h
            lea dx,negative
            int 21h
            jmp end
    zeroes:
            mov ah,09h
            lea dx,zero
            int 21h
    end: hlt
    