	  ; Atmel Win32 AVR Disassembler v1.01
	  ;
         .cseg
         .org	0

avr0000:  jmp    avr005C      ; 0000 940C 005C
          jmp    avr006E      ; 0002 940C 006E
          jmp    avr006E      ; 0004 940C 006E
          jmp    avr006E      ; 0006 940C 006E
          jmp    avr006E      ; 0008 940C 006E
          jmp    avr006E      ; 000A 940C 006E
          jmp    avr006E      ; 000C 940C 006E
          jmp    avr006E      ; 000E 940C 006E
          jmp    avr006E      ; 0010 940C 006E
          jmp    avr006E      ; 0012 940C 006E
          jmp    avr006E      ; 0014 940C 006E
          jmp    avr006E      ; 0016 940C 006E
          jmp    avr006E      ; 0018 940C 006E
          jmp    avr006E      ; 001A 940C 006E
          jmp    avr006E      ; 001C 940C 006E
          jmp    avr006E      ; 001E 940C 006E
          jmp    avr0183      ; 0020 940C 0183
          jmp    avr006E      ; 0022 940C 006E
          jmp    avr006E      ; 0024 940C 006E
          jmp    avr006E      ; 0026 940C 006E
          jmp    avr006E      ; 0028 940C 006E
          jmp    avr006E      ; 002A 940C 006E
          jmp    avr006E      ; 002C 940C 006E
          jmp    avr006E      ; 002E 940C 006E
          jmp    avr006E      ; 0030 940C 006E
          jmp    avr006E      ; 0032 940C 006E
          nop                 ; 0034 0000
          nop                 ; 0035 0000
                              ; 0036 0024
                              ; 0037 0027
                              ; 0038 002A
          nop                 ; 0039 0000
          nop                 ; 003A 0000
                              ; 003B 0025
                              ; 003C 0028
                              ; 003D 002B
          cpc    r0, r4       ; 003E 0404
          cpc    r0, r4       ; 003F 0404
          cpc    r0, r4       ; 0040 0404
          cpc    r0, r4       ; 0041 0404
          muls   r16, r18     ; 0042 0202
          muls   r16, r18     ; 0043 0202
          muls   r16, r18     ; 0044 0202
          mulsu  r16, r19     ; 0045 0303
          mulsu  r16, r19     ; 0046 0303
          mulsu  r16, r19     ; 0047 0303
          muls   r16, r17     ; 0048 0201
          sbc    r0, r4       ; 0049 0804
          and    r1, r0       ; 004A 2010
          ld     r4, Z        ; 004B 8040
          muls   r16, r17     ; 004C 0201
          sbc    r0, r4       ; 004D 0804
          and    r1, r0       ; 004E 2010
          muls   r16, r17     ; 004F 0201
          sbc    r0, r4       ; 0050 0804
          and    r1, r0       ; 0051 2010
          nop                 ; 0052 0000
          sbc    r0, r0       ; 0053 0800
          muls   r16, r16     ; 0054 0200
                              ; 0055 0001
          mulsu  r16, r16     ; 0056 0300
          cpc    r16, r20     ; 0057 0704
          nop                 ; 0058 0000
          nop                 ; 0059 0000
          nop                 ; 005A 0000
          nop                 ; 005B 0000
avr005C:  clr    r1           ; 005C 2411
          out    SREG, r1     ; 005D BE1F
          ldi    YL, 0xFF     ; 005E EFCF
          ldi    YH, 0x08     ; 005F E0D8
          out    SPH, YH      ; 0060 BFDE
          out    SPL, YL      ; 0061 BFCD
          ldi    r18, 0x01    ; 0062 E021
          ldi    XL, 0x00     ; 0063 E0A0
          ldi    XH, 0x01     ; 0064 E0B1
          rjmp   avr0067      ; 0065 C001
