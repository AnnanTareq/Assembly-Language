.model small
.stack 100h
.data
      a db 'Input here: ',0ah,0dh,24h
      b db 'Input here: ',0ah,0dh,24h
      c db 'Result: ',0ah,0dh,24h
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
     
    mov ah,1
    int 21h
    mov bh,al 
    
    lea dx,c
    mov ah,9
    int 21h
    
    add bl,bh
    sub bl,48
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main