data segment
num1 db 5h
num2 db 20h
res db ?
data ends

code segment
start : assume ds : data, cs : code
mov ax, data
mov ds, ax

mov al,num1
mov bl,num2
add al,bl

mov res,al

mov ax,4c00h
int 21h
code ends
end start

