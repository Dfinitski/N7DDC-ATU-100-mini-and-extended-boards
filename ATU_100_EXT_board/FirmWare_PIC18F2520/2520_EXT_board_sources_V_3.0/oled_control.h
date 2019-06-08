// Software I2C connections
//
sbit Soft_I2C_Scl           at LATB6_bit;
sbit Soft_I2C_Sda           at LATB7_bit;
sbit Soft_I2C_Scl_Direction at TRISB6_bit;
sbit Soft_I2C_Sda_Direction at TRISB7_bit;
//
static char RS, RW, E, LED, nible;

static char led_addr, led_type;
static char shift_line;

static char oled_shift;
//
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
//

void Soft_I2C_Init (void);
void Soft_I2C_Start (void);
void Soft_I2C_Write (char);
void Soft_I2C_Stop (void);