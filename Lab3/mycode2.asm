.MODEL SMALL
.STACK 100H
.DATA
; declare variables here       

str1 db '*', 0Dh,0Ah, '$'
str2 db ' *', 0Dh,0Ah, '$'
str3 db '  *', 0Dh,0Ah, '$'
str4 db ' *', 0Dh,0Ah, '$'
str5 db '*', 0Dh,0Ah, '$'

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX

; enter your code here
lea dx, str1
mov ah, 9
int 21h 

lea dx, str2
mov ah, 9
int 21h

lea dx, str3
mov ah, 9
int 21h

lea dx, str4
mov ah, 9
int 21h

lea dx, str5
mov ah, 9
int 21h

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