avr0066:  st     X+, r1       ; 0066 921D
avr0067:  cpi    XL, 0x09     ; 0067 30A9
          cpc    XH, r18      ; 0068 07B2
           brne  avr0066      ; 0069 F7E1
          call   avr01CD      ; 006A 940E 01CD
          jmp    avr025E      ; 006C 940C 025E
avr006E:  jmp    avr0000      ; 006E 940C 0000
avr0070:  ldi    r25, 0x00    ; 0070 E090
          movw   ZL r24       ; 0071 01FC
          subi   ZL, 0x5C     ; 0072 55EC
          sbci   ZH, 0xFF     ; 0073 4FFF
          lpm    r18, Z       ; 0074 9124
          movw   ZL r24       ; 0075 01FC
          subi   ZL, 0x70     ; 0076 57E0
          sbci   ZH, 0xFF     ; 0077 4FFF
          lpm    r19, Z       ; 0078 9134
          movw   ZL r24       ; 0079 01FC
          subi   ZL, 0x84     ; 007A 58E4
          sbci   ZH, 0xFF     ; 007B 4FFF
          lpm    ZL, Z        ; 007C 91E4
          tst    ZL           ; 007D 23EE
           breq  avr0098      ; 007E F0C9
          tst    r18          ; 007F 2322
           breq  avr0088      ; 0080 F039
          cpi    r18, 0x03    ; 0081 3023
           breq  avr00A3      ; 0082 F101
           brsh  avr0099      ; 0083 F4A8
          cpi    r18, 0x01    ; 0084 3021
           breq  avr00A9      ; 0085 F119
          cpi    r18, 0x02    ; 0086 3022
           breq  avr00AD      ; 0087 F129
avr0088:  ldi    ZH, 0x00     ; 0088 E0F0
          lsl    ZL           ; 0089 0FEE
          rol    ZH           ; 008A 1FFF
          subi   ZL, 0x8E     ; 008B 58EE
          sbci   ZH, 0xFF     ; 008C 4FFF
          lpm    XL, Z+       ; 008D 91A5
          lpm    XH, Z        ; 008E 91B4
          in     r24, SREG    ; 008F B78F
          cli                 ; 0090 94F8
          ld     ZL, X        ; 0091 91EC
          cpse   r22, r1      ; 0092 1161
          rjmp   avr00BA      ; 0093 C026
          com    r19          ; 0094 9530
          and    r19, ZL      ; 0095 233E
avr0096:  st     X, r19       ; 0096 933C
          out    SREG, r24    ; 0097 BF8F
avr0098:  ret                 ; 0098 9508
avr0099:  cpi    r18, 0x07    ; 0099 3027
           breq  avr00B0      ; 009A F0A9
          cpi    r18, 0x08    ; 009B 3028
           breq  avr00B6      ; 009C F0C9
          cpi    r18, 0x04    ; 009D 3024
           brne  avr0088      ; 009E F749
          lds    r24, 0x0080  ; 009F 9180 0080
          andi   r24, 0xDF    ; 00A1 7D8F
          rjmp   avr00A6      ; 00A2 C003
avr00A3:  lds    r24, 0x0080  ; 00A3 9180 0080
          andi   r24, 0x7F    ; 00A5 778F
avr00A6:  sts    0x0080, r24  ; 00A6 9380 0080
          rjmp   avr0088      ; 00A8 CFDF
avr00A9:  in     r24, ICR1L   ; 00A9 B584
          andi   r24, 0x7F    ; 00AA 778F
avr00AB:  out    ICR1L, r24   ; 00AB BD84
          rjmp   avr0088      ; 00AC CFDB
avr00AD:  in     r24, ICR1L   ; 00AD B584
          andi   r24, 0xDF    ; 00AE 7D8F
          rjmp   avr00AB      ; 00AF CFFB
avr00B0:  lds    r24, 0x00B0  ; 00B0 9180 00B0
          andi   r24, 0x7F    ; 00B2 778F
