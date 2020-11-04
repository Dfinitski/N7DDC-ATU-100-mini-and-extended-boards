#line 1 "E:/ATU-100/fw_EXT_3.1/2520_EXT_board_sources_V_3.1/oled_control.c"
#line 1 "e:/atu-100/fw_ext_3.1/2520_ext_board_sources_v_3.1/oled_control.h"


sbit Soft_I2C_Scl at LATB6_bit;
sbit Soft_I2C_Sda at LATB7_bit;
sbit Soft_I2C_Scl_Direction at TRISB6_bit;
sbit Soft_I2C_Sda_Direction at TRISB7_bit;

static char RS, RW, E, LED, nible;

static char led_addr, led_type;
static char shift_line;

static char oled_shift;

void set_addressing (char, char);
void led_send (char);
void led_init (void);
void oled_init (void);
void send_command (char);
void set_addressing (char, char);
void led_wr_str (char, char, char*, char);
void oled_wr_str (char, char, char*, char);
void dysp_on(void);
void dysp_off(void);


void Soft_I2C_Init (void);
void Soft_I2C_Start (void);
void Soft_I2C_Write (char);
void Soft_I2C_Stop (void);
#line 1 "e:/atu-100/fw_ext_3.1/2520_ext_board_sources_v_3.1/font5x8.h"
 static const char font5x8[] = {

0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x5F, 0x00, 0x00,
0x00, 0x07, 0x00, 0x07, 0x00,
0x14, 0x7F, 0x14, 0x7F, 0x14,
0x24, 0x2A, 0x7F, 0x2A, 0x12,
0x23, 0x13, 0x08, 0x64, 0x62,
0x36, 0x49, 0x55, 0x22, 0x50,
0x00, 0x05, 0x03, 0x00, 0x00,
0x00, 0x1C, 0x22, 0x41, 0x00,
0x00, 0x41, 0x22, 0x1C, 0x00,
0x08, 0x2A, 0x1C, 0x2A, 0x08,
0x08, 0x08, 0x3E, 0x08, 0x08,
0x00, 0x50, 0x30, 0x00, 0x00,
0x08, 0x08, 0x08, 0x08, 0x08,
0x00, 0x30, 0x30, 0x00, 0x00,
0x20, 0x10, 0x08, 0x04, 0x02,
0x3E, 0x51, 0x49, 0x45, 0x3E,
0x00, 0x42, 0x7F, 0x40, 0x00,
0x42, 0x61, 0x51, 0x49, 0x46,
0x21, 0x41, 0x45, 0x4B, 0x31,
0x18, 0x14, 0x12, 0x7F, 0x10,
0x27, 0x45, 0x45, 0x45, 0x39,
0x3C, 0x4A, 0x49, 0x49, 0x30,
0x01, 0x71, 0x09, 0x05, 0x03,
0x36, 0x49, 0x49, 0x49, 0x36,
0x06, 0x49, 0x49, 0x29, 0x1E,
0x00, 0x36, 0x36, 0x00, 0x00,
0x00, 0x56, 0x36, 0x00, 0x00,
0x00, 0x08, 0x14, 0x22, 0x41,
0x14, 0x14, 0x14, 0x14, 0x14,
0x41, 0x22, 0x14, 0x08, 0x00,
0x02, 0x01, 0x51, 0x09, 0x06,
0x32, 0x49, 0x79, 0x41, 0x3E,
0x7E, 0x11, 0x11, 0x11, 0x7E,
0x7F, 0x49, 0x49, 0x49, 0x36,
0x3E, 0x41, 0x41, 0x41, 0x22,
0x7F, 0x41, 0x41, 0x22, 0x1C,
0x7F, 0x49, 0x49, 0x49, 0x41,
0x7F, 0x09, 0x09, 0x01, 0x01,
0x3E, 0x41, 0x41, 0x51, 0x32,
0x7F, 0x08, 0x08, 0x08, 0x7F,
0x00, 0x41, 0x7F, 0x41, 0x00,
0x20, 0x40, 0x41, 0x3F, 0x01,
0x7F, 0x08, 0x14, 0x22, 0x41,
0x7F, 0x40, 0x40, 0x40, 0x40,
0x7F, 0x02, 0x04, 0x02, 0x7F,
0x7F, 0x04, 0x08, 0x10, 0x7F,
0x3E, 0x41, 0x41, 0x41, 0x3E,
0x7F, 0x09, 0x09, 0x09, 0x06,
0x3E, 0x41, 0x51, 0x21, 0x5E,
0x7F, 0x09, 0x19, 0x29, 0x46,
0x46, 0x49, 0x49, 0x49, 0x31,
0x01, 0x01, 0x7F, 0x01, 0x01,
0x3F, 0x40, 0x40, 0x40, 0x3F,
0x1F, 0x20, 0x40, 0x20, 0x1F,
0x7F, 0x20, 0x18, 0x20, 0x7F,
0x63, 0x14, 0x08, 0x14, 0x63,
0x03, 0x04, 0x78, 0x04, 0x03,
0x61, 0x51, 0x49, 0x45, 0x43,
0x00, 0x00, 0x7F, 0x41, 0x41,
0x02, 0x04, 0x08, 0x10, 0x20,
0x41, 0x41, 0x7F, 0x00, 0x00,
0x04, 0x02, 0x01, 0x02, 0x04,
0x40, 0x40, 0x40, 0x40, 0x40,
0x00, 0x01, 0x02, 0x04, 0x00,
0x20, 0x54, 0x54, 0x54, 0x78,
0x7F, 0x48, 0x44, 0x44, 0x38,
0x38, 0x44, 0x44, 0x44, 0x20,
0x38, 0x44, 0x44, 0x48, 0x7F,
0x38, 0x54, 0x54, 0x54, 0x18,
0x08, 0x7E, 0x09, 0x01, 0x02,
0x08, 0x14, 0x54, 0x54, 0x3C,
0x7F, 0x08, 0x04, 0x04, 0x78,
0x00, 0x44, 0x7D, 0x40, 0x00,
0x20, 0x40, 0x44, 0x3D, 0x00,
0x00, 0x7F, 0x10, 0x28, 0x44,
0x00, 0x41, 0x7F, 0x40, 0x00,
0x7C, 0x04, 0x18, 0x04, 0x78,
0x7C, 0x08, 0x04, 0x04, 0x78,
0x38, 0x44, 0x44, 0x44, 0x38,
0x7C, 0x14, 0x14, 0x14, 0x08,
0x08, 0x14, 0x14, 0x18, 0x7C,
0x7C, 0x08, 0x04, 0x04, 0x08,
0x48, 0x54, 0x54, 0x54, 0x20,
0x04, 0x3F, 0x44, 0x40, 0x20,
0x3C, 0x40, 0x40, 0x20, 0x7C,
0x1C, 0x20, 0x40, 0x20, 0x1C,
0x3C, 0x40, 0x30, 0x40, 0x3C,
0x44, 0x28, 0x10, 0x28, 0x44,
0x0C, 0x50, 0x50, 0x50, 0x3C,
0x44, 0x64, 0x54, 0x4C, 0x44,
0x00, 0x08, 0x36, 0x41, 0x00,
0x00, 0x00, 0x7F, 0x00, 0x00,
0x00, 0x41, 0x36, 0x08, 0x00,
0x08, 0x08, 0x2A, 0x1C, 0x08,
0x08, 0x1C, 0x2A, 0x08, 0x08
};
#line 6 "E:/ATU-100/fw_EXT_3.1/2520_EXT_board_sources_V_3.1/oled_control.c"
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

 Soft_I2C_Start();
 Soft_I2C_Write(led_addr);
 Soft_I2C_Write(sdata);
 Soft_I2C_Stop();
 delay_ms(1);
 sdata = sdata - 4;
 Soft_I2C_Start();
 Soft_I2C_Write(led_addr);
 Soft_I2C_Write(sdata);
 Soft_I2C_Stop();
 delay_ms(1);
}

