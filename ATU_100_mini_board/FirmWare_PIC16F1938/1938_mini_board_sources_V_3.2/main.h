// Main.h
// David Fainitski
// ATU-100 project 2016

//
static char ind = 0, cap = 0, SW = 0, step_cap = 0, step_ind = 0, Overload = 0, Loss_ind = 0, K_mult = 10, Relay_off = 0;
static int Rel_Del, min_for_start, max_for_start, max_swr;
int SWR, PWR, P_max = 0, swr_a;
char rready = 0, p_cnt = 0;
//
void btn_push(void);
void lcd_prep(void);
void lcd_swr(int);
void lcd_pwr(void);
void lcd_ind(void);
void crypto(void);
void show_reset(void);
void show_pwr(int, int);
void cells_init(void);
void test_init(void);
void button_proc(void);
void button_proc_test(void);
void button_delay(void);
void show_loss(void);
//
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
//

 int correction(int input) {
     //
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
     else  input += 860;
     //
     return input;
}

//

int get_reverse() {
   int Reverse;
   FVRCON = 0b10000001; // ADC 1024 vmV Vref
   while(FVRCON.B6 == 0);
   Reverse = ADC_Get_Sample(1);
   if(Reverse <= 1000) return Reverse;
   FVRCON = 0b10000010; // ADC 2048 vmV Vref
   while(FVRCON.B6 == 0);
   Reverse = ADC_Get_Sample(1);
   if(Reverse <= 1000) return Reverse * 2;
   FVRCON = 0b10000011; // ADC 4096 vmV Vref
   while(FVRCON.B6 == 0);
   Reverse = ADC_Get_Sample(1);
   return Reverse * 4;
}
//

int get_forward() {
   int Forward;
   FVRCON = 0b10000001; // ADC 1024 vmV Vref
   while(FVRCON.B6 == 0);
   Forward = ADC_Get_Sample(0);
   if(Forward <= 1000){
      Overload = 0;
      return Forward;
   }
   FVRCON = 0b10000010; // ADC 2048 vmV Vref
   while(FVRCON.B6 == 0);
   Forward = ADC_Get_Sample(0);
   if(Forward <= 1000){
      Overload = 0;
      return Forward * 2;
   }
   FVRCON = 0b10000011; // ADC 4096 vmV Vref
   while(FVRCON.B6 == 0);
   Forward = ADC_Get_Sample(0);
   if(Forward > 1000) Overload = 1;
   else Overload = 0;
   return Forward * 4;
}

void get_pwr() {
   long Forward, Reverse;
   float p;
   asm CLRWDT;
   //
   Forward = get_forward();
   Reverse = get_reverse();
   p = correction(Forward * 3);
   //
   if(Reverse >= Forward)
      Forward = 999;
   else {
      Forward = ((Forward + Reverse) * 100) / (Forward - Reverse);
      if(Forward>999) Forward = 999;
   }
   //
   p = p * K_Mult / 1000.0;   // mV to Volts on Input
   p = p / 1.414;
   p = p * p / 5;               // 0 - 1510 (151.0 Watts)
   p = p + 0.5;    // rounding
   //
   PWR = p;
   if(Forward<100) SWR = 999;
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
   while(PWR<min_for_start | (PWR> max_for_start & max_for_start>0)) {  // waiting for good power
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
      //
      if(Button(&PORTB, 0, 5, 1)) rready = 1;
      if(rready==1 & Button(&PORTB, 0, 5, 0)) { //  press button  Tune
         show_reset();
         SWR = 0;
         return;
      }
   } //  good power
   return;
}

void set_ind(char Ind) {  // 0 - 31
   //
   Ind_011 = Ind.B0;
   Ind_022 = Ind.B1;
   Ind_045 = Ind.B2;
   Ind_1   = Ind.B3;
   Ind_22  = Ind.B4;
   //
   Vdelay_ms(Rel_Del);
}

