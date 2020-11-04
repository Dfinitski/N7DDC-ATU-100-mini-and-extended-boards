
_pic_init:

;pic_init.c,6 :: 		void pic_init (void) {
;pic_init.c,7 :: 		asm CLRWDT;
	CLRWDT
;pic_init.c,8 :: 		WDTCON.B5 = 0;
	BCF        WDTCON+0, 5
;pic_init.c,9 :: 		WDTCON.B4 = 1;
	BSF        WDTCON+0, 4
;pic_init.c,10 :: 		WDTCON.B3 = 0;   // 1 sec WDT
	BCF        WDTCON+0, 3
;pic_init.c,11 :: 		WDTCON.B2 = 1;
	BSF        WDTCON+0, 2
;pic_init.c,12 :: 		WDTCON.B1 = 0;
	BCF        WDTCON+0, 1
;pic_init.c,13 :: 		asm CLRWDT;
	CLRWDT
;pic_init.c,15 :: 		ANSELA = 0;
	CLRF       ANSELA+0
;pic_init.c,16 :: 		ANSA0_bit = 1;       // analog inputs
	BSF        ANSA0_bit+0, BitPos(ANSA0_bit+0)
;pic_init.c,17 :: 		ANSA1_bit = 1;
	BSF        ANSA1_bit+0, BitPos(ANSA1_bit+0)
;pic_init.c,18 :: 		ANSELB = 0;         // all as digital
	CLRF       ANSELB+0
;pic_init.c,20 :: 		C1ON_bit = 0;           // Disable comparators
	BCF        C1ON_bit+0, BitPos(C1ON_bit+0)
;pic_init.c,21 :: 		C2ON_bit = 0;
	BCF        C2ON_bit+0, BitPos(C2ON_bit+0)
;pic_init.c,23 :: 		OSCCON = 0b01111000; // 16 MHz oscillator
	MOVLW      120
	MOVWF      OSCCON+0
;pic_init.c,25 :: 		PORTA = 0;
	CLRF       PORTA+0
;pic_init.c,26 :: 		PORTB = 0;
	CLRF       PORTB+0
;pic_init.c,27 :: 		PORTC = 0;
	CLRF       PORTC+0
;pic_init.c,28 :: 		LATA = 0b01000000;   // PORT6 /Tx_req to 1
	MOVLW      64
	MOVWF      LATA+0
;pic_init.c,29 :: 		LATB = 0;
	CLRF       LATB+0
;pic_init.c,30 :: 		LATC = 0;
	CLRF       LATC+0
;pic_init.c,31 :: 		TRISA = 0b00000011;
	MOVLW      3
	MOVWF      TRISA+0
;pic_init.c,32 :: 		TRISB = 0b00000111;
	MOVLW      7
	MOVWF      TRISB+0
;pic_init.c,33 :: 		TRISC = 0b00000000;     //
	CLRF       TRISC+0
;pic_init.c,35 :: 		ADC_Init();
	CALL       _ADC_Init+0
;pic_init.c,38 :: 		ADCON1.B0 = 1;   // ADC with the internal reference
	BSF        ADCON1+0, 0
;pic_init.c,39 :: 		ADCON1.B1 = 1;
	BSF        ADCON1+0, 1
;pic_init.c,41 :: 		OPTION_REG.B7 = 0;
	BCF        OPTION_REG+0, 7
;pic_init.c,42 :: 		WPUB.B0 = 1;  // PORTB0 Pull-up resistor
	BSF        WPUB+0, 0
;pic_init.c,43 :: 		WPUB.B1 = 1;  // PORTB1 Pull-up resistor
	BSF        WPUB+0, 1
;pic_init.c,44 :: 		WPUB.B2 = 1;  // PORTB2 Pull-up resistor
	BSF        WPUB+0, 2
;pic_init.c,46 :: 		GIE_bit = 0;
	BCF        GIE_bit+0, BitPos(GIE_bit+0)
;pic_init.c,48 :: 		}
L_end_pic_init:
	RETURN
; end of _pic_init
