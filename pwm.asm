.def	temp = R16
.def	adclow = R17
.def	adchigh = R18

init:
	;PORT settings
	LDI		temp,	0xFF     ;Load 0xff value to register r16
	OUT		DDRD,	R16      ;All pins on port d are output    

	LDI		temp,	0x00
	OUT		DDRC,	temp

	LDI		temp,	0x00
	OUT		PORTC,	temp

	;PWM settings
	LDI		temp,	1<<WGM00 | 1<<COM0A1	; Fast PWM modulation //  Clear 0C0A in comparison --> PD6 port ie d6
	OUT		TCCR0A,	temp
	
	LDI		temp, 1<<CS01					;Clock Select divide by 8
 	OUT		TCCR0B, temp

	;ADC settings

	LDI		temp,	1<<REFS0 | 1<<MUX0		;In reference to AVcc// ADC1/PC1 use
	STS		ADMUX,	temp

	LDI		temp,	1<<ADEN | 1<<ADPS0 | 1<<ADPS1 | 1<<ADPS2     // ADC active, divide time /128
	STS		ADCSRA,	temp


loop:
	;start comparison
	LDS		temp,	ADCSRA
	ORI		temp,	1<<ADSC
	STS		ADCSRA,	temp

	;finish comparison
	wait:
		lds temp, ADCSRA
		sbrc temp,	ADSC
		rjmp wait
	
  ;The codes below were used only to show some transitions.
  ;For better result use these transition operations:
  ;ADLAR'ı (ADMUX'ta) 1' from left set the register then use the ADCH register.
	lds		adclow,		ADCL  ;adclow Load the data field location adcl content
	lds		adchigh,	ADCH

	lsr		adclow ;adclow divide by 2
	lsr		adclow

	lsl		adchigh ;adchigh 2 multiply
	lsl		adchigh
	lsl		adchigh
	lsl	    adchigh
	lsl		adchigh
	lsl		adchigh

	OR		adclow,		adchigh ;adclow or adchigh output value

	OUT		OCR0A,		adclow

	rjmp loop