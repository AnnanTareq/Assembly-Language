.model small
.stack 100h
.data
  a db 'Lower form ',0dh,0ah,24h
  b db 'Upper Form',0ah,0dh,24h
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
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
   
   lea dx,b
   mov ah,9
   int 21h 
   
    mov ah,2
    sub bl,20h
    mov dl,bl
    int 21h  
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    