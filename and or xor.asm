.model small
.stack 100h
.data
a db 'For and ',0ah,0dh,24h
b db 'For OR ',0ah,0dh,24h
c db 'for XOR ',0ah,0dh,24h

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,a
    mov ah,9
    int 21h
    
    mov bl,111b
    and bl,101b 
    
    add bl,30h         ;something went wrong with this code
    
    mov ah,2
    mov dl,al
    int 21h
    
    or1:
    lea dx,b
    mov ah,9
    int 21h
    
    mov bl,111b
    or bl,101b
    
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    xor1:
    lea dx,c  
    mov ah,9
    int 21h
    
    mov bl,11b
    xor bl,10b
    
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    