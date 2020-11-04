
_led_send:

;oled_control.c,6 :: 		void led_send (char nible) {
;oled_control.c,8 :: 		sdata = 0;
	CLRF       led_send_sdata_L0+0
;oled_control.c,9 :: 		RW = 0; E = 1;
	CLRF       oled_control_RW+0
	MOVLW      1
	MOVWF      oled_control_E+0
;oled_control.c,10 :: 		sdata = sdata + nible;
	MOVF       FARG_led_send_nible+0, 0
	MOVWF      led_send_sdata_L0+0
;oled_control.c,11 :: 		sdata = sdata << 4;
	LSLF       led_send_sdata_L0+0, 1
	LSLF       led_send_sdata_L0+0, 1
	LSLF       led_send_sdata_L0+0, 1
	LSLF       led_send_sdata_L0+0, 1
;oled_control.c,12 :: 		if(LED) sdata = sdata + 8;
	MOVF       oled_control_LED+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_led_send0
	MOVLW      8
	ADDWF      led_send_sdata_L0+0, 1
L_led_send0:
;oled_control.c,13 :: 		if(E) sdata = sdata + 4;
	MOVF       oled_control_E+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_led_send1
	MOVLW      4
	ADDWF      led_send_sdata_L0+0, 1
L_led_send1:
;oled_control.c,14 :: 		if(RW) sdata = sdata + 2;
	MOVF       oled_control_RW+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_led_send2
	MOVLW      2
	ADDWF      led_send_sdata_L0+0, 1
L_led_send2:
;oled_control.c,15 :: 		if(RS) sdata = sdata + 1;
	MOVF       oled_control_RS+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_led_send3
	INCF       led_send_sdata_L0+0, 1
L_led_send3:
;oled_control.c,17 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;oled_control.c,18 :: 		Soft_I2C_Write(led_addr);         // device addres
	MOVF       oled_control_led_addr+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,19 :: 		Soft_I2C_Write(sdata);              //
	MOVF       led_send_sdata_L0+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,20 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;oled_control.c,21 :: 		delay_ms(1);
	MOVLW      6
	MOVWF      R12
	MOVLW      48
	MOVWF      R13
L_led_send4:
	DECFSZ     R13, 1
	GOTO       L_led_send4
	DECFSZ     R12, 1
	GOTO       L_led_send4
	NOP
;oled_control.c,22 :: 		sdata = sdata - 4;  // E = 0
	MOVLW      4
	SUBWF      led_send_sdata_L0+0, 1
;oled_control.c,23 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;oled_control.c,24 :: 		Soft_I2C_Write(led_addr);         // device addres
	MOVF       oled_control_led_addr+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,25 :: 		Soft_I2C_Write(sdata);              //
	MOVF       led_send_sdata_L0+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,26 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;oled_control.c,27 :: 		delay_ms(1);
	MOVLW      6
	MOVWF      R12
	MOVLW      48
	MOVWF      R13
L_led_send5:
	DECFSZ     R13, 1
	GOTO       L_led_send5
	DECFSZ     R12, 1
	GOTO       L_led_send5
	NOP
;oled_control.c,28 :: 		}
L_end_led_send:
	RETURN
; end of _led_send

_led_init:

;oled_control.c,30 :: 		void led_init (void) {
;oled_control.c,31 :: 		led_type = EEPROM_read(1);
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      oled_control_led_type+0
;oled_control.c,32 :: 		shift_line = EEPROM_read(7);
	MOVLW      7
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      oled_control_shift_line+0
;oled_control.c,33 :: 		oled_shift = EEPROM_read(8);
	MOVLW      8
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      oled_control_oled_shift+0
;oled_control.c,34 :: 		if(led_type!=1) oled_init();   //    OLED
	MOVF       oled_control_led_type+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_led_init6
	CALL       _oled_init+0
	GOTO       L_led_init7
L_led_init6:
;oled_control.c,36 :: 		LED = 1;
	MOVLW      1
	MOVWF      oled_control_LED+0
;oled_control.c,37 :: 		RS = 0;  // Command
	CLRF       oled_control_RS+0
;oled_control.c,39 :: 		led_send(3);
	MOVLW      3
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,40 :: 		delay_ms(5);
	MOVLW      26
	MOVWF      R12
	MOVLW      248
	MOVWF      R13
L_led_init8:
	DECFSZ     R13, 1
	GOTO       L_led_init8
	DECFSZ     R12, 1
	GOTO       L_led_init8
	NOP
;oled_control.c,41 :: 		led_send(3);
	MOVLW      3
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,42 :: 		delay_ms(1);
	MOVLW      6
	MOVWF      R12
	MOVLW      48
	MOVWF      R13
L_led_init9:
	DECFSZ     R13, 1
	GOTO       L_led_init9
	DECFSZ     R12, 1
	GOTO       L_led_init9
	NOP
;oled_control.c,43 :: 		led_send(3);
	MOVLW      3
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,44 :: 		led_send(2);
	MOVLW      2
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,46 :: 		led_send(2);
	MOVLW      2
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,47 :: 		led_send(8); //
	MOVLW      8
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,49 :: 		led_send(0);
	CLRF       FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,50 :: 		led_send(8);   // LCD OFF
	MOVLW      8
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,52 :: 		led_send(0);
	CLRF       FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,53 :: 		led_send(1);   // LCD clear
	MOVLW      1
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,54 :: 		delay_ms(5);
	MOVLW      26
	MOVWF      R12
	MOVLW      248
	MOVWF      R13
L_led_init10:
	DECFSZ     R13, 1
	GOTO       L_led_init10
	DECFSZ     R12, 1
	GOTO       L_led_init10
	NOP
;oled_control.c,56 :: 		led_send(0);
	CLRF       FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,57 :: 		led_send(4 + 2);  // I/D, S
	MOVLW      6
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,59 :: 		led_send(0);
	CLRF       FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,60 :: 		led_send(8 + 4 + 0 + 0);  // LCD ON, Cursor, Blink Cursor
	MOVLW      12
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,61 :: 		}
L_led_init7:
;oled_control.c,62 :: 		}
L_end_led_init:
	RETURN
; end of _led_init

_oled_init:

;oled_control.c,64 :: 		void oled_init (void) {  // OLED init
;oled_control.c,66 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;oled_control.c,67 :: 		Soft_I2C_Write(led_addr);             // device addres
	MOVF       oled_control_led_addr+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,68 :: 		Soft_I2C_Write(0);              // 0 - continious mode, command; 64 - Co, data
	CLRF       FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,69 :: 		Soft_I2C_Write (0xAE); // display OFF
	MOVLW      174
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,71 :: 		if(led_type==2 | led_type==3) { // 128*32 OLED
	MOVF       oled_control_led_type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       oled_control_led_type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_oled_init11
;oled_control.c,72 :: 		Soft_I2C_Write (0xD5); // clock division
	MOVLW      213
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,73 :: 		Soft_I2C_Write (0x80); // ratio
	MOVLW      128
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,75 :: 		Soft_I2C_Write (0xA8); //  multiplexer
	MOVLW      168
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,76 :: 		Soft_I2C_Write (0x3f); //
	MOVLW      63
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,78 :: 		Soft_I2C_Write (0xD3); //  offset
	MOVLW      211
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,79 :: 		if(led_type==2) Soft_I2C_Write (0 + shift_line); // column shift
	MOVF       oled_control_led_type+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_oled_init12
	MOVF       oled_control_shift_line+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
	GOTO       L_oled_init13
L_oled_init12:
;oled_control.c,80 :: 		else Soft_I2C_Write (31 + shift_line); // column shift
	MOVF       oled_control_shift_line+0, 0
	ADDLW      31
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
L_oled_init13:
;oled_control.c,82 :: 		Soft_I2C_Write (0x40); // set line, line = 0
	MOVLW      64
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,84 :: 		Soft_I2C_Write (0x8D); //  charge pump
	MOVLW      141
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,85 :: 		Soft_I2C_Write (0x14); //  0x10 - external, 0x14 - internal
	MOVLW      20
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,87 :: 		Soft_I2C_Write (0x81); //  contrast
	MOVLW      129
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,88 :: 		Soft_I2C_Write (180); //   0-255
	MOVLW      180
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,90 :: 		Soft_I2C_Write (0xD9); //  pre-charge
	MOVLW      217
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,91 :: 		Soft_I2C_Write (0x22); //  0x22 - external, 0xF1 - internal
	MOVLW      34
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,93 :: 		Soft_I2C_Write (0x20); //  memory addressing mode
	MOVLW      32
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,94 :: 		Soft_I2C_Write (0x02); //  page addressing mode
	MOVLW      2
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,96 :: 		Soft_I2C_Write (0x21); // set column range
	MOVLW      33
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,97 :: 		Soft_I2C_Write (0);    // column start
	CLRF       FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,98 :: 		Soft_I2C_Write (127);  // column stop
	MOVLW      127
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,100 :: 		Soft_I2C_Write (0x2E); //  stop scrolling
	MOVLW      46
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,102 :: 		if(led_type==2) {
	MOVF       oled_control_led_type+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_oled_init14
;oled_control.c,103 :: 		Soft_I2C_Write (0xA0); //  segment re-map, A0 - normal, A1 - remapped
	MOVLW      160
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,105 :: 		Soft_I2C_Write (0xC0); // scan direction, C0 - normal, C8 - remapped
	MOVLW      192
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,106 :: 		}
	GOTO       L_oled_init15
L_oled_init14:
;oled_control.c,108 :: 		Soft_I2C_Write (0xA1); //  segment re-map, A0 - normal, A1 - remapped
	MOVLW      161
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,110 :: 		Soft_I2C_Write (0xC8); // scan direction, C0 - normal, C8 - remapped
	MOVLW      200
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,111 :: 		}
L_oled_init15:
;oled_control.c,113 :: 		Soft_I2C_Write (0xDA); //  COM pins configure
	MOVLW      218
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,114 :: 		Soft_I2C_Write (0x02); // 12 for x64
	MOVLW      2
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,116 :: 		Soft_I2C_Write (0xDB); //  V-COM detect
	MOVLW      219
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,117 :: 		Soft_I2C_Write (0x40); //
	MOVLW      64
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,119 :: 		}
	GOTO       L_oled_init16
L_oled_init11:
;oled_control.c,121 :: 		Soft_I2C_Write (0xD5); // clock division
	MOVLW      213
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,122 :: 		Soft_I2C_Write (0x80); // ratio
	MOVLW      128
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,124 :: 		Soft_I2C_Write (0xA8); //  multiplexer
	MOVLW      168
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,125 :: 		Soft_I2C_Write (63); //
	MOVLW      63
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,127 :: 		Soft_I2C_Write (0xD3); //  offset
	MOVLW      211
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,128 :: 		Soft_I2C_Write (shift_line); // no offset for x64 !
	MOVF       oled_control_shift_line+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,130 :: 		Soft_I2C_Write (0x40); // set line, line = 0
	MOVLW      64
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,132 :: 		Soft_I2C_Write (0x8D); //  charge pump
	MOVLW      141
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,133 :: 		Soft_I2C_Write (0x14); //  0x10 - external, 0x14 - internal
	MOVLW      20
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,135 :: 		Soft_I2C_Write (0x81); //  contrast
	MOVLW      129
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,136 :: 		Soft_I2C_Write (255); //   0-255
	MOVLW      255
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,138 :: 		Soft_I2C_Write (0xD9); //  pre-charge
	MOVLW      217
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,139 :: 		Soft_I2C_Write (0xf1); //  0x22 - external, 0xF1 - internal
	MOVLW      241
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,141 :: 		Soft_I2C_Write (0x20); //  memory addressing mode
	MOVLW      32
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,142 :: 		Soft_I2C_Write (0x02); //  page addressing mode   02
	MOVLW      2
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,144 :: 		Soft_I2C_Write (0x21); // set column range
	MOVLW      33
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,145 :: 		Soft_I2C_Write (0);    // column start
	CLRF       FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,146 :: 		Soft_I2C_Write (127);  // column stop
	MOVLW      127
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,148 :: 		Soft_I2C_Write (0x2E); //  stop scrolling
	MOVLW      46
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,150 :: 		if(led_type==4) {
	MOVF       oled_control_led_type+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_oled_init17
;oled_control.c,151 :: 		Soft_I2C_Write (0xA0); //  segment re-map, A0 - normal, A1 - remapped
	MOVLW      160
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,153 :: 		Soft_I2C_Write (0xC0); // scan direction, C0 - normal, C8 - remapped
	MOVLW      192
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,154 :: 		}
	GOTO       L_oled_init18
L_oled_init17:
;oled_control.c,156 :: 		Soft_I2C_Write (0xA1); //  segment re-map, A0 - normal, A1 - remapped
	MOVLW      161
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,158 :: 		Soft_I2C_Write (0xC8); // scan direction, C0 - normal, C8 - remapped
	MOVLW      200
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,159 :: 		}
L_oled_init18:
;oled_control.c,161 :: 		Soft_I2C_Write (0xDA); //  COM pins configure
	MOVLW      218
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,162 :: 		Soft_I2C_Write (0x12); // 12 for x64
	MOVLW      18
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,164 :: 		Soft_I2C_Write (0xDB); //  V-COM detect
	MOVLW      219
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,165 :: 		Soft_I2C_Write (0x40); //
	MOVLW      64
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,166 :: 		}
L_oled_init16:
;oled_control.c,167 :: 		Soft_I2C_Write (0xA4); //  display entire ON
	MOVLW      164
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,169 :: 		Soft_I2C_Write (0xA6); // 0xA6 - normal, 0xA7 - inverse
	MOVLW      166
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,171 :: 		Soft_I2C_Stop ();
	CALL       _Soft_I2C_Stop+0
