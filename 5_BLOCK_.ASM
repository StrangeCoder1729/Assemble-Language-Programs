data segment
block1 db 12 dup (19h)
counter db 06
data ends

extra segment
block2 db 12 dup (00h)                                                    
extra ends

code segment
start : assume ds : data, cs : code , es : extra
mov ax, data
mov ds,ax

mov ax, extra
mov es, ax

lea si,block1
lea di, block2
mov cl,counter

rep movsw

mov ax, 4c00h
int 21h
code ends
end start
                                                                          S
