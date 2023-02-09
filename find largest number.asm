.model small
.stack 100h
.data
a db 'Input two number: ',0ah,0dh,24h
b db 'Largest number: ',0ah,0dh,24h

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
    int 21h
    mov bh,al
    
    big:
    cmp bl,bh
    jg l1
    jmp l2
    
    l2:
    lea dx,b
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    l1:     
    lea dx,b
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main