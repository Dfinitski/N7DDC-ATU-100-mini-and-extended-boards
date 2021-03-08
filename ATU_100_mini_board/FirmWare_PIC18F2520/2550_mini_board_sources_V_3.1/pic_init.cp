#line 1 "E:/ATU-100/fw_mini/2550_mini_board_sources_V_3.1/pic_init.c"





void pic_init (void) {
 CMCON = 0b00000111;

 OSCCON = 0b01100000;
 PLLEN_bit = 1;

 PORTA = 0;
 PORTB = 0;
 PORTC = 0;
 LATA = 0b00001000;
 LATB = 0;
 LATC = 0;
 TRISA = 0b00000011;
 TRISB = 0b11111001;
 TRISC = 0b00000000;

 ADC_Init();


 ADCON1 = 0b00001101;

 RBPU_bit = 0;


 GIE_bit = 0;
}
