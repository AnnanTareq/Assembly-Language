.model small
.stack 100h
.data
a db 'Upper form',0ah,0dh,24h
b db 'Lower form',0ah,0dh,24h

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,a
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    lea dx,b
    mov ah,9
    int 21h
    
    mov ah,2
    add bl,20h
    mov dl,bl
    int 21h 
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    
