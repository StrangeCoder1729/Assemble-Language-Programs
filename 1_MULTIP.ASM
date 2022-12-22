data segment
num1 db 20h
num2 db 5h
res dw ?
data ends

code segment
start : assume ds : data , cs : code
mov ax, data
mov ds, ax

mov al,num1
mov bl,num2

mul bl

mov res,ax

mov ax,4c00h
int 21h
code ends
end start
