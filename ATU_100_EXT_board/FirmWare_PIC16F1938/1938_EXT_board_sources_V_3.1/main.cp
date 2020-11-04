#line 1 "E:/ATU-100/fw_EXT_3.1/1938_EXT_board_sources_V_3.0/main.c"
#line 1 "e:/atu-100/fw_ext_3.1/1938_ext_board_sources_v_3.0/oled_control.h"


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
#line 1 "e:/atu-100/fw_ext_3.1/1938_ext_board_sources_v_3.0/pic_init.h"


sbit n_Tx at LATA6_bit;
sbit p_Tx at LATA7_bit;





sbit Cap_10 at LATC7_bit;
sbit Cap_22 at LATC3_bit;
sbit Cap_47 at LATC6_bit;
sbit Cap_100 at LATC2_bit;
sbit Cap_220 at LATC5_bit;
sbit Cap_470 at LATC1_bit;
sbit Cap_1000 at LATC4_bit;
sbit Cap_sw at LATC0_bit;

sbit Ind_005 at LATB3_bit;
sbit Ind_011 at LATA2_bit;
sbit Ind_022 at LATB4_bit;
sbit Ind_045 at LATA3_bit;
sbit Ind_1 at LATB5_bit;
sbit Ind_22 at LATA5_bit;
sbit Ind_45 at LATA4_bit;

void pic_init (void);
#line 1 "e:/atu-100/fw_ext_3.1/1938_ext_board_sources_v_3.0/main.h"





static char ind = 0, cap = 0, SW = 0, step_cap = 0, step_ind = 0, L_linear = 0, C_linear = 0, L_q = 7, C_q = 7, D_correction = 1, L_invert = 0, L_mult = 1,
C_mult = 1, P_High = 0, K_Mult = 32, Overload = 0, Loss_ind = 0;
static int Rel_Del, min_for_start, max_for_start, max_swr;
int SWR, PWR, P_max, swr_a;
char rready = 0, p_cnt = 0;

void btn_push(void);
void lcd_prep(void);
void lcd_swr(int);
void lcd_pwr(void);
void show_pwr(int, int);
void lcd_ind(void);
void crypto(void);
void show_reset(void);
void cells_init(void);
void test_init(void);
void button_proc(void);
void button_proc_test(void);
void button_delay(void);
void show_loss(void);

void atu_reset(void);
int get_reverse(void);
int get_forward(void);
int correction(int);
void get_swr(void);
void get_pwr(void);
void set_sw(char);
void coarse_cap();
void sharp_cap();
void sharp_ind();
void coarse_tune();
void tune(void);
void sub_tune(void);


 int correction(int input) {

 if(input <= 80) return 0;
 if(input <= 171) input += 244;
 else if(input <= 328) input += 254;
 else if(input <= 582) input += 280;
 else if(input <= 820) input += 297;
 else if(input <= 1100) input += 310;
 else if(input <= 2181) input += 430;
 else if(input <= 3322) input += 484;
 else if(input <= 4623) input += 530;
 else if(input <= 5862) input += 648;
 else if(input <= 7146) input += 743;
 else if(input <= 8502) input += 800;
 else if(input <= 10500) input += 840;
 else input += 860;

 return input;
}



int get_reverse() {
 int Reverse;
 FVRCON = 0b10000001;
 while(FVRCON.B6 == 0);
 Reverse = ADC_Get_Sample(0);
 if(Reverse <= 1000) return Reverse;
 FVRCON = 0b10000010;
 while(FVRCON.B6 == 0);
 Reverse = ADC_Get_Sample(0);
 if(Reverse <= 1000) return Reverse * 2;
 FVRCON = 0b10000011;
 while(FVRCON.B6 == 0);
 Reverse = ADC_Get_Sample(0);
 return Reverse * 4;
}


int get_forward() {
 int Forward;
 FVRCON = 0b10000001;
 while(FVRCON.B6 == 0);
 Forward = ADC_Get_Sample(1);
 if(Forward <= 1000) return Forward;
 FVRCON = 0b10000010;
 while(FVRCON.B6 == 0);
 Forward = ADC_Get_Sample(1);
 if(Forward <= 1000) return Forward * 2;
 FVRCON = 0b10000011;
 while(FVRCON.B6 == 0);
 Forward = ADC_Get_Sample(1);
 if(Forward == 1023) Overload = 1;
 else Overload = 0;
 return Forward * 4;
}

void get_pwr() {
 long Forward, Reverse;
 float p;
 asm CLRWDT;

 Forward = get_forward();
 Reverse = get_reverse();
 if(D_correction==1) p = correction(Forward * 3);
 else p = Forward * 3;

 if(Reverse >= Forward)
 Forward = 999;
 else {
 Forward = ((Forward + Reverse) * 100) / (Forward - Reverse);
 if(Forward>999) Forward = 999;
 }

 p = p * K_Mult / 1000.0;
 p = p / 1.414;
 if(P_High==1) p = p * p / 50;
 else p = p * p / 5;
 p = p + 0.5;

 PWR = p;
 if(PWR<10) SWR = 1;
 else if(Forward<100) SWR = 999;
 else SWR = Forward;
 return;
}

