
#include "oled_control.h"
#include  "font5x8.h"
//

void led_send (char nible) {
  char sdata;
  sdata = 0;
  RW = 0; E = 1;
  sdata = sdata + nible;
  sdata = sdata << 4;
  if(LED) sdata = sdata + 8;
  if(E) sdata = sdata + 4;
  if(RW) sdata = sdata + 2;
  if(RS) sdata = sdata + 1;
  //
  Soft_I2C_Start();
  Soft_I2C_Write(led_addr);         // device addres
  Soft_I2C_Write(sdata);              //
  Soft_I2C_Stop();
  delay_ms(1);
  sdata = sdata - 4;  // E = 0
  Soft_I2C_Start();
  Soft_I2C_Write(led_addr);         // device addres
  Soft_I2C_Write(sdata);              //
  Soft_I2C_Stop();
  delay_ms(1);
}
//
void led_init (void) {
   shift_line = EEPROM_read(7);
   oled_shift = EEPROM_read(8);
   if(led_type>1) oled_init();   //    OLED
   else if(led_type==1) {     //       1602 LCD display init
      LED = 1;
      RS = 0;  // Command
      //
      led_send(3);
      delay_ms(5);
      led_send(3);
      delay_ms(1);
      led_send(3);
      led_send(2);
      //
      led_send(2);
      led_send(8); //
      //
      led_send(0);
      led_send(8);   // LCD OFF
      //
      led_send(0);
      led_send(1);   // LCD clear
      delay_ms(5);
      //
      led_send(0);
      led_send(4 + 2);  // I/D, S
      //
      led_send(0);
      led_send(8 + 4 + 0 + 0);  // LCD ON, Cursor, Blink Cursor
   }
}

void dysp_on() {
   if(led_type > 1) send_command(0xAF); //  display ON
   else if(led_type==1) {
      LED = 1; 
      RS = 0;
      led_send(0); 
      led_send(0);
   }
}

