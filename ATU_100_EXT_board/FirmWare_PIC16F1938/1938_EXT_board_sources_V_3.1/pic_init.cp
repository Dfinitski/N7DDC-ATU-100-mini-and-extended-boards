#line 1 "E:/ATU-100/fw_EXT_3.1/1938_EXT_board_sources_V_3.0/pic_init.c"





void pic_init (void) {
 asm CLRWDT;
 WDTCON.B5 = 0;
 WDTCON.B4 = 1;
 WDTCON.B3 = 0;
 WDTCON.B2 = 1;
 WDTCON.B1 = 0;
 asm CLRWDT;

 ANSELA = 0;
 ANSA0_bit = 1;
 ANSA1_bit = 1;
 ANSELB = 0;

 C1ON_bit = 0;
 C2ON_bit = 0;

 OSCCON = 0b01111000;

 PORTA = 0;
 PORTB = 0;
 PORTC = 0;
 LATA = 0b01000000;
 LATB = 0;
 LATC = 0;
 TRISA = 0b00000011;
 TRISB = 0b00000111;
 TRISC = 0b00000000;

 ADC_Init();


 ADCON1.B0 = 1;
 ADCON1.B1 = 1;

 OPTION_REG.B7 = 0;
 WPUB.B0 = 1;
 WPUB.B1 = 1;
 WPUB.B2 = 1;

 GIE_bit = 0;

}
