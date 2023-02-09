.MODEL SMALL
.STACK 100H
.DATA
     
   msg dw 'Enter your decimal digit here :',0ah,0dh,24h
   msg1 dw ?
   msg2 dw ?,'$',0ah,0dh  
  
.CODE
MAIN PROC
   mov ax, @data
   mov ds,ax
   
   lea dx,msg
   mov ah,09h
   int 21h 
     
   
   
   lea dx, msg1 
   mov bx, msg1
   mov ah,01h
   int 21h
   
   lea dx,msg2
   mov cx, msg2
   mov ah,01h
   int 21h
  
  
   add bx,cx
   mov ax,bx 
   mov ah,09h
   int 21h
   
     
   mov ah,0h
   int 16h
   
  
  
           
   
MAIN ENDP
END MAIN


 
 
 
 
 
 
                 
 
 
 
 
   
 
 
 
 
 
 
 
 
 


 
 