void dysp_off() {
    if(led_type > 1) send_command(0xAE); // display OFF
    else if(led_type==1) {
      LED = 0;
      RS = 0;
      led_send(0);
      led_send(0);
   }
}


 void oled_init (void) {  // OLED init
   char i, r;
   Soft_I2C_Start();
   Soft_I2C_Write(led_addr);             // device addres
   Soft_I2C_Write(0);              // 0 - continious mode, command; 64 - Co, data
   Soft_I2C_Write (0xAE); // display OFF
   //
   if(led_type==2 | led_type==3) { // 128*32 OLED
      Soft_I2C_Write (0xD5); // clock division
      Soft_I2C_Write (0x80); // ratio
      //
      Soft_I2C_Write (0xA8); //  multiplexer
      Soft_I2C_Write (0x3f); //
      //
      Soft_I2C_Write (0xD3); //  offset
      if(led_type==2) Soft_I2C_Write (0 + shift_line); // column shift
      else Soft_I2C_Write (31 + shift_line); // column shift
      //
      Soft_I2C_Write (0x40); // set line, line = 0
      //
      Soft_I2C_Write (0x8D); //  charge pump
      Soft_I2C_Write (0x14); //  0x10 - external, 0x14 - internal
      //
      Soft_I2C_Write (0x81); //  contrast
      Soft_I2C_Write (180); //   0-255
      //
      Soft_I2C_Write (0xD9); //  pre-charge
      Soft_I2C_Write (0x22); //  0x22 - external, 0xF1 - internal
      //
      Soft_I2C_Write (0x20); //  memory addressing mode
      Soft_I2C_Write (0x02); //  page addressing mode
      //
      Soft_I2C_Write (0x21); // set column range
      Soft_I2C_Write (0);    // column start
      Soft_I2C_Write (127);  // column stop
      //
      Soft_I2C_Write (0x2E); //  stop scrolling
      //
      if(led_type==2) {
         Soft_I2C_Write (0xA0); //  segment re-map, A0 - normal, A1 - remapped
         //
         Soft_I2C_Write (0xC0); // scan direction, C0 - normal, C8 - remapped
      }
      else {
         Soft_I2C_Write (0xA1); //  segment re-map, A0 - normal, A1 - remapped
         //
         Soft_I2C_Write (0xC8); // scan direction, C0 - normal, C8 - remapped
      }
      //
      Soft_I2C_Write (0xDA); //  COM pins configure
      Soft_I2C_Write (0x02); // 12 for x64
      //
      Soft_I2C_Write (0xDB); //  V-COM detect
      Soft_I2C_Write (0x40); //
   //
   }
   else {                // 128*64 OLED
      Soft_I2C_Write (0xD5); // clock division
      Soft_I2C_Write (0x80); // ratio
      //
      Soft_I2C_Write (0xA8); //  multiplexer
      Soft_I2C_Write (63); //
      //
      Soft_I2C_Write (0xD3); //  offset
      Soft_I2C_Write (shift_line); // no offset for x64 !
      //
      Soft_I2C_Write (0x40); // set line, line = 0
      //
      Soft_I2C_Write (0x8D); //  charge pump
      Soft_I2C_Write (0x14); //  0x10 - external, 0x14 - internal
      //
      Soft_I2C_Write (0x81); //  contrast
      Soft_I2C_Write (255); //   0-255
      //
      Soft_I2C_Write (0xD9); //  pre-charge
      Soft_I2C_Write (0xf1); //  0x22 - external, 0xF1 - internal
      //
      Soft_I2C_Write (0x20); //  memory addressing mode
      Soft_I2C_Write (0x02); //  page addressing mode   02
      //
      Soft_I2C_Write (0x21); // set column range
      Soft_I2C_Write (0);    // column start
      Soft_I2C_Write (127);  // column stop
      //
      Soft_I2C_Write (0x2E); //  stop scrolling
      //
      if(led_type==4) {
         Soft_I2C_Write (0xA0); //  segment re-map, A0 - normal, A1 - remapped
         //
         Soft_I2C_Write (0xC0); // scan direction, C0 - normal, C8 - remapped
      }
      else {
         Soft_I2C_Write (0xA1); //  segment re-map, A0 - normal, A1 - remapped
         //
         Soft_I2C_Write (0xC8); // scan direction, C0 - normal, C8 - remapped
      }
      //
      Soft_I2C_Write (0xDA); //  COM pins configure
      Soft_I2C_Write (0x12); // 12 for x64
      //
      Soft_I2C_Write (0xDB); //  V-COM detect
      Soft_I2C_Write (0x40); //
   }
   Soft_I2C_Write (0xA4); //  display entire ON
   //
   Soft_I2C_Write (0xA6); // 0xA6 - normal, 0xA7 - inverse
   //
   Soft_I2C_Stop ();
   //
   // ********clear OLED***********
   //
   Delay_ms(100);
   Soft_I2C_Start();
   Soft_I2C_Write(led_addr);             // device addres
   Soft_I2C_Write(64);              // 0 - continious mode, command; 64 - Co, data
   //
   if(led_type==2 | led_type==3) {  // 128*32 OLED
      for (r = 0; r <=3; r++) {
         set_addressing (r, 0);    // clear all 4 pages
         for (i = 0; i < 128; i++, Soft_I2C_Write(0)); // clear one page pixels
      }
   }
   else {  // 128*64 OLED
      for (r = 0; r <=7; r++) {
         set_addressing (r, 0);    // clear all 8 pages
         for (i = 0; i < 128; i++, Soft_I2C_Write(0x00)); // clear one page pixels
      }

   }
   //
   Soft_I2C_Stop ();
   send_command (0xAF); //  display ON
   //

}



void send_command (char oled_command) {
  Soft_I2C_Start();
  Soft_I2C_Write(led_addr);         // device addres
  Soft_I2C_Write(128);              // 128 - command, 192 - data
  Soft_I2C_Write(oled_command);
  Soft_I2C_Stop();
}

void set_addressing (char pagenum, char c_start) {
  char a, b, c;
  c = c_start + oled_shift;
  Soft_I2C_Start();
  Soft_I2C_Write(led_addr);             // device addres
  Soft_I2C_Write(0);              // 0 - continious mode, command; 64 - Co, data
  Soft_I2C_Write(0xB0 + pagenum);  // set page number
  //
  if (c <= 15) { a = c; b = 0; }
  else { b = c / 16; a = c - b * 16; }
  Soft_I2C_Write (a);        // set lower nibble of start address
  Soft_I2C_Write (0x10 + b); // set higher nibble of start address
  //
  Soft_I2C_Start();
  Soft_I2C_Write(led_addr);        // device addres
  Soft_I2C_Write(64);              // 0 - continious mode, command; 64 - Co, data
  }
//


void led_wr_str (char col, char pos, char str[], char leng ) {  //
  char i;
  if(led_type==4 | led_type==5) oled_wr_str(pos, col, str, leng); // 128*64  OLED display
  else if(led_type==2 | led_type==3) oled_wr_str(7*pos+4, col*2, str, leng); // 128*32   OLED display
  else {        // 1602 LCD
     // Set address
     RS = 0;
     led_send(8 + col*4);
     led_send(pos);
     //
     RS = 1;
     for (i = 0; i < leng; i++) { // write string
       // write letter
       led_send(str[i] >> 4);
       led_send(str[i]);
     }

  }
}
//