void set_cap(char Cap) { // 0 - 31
   Cap_10  =  Cap.B0;
   Cap_22  =  Cap.B1;
   Cap_47  =  Cap.B2;
   Cap_100 =  Cap.B3;
   Cap_220 =  Cap.B4;
   //
   Vdelay_ms(Rel_Del);
}

void set_sw(char SW) {  // 0 - IN,  1 - OUT
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
   get_swr();
   min_swr = SWR + SWR/20;
   for(count=step; count<=31;) {
      set_cap(count);
      get_swr();
      if(SWR < min_swr) {
         min_swr = SWR + SWR/20;
         cap = count;
         step_cap = step;
         if(SWR<120) break;
         count += step;
         if(count==9) count = 8;
         else if(count==17) {count = 16; step = 4;}
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
      set_ind(count);
      coarse_cap();
      get_swr();
      if(SWR < min_swr) {
         min_swr = SWR + SWR/20;
         ind = count;
         mem_cap = cap;
         step_ind = step;
         mem_step_cap = step_cap;
         if(SWR<120) break;
         count += step;
         if(count==9) count = 8;
         else if(count==17) {count = 16; step = 4;}
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
   range = step_cap;
   //
   max_range = cap + range;
   if(max_range>31) max_range = 31;
   if(cap>range) min_range = cap - range; else min_range = 0;
   cap = min_range;
   set_cap(cap);
   get_swr();
   if(SWR==0) return;
   min_SWR = SWR;
   for(count=min_range+1; count<=max_range; count++)  {
      set_cap(count);
      get_swr();
      if(SWR==0) return;
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
   range = step_ind;
   //
   max_range = ind + range;
   if(max_range>31) max_range = 31;
   if(ind>range) min_range = ind - range; else min_range = 0;
   ind = min_range;
   set_ind(ind);
   get_swr();
   if(SWR==0) return;
   min_SWR = SWR;
   for(count=min_range+1; count<=max_range; count++) {
      set_ind(count);
      get_swr();
      if(SWR==0) return;
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


void tune() {
   int swr_mem, ind_mem, cap_mem;
   asm CLRWDT;
   rready = 0;
   P_max = 0;
   p_cnt = 0;
   get_swr(); 
   if(SWR<110) return;
   atu_reset();
   if(Loss_ind==0) lcd_ind();
   Delay_ms(50);
   get_swr();
   swr_a = SWR;
   if(SWR<110) return;
   if(max_swr>110 & SWR>max_swr) return;
   //
   swr_mem = SWR;
   coarse_tune(); if(SWR==0) {atu_reset(); return;}
   get_swr(); if(SWR<120) return;
   sharp_ind();  if(SWR==0) {atu_reset(); return;}
   get_swr(); if(SWR<120) return;
   sharp_cap(); if(SWR==0) {atu_reset(); return;}
   get_swr(); if(SWR<120) return;
   //
   if(SWR<200 & SWR<swr_mem & (swr_mem-SWR)>100) return;
   swr_mem = SWR;
   ind_mem = ind;
   cap_mem = cap;
   //
   if(SW==1) SW = 0; else SW = 1;
   atu_reset();
   set_sw(SW);
   Delay_ms(50);
   get_swr(); if(SWR<120) return;
   //
   coarse_tune(); if(SWR==0) {atu_reset(); return;}
   get_swr(); if(SWR<120) return;
   sharp_ind(); if(SWR==0) {atu_reset(); return;}
   get_swr(); if(SWR<120) return;
   sharp_cap(); if(SWR==0) {atu_reset(); return;}
   get_swr(); if(SWR<120) return;
   //
   if(SWR>swr_mem) {
      if(SW==1) SW = 0; else SW = 1;
      set_sw(SW);
      ind = ind_mem;
      cap = cap_mem;
      set_ind(ind);
      set_cap(cap);
      SWR = swr_mem;
   }
   //
   asm CLRWDT;
   return;
}