void get_swr() {
 get_pwr();
 if(p_cnt!=100) {
 p_cnt += 1;
 if(PWR>P_max) P_max = PWR;
 }
 else {
 p_cnt = 0;
 show_pwr(P_max, SWR);
 P_max = 0;
 }
 while(PWR<min_for_start | (PWR> max_for_start & max_for_start>0)) {
 asm CLRWDT;
 get_pwr();
 if(p_cnt!=100) {
 p_cnt += 1;
 if(PWR>P_max) P_max = PWR;
 }
 else {
 p_cnt = 0;
 show_pwr(P_max, SWR);
 P_max = 0;
 }

 if(Button(&PORTB, 0, 5, 1)) rready = 1;
 if(rready==1 & Button(&PORTB, 0, 5, 0)) {
 show_reset();
 SWR = 0;
 return;
 }
 }
 return;
}

void set_ind(char Ind) {
 if(L_invert == 0) {
 Ind_005 = Ind.B0;
 Ind_011 = Ind.B1;
 Ind_022 = Ind.B2;
 Ind_045 = Ind.B3;
 Ind_1 = Ind.B4;
 Ind_22 = Ind.B5;
 Ind_45 = Ind.B6;

 }
 else {
 Ind_005 = ~Ind.B0;
 Ind_011 = ~Ind.B1;
 Ind_022 = ~Ind.B2;
 Ind_045 = ~Ind.B3;
 Ind_1 = ~Ind.B4;
 Ind_22 = ~Ind.B5;
 Ind_45 = ~Ind.B6;

 }
 Vdelay_ms(Rel_Del);
}

void set_cap(char Cap) {
 Cap_10 = Cap.B0;
 Cap_22 = Cap.B1;
 Cap_47 = Cap.B2;
 Cap_100 = Cap.B3;
 Cap_220 = Cap.B4;
 Cap_470 = Cap.B5;
 Cap_1000 = Cap.B6;

 Vdelay_ms(Rel_Del);
}

void set_sw(char SW) {
 Cap_sw = SW;
 Vdelay_ms(Rel_Del);
}

void atu_reset() {
 ind = 0;
 cap = 0;
 set_ind(ind);
 set_cap(cap);
 Vdelay_ms(Rel_Del);
}


void coarse_cap() {
 char step = 3;
 char count;
 int min_swr;

 cap = 0;
 set_cap(cap);
 step_cap = step;
 get_swr(); if(SWR==0) return;
 min_swr = SWR + SWR/20;
 for(count=step; count<=31;) {
 set_cap(count*C_mult);
 get_swr(); if(SWR==0) return;
 if(SWR < min_swr) {
 min_swr = SWR + SWR/20;
 cap = count*C_mult;
 step_cap = step;
 if(SWR<120) break;
 count +=step;
 if(C_linear==0 & count==9) count = 8;
 else if(C_linear==0 & count==17) {count = 16; step = 4;}
 }
 else break;
 }
 set_cap(cap);
 return;
}

void coarse_tune() {
 char step = 3;
 char count;
 char mem_cap, mem_step_cap;
 int min_swr;

 mem_cap = 0;
 step_ind = step;
 mem_step_cap = 3;
 min_swr = SWR + SWR/20;
 for(count=0; count<=31;) {
 set_ind(count*L_mult);
 coarse_cap();
 get_swr(); if(SWR==0) return;
 if(SWR < min_swr) {
 min_swr = SWR + SWR/20;
 ind = count*L_mult;
 mem_cap = cap;
 step_ind = step;
 mem_step_cap = step_cap;
 if(SWR<120) break;
 count +=step;
 if(L_linear==0 & count==9) count = 8;
 else if(L_linear==0 & count==17) {count = 16; step = 4;}
 }
 else break;
 }
 cap = mem_cap;
 set_ind(ind);
 set_cap(cap);
 step_cap = mem_step_cap;
 Delay_ms(10);
 return;
}

void sharp_cap() {
 char range, count, max_range, min_range;
 int min_swr;
 range = step_cap*C_mult;

 max_range = cap + range;
 if(max_range>32*C_mult-1) max_range = 32*C_mult-1;
 if(cap>range) min_range = cap - range; else min_range = 0;
 cap = min_range;
 set_cap(cap);
 get_swr(); if(SWR==0) return;
 min_SWR = SWR;
 for(count=min_range+C_mult; count<=max_range; count+=C_mult) {
 set_cap(count);
 get_swr(); if(SWR==0) return;
 if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
 if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
 if(SWR < min_SWR) {
 min_SWR = SWR;
 cap = count;
 if(SWR<120) break;
 }
 else break;
 }
 set_cap(cap);
 return;
}

void sharp_ind() {
 char range, count, max_range, min_range;
 int min_SWR;
 range = step_ind * L_mult;

 max_range = ind + range;
 if(max_range>32*L_mult-1) max_range = 32*L_mult-1;
 if(ind>range) min_range = ind - range; else min_range = 0;
 ind = min_range;
 set_ind(ind);
 get_swr(); if(SWR==0) return;
 min_SWR = SWR;
 for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
 set_ind(count);
 get_swr(); if(SWR==0) return;
 if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
 if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
 if(SWR < min_SWR) {
 min_SWR = SWR;
 ind = count;
 if(SWR<120) break;
 }
 else break;
 }
 set_ind(ind);
 return;
}