void oled_wr_str (char col, char page, char str[], char leng ) {  //    128*32 or 128*64 OLED
  char i, h, g, w1, w2;
  Soft_I2C_Start();
  Soft_I2C_Write(led_addr);       // device addres
  Soft_I2C_Write(64);              // 0 - continious mode, command; 64 - Co, data
  //
  set_addressing (page, col);
  //
  for (i = 0; i < leng; i++) { // write string
     if (str[i] == 0) g = 0; else g = str[i] - 32; // NULL detection
     for (h = 0; h <= 4; h++) {  // write letter
      w1 = font5x8[g*5+h];
      if(page!=2 & page!=4 & page!=6) {
      w2.B7 = w1.B3;
      w2.B6 = w1.B3;
      w2.B5 = w1.B2;
      w2.B4 = w1.B2;
      w2.B3 = w1.B1;
      w2.B2 = w1.B1;
      w2.B1 = w1.B0;
      w2.B0 = w1.B0; 
      }
      else {
      w2.B7 = w1.B2;
      w2.B6 = w1.B2;
      w2.B5 = w1.B1;
      w2.B4 = w1.B1;
      w2.B3 = w1.B0;
      w2.B2 = w1.B0;
      w2.B1 = 0;
      w2.B0 = 0;
      }
      Soft_I2C_Write(w2);
      if(led_type==4 | led_type==5) Soft_I2C_Write(w2);   // 128*64
      }
     Soft_I2C_Write (0);
     Soft_I2C_Write (0);
  }
    set_addressing (page+1, col);
  //
  for (i = 0; i < leng; i++) { // write string
     if (str[i] == 0) g = 0; else g = str[i] - 32; // NULL detection
     for (h = 0; h <= 4; h++) {  // write letter
      w1 = font5x8[g*5+h];
      if(page!=2 & page!=4 & page!=6) {
      w2.B7 = w1.B7;
      w2.B6 = w1.B7;
      w2.B5 = w1.B6;
      w2.B4 = w1.B6;
      w2.B3 = w1.B5;
      w2.B2 = w1.B5;
      w2.B1 = w1.B4;
      w2.B0 = w1.B4; }
      else {
      w2.B7 = w1.B6;
      w2.B6 = w1.B6;
      w2.B5 = w1.B5;
      w2.B4 = w1.B5;
      w2.B3 = w1.B4;
      w2.B2 = w1.B4;
      w2.B1 = w1.B3;
      w2.B0 = w1.B3;
      }
      Soft_I2C_Write(w2);
      if(led_type==4 | led_type==5) Soft_I2C_Write(w2);  // 128*64
      }
     Soft_I2C_Write (0);
     Soft_I2C_Write (0);
     //if(led_type==2 | led_type==3) Soft_I2C_Write (0);  // 128*32
  }
  Soft_I2C_Stop ();
}



 void Soft_I2C_Init () {
    led_addr = EEPROM_read(0);   //  4E,7E for 1602   or 78, 7A for OLED
    led_type = EEPROM_read(1);
    if(led_type==0) {
       Soft_I2C_Scl_Direction = 0;
       Soft_I2C_Sda_Direction = 0;
       LATB.B6 = 1;
       LATB.B7 = 1;
    }
    else {
       Soft_I2C_Scl_Direction = 1;
       Soft_I2C_Sda_Direction = 1;
       Soft_I2C_Scl = 0;
       Soft_I2C_Sda = 0;
    }
 }

 void Soft_I2C_Start () {
    if(led_type!=0) {
       Soft_I2C_Scl_Direction = 1;
       Delay_us(5);
       Soft_I2C_Sda_Direction = 1;
       Delay_us(5);
       Soft_I2C_Sda_Direction = 0;
       Delay_us(5);
       Soft_I2C_Scl_Direction = 0;
       Delay_us(5);
    }
 }

void Soft_I2C_Write (char d) {
   char i;
   if(led_type!=0) {
      for(i=0; i<=7; i++) {
         if(d.B7==0) Soft_I2C_Sda_Direction = 0; else  Soft_I2C_Sda_Direction = 1;
         Delay_us(5);
         Soft_I2C_Scl_Direction = 1;
         Delay_us(5);
         Soft_I2C_Scl_Direction = 0;
         Delay_us(5);
         d = d << 1;
         }
         //
         Soft_I2C_Sda_Direction = 1; //ACK
         Delay_us(5);
         Soft_I2C_Scl_Direction = 1;
         Delay_us(5);
         Soft_I2C_Scl_Direction = 0;
         Delay_us(5);
   }
}

void Soft_I2C_Stop () {
   if(led_type!=0) {
      Soft_I2C_Sda_Direction = 0;
      Delay_us(5);
      Soft_I2C_Scl_Direction = 1;
      Delay_us(5);
      Soft_I2C_Sda_Direction = 1;
      Delay_us(5);
   }
}