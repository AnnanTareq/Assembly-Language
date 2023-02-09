.model small
.stack 100h
.data
a db 'Jump concept ',0ah,0dh,24h
b db 'Assembly Language ',0ah,0dh,24h
c db 'Programming ',0ah,0dh,24h

.code
main proc
     mov ax,@data
     mov ds,ax
     
     
     lea dx,a
     mov ah,9
     int 21h
    
    
     m:
     lea dx,b
     mov ah,9
     int 21h
     jmp n
       
       
     n:  
     lea dx,c
     mov ah,9
     int 21h
     jmp exit  
     
     
     exit:
     mov ah,4ch
     int 21h
     main endp
end main