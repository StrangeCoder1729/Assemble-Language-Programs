data segment
num1 dw 2179h
num2 dw 1250h
res dw ?
data ends

code segment
start : assume ds : data, cs : code
mov ax,data
mov ds, ax

mov ax,num1
mov bx,num2

sub ax,bx
mov res,ax

mov ax,4c00h
int 21h
code ends
end start
