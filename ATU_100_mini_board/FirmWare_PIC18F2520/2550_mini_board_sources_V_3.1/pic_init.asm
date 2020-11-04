
_pic_init:

;pic_init.c,6 :: 		void pic_init (void) {
;pic_init.c,7 :: 		CMCON = 0b00000111; // Comparator OFF
	MOVLW       7
	MOVWF       CMCON+0 
;pic_init.c,9 :: 		OSCCON = 0b01100000; // 4 MHz oscillator      //  0b01110000  - 8 MHz
	MOVLW       96
	MOVWF       OSCCON+0 
;pic_init.c,10 :: 		PLLEN_bit = 1; //4xPLL enable   4 * 4 = 16 MHz
	BSF         PLLEN_bit+0, BitPos(PLLEN_bit+0) 
;pic_init.c,12 :: 		PORTA = 0;
	CLRF        PORTA+0 
;pic_init.c,13 :: 		PORTB = 0;
	CLRF        PORTB+0 
;pic_init.c,14 :: 		PORTC = 0;
	CLRF        PORTC+0 
;pic_init.c,15 :: 		LATA  = 0b00001000;   // PORT3 /Tx_req to 1
	MOVLW       8
	MOVWF       LATA+0 
;pic_init.c,16 :: 		LATB = 0;
	CLRF        LATB+0 
;pic_init.c,17 :: 		LATC = 0;
	CLRF        LATC+0 
;pic_init.c,18 :: 		TRISA = 0b00000011;
	MOVLW       3
	MOVWF       TRISA+0 
;pic_init.c,19 :: 		TRISB = 0b11111001;
	MOVLW       249
	MOVWF       TRISB+0 
;pic_init.c,20 :: 		TRISC = 0b00000000;     //
	CLRF        TRISC+0 
;pic_init.c,22 :: 		ADC_Init();
	CALL        _ADC_Init+0, 0
;pic_init.c,25 :: 		ADCON1 = 0b00001101; // ADC ports conf
	MOVLW       13
	MOVWF       ADCON1+0 
;pic_init.c,27 :: 		RBPU_bit = 0;
	BCF         RBPU_bit+0, BitPos(RBPU_bit+0) 
;pic_init.c,30 :: 		GIE_bit = 0;
	BCF         GIE_bit+0, BitPos(GIE_bit+0) 
;pic_init.c,31 :: 		}
L_end_pic_init:
	RETURN      0
; end of _pic_init