avr00B3:  sts    0x00B0, r24  ; 00B3 9380 00B0
          rjmp   avr0088      ; 00B5 CFD2
avr00B6:  lds    r24, 0x00B0  ; 00B6 9180 00B0
          andi   r24, 0xDF    ; 00B8 7D8F
          rjmp   avr00B3      ; 00B9 CFF9
avr00BA:  or     r19, ZL      ; 00BA 2B3E
          rjmp   avr0096      ; 00BB CFDA
avr00BC:  mov    r20, r24     ; 00BC 2F48
          ldi    r21, 0x00    ; 00BD E050
          movw   ZL r20       ; 00BE 01FA
          subi   ZL, 0x70     ; 00BF 57E0
          sbci   ZH, 0xFF     ; 00C0 4FFF
          lpm    r25, Z       ; 00C1 9194
          movw   ZL r20       ; 00C2 01FA
          subi   ZL, 0x84     ; 00C3 58E4
          sbci   ZH, 0xFF     ; 00C4 4FFF
          lpm    r18, Z       ; 00C5 9124
          tst    r18          ; 00C6 2322
           breq  avr00DB      ; 00C7 F099
          ldi    r19, 0x00    ; 00C8 E030
          lsl    r18          ; 00C9 0F22
          rol    r19          ; 00CA 1F33
          movw   ZL r18       ; 00CB 01F9
          subi   ZL, 0x98     ; 00CC 59E8
          sbci   ZH, 0xFF     ; 00CD 4FFF
          lpm    XL, Z+       ; 00CE 91A5
          lpm    XH, Z        ; 00CF 91B4
          movw   ZL r18       ; 00D0 01F9
          subi   ZL, 0x8E     ; 00D1 58EE
          sbci   ZH, 0xFF     ; 00D2 4FFF
          lpm    r18, Z+      ; 00D3 9125
          lpm    r19, Z       ; 00D4 9134
          in     r18, SREG    ; 00D5 B72F
          cli                 ; 00D6 94F8
          ld     ZL, X        ; 00D7 91EC
          or     ZL, r25      ; 00D8 2BE9
          st     X, ZL        ; 00D9 93EC
          out    SREG, r18    ; 00DA BF2F
avr00DB:  cp     r22, r1      ; 00DB 1561
          cpc    r23, r1      ; 00DC 0571
           brne  avr00E1      ; 00DD F419
avr00DE:  ldi    r22, 0x00    ; 00DE E060
avr00DF:  jmp    avr0070      ; 00DF 940C 0070
avr00E1:  cpi    r22, 0xFF    ; 00E1 3F6F
          cpc    r23, r1      ; 00E2 0571
           brne  avr00E6      ; 00E3 F411
avr00E4:  ldi    r22, 0x01    ; 00E4 E061
          rjmp   avr00DF      ; 00E5 CFF9
avr00E6:  movw   ZL r20       ; 00E6 01FA
          subi   ZL, 0x5C     ; 00E7 55EC
          sbci   ZH, 0xFF     ; 00E8 4FFF
          lpm    ZL, Z        ; 00E9 91E4
          cpi    ZL, 0x03     ; 00EA 30E3
           breq  avr010F      ; 00EB F119
           brsh  avr00F5      ; 00EC F440
          cpi    ZL, 0x01     ; 00ED 30E1
           breq  avr0105      ; 00EE F0B1
          cpi    ZL, 0x02     ; 00EF 30E2
           breq  avr010A      ; 00F0 F0C9
avr00F1:  cpi    r22, 0x80    ; 00F1 3860
          cpc    r23, r1      ; 00F2 0571
           brge  avr00E4      ; 00F3 F784
          rjmp   avr00DE      ; 00F4 CFE9