void sub_tune () {
 int swr_mem, ind_mem, cap_mem;

 swr_mem = SWR;
 coarse_tune(); if(SWR==0) {atu_reset(); return;}
 get_swr(); if(SWR<120) return;
 sharp_ind(); if(SWR==0) {atu_reset(); return;}
 get_swr(); if(SWR<120) return;
 sharp_cap(); if(SWR==0) {atu_reset(); return;}
 get_swr(); if(SWR<120) return;

 if(SWR<200 & SWR<swr_mem & (swr_mem-SWR)>100) return;
 swr_mem = SWR;
 ind_mem = ind;
 cap_mem = cap;

 if(SW==1) SW = 0; else SW = 1;
 atu_reset();
 set_sw(SW);
 Delay_ms(50);
 get_swr(); if(SWR<120) return;

 coarse_tune(); if(SWR==0) {atu_reset(); return;}
 get_swr(); if(SWR<120) return;
 sharp_ind(); if(SWR==0) {atu_reset(); return;}
 get_swr(); if(SWR<120) return;
 sharp_cap(); if(SWR==0) {atu_reset(); return;}
 get_swr(); if(SWR<120) return;

 if(SWR>swr_mem) {
 if(SW==1) SW = 0; else SW = 1;
 set_sw(SW);
 ind = ind_mem;
 cap = cap_mem;
 set_ind(ind);
 set_cap(cap);
 SWR = swr_mem;
 }

 asm CLRWDT;
 return;
}



void tune() {

 asm CLRWDT;

 p_cnt = 0;
 P_max = 0;

 rready = 0;
 get_swr();
 if(SWR<110) return;
 atu_reset();
 if(Loss_ind==0) lcd_ind();
 Delay_ms(50);
 get_swr();
 swr_a = SWR;
 if(SWR<110) return;
 if(max_swr>110 & SWR>max_swr) return;

 sub_tune(); if(SWR==0) {atu_reset(); return;}
 if(SWR<120) return;
 if(C_q==5 & L_q==5) return;

 if(L_q>5) {
 step_ind = L_mult;
 L_mult = 1;
 sharp_ind();
 }
 if(SWR<120) return;
 if(C_q>5) {
 step_cap = C_mult;
 C_mult = 1;
 sharp_cap();
 }
 if(L_q==5)L_mult = 1;
 else if(L_q==6) L_mult = 2;
 else if(L_q==7) L_mult = 4;
 if(C_q==5) C_mult =1;
 else if(C_q==6) C_mult = 2;
 else if(C_q==7) C_mult = 4;
 asm CLRWDT;
 return;
}
#line 11 "E:/ATU-100/fw_EXT_3.1/1938_EXT_board_sources_V_3.0/main.c"
 int SWR_fixed_old = 0, work_int;
 unsigned char work_char, work_str[7], work_str_2[7];
 float Forward;
 int Power =0, Power_old = 10000;
 int SWR_old = 10000;
 char type, Soft_tune = 0, Auto = 0, Track = 0;
 char bypas = 0, cap_mem = 0, ind_mem = 0, SW_mem = 0, Auto_mem = 0;
 int Auto_delta;
 char Restart = 0, Test = 0, lcd_prep_short = 0;
 char L = 1, but= 0;
 int Cap1, Cap2, Cap3, Cap4, Cap5, Cap6, Cap7;
 int Ind1, Ind2, Ind3, Ind4, Ind5, Ind6, Ind7;
 char Dysp_delay = 0;
 int dysp_cnt = 0;
 float dysp_cnt_mult = 2.3;
 char Loss_mode = 0, Fid_loss;





