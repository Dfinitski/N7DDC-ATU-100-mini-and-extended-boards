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