avr00F5:  cpi    ZL, 0x07     ; 00F5 30E7
           breq  avr0119      ; 00F6 F111
          cpi    ZL, 0x08     ; 00F7 30E8
           breq  avr0121      ; 00F8 F141
          cpi    ZL, 0x04     ; 00F9 30E4
           brne  avr00F1      ; 00FA F7B1
          lds    r24, 0x0080  ; 00FB 9180 0080
          ori    r24, 0x20    ; 00FD 6280
          sts    0x0080, r24  ; 00FE 9380 0080
          sts    0x008B, r23  ; 0100 9370 008B
          sts    0x008A, r22  ; 0102 9360 008A
          ret                 ; 0104 9508
avr0105:  in     r24, ICR1L   ; 0105 B584
          ori    r24, 0x80    ; 0106 6880
          out    ICR1L, r24   ; 0107 BD84
          out    ?0x27?, r22  ; 0108 BD67
          ret                 ; 0109 9508
avr010A:  in     r24, ICR1L   ; 010A B584
          ori    r24, 0x20    ; 010B 6280
          out    ICR1L, r24   ; 010C BD84
          out    OCR1BL, r22  ; 010D BD68
          ret                 ; 010E 9508
avr010F:  lds    r24, 0x0080  ; 010F 9180 0080
          ori    r24, 0x80    ; 0111 6880
          sts    0x0080, r24  ; 0112 9380 0080
          sts    0x0089, r23  ; 0114 9370 0089
          sts    0x0088, r22  ; 0116 9360 0088
          ret                 ; 0118 9508
avr0119:  lds    r24, 0x00B0  ; 0119 9180 00B0
          ori    r24, 0x80    ; 011B 6880
          sts    0x00B0, r24  ; 011C 9380 00B0
          sts    0x00B3, r22  ; 011E 9360 00B3
          ret                 ; 0120 9508
avr0121:  lds    r24, 0x00B0  ; 0121 9180 00B0
          ori    r24, 0x20    ; 0123 6280
          sts    0x00B0, r24  ; 0124 9380 00B0
          sts    0x00B4, r22  ; 0126 9360 00B4
          ret                 ; 0128 9508
avr0129:  in     r19, SREG    ; 0129 B73F
          cli                 ; 012A 94F8
          lds    r24, 0x0105  ; 012B 9180 0105
          lds    r25, 0x0106  ; 012D 9190 0106
          lds    XL, 0x0107   ; 012F 91A0 0107
          lds    XH, 0x0108   ; 0131 91B0 0108
          in     r18, ?0x26?  ; 0133 B526
          sbis   PORTC, 0     ; 0134 9BA8
          rjmp   avr013B      ; 0135 C005
          cpi    r18, 0xFF    ; 0136 3F2F
           breq  avr013B      ; 0137 F019
          adiw   r24, 0x01    ; 0138 9601
          adc    XL, r1       ; 0139 1DA1
          adc    XH, r1       ; 013A 1DB1
avr013B:  out    SREG, r19    ; 013B BF3F
          mov    XH, XL       ; 013C 2FBA
          mov    XL, r25      ; 013D 2FA9
          mov    r25, r24     ; 013E 2F98
          clr    r24          ; 013F 2788
          movw   r22 r24      ; 0140 01BC
          movw   r24 XL       ; 0141 01CD
          add    r22, r18     ; 0142 0F62
          adc    r23, r1      ; 0143 1D71
          adc    r24, r1      ; 0144 1D81
          adc    r25, r1      ; 0145 1D91
          ldi    r20, 0x02    ; 0146 E042
avr0147:  lsl    r22          ; 0147 0F66
          rol    r23          ; 0148 1F77
          rol    r24          ; 0149 1F88
          rol    r25          ; 014A 1F99
          dec    r20          ; 014B 954A
           brne  avr0147      ; 014C F7D1
          ret                 ; 014D 9508
