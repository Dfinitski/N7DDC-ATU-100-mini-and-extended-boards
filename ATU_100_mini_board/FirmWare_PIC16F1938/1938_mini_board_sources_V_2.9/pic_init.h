// Connections
//
sbit Low at LATC0_bit;
sbit Mid at LATC6_bit;
sbit High at LATC7_bit;
sbit n_Tx at LATA3_bit;
sbit p_Tx at LATA7_bit;
//
//sbit Button at RB0_bit;
//sbit BYP_button at RB5_bit;
//sbit Auto_button at RB4_bit;
//
sbit Cap_10  at LATC1_bit;
sbit Cap_22  at LATC2_bit;
sbit Cap_47  at LATC3_bit;
sbit Cap_100 at LATC4_bit;
sbit Cap_220 at LATC5_bit;
sbit Cap_sw  at LATA6_bit;
//
sbit Ind_011 at LATB1_bit;
sbit Ind_022 at LATB2_bit;
sbit Ind_045 at LATA2_bit;
sbit Ind_1   at LATA4_bit;
sbit Ind_22  at LATA5_bit;
//
void pic_init (void);