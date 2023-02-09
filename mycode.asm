.MODEL SMALL
.STACK 100H
.DATA
   msg db 'Hello tareq!$'
.CODE
MAIN PROC
   mov ax,@Data 
   mov ds,ax
   
   lea dx,msg
   mov ah,9
   int 21h
   
   mov ah,4ch
   int 21h
   
   
  

MAIN ENDP
END MAIN