avr014E:  push   r8           ; 014E 928F
          push   r9           ; 014F 929F
          push   r10          ; 0150 92AF
          push   r11          ; 0151 92BF
          push   r12          ; 0152 92CF
          push   r13          ; 0153 92DF
          push   r14          ; 0154 92EF
          push   r15          ; 0155 92FF
          call   avr0129      ; 0156 940E 0129
          movw   r12 r22      ; 0158 016B
          movw   r14 r24      ; 0159 017C
          ldi    r25, 0x02    ; 015A E092
          mov    r8, r25      ; 015B 2E89
          mov    r9, r1       ; 015C 2C91
          mov    r10, r1      ; 015D 2CA1
          mov    r11, r1      ; 015E 2CB1
avr015F:  call   avr0129      ; 015F 940E 0129
          sub    r22, r12     ; 0161 196C
          sbc    r23, r13     ; 0162 097D
          sbc    r24, r14     ; 0163 098E
          sbc    r25, r15     ; 0164 099F
          cpi    r22, 0xE8    ; 0165 3E68
          sbci   r23, 0x03    ; 0166 4073
          cpc    r24, r1      ; 0167 0581
          cpc    r25, r1      ; 0168 0591
           brlo  avr015F      ; 0169 F3A8
          ldi    r18, 0xE8    ; 016A EE28
          add    r12, r18     ; 016B 0EC2
          ldi    r18, 0x03    ; 016C E023
          adc    r13, r18     ; 016D 1ED2
          adc    r14, r1      ; 016E 1CE1
          adc    r15, r1      ; 016F 1CF1
          dec    r8           ; 0170 948A
          or     r8, r9       ; 0171 2889
          or     r8, r10      ; 0172 288A
          or     r8, r11      ; 0173 288B
           breq  avr017A      ; 0174 F029
          mov    r8, r1       ; 0175 2C81
          mov    r9, r1       ; 0176 2C91
          movw   r10 r8       ; 0177 0154
          inc    r8           ; 0178 9483
          rjmp   avr015F      ; 0179 CFE5
avr017A:  pop    r15          ; 017A 90FF
          pop    r14          ; 017B 90EF
          pop    r13          ; 017C 90DF
          pop    r12          ; 017D 90CF
          pop    r11          ; 017E 90BF
          pop    r10          ; 017F 90AF
          pop    r9           ; 0180 909F
          pop    r8           ; 0181 908F
          ret                 ; 0182 9508
avr0183:  push   r1           ; 0183 921F
          push   r0           ; 0184 920F
          in     r0, SREG     ; 0185 B60F
          push   r0           ; 0186 920F
          clr    r1           ; 0187 2411
          push   r18          ; 0188 932F
          push   r19          ; 0189 933F
          push   r24          ; 018A 938F
          push   r25          ; 018B 939F
          push   XL           ; 018C 93AF
          push   XH           ; 018D 93BF
          lds    r24, 0x0101  ; 018E 9180 0101
          lds    r25, 0x0102  ; 0190 9190 0102
          lds    XL, 0x0103   ; 0192 91A0 0103
          lds    XH, 0x0104   ; 0194 91B0 0104
          lds    r19, 0x0100  ; 0196 9130 0100
          ldi    r18, 0x03    ; 0198 E023
          add    r18, r19     ; 0199 0F23
          cpi    r18, 0x7D    ; 019A 372D
           brsh  avr01C7      ; 019B F558
          adiw   r24, 0x01    ; 019C 9601
          adc    XL, r1       ; 019D 1DA1
          adc    XH, r1       ; 019E 1DB1
