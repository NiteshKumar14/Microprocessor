.MODEL SMALL
.STACK 100H
.DATA 
	msg db 'enter a number$'
	msg1 db  10,13 ,' $' 
.CODE
.STARTUP
	MOV CX,2
	MOV BL,00H
	MOV DX,offset msg
	MOV AH,09H
	INT 21H
	MOV DX,offset msg1
	MOV AH,09H
	INT 21H
	
LULU:
	SHL BL,4
	MOV AH,01H
	INT 21H
	SUB AL,30H
	ADD BL,AL
	
	LOOP LULU
	MOV CX,2
	
OUTPUT:
    	ROL BL,4
	MOV DL,BL
	AND DL,0FH
	ADD DL,30H
	MOV AH,02H
	INT 21H
	LOOP OUTPUT
.EXIT
END



