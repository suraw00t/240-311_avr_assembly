.include "m328Pdef.inc"

.def	mask 	    = r16	        ; mask register
.def	led 	    = r17	        ; led register
.def	outLoopR 	= r18   	    ; outer loop register
.def	inLoopRl    = r24	        ; inner loop register low
.def	inLoopRh    = r25	        ; inner loop register high
.equ	outVal 	    = 71	        ; outer loop value
.equ	inVal 	    = 14084	        ; inner loop value
.def    input       = r19           ; input register
.def    tmp         = r20           ; tmp register
.def    counter     = r21           ; counter register
.equ    regisPortB  = 0b00001110

.cseg
.org    0x00

main:
    clr     led		                ; clear led register to zero
    clr     tmp		                ; clear tmp register to zero
    clr     counter		                ; clear counter register to zero
    ldi     tmp, regisPortB	        ; load the mask register 00001110
    out     DDRB, tmp		        ; turn on PB0 as input, PB1-3 as output on PORTB
    mov     mask, tmp
    ldi     tmp, (0<<PC0)	    ; load the mask register 00000000
    out     DDRC, tmp		        ; turn on PC0 as input on PORTB

start:
    eor	    led, mask		        ; toggle value in led register 
    out     PORTB, led		        ; output led value to PORTB
    ldi     outLoopR, outVal		    ; initialize outer loop count
    in      input, PINC              ; input value to input register
    cpi     input, 0x00
    brne    outLoop
    brge    incValue

outLoop:
    ldi     inLoopRl, LOW(inVal)	    ; intialize inner loop count LOW
    ldi     inLoopRh, HIGH(inVal)	; intialize inner loop count HIGH

inLoop:
    sbiw    inLoopRl, 1             ; decrement inner loop register
    brne    inLoop		            ; branch to inLoop if inLoop register != 0
    dec	    outLoopR	            ; decrement outer loop register
    brne    outLoop 	            ; branch to outLoop if outLoop register != 0
    cpi     input, 0x00
    breq    incValue
    rjmp    start		            ; jump back to start

incValue:
    inc     counter
    cpi     counter, 5
    breq    BGLed
    cpi     counter, 10
    breq    RGLed
    cpi     counter, 15
    breq    RBLed
    cpi     counter, 20
    breq    BLed
    cpi     counter, 25
    breq    RLed
    cpi     counter, 30
    breq    GLed
    cpi     counter, 35
    breq    RGBLed
    rjmp    start                      ; jump back to start

BGLed:
    ldi     tmp, 0b00001100
    mov     led, tmp
    mov     mask, led
    rjmp    outLoop

RGLed:
    ldi     tmp, 0b00001010
    mov     led, tmp
    mov     mask, led
    rjmp    outLoop

RBLed:
    ldi     tmp, 0b00000110
    mov     led, tmp
    mov     mask, led
    rjmp    outLoop

RLed:
    ldi     tmp, 0b00000010
    mov     led, tmp
    mov     mask, led
    rjmp    outLoop

BLed:
    ldi     tmp, 0b00000100
    mov     led, tmp
    mov     mask, led
    rjmp    outLoop

GLed:
    ldi     tmp, 0b00001000
    mov     led, tmp
    mov     mask, led
    rjmp    outLoop

RGBLed:
    ldi     counter, 0x00
    ldi     tmp, 0b00001110
    mov     led, tmp
    mov     mask, led
    rjmp    outLoop
