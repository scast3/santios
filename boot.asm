mov ah, 0x0e
mov al, 'H'
int 0x10

loop:
    add al, 1
    int 0x10
    cmp al, 'Z'
    jne loop

jmp $ ; infinite loop
; replacing all remaining bits in the boot sector with 0
times 510-($-$$) db 0
; boot signature
db 0x55, 0xaa

