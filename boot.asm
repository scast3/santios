[org 0x7c00]
mov ah, 0x0e
mov al, [varName]
int 0x10
jmp $ ; infinite loop

varName:
    db "Test String", 0
endName:
    db "!", 0

loop:
    add al, 4
    int 0x10
    cmp al, 0
    jne loop

mov al, [endName]
int 0x10


; replacing all remaining bits in the boot sector with 0
times 510-($-$$) db 0
; boot signature
db 0x55, 0xaa

