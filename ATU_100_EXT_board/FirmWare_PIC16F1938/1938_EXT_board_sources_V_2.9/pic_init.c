// pic_init unit for Micro C PRO
// David Fainitski for ATU-100 project
// PIC1938 Microchip


void pic_init (void) {
  asm CLRWDT;
  WDTCON.B5 = 0;
  WDTCON.B4 = 1;
  WDTCON.B3 = 0;   // 1 sec WDT
  WDTCON.B2 = 1;
  WDTCON.B1 = 0;
  asm CLRWDT;

  ANSELA = 0;
  ANSA0_bit = 1;       // analog inputs
  ANSA1_bit = 1;
  ANSELB = 0;         // all as digital

  C1ON_bit = 0;           // Disable comparators
  C2ON_bit = 0;

  OSCCON = 0b01111000; // 16 MHz oscillator

  PORTA = 0;
  PORTB = 0;
  PORTC = 0;
  LATA = 0b01000000;   // PORT6 /Tx_req to 1
  LATB = 0;
  LATC = 0;
  TRISA = 0b00000011;
  TRISB = 0b00000111;
  TRISC = 0b00000000;     //
  //
  ADC_Init();
  //

  ADCON1.B0 = 1;   // ADC with the internal reference
  ADCON1.B1 = 1;
  //
  OPTION_REG.B7 = 0;
  WPUB.B0 = 1;  // PORTB0 Pull-up resistor
  WPUB.B1 = 1;  // PORTB1 Pull-up resistor
  WPUB.B2 = 1;  // PORTB2 Pull-up resistor
  //interrupt setting
  GIE_bit = 0;

}