void main() {
 if(STATUS.B4==0) Restart = 1;
 pic_init();

 Delay_ms (300);
 asm CLRWDT;
 cells_init();
 Soft_I2C_Init();
 if(type==0) {
 LATB.B6 = 1;
 LATB.B7 = 1;
 }
 dysp_cnt = Dysp_delay * dysp_cnt_mult;

 Delay_ms(300);
 asm CLRWDT;

 if(PORTB.B1==0 & PORTB.B2==0) {
 Test = 1;
 Auto =0;
 }
 if(L_q==5)L_mult = 1;
 else if(L_q==6) L_mult = 2;
 else if(L_q==7) L_mult = 4;
 if(C_q==5) C_mult =1;
 else if(C_q==6) C_mult = 2;
 else if(C_q==7) C_mult = 4;

 Delay_ms(300);
 asm CLRWDT;
 led_init();

 if(PORTB.B1==0 & PORTB.B2==0 & PORTB.B0==0) {
 if(type==4 | type==5) led_wr_str (0, 12, "FAST TEST", 9);
 else if(type!=0) led_wr_str (0, 3, "FAST TEST", 9);
 set_cap(255);
 if(L_invert==0) set_ind(255);
 else set_ind(0);
 set_sw(1);
 asm CLRWDT;
 while(1) {Delay_ms(500);asm CLRWDT;}
 }
 asm CLRWDT;

 if(Button(&PORTB, 0, 100, 0)) {
 if(type==4 | type==5) { led_wr_str (0, 6, "Fider Loss", 10);
 led_wr_str (1, 6, "input", 5); }
 else if(type!=0) led_wr_str (0, 0, "Fider Loss input", 16);
 Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
 show_loss();

 while(1) {
 if(Button(&PORTB, 2, 50, 0)){
 if(Fid_loss<99) {
 Fid_loss ++;
 show_loss();
 EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
 }
 while(Button(&PORTB, 2, 50, 0)) asm CLRWDT;
 }

 if(Button(&PORTB, 1, 50, 0)){
 if(Fid_loss>0) {
 Fid_loss --;
 show_loss();
 EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
 }
 while(Button(&PORTB, 1, 50, 0)) asm CLRWDT;
 }
 asm CLRWDT;
 }
 }

 if(Test==0) {
 cap = EEPROM_Read(255);
 ind = EEPROM_Read(254);
 SW = EEPROM_Read(253);
 swr_a = EEPROM_Read(252) * 256;
 swr_a += EEPROM_Read(251);
 set_ind(ind);
 set_cap(cap);
 set_sw(SW);
 if(Restart==1 ) lcd_prep_short = 1;
 lcd_prep();
 }
 else Test_init();

 lcd_ind();





 while(1) {
 asm CLRWDT;
 lcd_pwr();

 if(Test==0) button_proc();
 else button_proc_test();

 if(dysp_cnt!=0) dysp_cnt --;
 else if(Test==0 & Dysp_delay!=0) dysp_off();



 }
}




 void button_proc_test(void) {
 if(Button(&PORTB, 0, 50, 0)){
 Delay_ms(250);
 asm CLRWDT;
 if(PORTB.B0==1) {
 if(SW==0) SW = 1; else SW = 0;
 set_sw(SW);
 lcd_ind();
 }
 else {
 if(L==1) L = 0; else L = 1;
 if(L==1) {
 if(type==4 |type==5)
 led_wr_str (0, 16+12*8, "l", 1);
 else if(type!=0)
 led_wr_str (0, 8, "l", 1);
 }
 else {
 if(type==4 |type==5)
 led_wr_str (0, 16+12*8, "c", 1);
 else if(type!=0)
 led_wr_str (0, 8, "c", 1);
 }
 }
 while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT; }
 }

 if(Button(&PORTB, 2, 50, 0)){
 asm CLRWDT;
 while(PORTB.B2==0) {
 if(L & ind<32*L_mult-1) {
 ind ++;
 set_ind(ind);
 }
 else if(!L & cap<32*L_mult-1) {
 cap ++;
 set_cap(cap);
 }
 lcd_ind();
 lcd_pwr();
 Delay_ms(30);
 asm CLRWDT;
 }
 }

 if(Button(&PORTB, 1, 50, 0) & Bypas==0){
 asm CLRWDT;
 while(PORTB.B1==0) {
 if(L & ind>0) {
 ind --;
 set_ind(ind);
 }
 else if(!L & cap>0) {
 cap --;
 set_cap(cap);
 }
 lcd_ind();
 lcd_pwr();
 Delay_ms(30);
 asm CLRWDT;
 }
 }
 return;
}


void button_proc(void) {
 if(Button(&PORTB, 0, 50, 0) | Soft_tune){
 dysp_on();
 dysp_cnt = Dysp_delay * dysp_cnt_mult;
 Delay_ms(250);
 asm CLRWDT;
 if(Soft_tune == 0 & PORTB.B0==1) {
 show_reset();
 bypas =0;
 }
 else {
 p_Tx = 1;
 n_Tx = 0;
 Delay_ms(250);
 btn_push();
 bypas = 0;
 while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT; }
 Soft_tune = 0;
 }
 }

 if(Button(&PORTB, 2, 50, 0)){
 dysp_on();
 dysp_cnt = Dysp_delay * dysp_cnt_mult;
 asm CLRWDT;
 if(bypas == 0) {
 bypas = 1;
 cap_mem = cap;
 ind_mem = ind;
 SW_mem = SW;
 cap = 0;
 ind = 0;
 SW = 1;
 set_ind(ind);
 set_cap(cap);
 set_SW(SW);
 if(Loss_mode==0) lcd_ind();
 Auto_mem = Auto;
 Auto = 0;
 }
 else {
 bypas = 0;
 cap = cap_mem;
 ind = ind_mem;
 SW = SW_mem;
 set_cap(cap);
 set_ind(ind);
 set_SW(SW);
 if(Loss_mode==0) lcd_ind();
 Auto = Auto_mem;
 }
 if(type==4 | type==5) {
 if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
 else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
 else led_wr_str (0, 16+8*12, " ", 1);
 }
 else if(type!=0) {
 if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
 else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
 else led_wr_str (0, 8, " ", 1);
 }
 asm CLRWDT;
 while(Button(&PORTB, 2, 50, 0)) {lcd_pwr(); asm CLRWDT; }
 }

 if(Button(&PORTB, 1, 50, 0) & Bypas==0){
 dysp_on();
 dysp_cnt = Dysp_delay * dysp_cnt_mult;
 asm CLRWDT;
 if(Auto == 0) Auto = 1;
 else Auto = 0;
 EEPROM_Write(2, Auto);
 if(type==4 | type==5) {
 if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
 else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
 else led_wr_str (0, 16+8*12, " ", 1);
 }
 else if(type!=0) {
 if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
 else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
 else led_wr_str (0, 8, " ", 1);
 }
 asm CLRWDT;
 while(Button(&PORTB, 1, 50, 0)) {lcd_pwr(); asm CLRWDT; }
 }
 return;
}

