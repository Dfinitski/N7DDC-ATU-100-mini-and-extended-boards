// Connections
//
sbit n_Tx at LATA6_bit;
sbit p_Tx at LATA7_bit;
//
//sbit Button at RB0_bit;
//sbit BYP_button at RB2_bit;
//sbit Auto_button at RB1_bit;
//
sbit Cap_10  at LATC7_bit;
sbit Cap_22  at LATC3_bit;
sbit Cap_47  at LATC6_bit;
sbit Cap_100 at LATC2_bit;
sbit Cap_220 at LATC5_bit;
sbit Cap_470 at LATC1_bit;
sbit Cap_1000 at LATC4_bit;
sbit Cap_sw  at LATC0_bit;
//
sbit Ind_005 at LATB3_bit;
sbit Ind_011 at LATA2_bit;
sbit Ind_022 at LATB4_bit;
sbit Ind_045 at LATA3_bit;
sbit Ind_1   at LATB5_bit;
sbit Ind_22  at LATA5_bit;
sbit Ind_45  at LATA4_bit;
//
void pic_init (void);

/*
void lcd_prep() {
   asm CLRWDT;
   if(type==4 |type==5){   // 128*64 OLED

      Delay_ms(150);
      if(P_High==1) led_wr_str (0, 16, "PWR=  0W", 8);
      else  led_wr_str (0, 16, "PWR=0.0W", 8);
      led_wr_str (2, 16, "SWR=0.00", 8);
      if(Test==1 | Loss_ind==0) {led_wr_str(4, 16, "L=0.00uH", 8); led_wr_str(6, 16, "C=   0pF", 8);   }
      else if(Test==0 & Loss_ind==1) {  // Loss ind
         if(P_High==1) led_wr_str(4, 16, "ANT=  0W", 8);
         else led_wr_str(4, 16, "ANT=0.0W", 8);
         led_wr_str(6, 16, "EFF=  0%", 8);
      }
      if(Auto) led_wr_str (0, 16+8*12, ".", 1);
   }
   else if(type!=0) {   // 1602 LCD & 128*32 OLED

      Delay_ms(150);
      if(P_High==1) led_wr_str (0, 0, "PWR=  0W", 8);
      else led_wr_str (0, 0, "PWR=0.0W", 8);
      led_wr_str (1, 0, "SWR=0.00", 8);
      if(type==1) {   // 1602 LCD
         if(Test==1 | Loss_ind==0) {led_wr_str (0, 9, "L=0.00u", 7); led_wr_str (1, 9, "C=   0p", 7);  }
         else if(Test==0 & Loss_ind==1){  // Loss ind
            if(P_High==1) led_wr_str (0, 9, "AN=  0W", 7);
            else led_wr_str (0, 9, "AN=0.0W", 7);
            led_wr_str (1, 9, "EFF= 0%", 7);
         }
      }
      else {  // 128*32 OLED
         if(Test==1 | Loss_ind==0) { led_wr_str (0, 9, "L=0.00uH", 8); led_wr_str (1, 9, "C=   0pF", 8);   }
         else if(Test==0 & Loss_ind==1) {
            if(P_High==1) led_wr_str (0, 9, "ANT=  0W", 8);
            else led_wr_str (0, 9, "ANT=0.0W", 8);
            led_wr_str (1, 9, "EFF=  0%", 8);
         }
      }
      if(Auto) led_wr_str (0, 8, ".", 1);
   }
   asm CLRWDT;
   if(lcd_prep_short==1) {
      ind_old = 0;
      cap_old = 0;
      if(Loss_ind==0) lcd_ind();
   }
   return;
}
*/


