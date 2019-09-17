.MODEL SMALL
.STACK 100H
.DATA
msg db 'hello world $'

.CODE
.STARTUP
	MOV AX ,@DATA
	MOV DS,AX
	MOV DX ,offset msg
	MOV AH,09
	INT 21H
.EXIT
END