void show_reset() {
 atu_reset();
 SW = 1;
 set_sw(SW);
 EEPROM_Write(255, 0);
 EEPROM_Write(254, 0);
 EEPROM_Write(253, 1);
 EEPROM_Write(252, 0);
 EEPROM_Write(251, 0);
 lcd_ind();
 Loss_mode = 0;
 p_Tx = 0;
 n_Tx = 1;
 SWR = 0;
 PWR = 0;
 SWR_fixed_old = 0;
 if(type==4 | type==5) {
 led_wr_str (2, 16, "RESET   ", 8);
 asm CLRWDT;
 delay_ms(600);
 led_wr_str (2, 16, "SWR=0.00", 8);
 asm CLRWDT;
 }
 else if(type!=0) {
 led_wr_str (1, 0, "RESET   ", 8);
 asm CLRWDT;
 delay_ms(600);
 led_wr_str (1, 0, "SWR=0.00", 8);
 asm CLRWDT;
 }
 else {
 LATB.B6 = 1;
 LATB.B7 = 1;
 }
 SWR_old = 10000;
 Power_old = 10000;
 lcd_pwr();
 return;
}

void btn_push() {
 asm CLRWDT;
 if(type==4 | type==5) {
 led_wr_str (2, 16+12*4, "TUNE", 4);
 }
 else if(type!=0) {
 led_wr_str (1, 4, "TUNE", 4);
 }
 else {
 LATB.B6 = 1;
 LATB.B7 = 1;
 }
 tune();
 if(type==0) {
 if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; }
 else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;}
 else { PORTB.B6 = 1; PORTB.B7 = 0; }
 }
 else if(Loss_mode==0 | Loss_ind==0) lcd_ind();
 EEPROM_Write(255, cap);
 EEPROM_Write(254, ind);
 EEPROM_Write(253, SW);
 EEPROM_Write(252, swr_a/256);
 EEPROM_Write(251, swr_a%256);
 SWR_old = 10000;
 Power_old = 10000;
 lcd_pwr();
 SWR_fixed_old = SWR;
 p_Tx = 0;
 n_Tx = 1;
 asm CLRWDT;
 return;
}


 void lcd_prep() {
 asm CLRWDT;
 if(type==4 |type==5){
 if(lcd_prep_short==0) {
 led_wr_str (0, 22, "ATU-100", 7);
 led_wr_str (2, 6, "EXT board", 9);
 led_wr_str (4, 16, "by N7DDC", 8);
 led_wr_str (6, 4, "FW ver 3.1", 10);
 asm CLRWDT;
 Delay_ms(600);
 asm CLRWDT;
 Delay_ms(500);
 asm CLRWDT;
 led_wr_str (0, 16, "        ", 8);
 led_wr_str (2, 4, "          ", 10);
 led_wr_str (4, 16, "        ", 8);
 led_wr_str (6, 4, "          ", 10);
 }
 Delay_ms(150);
 if(P_High==1) led_wr_str (0, 16, "PWR=  0W", 8);
 else led_wr_str (0, 16, "PWR=0.0W", 8);
 led_wr_str (2, 16, "SWR=0.00", 8);
 if(Auto) led_wr_str (0, 16+8*12, ".", 1);
 }
 else if(type!=0) {
 if(lcd_prep_short==0) {
 led_wr_str (0, 4, "ATU-100", 7);
 led_wr_str (1, 3, "EXT board", 9);
 asm CLRWDT;
 Delay_ms(700);
 asm CLRWDT;
 Delay_ms(500);
 asm CLRWDT;
 led_wr_str (0, 4, "by N7DDC", 8);
 led_wr_str (1, 3, "FW ver 3.1", 10);
 asm CLRWDT;
 Delay_ms(600);
 asm CLRWDT;
 Delay_ms(500);
 asm CLRWDT;
 led_wr_str (0, 4, "        ", 8);
 led_wr_str (1, 3, "          ", 10);
 }
 Delay_ms(150);
 if(P_High==1) led_wr_str (0, 0, "PWR=  0W", 8);
 else led_wr_str (0, 0, "PWR=0.0W", 8);
 led_wr_str (1, 0, "SWR=0.00", 8);
 if(Auto) led_wr_str (0, 8, ".", 1);
 }
 asm CLRWDT;
 lcd_ind();
 return;
}


