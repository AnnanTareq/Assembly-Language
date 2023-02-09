.MODEL SMALL
.STACK 100H
.DATA
        CR equ 0dh
        LF equ 0ah
   
   msg1 db 'Enter a lower case letter: $',0dh,0ah
   msg2 db 0dh,0ah, 'Upper case : '   
   char db ?,'$'
.CODE
MAIN PROC
   mov ax, @data
   mov ds,ax
   
   lea dx,msg1
   mov ah,9
   int 21h
   
   mov ah,1
   int 21h
   sub al,20h
   mov char,al
   
   lea dx,msg2
   mov ah,9
   int 21h
   
   mov ah,4ch
   int 21h

MAIN ENDP
END MAIN