;oled_control.c,175 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_oled_init19:
	DECFSZ     R13, 1
	GOTO       L_oled_init19
	DECFSZ     R12, 1
	GOTO       L_oled_init19
	DECFSZ     R11, 1
	GOTO       L_oled_init19
;oled_control.c,176 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;oled_control.c,177 :: 		Soft_I2C_Write(led_addr);             // device addres
	MOVF       oled_control_led_addr+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,178 :: 		Soft_I2C_Write(64);              // 0 - continious mode, command; 64 - Co, data
	MOVLW      64
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,180 :: 		if(led_type==2 | led_type==3) {  // 128*32 OLED
	MOVF       oled_control_led_type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       oled_control_led_type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_oled_init20
;oled_control.c,181 :: 		for (r = 0; r <=3; r++) {
	CLRF       oled_init_r_L0+0
L_oled_init21:
	MOVF       oled_init_r_L0+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_oled_init22
;oled_control.c,182 :: 		set_addressing (r, 0);    // clear all 4 pages
	MOVF       oled_init_r_L0+0, 0
	MOVWF      FARG_set_addressing+0
	CLRF       FARG_set_addressing+0
	CALL       _set_addressing+0
;oled_control.c,183 :: 		for (i = 0; i < 128; i++, Soft_I2C_Write(0)); // clear one page pixels
	CLRF       oled_init_i_L0+0
L_oled_init24:
	MOVLW      128
	SUBWF      oled_init_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_oled_init25
	INCF       oled_init_i_L0+0, 1
	CLRF       FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
	GOTO       L_oled_init24
L_oled_init25:
;oled_control.c,181 :: 		for (r = 0; r <=3; r++) {
	INCF       oled_init_r_L0+0, 1
;oled_control.c,184 :: 		}
	GOTO       L_oled_init21
L_oled_init22:
;oled_control.c,185 :: 		}
	GOTO       L_oled_init27
L_oled_init20:
;oled_control.c,187 :: 		for (r = 0; r <=7; r++) {
	CLRF       oled_init_r_L0+0
L_oled_init28:
	MOVF       oled_init_r_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_oled_init29
;oled_control.c,188 :: 		set_addressing (r, 0);    // clear all 8 pages
	MOVF       oled_init_r_L0+0, 0
	MOVWF      FARG_set_addressing+0
	CLRF       FARG_set_addressing+0
	CALL       _set_addressing+0
;oled_control.c,189 :: 		for (i = 0; i < 128; i++, Soft_I2C_Write(0x00)); // clear one page pixels
	CLRF       oled_init_i_L0+0
L_oled_init31:
	MOVLW      128
	SUBWF      oled_init_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_oled_init32
	INCF       oled_init_i_L0+0, 1
	CLRF       FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
	GOTO       L_oled_init31
L_oled_init32:
;oled_control.c,187 :: 		for (r = 0; r <=7; r++) {
	INCF       oled_init_r_L0+0, 1
;oled_control.c,190 :: 		}
	GOTO       L_oled_init28
L_oled_init29:
;oled_control.c,192 :: 		}
L_oled_init27:
;oled_control.c,194 :: 		Soft_I2C_Stop ();
	CALL       _Soft_I2C_Stop+0
;oled_control.c,195 :: 		send_command (0xAF); //  display ON
	MOVLW      175
	MOVWF      FARG_send_command+0
	CALL       _send_command+0
;oled_control.c,198 :: 		}
L_end_oled_init:
	RETURN
; end of _oled_init

_dysp_on:

;oled_control.c,200 :: 		void dysp_on() {
;oled_control.c,201 :: 		if(led_type > 1) send_command(0xAF); //  display ON
	MOVF       oled_control_led_type+0, 0
	SUBLW      1
	BTFSC      STATUS+0, 0
	GOTO       L_dysp_on34
	MOVLW      175
	MOVWF      FARG_send_command+0
	CALL       _send_command+0
	GOTO       L_dysp_on35
L_dysp_on34:
;oled_control.c,202 :: 		else if(led_type==1) {
	MOVF       oled_control_led_type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_dysp_on36
;oled_control.c,203 :: 		LED = 1;
	MOVLW      1
	MOVWF      oled_control_LED+0
;oled_control.c,204 :: 		RS = 0;
	CLRF       oled_control_RS+0
;oled_control.c,205 :: 		led_send(0);
	CLRF       FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,206 :: 		led_send(0);
	CLRF       FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,207 :: 		}
L_dysp_on36:
L_dysp_on35:
;oled_control.c,208 :: 		}
L_end_dysp_on:
	RETURN
; end of _dysp_on

_dysp_off:

;oled_control.c,210 :: 		void dysp_off() {
;oled_control.c,211 :: 		if(led_type > 1) send_command(0xAE); // display OFF
	MOVF       oled_control_led_type+0, 0
	SUBLW      1
	BTFSC      STATUS+0, 0
	GOTO       L_dysp_off37
	MOVLW      174
	MOVWF      FARG_send_command+0
	CALL       _send_command+0
	GOTO       L_dysp_off38
L_dysp_off37:
;oled_control.c,212 :: 		else if(led_type==1) {
	MOVF       oled_control_led_type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_dysp_off39
;oled_control.c,213 :: 		LED = 0;
	CLRF       oled_control_LED+0
;oled_control.c,214 :: 		RS = 0;
	CLRF       oled_control_RS+0
;oled_control.c,215 :: 		led_send(0);
	CLRF       FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,216 :: 		led_send(0);
	CLRF       FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,217 :: 		}
L_dysp_off39:
L_dysp_off38:
;oled_control.c,218 :: 		}
L_end_dysp_off:
	RETURN
; end of _dysp_off

_send_command:

;oled_control.c,221 :: 		void send_command (char oled_command) {
;oled_control.c,222 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;oled_control.c,223 :: 		Soft_I2C_Write(led_addr);         // device addres
	MOVF       oled_control_led_addr+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,224 :: 		Soft_I2C_Write(128);              // 128 - command, 192 - data
	MOVLW      128
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,225 :: 		Soft_I2C_Write(oled_command);
	MOVF       FARG_send_command_oled_command+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,226 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;oled_control.c,227 :: 		}
L_end_send_command:
	RETURN
; end of _send_command

_set_addressing:

;oled_control.c,229 :: 		void set_addressing (char pagenum, char c_start) {
;oled_control.c,231 :: 		c = c_start + oled_shift;
	MOVF       oled_control_oled_shift+0, 0
	ADDWF      FARG_set_addressing_c_start+0, 0
	MOVWF      set_addressing_c_L0+0
;oled_control.c,232 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;oled_control.c,233 :: 		Soft_I2C_Write(led_addr);             // device addres
	MOVF       oled_control_led_addr+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,234 :: 		Soft_I2C_Write(0);              // 0 - continious mode, command; 64 - Co, data
	CLRF       FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,235 :: 		Soft_I2C_Write(0xB0 + pagenum);  // set page number
	MOVF       FARG_set_addressing_pagenum+0, 0
	ADDLW      176
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,237 :: 		if (c <= 15) { a = c; b = 0; }
	MOVF       set_addressing_c_L0+0, 0
	SUBLW      15
	BTFSS      STATUS+0, 0
	GOTO       L_set_addressing40
	MOVF       set_addressing_c_L0+0, 0
	MOVWF      set_addressing_a_L0+0
	CLRF       set_addressing_b_L0+0
	GOTO       L_set_addressing41
L_set_addressing40:
;oled_control.c,238 :: 		else { b = c / 16; a = c - b * 16; }
	MOVF       set_addressing_c_L0+0, 0
	MOVWF      R2
	LSRF       R2, 1
	LSRF       R2, 1
	LSRF       R2, 1
	LSRF       R2, 1
	MOVF       R2, 0
	MOVWF      set_addressing_b_L0+0
	MOVF       R2, 0
	MOVWF      R0
	LSLF       R0, 1
	LSLF       R0, 1
	LSLF       R0, 1
	LSLF       R0, 1
	MOVF       R0, 0
	SUBWF      set_addressing_c_L0+0, 0
	MOVWF      set_addressing_a_L0+0
L_set_addressing41:
;oled_control.c,239 :: 		Soft_I2C_Write (a);        // set lower nibble of start address
	MOVF       set_addressing_a_L0+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,240 :: 		Soft_I2C_Write (0x10 + b); // set higher nibble of start address
	MOVF       set_addressing_b_L0+0, 0
	ADDLW      16
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,242 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;oled_control.c,243 :: 		Soft_I2C_Write(led_addr);        // device addres
	MOVF       oled_control_led_addr+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,244 :: 		Soft_I2C_Write(64);              // 0 - continious mode, command; 64 - Co, data
	MOVLW      64
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,245 :: 		}
L_end_set_addressing:
	RETURN
; end of _set_addressing

_led_wr_str:

;oled_control.c,249 :: 		void led_wr_str (char col, char pos, char str[], char leng ) {  //
;oled_control.c,251 :: 		if(led_type==4 | led_type==5) oled_wr_str(pos, col, str, leng); // 128*64  OLED display
	MOVF       oled_control_led_type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       oled_control_led_type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_led_wr_str42
	MOVF       FARG_led_wr_str_pos+0, 0
	MOVWF      FARG_oled_wr_str+0
	MOVF       FARG_led_wr_str_col+0, 0
	MOVWF      FARG_oled_wr_str+0
	MOVF       FARG_led_wr_str_str+0, 0
	MOVWF      FARG_oled_wr_str+0
	MOVF       FARG_led_wr_str_str+1, 0
	MOVWF      FARG_oled_wr_str+1
	MOVF       FARG_led_wr_str_leng+0, 0
	MOVWF      FARG_oled_wr_str+0
	CALL       _oled_wr_str+0
	GOTO       L_led_wr_str43
L_led_wr_str42:
;oled_control.c,252 :: 		else if(led_type==2 | led_type==3) oled_wr_str(7*pos+4, col*2, str, leng); // 128*32   OLED display
	MOVF       oled_control_led_type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       oled_control_led_type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_led_wr_str44
	MOVLW      7
	MOVWF      R0
	MOVF       FARG_led_wr_str_pos+0, 0
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVLW      4
	ADDWF      R0, 0
	MOVWF      FARG_oled_wr_str+0
	MOVF       FARG_led_wr_str_col+0, 0
	MOVWF      FARG_oled_wr_str+0
	LSLF       FARG_oled_wr_str+0, 1
	MOVF       FARG_led_wr_str_str+0, 0
	MOVWF      FARG_oled_wr_str+0
	MOVF       FARG_led_wr_str_str+1, 0
	MOVWF      FARG_oled_wr_str+1
	MOVF       FARG_led_wr_str_leng+0, 0
	MOVWF      FARG_oled_wr_str+0
	CALL       _oled_wr_str+0
	GOTO       L_led_wr_str45
L_led_wr_str44:
;oled_control.c,255 :: 		RS = 0;
	CLRF       oled_control_RS+0
;oled_control.c,256 :: 		led_send(8 + col*4);
	MOVF       FARG_led_wr_str_col+0, 0
	MOVWF      R0
	LSLF       R0, 1
	LSLF       R0, 1
	MOVF       R0, 0
	ADDLW      8
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,257 :: 		led_send(pos);
	MOVF       FARG_led_wr_str_pos+0, 0
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,259 :: 		RS = 1;
	MOVLW      1
	MOVWF      oled_control_RS+0
;oled_control.c,260 :: 		for (i = 0; i < leng; i++) { // write string
	CLRF       led_wr_str_i_L0+0
L_led_wr_str46:
	MOVF       FARG_led_wr_str_leng+0, 0
	SUBWF      led_wr_str_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_led_wr_str47
;oled_control.c,262 :: 		led_send(str[i] >> 4);
	MOVF       led_wr_str_i_L0+0, 0
	ADDWF      FARG_led_wr_str_str+0, 0
	MOVWF      FSR0L
	MOVLW      0
	ADDWFC     FARG_led_wr_str_str+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R1
	MOVF       R1, 0
	MOVWF      FARG_led_send_nible+0
	LSRF       FARG_led_send_nible+0, 1
	LSRF       FARG_led_send_nible+0, 1
	LSRF       FARG_led_send_nible+0, 1
	LSRF       FARG_led_send_nible+0, 1
	CALL       _led_send+0
;oled_control.c,263 :: 		led_send(str[i]);
	MOVF       led_wr_str_i_L0+0, 0
	ADDWF      FARG_led_wr_str_str+0, 0
	MOVWF      FSR0L
	MOVLW      0
	ADDWFC     FARG_led_wr_str_str+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      FARG_led_send_nible+0
	CALL       _led_send+0
;oled_control.c,260 :: 		for (i = 0; i < leng; i++) { // write string
	INCF       led_wr_str_i_L0+0, 1
;oled_control.c,264 :: 		}
	GOTO       L_led_wr_str46
L_led_wr_str47:
;oled_control.c,266 :: 		}
L_led_wr_str45:
L_led_wr_str43:
;oled_control.c,267 :: 		}
L_end_led_wr_str:
	RETURN
; end of _led_wr_str

_oled_wr_str:

;oled_control.c,270 :: 		void oled_wr_str (char col, char page, char str[], char leng ) {  //    128*32 or 128*64 OLED
;oled_control.c,272 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;oled_control.c,273 :: 		Soft_I2C_Write(led_addr);       // device addres
	MOVF       oled_control_led_addr+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,274 :: 		Soft_I2C_Write(64);              // 0 - continious mode, command; 64 - Co, data
	MOVLW      64
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,276 :: 		set_addressing (page, col);
	MOVF       FARG_oled_wr_str_page+0, 0
	MOVWF      FARG_set_addressing_pagenum+0
	MOVF       FARG_oled_wr_str_col+0, 0
	MOVWF      FARG_set_addressing_c_start+0
	CALL       _set_addressing+0
;oled_control.c,278 :: 		for (i = 0; i < leng; i++) { // write string
	CLRF       oled_wr_str_i_L0+0
L_oled_wr_str49:
	MOVF       FARG_oled_wr_str_leng+0, 0
	SUBWF      oled_wr_str_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_oled_wr_str50
;oled_control.c,279 :: 		if (str[i] == 0) g = 0; else g = str[i] - 32; // NULL detection
	MOVF       oled_wr_str_i_L0+0, 0
	ADDWF      FARG_oled_wr_str_str+0, 0
	MOVWF      FSR0L
	MOVLW      0
	ADDWFC     FARG_oled_wr_str_str+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_oled_wr_str52
	CLRF       oled_wr_str_g_L0+0
	GOTO       L_oled_wr_str53
L_oled_wr_str52:
	MOVF       oled_wr_str_i_L0+0, 0
	ADDWF      FARG_oled_wr_str_str+0, 0
	MOVWF      FSR0L
	MOVLW      0
	ADDWFC     FARG_oled_wr_str_str+1, 0
	MOVWF      FSR0H
	MOVLW      32
	SUBWF      INDF0+0, 0
	MOVWF      oled_wr_str_g_L0+0
L_oled_wr_str53:
;oled_control.c,280 :: 		for (h = 0; h <= 4; h++) {  // write letter
	CLRF       oled_wr_str_h_L0+0
L_oled_wr_str54:
	MOVF       oled_wr_str_h_L0+0, 0
	SUBLW      4
	BTFSS      STATUS+0, 0
	GOTO       L_oled_wr_str55
;oled_control.c,281 :: 		w1 = font5x8[g*5+h];
	MOVF       oled_wr_str_g_L0+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       oled_wr_str_h_L0+0, 0
	ADDWF      R0, 1
	MOVLW      0
	ADDWFC     R1, 1
	MOVLW      oled_control_font5x8+0
	ADDWF      R0, 0
	MOVWF      FSR0L
	MOVLW      hi_addr(oled_control_font5x8+0)
	ADDWFC     R1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      oled_wr_str_w1_L0+0
;oled_control.c,282 :: 		if(page!=2 & page!=4 & page!=6) {
	MOVF       FARG_oled_wr_str_page+0, 0
	XORLW      2
	MOVLW      1
	BTFSC      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       FARG_oled_wr_str_page+0, 0
	XORLW      4
	MOVLW      1
	BTFSC      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      R1, 1
	MOVF       FARG_oled_wr_str_page+0, 0
	XORLW      6
	MOVLW      1
	BTFSC      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_oled_wr_str57
;oled_control.c,283 :: 		w2.B7 = w1.B3;
	BTFSC      oled_wr_str_w1_L0+0, 3
	GOTO       L__oled_wr_str103
	BCF        oled_wr_str_w2_L0+0, 7
	GOTO       L__oled_wr_str104
L__oled_wr_str103:
	BSF        oled_wr_str_w2_L0+0, 7
L__oled_wr_str104:
;oled_control.c,284 :: 		w2.B6 = w1.B3;
	BTFSC      oled_wr_str_w1_L0+0, 3
	GOTO       L__oled_wr_str105
	BCF        oled_wr_str_w2_L0+0, 6
	GOTO       L__oled_wr_str106
L__oled_wr_str105:
	BSF        oled_wr_str_w2_L0+0, 6
L__oled_wr_str106:
;oled_control.c,285 :: 		w2.B5 = w1.B2;
	BTFSC      oled_wr_str_w1_L0+0, 2
	GOTO       L__oled_wr_str107
	BCF        oled_wr_str_w2_L0+0, 5
	GOTO       L__oled_wr_str108
L__oled_wr_str107:
	BSF        oled_wr_str_w2_L0+0, 5
L__oled_wr_str108:
;oled_control.c,286 :: 		w2.B4 = w1.B2;
	BTFSC      oled_wr_str_w1_L0+0, 2
	GOTO       L__oled_wr_str109
	BCF        oled_wr_str_w2_L0+0, 4
	GOTO       L__oled_wr_str110
L__oled_wr_str109:
	BSF        oled_wr_str_w2_L0+0, 4
L__oled_wr_str110:
;oled_control.c,287 :: 		w2.B3 = w1.B1;
	BTFSC      oled_wr_str_w1_L0+0, 1
	GOTO       L__oled_wr_str111
	BCF        oled_wr_str_w2_L0+0, 3
	GOTO       L__oled_wr_str112
L__oled_wr_str111:
	BSF        oled_wr_str_w2_L0+0, 3
L__oled_wr_str112:
;oled_control.c,288 :: 		w2.B2 = w1.B1;
	BTFSC      oled_wr_str_w1_L0+0, 1
	GOTO       L__oled_wr_str113
	BCF        oled_wr_str_w2_L0+0, 2
	GOTO       L__oled_wr_str114
L__oled_wr_str113:
	BSF        oled_wr_str_w2_L0+0, 2
L__oled_wr_str114:
;oled_control.c,289 :: 		w2.B1 = w1.B0;
	BTFSC      oled_wr_str_w1_L0+0, 0
	GOTO       L__oled_wr_str115
	BCF        oled_wr_str_w2_L0+0, 1
	GOTO       L__oled_wr_str116
L__oled_wr_str115:
	BSF        oled_wr_str_w2_L0+0, 1
L__oled_wr_str116:
;oled_control.c,290 :: 		w2.B0 = w1.B0; }
	BTFSC      oled_wr_str_w1_L0+0, 0
	GOTO       L__oled_wr_str117
	BCF        oled_wr_str_w2_L0+0, 0
	GOTO       L__oled_wr_str118
L__oled_wr_str117:
	BSF        oled_wr_str_w2_L0+0, 0
L__oled_wr_str118:
	GOTO       L_oled_wr_str58
L_oled_wr_str57:
;oled_control.c,292 :: 		w2.B7 = w1.B2;
	BTFSC      oled_wr_str_w1_L0+0, 2
	GOTO       L__oled_wr_str119
	BCF        oled_wr_str_w2_L0+0, 7
	GOTO       L__oled_wr_str120
L__oled_wr_str119:
	BSF        oled_wr_str_w2_L0+0, 7
L__oled_wr_str120:
;oled_control.c,293 :: 		w2.B6 = w1.B2;
	BTFSC      oled_wr_str_w1_L0+0, 2
	GOTO       L__oled_wr_str121
	BCF        oled_wr_str_w2_L0+0, 6
	GOTO       L__oled_wr_str122
L__oled_wr_str121:
	BSF        oled_wr_str_w2_L0+0, 6
L__oled_wr_str122:
;oled_control.c,294 :: 		w2.B5 = w1.B1;
	BTFSC      oled_wr_str_w1_L0+0, 1
	GOTO       L__oled_wr_str123
	BCF        oled_wr_str_w2_L0+0, 5
	GOTO       L__oled_wr_str124
L__oled_wr_str123:
	BSF        oled_wr_str_w2_L0+0, 5
L__oled_wr_str124:
;oled_control.c,295 :: 		w2.B4 = w1.B1;
	BTFSC      oled_wr_str_w1_L0+0, 1
	GOTO       L__oled_wr_str125
	BCF        oled_wr_str_w2_L0+0, 4
	GOTO       L__oled_wr_str126
L__oled_wr_str125:
	BSF        oled_wr_str_w2_L0+0, 4
L__oled_wr_str126:
;oled_control.c,296 :: 		w2.B3 = w1.B0;
	BTFSC      oled_wr_str_w1_L0+0, 0
	GOTO       L__oled_wr_str127
	BCF        oled_wr_str_w2_L0+0, 3
	GOTO       L__oled_wr_str128
L__oled_wr_str127:
	BSF        oled_wr_str_w2_L0+0, 3
L__oled_wr_str128:
;oled_control.c,297 :: 		w2.B2 = w1.B0;
	BTFSC      oled_wr_str_w1_L0+0, 0
	GOTO       L__oled_wr_str129
	BCF        oled_wr_str_w2_L0+0, 2
	GOTO       L__oled_wr_str130
L__oled_wr_str129:
	BSF        oled_wr_str_w2_L0+0, 2
L__oled_wr_str130:
;oled_control.c,298 :: 		w2.B1 = 0;
	BCF        oled_wr_str_w2_L0+0, 1
;oled_control.c,299 :: 		w2.B0 = 0;
	BCF        oled_wr_str_w2_L0+0, 0
;oled_control.c,300 :: 		}
L_oled_wr_str58:
;oled_control.c,301 :: 		Soft_I2C_Write(w2);
	MOVF       oled_wr_str_w2_L0+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,302 :: 		if(led_type==4 | led_type==5) Soft_I2C_Write(w2);   // 128*64
	MOVF       oled_control_led_type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       oled_control_led_type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_oled_wr_str59
	MOVF       oled_wr_str_w2_L0+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
L_oled_wr_str59:
;oled_control.c,280 :: 		for (h = 0; h <= 4; h++) {  // write letter
	INCF       oled_wr_str_h_L0+0, 1
;oled_control.c,303 :: 		}
	GOTO       L_oled_wr_str54
L_oled_wr_str55:
;oled_control.c,304 :: 		Soft_I2C_Write (0);
	CLRF       FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,305 :: 		Soft_I2C_Write (0);
	CLRF       FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,278 :: 		for (i = 0; i < leng; i++) { // write string
	INCF       oled_wr_str_i_L0+0, 1
;oled_control.c,307 :: 		}
	GOTO       L_oled_wr_str49
L_oled_wr_str50:
;oled_control.c,308 :: 		set_addressing (page+1, col);
	INCF       FARG_oled_wr_str_page+0, 0
	MOVWF      FARG_set_addressing_pagenum+0
	MOVF       FARG_oled_wr_str_col+0, 0
	MOVWF      FARG_set_addressing_c_start+0
	CALL       _set_addressing+0
;oled_control.c,310 :: 		for (i = 0; i < leng; i++) { // write string
	CLRF       oled_wr_str_i_L0+0
L_oled_wr_str60:
	MOVF       FARG_oled_wr_str_leng+0, 0
	SUBWF      oled_wr_str_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_oled_wr_str61
;oled_control.c,311 :: 		if (str[i] == 0) g = 0; else g = str[i] - 32; // NULL detection
	MOVF       oled_wr_str_i_L0+0, 0
	ADDWF      FARG_oled_wr_str_str+0, 0
	MOVWF      FSR0L
	MOVLW      0
	ADDWFC     FARG_oled_wr_str_str+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_oled_wr_str63
	CLRF       oled_wr_str_g_L0+0
	GOTO       L_oled_wr_str64
L_oled_wr_str63:
	MOVF       oled_wr_str_i_L0+0, 0
	ADDWF      FARG_oled_wr_str_str+0, 0
	MOVWF      FSR0L
	MOVLW      0
	ADDWFC     FARG_oled_wr_str_str+1, 0
	MOVWF      FSR0H
	MOVLW      32
	SUBWF      INDF0+0, 0
	MOVWF      oled_wr_str_g_L0+0
L_oled_wr_str64:
;oled_control.c,312 :: 		for (h = 0; h <= 4; h++) {  // write letter
	CLRF       oled_wr_str_h_L0+0
L_oled_wr_str65:
	MOVF       oled_wr_str_h_L0+0, 0
	SUBLW      4
	BTFSS      STATUS+0, 0
	GOTO       L_oled_wr_str66
;oled_control.c,313 :: 		w1 = font5x8[g*5+h];
	MOVF       oled_wr_str_g_L0+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       oled_wr_str_h_L0+0, 0
	ADDWF      R0, 1
	MOVLW      0
	ADDWFC     R1, 1
	MOVLW      oled_control_font5x8+0
	ADDWF      R0, 0
	MOVWF      FSR0L
	MOVLW      hi_addr(oled_control_font5x8+0)
	ADDWFC     R1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      oled_wr_str_w1_L0+0
;oled_control.c,314 :: 		if(page!=2 & page!=4 & page!=6) {
	MOVF       FARG_oled_wr_str_page+0, 0
	XORLW      2
	MOVLW      1
	BTFSC      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       FARG_oled_wr_str_page+0, 0
	XORLW      4
	MOVLW      1
	BTFSC      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      R1, 1
	MOVF       FARG_oled_wr_str_page+0, 0
	XORLW      6
	MOVLW      1
	BTFSC      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_oled_wr_str68
;oled_control.c,315 :: 		w2.B7 = w1.B7;
	BTFSC      oled_wr_str_w1_L0+0, 7
	GOTO       L__oled_wr_str131
	BCF        oled_wr_str_w2_L0+0, 7
	GOTO       L__oled_wr_str132
L__oled_wr_str131:
	BSF        oled_wr_str_w2_L0+0, 7
L__oled_wr_str132:
;oled_control.c,316 :: 		w2.B6 = w1.B7;
	BTFSC      oled_wr_str_w1_L0+0, 7
	GOTO       L__oled_wr_str133
	BCF        oled_wr_str_w2_L0+0, 6
	GOTO       L__oled_wr_str134
L__oled_wr_str133:
	BSF        oled_wr_str_w2_L0+0, 6
L__oled_wr_str134:
;oled_control.c,317 :: 		w2.B5 = w1.B6;
	BTFSC      oled_wr_str_w1_L0+0, 6
	GOTO       L__oled_wr_str135
	BCF        oled_wr_str_w2_L0+0, 5
	GOTO       L__oled_wr_str136
L__oled_wr_str135:
	BSF        oled_wr_str_w2_L0+0, 5
L__oled_wr_str136:
;oled_control.c,318 :: 		w2.B4 = w1.B6;
	BTFSC      oled_wr_str_w1_L0+0, 6
	GOTO       L__oled_wr_str137
	BCF        oled_wr_str_w2_L0+0, 4
	GOTO       L__oled_wr_str138
L__oled_wr_str137:
	BSF        oled_wr_str_w2_L0+0, 4
L__oled_wr_str138:
;oled_control.c,319 :: 		w2.B3 = w1.B5;
	BTFSC      oled_wr_str_w1_L0+0, 5
	GOTO       L__oled_wr_str139
	BCF        oled_wr_str_w2_L0+0, 3
	GOTO       L__oled_wr_str140
L__oled_wr_str139:
	BSF        oled_wr_str_w2_L0+0, 3
L__oled_wr_str140:
;oled_control.c,320 :: 		w2.B2 = w1.B5;
	BTFSC      oled_wr_str_w1_L0+0, 5
	GOTO       L__oled_wr_str141
	BCF        oled_wr_str_w2_L0+0, 2
	GOTO       L__oled_wr_str142
L__oled_wr_str141:
	BSF        oled_wr_str_w2_L0+0, 2
L__oled_wr_str142:
;oled_control.c,321 :: 		w2.B1 = w1.B4;
	BTFSC      oled_wr_str_w1_L0+0, 4
	GOTO       L__oled_wr_str143
	BCF        oled_wr_str_w2_L0+0, 1
	GOTO       L__oled_wr_str144
L__oled_wr_str143:
	BSF        oled_wr_str_w2_L0+0, 1
L__oled_wr_str144:
;oled_control.c,322 :: 		w2.B0 = w1.B4; }
	BTFSC      oled_wr_str_w1_L0+0, 4
	GOTO       L__oled_wr_str145
	BCF        oled_wr_str_w2_L0+0, 0
	GOTO       L__oled_wr_str146
L__oled_wr_str145:
	BSF        oled_wr_str_w2_L0+0, 0
L__oled_wr_str146:
	GOTO       L_oled_wr_str69
L_oled_wr_str68:
;oled_control.c,324 :: 		w2.B7 = w1.B6;
	BTFSC      oled_wr_str_w1_L0+0, 6
	GOTO       L__oled_wr_str147
	BCF        oled_wr_str_w2_L0+0, 7
	GOTO       L__oled_wr_str148
L__oled_wr_str147:
	BSF        oled_wr_str_w2_L0+0, 7
L__oled_wr_str148:
;oled_control.c,325 :: 		w2.B6 = w1.B6;
	BTFSC      oled_wr_str_w1_L0+0, 6
	GOTO       L__oled_wr_str149
	BCF        oled_wr_str_w2_L0+0, 6
	GOTO       L__oled_wr_str150
L__oled_wr_str149:
	BSF        oled_wr_str_w2_L0+0, 6
L__oled_wr_str150:
;oled_control.c,326 :: 		w2.B5 = w1.B5;
	BTFSC      oled_wr_str_w1_L0+0, 5
	GOTO       L__oled_wr_str151
	BCF        oled_wr_str_w2_L0+0, 5
	GOTO       L__oled_wr_str152
L__oled_wr_str151:
	BSF        oled_wr_str_w2_L0+0, 5
L__oled_wr_str152:
;oled_control.c,327 :: 		w2.B4 = w1.B5;
	BTFSC      oled_wr_str_w1_L0+0, 5
	GOTO       L__oled_wr_str153
	BCF        oled_wr_str_w2_L0+0, 4
	GOTO       L__oled_wr_str154
L__oled_wr_str153:
	BSF        oled_wr_str_w2_L0+0, 4
L__oled_wr_str154:
;oled_control.c,328 :: 		w2.B3 = w1.B4;
	BTFSC      oled_wr_str_w1_L0+0, 4
	GOTO       L__oled_wr_str155
	BCF        oled_wr_str_w2_L0+0, 3
	GOTO       L__oled_wr_str156
L__oled_wr_str155:
	BSF        oled_wr_str_w2_L0+0, 3
L__oled_wr_str156:
;oled_control.c,329 :: 		w2.B2 = w1.B4;
	BTFSC      oled_wr_str_w1_L0+0, 4
	GOTO       L__oled_wr_str157
	BCF        oled_wr_str_w2_L0+0, 2
	GOTO       L__oled_wr_str158
L__oled_wr_str157:
	BSF        oled_wr_str_w2_L0+0, 2
L__oled_wr_str158:
;oled_control.c,330 :: 		w2.B1 = w1.B3;
	BTFSC      oled_wr_str_w1_L0+0, 3
	GOTO       L__oled_wr_str159
	BCF        oled_wr_str_w2_L0+0, 1
	GOTO       L__oled_wr_str160
L__oled_wr_str159:
	BSF        oled_wr_str_w2_L0+0, 1
L__oled_wr_str160:
;oled_control.c,331 :: 		w2.B0 = w1.B3;
	BTFSC      oled_wr_str_w1_L0+0, 3
	GOTO       L__oled_wr_str161
	BCF        oled_wr_str_w2_L0+0, 0
	GOTO       L__oled_wr_str162
L__oled_wr_str161:
	BSF        oled_wr_str_w2_L0+0, 0
L__oled_wr_str162:
;oled_control.c,332 :: 		}
L_oled_wr_str69:
;oled_control.c,333 :: 		Soft_I2C_Write(w2);
	MOVF       oled_wr_str_w2_L0+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,334 :: 		if(led_type==4 | led_type==5) Soft_I2C_Write(w2);  // 128*64
	MOVF       oled_control_led_type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       oled_control_led_type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_oled_wr_str70
	MOVF       oled_wr_str_w2_L0+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
L_oled_wr_str70:
;oled_control.c,312 :: 		for (h = 0; h <= 4; h++) {  // write letter
	INCF       oled_wr_str_h_L0+0, 1
;oled_control.c,335 :: 		}
	GOTO       L_oled_wr_str65
L_oled_wr_str66:
;oled_control.c,336 :: 		Soft_I2C_Write (0);
	CLRF       FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,337 :: 		Soft_I2C_Write (0);
	CLRF       FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;oled_control.c,310 :: 		for (i = 0; i < leng; i++) { // write string
	INCF       oled_wr_str_i_L0+0, 1
;oled_control.c,339 :: 		}
	GOTO       L_oled_wr_str60
L_oled_wr_str61:
;oled_control.c,340 :: 		Soft_I2C_Stop ();
	CALL       _Soft_I2C_Stop+0
;oled_control.c,341 :: 		}
L_end_oled_wr_str:
	RETURN
; end of _oled_wr_str

_Soft_I2C_Init:

;oled_control.c,344 :: 		void Soft_I2C_Init () {
;oled_control.c,345 :: 		led_addr = EEPROM_read(0);   //  4E,7E for 1602   or 78, 7A for OLED
	CLRF       FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      oled_control_led_addr+0
;oled_control.c,346 :: 		led_type = EEPROM_read(1);
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      oled_control_led_type+0
;oled_control.c,348 :: 		if(led_type==0) {
	MOVF       R0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_Soft_I2C_Init71
;oled_control.c,349 :: 		Soft_I2C_Scl_Direction = 0;
	BCF        TRISB6_bit+0, BitPos(TRISB6_bit+0)
;oled_control.c,350 :: 		Soft_I2C_Sda_Direction = 0;
	BCF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
;oled_control.c,351 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;oled_control.c,352 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;oled_control.c,353 :: 		}
	GOTO       L_Soft_I2C_Init72
L_Soft_I2C_Init71:
;oled_control.c,355 :: 		Soft_I2C_Scl_Direction = 1;
	BSF        TRISB6_bit+0, BitPos(TRISB6_bit+0)
;oled_control.c,356 :: 		Soft_I2C_Sda_Direction = 1;
	BSF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
;oled_control.c,357 :: 		Soft_I2C_Scl = 0;
	BCF        LATB6_bit+0, BitPos(LATB6_bit+0)
;oled_control.c,358 :: 		Soft_I2C_Sda = 0;
	BCF        LATB7_bit+0, BitPos(LATB7_bit+0)
;oled_control.c,359 :: 		}
L_Soft_I2C_Init72:
;oled_control.c,360 :: 		}
L_end_Soft_I2C_Init:
	RETURN
; end of _Soft_I2C_Init

_Soft_I2C_Start:

;oled_control.c,362 :: 		void Soft_I2C_Start () {
;oled_control.c,363 :: 		if(led_type!=0) {
	MOVF       oled_control_led_type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_Soft_I2C_Start73
;oled_control.c,364 :: 		Soft_I2C_Scl_Direction = 1;
	BSF        TRISB6_bit+0, BitPos(TRISB6_bit+0)
;oled_control.c,365 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Start74:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Start74
	NOP
;oled_control.c,366 :: 		Soft_I2C_Sda_Direction = 1;
	BSF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
;oled_control.c,367 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Start75:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Start75
	NOP
;oled_control.c,368 :: 		Soft_I2C_Sda_Direction = 0;
	BCF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
;oled_control.c,369 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Start76:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Start76
	NOP
;oled_control.c,370 :: 		Soft_I2C_Scl_Direction = 0;
	BCF        TRISB6_bit+0, BitPos(TRISB6_bit+0)
;oled_control.c,371 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Start77:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Start77
	NOP
;oled_control.c,372 :: 		}
L_Soft_I2C_Start73:
;oled_control.c,373 :: 		}
L_end_Soft_I2C_Start:
	RETURN
; end of _Soft_I2C_Start

_Soft_I2C_Write:

;oled_control.c,375 :: 		void Soft_I2C_Write (char d) {
;oled_control.c,377 :: 		if(led_type!=0) {
	MOVF       oled_control_led_type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_Soft_I2C_Write78
;oled_control.c,378 :: 		for(i=0; i<=7; i++) {
	CLRF       R1+0
L_Soft_I2C_Write79:
	MOVF       R1+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_Soft_I2C_Write80
;oled_control.c,379 :: 		if(d.B7==0) Soft_I2C_Sda_Direction = 0; else  Soft_I2C_Sda_Direction = 1;
	BTFSC      FARG_Soft_I2C_Write_d+0, 7
	GOTO       L_Soft_I2C_Write82
	BCF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
	GOTO       L_Soft_I2C_Write83
L_Soft_I2C_Write82:
	BSF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
L_Soft_I2C_Write83:
;oled_control.c,380 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Write84:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Write84
	NOP
;oled_control.c,381 :: 		Soft_I2C_Scl_Direction = 1;
	BSF        TRISB6_bit+0, BitPos(TRISB6_bit+0)
;oled_control.c,382 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Write85:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Write85
	NOP
;oled_control.c,383 :: 		Soft_I2C_Scl_Direction = 0;
	BCF        TRISB6_bit+0, BitPos(TRISB6_bit+0)
;oled_control.c,384 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Write86:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Write86
	NOP
;oled_control.c,385 :: 		d = d << 1;
	LSLF       FARG_Soft_I2C_Write_d+0, 1
;oled_control.c,378 :: 		for(i=0; i<=7; i++) {
	INCF       R1+0, 1
;oled_control.c,386 :: 		}
	GOTO       L_Soft_I2C_Write79
L_Soft_I2C_Write80:
;oled_control.c,388 :: 		Soft_I2C_Sda_Direction = 1; //ACK
	BSF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
;oled_control.c,389 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Write87:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Write87
	NOP
;oled_control.c,390 :: 		Soft_I2C_Scl_Direction = 1;
	BSF        TRISB6_bit+0, BitPos(TRISB6_bit+0)
;oled_control.c,391 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Write88:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Write88
	NOP
;oled_control.c,392 :: 		Soft_I2C_Scl_Direction = 0;
	BCF        TRISB6_bit+0, BitPos(TRISB6_bit+0)
;oled_control.c,393 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Write89:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Write89
	NOP
;oled_control.c,394 :: 		}
L_Soft_I2C_Write78:
;oled_control.c,395 :: 		}
L_end_Soft_I2C_Write:
	RETURN
; end of _Soft_I2C_Write

_Soft_I2C_Stop:

;oled_control.c,397 :: 		void Soft_I2C_Stop () {
;oled_control.c,398 :: 		if(led_type!=0) {
	MOVF       oled_control_led_type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_Soft_I2C_Stop90
;oled_control.c,399 :: 		Soft_I2C_Sda_Direction = 0;
	BCF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
;oled_control.c,400 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Stop91:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Stop91
	NOP
;oled_control.c,401 :: 		Soft_I2C_Scl_Direction = 1;
	BSF        TRISB6_bit+0, BitPos(TRISB6_bit+0)
;oled_control.c,402 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Stop92:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Stop92
	NOP
;oled_control.c,403 :: 		Soft_I2C_Sda_Direction = 1;
	BSF        TRISB7_bit+0, BitPos(TRISB7_bit+0)
;oled_control.c,404 :: 		Delay_us(5);
	MOVLW      6
	MOVWF      R13
L_Soft_I2C_Stop93:
	DECFSZ     R13, 1
	GOTO       L_Soft_I2C_Stop93
	NOP
;oled_control.c,405 :: 		}
L_Soft_I2C_Stop90:
;oled_control.c,406 :: 		}
L_end_Soft_I2C_Stop:
	RETURN
; end of _Soft_I2C_Stop