void lcd_swr(int swr) {
 asm CLRWDT;
 if(swr!=SWR_old) {
 SWR_old = swr;
 if(swr==1) {
 if(type==4 | type==5) led_wr_str (2, 16+4*12, "0.00", 4);
 else if(type!=0) led_wr_str (1, 4, "0.00", 4);
 else if(type==0) {
 LATB.B6 = 1;
 LATB.B7 = 1;
 }
 SWR_old = 0;
 }
 else {
 SWR_old = swr;
 IntToStr(swr, work_str);
 work_str_2[0] = work_str[3];
 work_str_2[1] = '.';
 work_str_2[2] = work_str[4];
 work_str_2[3] = work_str[5];
 if(type==4 | type==5) led_wr_str (2, 16+4*12, work_str_2, 4);
 else if(type!=0) led_wr_str (1, 4, work_str_2, 4);
 else if(type==0) {
 if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; }
 else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;}
 else { PORTB.B6 = 1; PORTB.B7 = 0; }
 }
 }
 }
 asm CLRWDT;
 return;
}


void button_delay() {
 if((Button(&PORTB, 0, 25, 0)) | (Button(&PORTB, 1, 25, 0)) | (Button(&PORTB, 2, 25, 0))) {
 but = 1;
 }
 return;
}

void show_pwr(int Power, int SWR) {
 int p_ant, eff;
 float a, b;
 a = 100;
 asm CLRWDT;

 if(Test==0 & Loss_ind==1 & SWR>=100) {
 if(Loss_mode==0) {
 if(type==4 |type==5){
 if(P_High==1) led_wr_str(4, 16, "ANT=  0W", 8);
 else led_wr_str(4, 16, "ANT=0.0W", 8);
 led_wr_str(6, 16, "EFF=  0%", 8);
 }
 else if(type==2 | type==3) {
 if(P_High==1) led_wr_str (0, 9, "ANT=  0W", 8);
 else led_wr_str (0, 9, "ANT=0.0W", 8);
 led_wr_str (1, 9, "EFF=  0%", 8);
 }
 else if(type==1) {
 if(P_High==1) led_wr_str (0, 9, "AN=  0W", 7);
 else led_wr_str (0, 9, "AN=0.0W", 7);
 led_wr_str (1, 9, "EFF= 0%", 7);
 }
 }
 Loss_mode = 1;
 }
 else {
 if(Loss_mode==1) lcd_ind();
 Loss_mode = 0;
 }
 asm CLRWDT;
 if(Power != Power_old) {
 Power_old = Power;

 if(P_High==0) {
 if(Power >= 100) {
 Power += 5;
 IntToStr(Power, work_str);
 work_str_2[0] = work_str[2];
 work_str_2[1] = work_str[3];
 work_str_2[2] = work_str[4];
 work_str_2[3] = 'W';
 }
 else {
 IntToStr(Power, work_str);
 if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
 work_str_2[1] = '.';
 if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
 work_str_2[3] = 'W';
 }
 }
 else {
 if(Power<999){
 IntToStr(Power, work_str);
 work_str_2[0] = work_str[3];
 work_str_2[1] = work_str[4];
 work_str_2[2] = work_str[5];
 work_str_2[3] = 'W';
 }
 else {
 IntToStr(Power, work_str);
 work_str_2[0] = work_str[2];
 work_str_2[1] = work_str[3];
 work_str_2[2] = work_str[4];
 work_str_2[3] = work_str[5];
 }
 }
 if(type==4 | type==5) led_wr_str (0, 16+4*12, work_str_2, 4);
 else if(type!=0) led_wr_str (0, 4, work_str_2, 4);

 asm CLRWDT;

 if(Loss_mode==1) {
 if(ind==0 & cap==0) swr_a = SWR;
 a = 1.0 / ((swr_a/100.0 + 100.0/swr_a) * Fid_loss/10.0 * 0.115 + 1.0);
 b = 4.0 / (2.0 + SWR/100.0 + 100.0/SWR);
 if(a>=1.0) a = 1.0;
 if(b>=1.0) b = 1.0;
 p_ant = Power * a * b;
 eff = a * b * 100;
 if(eff>=100) eff = 99;

 if(P_High==0) {
 if(p_ant >= 100) {
 p_ant += 5;
 IntToStr(p_ant, work_str);
 work_str_2[0] = work_str[2];
 work_str_2[1] = work_str[3];
 work_str_2[2] = work_str[4];
 work_str_2[3] = 'W';
 }
 else {
 IntToStr(p_ant, work_str);
 if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
 work_str_2[1] = '.';
 if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
 work_str_2[3] = 'W';
 }
 }
 else {
 if(p_ant<999){
 IntToStr(p_ant, work_str);
 work_str_2[0] = work_str[3];
 work_str_2[1] = work_str[4];
 work_str_2[2] = work_str[5];
 work_str_2[3] = 'W';
 }
 else {
 IntToStr(p_ant, work_str);
 work_str_2[0] = work_str[2];
 work_str_2[1] = work_str[3];
 work_str_2[2] = work_str[4];
 work_str_2[3] = work_str[5];
 }
 }
 if(type==4 | type==5) led_wr_str (4, 16+4*12, work_str_2, 4);
 else if(type==2 | type==3) led_wr_str (0, 13, work_str_2, 4);
 else if(type!=0) led_wr_str (0, 12, work_str_2, 4);

 IntToStr(eff, work_str);
 work_str_2[0] = work_str[4];
 work_str_2[1] = work_str[5];
 if(type==4 | type==5) led_wr_str(6, 16+5*12, work_str_2, 2);
 else if(type==2 | type==3) led_wr_str(1, 14, work_str_2, 2);
 else if(type==1) led_wr_str(1, 13, work_str_2, 2);
 }
 }
 asm CLRWDT;
 return;
}

