.model small
.stack 100h
.data
a db 'Enter three initials: ',0ah,0dh,24h
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
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,1
    int 21h
    mov cl,al
  
    
    mov ah,2
    mov dl,bl
    int 21h
      
     
    mov ah,2
    mov dl,bh
    int 21h  
  
    
    mov ah,2
    mov dl,cl
    int 21h
   
   
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
   
    
    