void led_init (void) {
 shift_line = EEPROM_read(7);
 oled_shift = EEPROM_read(8);
 if(led_type>1) oled_init();
 else if(led_type==1) {
 LED = 1;
 RS = 0;

 led_send(3);
 delay_ms(5);
 led_send(3);
 delay_ms(1);
 led_send(3);
 led_send(2);

 led_send(2);
 led_send(8);

 led_send(0);
 led_send(8);

 led_send(0);
 led_send(1);
 delay_ms(5);

 led_send(0);
 led_send(4 + 2);

 led_send(0);
 led_send(8 + 4 + 0 + 0);
 }
}

void dysp_on() {
 if(led_type > 1) send_command(0xAF);
 else if(led_type==1) {
 LED = 1;
 RS = 0;
 led_send(0);
 led_send(0);
 }
}

void dysp_off() {
 if(led_type > 1) send_command(0xAE);
 else if(led_type==1) {
 LED = 0;
 RS = 0;
 led_send(0);
 led_send(0);
 }
}


 void oled_init (void) {
 char i, r;
 Soft_I2C_Start();
 Soft_I2C_Write(led_addr);
 Soft_I2C_Write(0);
 Soft_I2C_Write (0xAE);

 if(led_type==2 | led_type==3) {
 Soft_I2C_Write (0xD5);
 Soft_I2C_Write (0x80);

 Soft_I2C_Write (0xA8);
 Soft_I2C_Write (0x3f);

 Soft_I2C_Write (0xD3);
 if(led_type==2) Soft_I2C_Write (0 + shift_line);
 else Soft_I2C_Write (31 + shift_line);

 Soft_I2C_Write (0x40);

 Soft_I2C_Write (0x8D);
 Soft_I2C_Write (0x14);

 Soft_I2C_Write (0x81);
 Soft_I2C_Write (180);

 Soft_I2C_Write (0xD9);
 Soft_I2C_Write (0x22);

 Soft_I2C_Write (0x20);
 Soft_I2C_Write (0x02);

 Soft_I2C_Write (0x21);
 Soft_I2C_Write (0);
 Soft_I2C_Write (127);

 Soft_I2C_Write (0x2E);

 if(led_type==2) {
 Soft_I2C_Write (0xA0);

 Soft_I2C_Write (0xC0);
 }
 else {
 Soft_I2C_Write (0xA1);

 Soft_I2C_Write (0xC8);
 }

 Soft_I2C_Write (0xDA);
 Soft_I2C_Write (0x02);

 Soft_I2C_Write (0xDB);
 Soft_I2C_Write (0x40);

 }
 else {
 Soft_I2C_Write (0xD5);
 Soft_I2C_Write (0x80);

 Soft_I2C_Write (0xA8);
 Soft_I2C_Write (63);

 Soft_I2C_Write (0xD3);
 Soft_I2C_Write (shift_line);

 Soft_I2C_Write (0x40);

 Soft_I2C_Write (0x8D);
 Soft_I2C_Write (0x14);

 Soft_I2C_Write (0x81);
 Soft_I2C_Write (255);

 Soft_I2C_Write (0xD9);
 Soft_I2C_Write (0xf1);

 Soft_I2C_Write (0x20);
 Soft_I2C_Write (0x02);

 Soft_I2C_Write (0x21);
 Soft_I2C_Write (0);
 Soft_I2C_Write (127);

 Soft_I2C_Write (0x2E);

 if(led_type==4) {
 Soft_I2C_Write (0xA0);

 Soft_I2C_Write (0xC0);
 }
 else {
 Soft_I2C_Write (0xA1);

 Soft_I2C_Write (0xC8);
 }

 Soft_I2C_Write (0xDA);
 Soft_I2C_Write (0x12);

 Soft_I2C_Write (0xDB);
 Soft_I2C_Write (0x40);
 }
 Soft_I2C_Write (0xA4);

 Soft_I2C_Write (0xA6);

 Soft_I2C_Stop ();



 Delay_ms(100);
 Soft_I2C_Start();
 Soft_I2C_Write(led_addr);
 Soft_I2C_Write(64);

 if(led_type==2 | led_type==3) {
 for (r = 0; r <=3; r++) {
 set_addressing (r, 0);
 for (i = 0; i < 128; i++, Soft_I2C_Write(0));
 }
 }
 else {
 for (r = 0; r <=7; r++) {
 set_addressing (r, 0);
 for (i = 0; i < 128; i++, Soft_I2C_Write(0x00));
 }

 }

 Soft_I2C_Stop ();
 send_command (0xAF);


}