avr019F:  sts    0x0100, r18  ; 019F 9320 0100
          sts    0x0101, r24  ; 01A1 9380 0101
          sts    0x0102, r25  ; 01A3 9390 0102
          sts    0x0103, XL   ; 01A5 93A0 0103
          sts    0x0104, XH   ; 01A7 93B0 0104
          lds    r24, 0x0105  ; 01A9 9180 0105
          lds    r25, 0x0106  ; 01AB 9190 0106
          lds    XL, 0x0107   ; 01AD 91A0 0107
          lds    XH, 0x0108   ; 01AF 91B0 0108
          adiw   r24, 0x01    ; 01B1 9601
          adc    XL, r1       ; 01B2 1DA1
          adc    XH, r1       ; 01B3 1DB1
          sts    0x0105, r24  ; 01B4 9380 0105
          sts    0x0106, r25  ; 01B6 9390 0106
          sts    0x0107, XL   ; 01B8 93A0 0107
          sts    0x0108, XH   ; 01BA 93B0 0108
          pop    XH           ; 01BC 91BF
          pop    XL           ; 01BD 91AF
          pop    r25          ; 01BE 919F
          pop    r24          ; 01BF 918F
          pop    r19          ; 01C0 913F
          pop    r18          ; 01C1 912F
          pop    r0           ; 01C2 900F
          out    SREG, r0     ; 01C3 BE0F
          pop    r0           ; 01C4 900F
          pop    r1           ; 01C5 901F
          reti                ; 01C6 9518
avr01C7:  ldi    r18, 0x86    ; 01C7 E826
          add    r18, r19     ; 01C8 0F23
          adiw   r24, 0x02    ; 01C9 9602
          adc    XL, r1       ; 01CA 1DA1
          adc    XH, r1       ; 01CB 1DB1
          rjmp   avr019F      ; 01CC CFD2
avr01CD:  sei                 ; 01CD 9478
          in     r24, ICR1L   ; 01CE B584
          ori    r24, 0x02    ; 01CF 6082
          out    ICR1L, r24   ; 01D0 BD84
          in     r24, ICR1L   ; 01D1 B584
          ori    r24, 0x01    ; 01D2 6081
          out    ICR1L, r24   ; 01D3 BD84
          in     r24, ICR1H   ; 01D4 B585
          ori    r24, 0x02    ; 01D5 6082
          out    ICR1H, r24   ; 01D6 BD85
          in     r24, ICR1H   ; 01D7 B585
          ori    r24, 0x01    ; 01D8 6081
          out    ICR1H, r24   ; 01D9 BD85
          lds    r24, 0x006E  ; 01DA 9180 006E
          ori    r24, 0x01    ; 01DC 6081
          sts    0x006E, r24  ; 01DD 9380 006E
          sts    0x0081, r1   ; 01DF 9210 0081
          lds    r24, 0x0081  ; 01E1 9180 0081
          ori    r24, 0x02    ; 01E3 6082
          sts    0x0081, r24  ; 01E4 9380 0081
          lds    r24, 0x0081  ; 01E6 9180 0081
          ori    r24, 0x01    ; 01E8 6081
          sts    0x0081, r24  ; 01E9 9380 0081
          lds    r24, 0x0080  ; 01EB 9180 0080
          ori    r24, 0x01    ; 01ED 6081
          sts    0x0080, r24  ; 01EE 9380 0080
          lds    r24, 0x00B1  ; 01F0 9180 00B1
          ori    r24, 0x04    ; 01F2 6084
          sts    0x00B1, r24  ; 01F3 9380 00B1
          lds    r24, 0x00B0  ; 01F5 9180 00B0
          ori    r24, 0x01    ; 01F7 6081
          sts    0x00B0, r24  ; 01F8 9380 00B0
          lds    r24, 0x007A  ; 01FA 9180 007A
          ori    r24, 0x04    ; 01FC 6084
          sts    0x007A, r24  ; 01FD 9380 007A
          lds    r24, 0x007A  ; 01FF 9180 007A
          ori    r24, 0x02    ; 0201 6082
          sts    0x007A, r24  ; 0202 9380 007A
          lds    r24, 0x007A  ; 0204 9180 007A
          ori    r24, 0x01    ; 0206 6081
          sts    0x007A, r24  ; 0207 9380 007A
          lds    r24, 0x007A  ; 0209 9180 007A
          ori    r24, 0x80    ; 020B 6880
          sts    0x007A, r24  ; 020C 9380 007A
          sts    0x00C1, r1   ; 020E 9210 00C1
          ldi    r16, 0x00    ; 0210 E000
          ldi    r17, 0x00    ; 0211 E010
