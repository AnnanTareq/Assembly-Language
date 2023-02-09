.model small
.stack 100h
.data
a dw ?
b dw ?
c dw 'Input first digit',0ah,0dh,24h
d dw 'Input second digit',0ah,0dh,24h
e dw 'Result',0ah,0dh,24h

.code
main proc
    mov ax,@data
    mov ds,ax
            
    lea dx,c        
    mov ah,9 
    int 21h
    
    lea dx,a
    mov ah,1
    int 21h
    sub al,48
    mov a,al
    
    lea dx,d
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov b,al 
   
   lea dx,e
   mov ah,9
   int 21h
   
   mov ax,a
   mul b
   
   mov dl,ax
   add dl,48
   mov ah,2
   int 21h
   
   