// pic_init unit for Micro C PRO
// David Fainitski for ATU-100 project
// PIC1938 Microchip


void pic_init (void) {
  CMCON = 0b00000111; // Comparator OFF

  OSCCON = 0b01100000; // 4 MHz oscillator      //  0b01110000  - 8 MHz
  PLLEN_bit = 1; //4xPLL enable   4 * 4 = 16 MHz

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

  ADCON1 = 0b00001101; // ADC ports conf
  //
  RBPU_bit = 0;

  //interrupt setting
  GIE_bit = 0;
}