void send_command (char oled_command) {
 Soft_I2C_Start();
 Soft_I2C_Write(led_addr);
 Soft_I2C_Write(128);
 Soft_I2C_Write(oled_command);
 Soft_I2C_Stop();
}

void set_addressing (char pagenum, char c_start) {
 char a, b, c;
 c = c_start + oled_shift;
 Soft_I2C_Start();
 Soft_I2C_Write(led_addr);
 Soft_I2C_Write(0);
 Soft_I2C_Write(0xB0 + pagenum);

 if (c <= 15) { a = c; b = 0; }
 else { b = c / 16; a = c - b * 16; }
 Soft_I2C_Write (a);
 Soft_I2C_Write (0x10 + b);

 Soft_I2C_Start();
 Soft_I2C_Write(led_addr);
 Soft_I2C_Write(64);
 }



void led_wr_str (char col, char pos, char str[], char leng ) {
 char i;
 if(led_type==4 | led_type==5) oled_wr_str(pos, col, str, leng);
 else if(led_type==2 | led_type==3) oled_wr_str(7*pos+4, col*2, str, leng);
 else {

 RS = 0;
 led_send(8 + col*4);
 led_send(pos);

 RS = 1;
 for (i = 0; i < leng; i++) {

 led_send(str[i] >> 4);
 led_send(str[i]);
 }

 }
}


void oled_wr_str (char col, char page, char str[], char leng ) {
 char i, h, g, w1, w2;
 Soft_I2C_Start();
 Soft_I2C_Write(led_addr);
 Soft_I2C_Write(64);

 set_addressing (page, col);

 for (i = 0; i < leng; i++) {
 if (str[i] == 0) g = 0; else g = str[i] - 32;
 for (h = 0; h <= 4; h++) {
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
 if(led_type==4 | led_type==5) Soft_I2C_Write(w2);
 }
 Soft_I2C_Write (0);
 Soft_I2C_Write (0);
 }
 set_addressing (page+1, col);

 for (i = 0; i < leng; i++) {
 if (str[i] == 0) g = 0; else g = str[i] - 32;
 for (h = 0; h <= 4; h++) {
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
 if(led_type==4 | led_type==5) Soft_I2C_Write(w2);
 }
 Soft_I2C_Write (0);
 Soft_I2C_Write (0);

 }
 Soft_I2C_Stop ();
}



 void Soft_I2C_Init () {
 led_addr = EEPROM_read(0);
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
 if(d.B7==0) Soft_I2C_Sda_Direction = 0; else Soft_I2C_Sda_Direction = 1;
 Delay_us(5);
 Soft_I2C_Scl_Direction = 1;
 Delay_us(5);
 Soft_I2C_Scl_Direction = 0;
 Delay_us(5);
 d = d << 1;
 }

 Soft_I2C_Sda_Direction = 1;
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