avr0212:  ldi    YH, 0x00     ; 0212 E0D0
          ldi    YL, 0x00     ; 0213 E0C0
avr0214:  movw   r22 YL       ; 0214 01BE
          ldi    r24, 0x09    ; 0215 E089
          call   avr00BC      ; 0216 940E 00BC
          call   avr014E      ; 0218 940E 014E
          adiw   YL, 0x01     ; 021A 9621
          cp     YL, r1       ; 021B 15C1
          ldi    r24, 0x01    ; 021C E081
          cpc    YH, r24      ; 021D 07D8
           brne  avr0214      ; 021E F7A9
          ldi    YH, 0x00     ; 021F E0D0
          ldi    YL, 0x00     ; 0220 E0C0
avr0221:  movw   r22 YL       ; 0221 01BE
          ldi    r24, 0x0A    ; 0222 E08A
          call   avr00BC      ; 0223 940E 00BC
          call   avr014E      ; 0225 940E 014E
          adiw   YL, 0x01     ; 0227 9621
          cp     YL, r1       ; 0228 15C1
          ldi    r24, 0x01    ; 0229 E081
          cpc    YH, r24      ; 022A 07D8
           brne  avr0221      ; 022B F7A9
          ldi    YH, 0x00     ; 022C E0D0
          ldi    YL, 0x00     ; 022D E0C0
avr022E:  movw   r22 YL       ; 022E 01BE
          ldi    r24, 0x0B    ; 022F E08B
          call   avr00BC      ; 0230 940E 00BC
          call   avr014E      ; 0232 940E 014E
          adiw   YL, 0x01     ; 0234 9621
          cp     YL, r1       ; 0235 15C1
          ldi    r24, 0x01    ; 0236 E081
          cpc    YH, r24      ; 0237 07D8
           brne  avr022E      ; 0238 F7A9
          ldi    YL, 0xFF     ; 0239 EFCF
          ldi    YH, 0x00     ; 023A E0D0
avr023B:  movw   r22 YL       ; 023B 01BE
          ldi    r24, 0x09    ; 023C E089
          call   avr00BC      ; 023D 940E 00BC
          call   avr014E      ; 023F 940E 014E
          sbiw   YL, 0x01     ; 0241 9721
           brsh  avr023B      ; 0242 F7C0
          ldi    YL, 0xFF     ; 0243 EFCF
          ldi    YH, 0x00     ; 0244 E0D0
avr0245:  movw   r22 YL       ; 0245 01BE
          ldi    r24, 0x0A    ; 0246 E08A
          call   avr00BC      ; 0247 940E 00BC
          call   avr014E      ; 0249 940E 014E
          sbiw   YL, 0x01     ; 024B 9721
           brsh  avr0245      ; 024C F7C0
          ldi    YL, 0xFF     ; 024D EFCF
          ldi    YH, 0x00     ; 024E E0D0
avr024F:  movw   r22 YL       ; 024F 01BE
          ldi    r24, 0x0B    ; 0250 E08B
          call   avr00BC      ; 0251 940E 00BC
          call   avr014E      ; 0253 940E 014E
          sbiw   YL, 0x01     ; 0255 9721
           brsh  avr024F      ; 0256 F7C0
          cp     r16, r1      ; 0257 1501
          cpc    r17, r1      ; 0258 0511
           brne  avr025B      ; 0259 F409
          rjmp   avr0212      ; 025A CFB7
avr025B:  call   avr0000      ; 025B 940E 0000
          rjmp   avr0212      ; 025D CFB4
avr025E:  cli                 ; 025E 94F8
avr025F:  rjmp   $            ; 025F CFFF

         .exit