void lcd_pwr() {
 int p = 0;
 char peak_cnt;
 int delta = Auto_delta - 100;
 char cnt;
 int SWR_fixed = 1;
 PWR = 0;
 asm CLRWDT;

 cnt = 120;
 for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
 if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
 get_pwr();
 if(PWR>p) {p = PWR; SWR_fixed = SWR;}
 Delay_ms(3);
 }
 asm CLRWDT;
 Power = p;
 lcd_swr(SWR_fixed);
 if(SWR_fixed>=100) {
 dysp_on();
 dysp_cnt = Dysp_delay * dysp_cnt_mult;
 }

 if(Auto & SWR_fixed>=Auto_delta & ((SWR_fixed>SWR_fixed_old & (SWR_fixed-SWR_fixed_old)>delta) | (SWR_fixed<SWR_fixed_old & (SWR_fixed_old-SWR_fixed)>delta) | SWR_fixed_old==999))
 Soft_tune = 1;

 if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
 show_pwr(Power, SWR_fixed);

 if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
 asm CLRWDT;
 if(Overload==1) {
 if(type==4 | type==5) {
 led_wr_str (2, 16, "        ", 8);
 delay_ms(100);
 led_wr_str (2, 16, "OVERLOAD", 8);
 delay_ms(500);
 asm CLRWDT;
 led_wr_str (2, 16, "        ", 8);
 delay_ms(300);
 asm CLRWDT;
 led_wr_str (2, 16, "OVERLOAD", 8);
 delay_ms(500);
 asm CLRWDT;
 led_wr_str (2, 16, "        ", 8);
 delay_ms(300);
 asm CLRWDT;
 led_wr_str (2, 16, "OVERLOAD", 8);
 delay_ms(500);
 asm CLRWDT;
 led_wr_str (2, 16, "        ", 8);
 delay_ms(100);
 led_wr_str (2, 16, "SWR=    ", 8);
 }
 else if(type!=0) {
 led_wr_str (1, 0, "        ", 8);
 delay_ms(100);
 led_wr_str (1, 0, "OVERLOAD", 8);
 delay_ms(500);
 asm CLRWDT;
 led_wr_str (1, 0, "        ", 8);
 delay_ms(300);
 asm CLRWDT;
 led_wr_str (1, 0, "OVERLOAD", 8);
 delay_ms(500);
 asm CLRWDT;
 led_wr_str (1, 0, "        ", 8);
 delay_ms(300);
 asm CLRWDT;
 led_wr_str (1, 0, "OVERLOAD", 8);
 delay_ms(500);
 asm CLRWDT;
 led_wr_str (1, 0, "        ", 8);
 delay_ms(100);
 led_wr_str (1, 0, "SWR=    ", 8);
 }
 asm CLRWDT;
 SWR_old = 10000;
 lcd_swr(SWR_fixed);
 }
 return;
}

