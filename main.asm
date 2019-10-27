        org $2000

SAVMSC=$58

start:
        ldy .sizeof(hello)

loop:
        lda hello,y
        sta (SAVMSC),y
        dey
        bne loop
        
stop:
        jmp *


hello:
        .byte "Hello world!"

        run start
