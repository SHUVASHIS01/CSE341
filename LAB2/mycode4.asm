.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here  
qwe db "aws$"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;
;mov ah, 2
;mov dl, 6Ah 
;int 21h
;
;mov ah, 2
;mov dl, 0Ah 
;int 21h 
;
;mov ah, 2
;mov dl, 6Dh 
;int 21h
;
  
mov ah, 9
lea dx, qwe
int 21h



;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
