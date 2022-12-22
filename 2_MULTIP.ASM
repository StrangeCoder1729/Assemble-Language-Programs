data segment
num1 dw 1256h
num2 dw 5129h
RL dw ?
RH dw ?
data ends

code segment
start : assume ds : data, cs : code
mov ax,data
mov ds, ax

mov ax, num1
mov bx,num2
mul bx
mov RL,ax
mov RH,dx

mov ax, 4c00h
int 21h
code ends
end start
