data segment
block db 18H,10H,08H,05H,23H
counter db 04
largest db ?
data ends

code segment
start:assume cs:code, ds:data
mov ax, data
mov ds,ax

lea si,block
mov cl,counter
mov al,[si]
here : inc si
cmp al,[si]
jnc down
mov al,[si]
down : dec cl
jnz here
mov largest,al

mov ax,4c00h
int 21h
code ends
end start


