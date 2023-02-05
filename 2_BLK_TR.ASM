data segment
blk1 db 6 dup(06h)
counter db 03h
data ends

extra segment
blk2 db 6 dup(00h)
extra ends

code segment
start : assume ds : data, cs : code, es : extra
mov ax, data
mov ds,ax

mov ax,extra
mov es,ax
mov cl,counter

lea si,blk1
lea di,blk2

cld
up: movsw
dec cl
jnz up

mov ax,4c00h
int 21h
code ends
end start