void lcd_ind() {
 char column;
 asm CLRWDT;
 if(1) {
 work_int = 0;
 if(ind.B0) work_int += Ind1;
 if(ind.B1) work_int += Ind2;
 if(ind.B2) work_int += Ind3;
 if(ind.B3) work_int += Ind4;
 if(ind.B4) work_int += Ind5;
 if(ind.B5) work_int += Ind6;
 if(ind.B6) work_int += Ind7;
 if(work_int>9999) {
 work_int += 50;
 IntToStr(work_int, work_str);
 work_str_2[0] = work_str[1];
 work_str_2[1] = work_str[2];
 work_str_2[2] = '.';
 work_str_2[3] = work_str[3];
 }
 else {
 IntToStr(work_int, work_str);
 if(work_str[2] != ' ') work_str_2[0] = work_str[2]; else work_str_2[0] = '0';
 work_str_2[1] = '.';
 if(work_str[3] != ' ') work_str_2[2] = work_str[3]; else work_str_2[2] = '0';
 if(work_str[4] != ' ') work_str_2[3] = work_str[4]; else work_str_2[3] = '0';
 }
 if(type==4 | type==5) {
 if(SW==1) column = 4; else column = 6;
 led_wr_str (column, 16, "L=", 2);
 led_wr_str (column, 16+6*12, "uH", 2);
 led_wr_str (column, 16+2*12, work_str_2, 4);
 }
 else if(type==2 | type==3) {
 if(SW==1) column = 0; else column = 1;
 led_wr_str (column, 9, "L=", 2);
 led_wr_str (column, 15, "uH", 2);
 led_wr_str (column, 11, work_str_2, 4);
 }
 else if(type==1) {
 if(SW==1) column = 0; else column = 1;
 led_wr_str (column, 9, "L=", 2);
 led_wr_str (column, 15, "u", 1);
 led_wr_str (column, 11, work_str_2, 4);
 }
 }
 asm CLRWDT;
 if(1) {
 work_int = 0;
 if(cap.B0) work_int += Cap1;
 if(cap.B1) work_int += Cap2;
 if(cap.B2) work_int += Cap3;
 if(cap.B3) work_int += Cap4;
 if(cap.B4) work_int += Cap5;
 if(cap.B5) work_int += Cap6;
 if(cap.B6) work_int += Cap7;
 IntToStr(work_int, work_str);
 work_str_2[0] = work_str[2];
 work_str_2[1] = work_str[3];
 work_str_2[2] = work_str[4];
 work_str_2[3] = work_str[5];

 if(type==4 | type==5) {
 if(SW==1) column = 6; else column = 4;
 led_wr_str (column, 16, "C=", 2);
 led_wr_str (column, 16+6*12, "pF", 2);
 led_wr_str (column, 16+2*12, work_str_2, 4);
 }
 else if(type==2 | type==3) {
 if(SW==1) column = 1; else column = 0;
 led_wr_str (column, 9, "C=", 2);
 led_wr_str (column, 15, "pF", 2);
 led_wr_str (column, 11, work_str_2, 4);
 }
 else if(type==1) {
 if(SW==1) column = 1; else column = 0;
 led_wr_str (column, 9, "C=", 2);
 led_wr_str (column, 15, "p", 1);
 led_wr_str (column, 11, work_str_2, 4);
 }
 }
 asm CLRWDT;
 return;
}


void Test_init(void) {
 if(type==4 | type==5)
 led_wr_str (0, 10, "TEST MODE", 9);
 else if(type!=0)
 led_wr_str (0, 3, "TEST MODE", 9);
 asm CLRWDT;
 Delay_ms(500);
 asm CLRWDT;
 Delay_ms(500);
 asm CLRWDT;
 Delay_ms(500);
 asm CLRWDT;
 Delay_ms(500);
 asm CLRWDT;
 if(type==4 | type==5)
 led_wr_str (0, 10, "         ", 9);
 else if(type!=0)
 led_wr_str (0, 3, "         ", 9);
 atu_reset();
 SW = 1;
 set_sw(SW);
 EEPROM_Write(255, cap);
 EEPROM_Write(254, ind);
 EEPROM_Write(253, SW);

 if(type==4 | type==5)
 led_wr_str (0, 16+12*8, "l", 1);
 else if(type!=0)
 led_wr_str (0, 8, "l", 1);

 lcd_prep_short = 1;
 lcd_prep();
 return;
}


void cells_init(void) {

 asm CLRWDT;

 type = EEPROM_Read(1);
 if(EEPROM_Read(2) == 1) Auto = 1;
 Rel_Del = Bcd2Dec(EEPROM_Read(3));
 Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10;
 min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10;
 max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10;


 max_swr = Bcd2Dec(EEPROM_Read(9)) * 10;
 L_q = EEPROM_Read(10);
 L_linear = EEPROM_Read(11);
 C_q = EEPROM_Read(12);
 C_linear = EEPROM_Read(13);
 D_correction = EEPROM_Read(14);
 L_invert = EEPROM_Read(15);

 asm CLRWDT;
 Ind1 = Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17));
 Ind2 = Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19));
 Ind3 = Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21));
 Ind4 = Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23));
 Ind5 = Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25));
 Ind6 = Bcd2Dec(EEPROM_Read(26)) * 100 + Bcd2Dec(EEPROM_Read(27));
 Ind7 = Bcd2Dec(EEPROM_Read(28)) * 100 + Bcd2Dec(EEPROM_Read(29));

 Cap1 = Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33));
 Cap2 = Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35));
 Cap3 = Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37));
 Cap4 = Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39));
 Cap5 = Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41));
 Cap6 = Bcd2Dec(EEPROM_Read(42)) * 100 + Bcd2Dec(EEPROM_Read(43));
 Cap7 = Bcd2Dec(EEPROM_Read(44)) * 100 + Bcd2Dec(EEPROM_Read(45));

 P_High = EEPROM_Read(0x30);
 K_Mult = Bcd2Dec(EEPROM_Read(0x31));
 Dysp_delay = Bcd2Dec(EEPROM_Read(0x32));
 Loss_ind = EEPROM_Read(0x33);
 Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
 asm CLRWDT;
 return;

}

void show_loss(void) {
 IntToStr(Fid_loss, work_str);
 if(Fid_loss>=10) work_str_2[0] = work_str[4];
 else work_str_2[0] = '0';
 work_str_2[1] = '.';
 work_str_2[2] = work_str[5];
 if(type==4 | type==5) led_wr_str (2, 6, work_str_2, 3);
 else if(type!=0) led_wr_str (1, 3, work_str_2, 3);
 return;
}
