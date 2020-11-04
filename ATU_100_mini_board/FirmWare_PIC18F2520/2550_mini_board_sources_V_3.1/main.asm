
_correction:

;main.h,40 :: 		int correction(int input) {
;main.h,41 :: 		input *= 3; // Devider compensation
	MOVF        FARG_correction_input+0, 0 
	MOVWF       R0 
	MOVF        FARG_correction_input+1, 0 
	MOVWF       R1 
	MOVLW       3
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_correction_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_correction_input+1 
;main.h,43 :: 		if(input <= 80) return 0;
	MOVLW       128
	MOVWF       R2 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction445
	MOVF        R0, 0 
	SUBLW       80
L__correction445:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction0
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_correction
L_correction0:
;main.h,44 :: 		if(input <= 171) input += 244;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction446
	MOVF        FARG_correction_input+0, 0 
	SUBLW       171
L__correction446:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction1
	MOVLW       244
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       0
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction2
L_correction1:
;main.h,45 :: 		else if(input <= 328) input += 254;
	MOVLW       128
	XORLW       1
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction447
	MOVF        FARG_correction_input+0, 0 
	SUBLW       72
L__correction447:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction3
	MOVLW       254
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       0
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction4
L_correction3:
;main.h,46 :: 		else if(input <= 582) input += 280;
	MOVLW       128
	XORLW       2
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction448
	MOVF        FARG_correction_input+0, 0 
	SUBLW       70
L__correction448:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction5
	MOVLW       24
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction6
L_correction5:
;main.h,47 :: 		else if(input <= 820) input += 297;
	MOVLW       128
	XORLW       3
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction449
	MOVF        FARG_correction_input+0, 0 
	SUBLW       52
L__correction449:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction7
	MOVLW       41
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction8
L_correction7:
;main.h,48 :: 		else if(input <= 1100) input += 310;
	MOVLW       128
	XORLW       4
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction450
	MOVF        FARG_correction_input+0, 0 
	SUBLW       76
L__correction450:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction9
	MOVLW       54
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction10
L_correction9:
;main.h,49 :: 		else if(input <= 2181) input += 430;
	MOVLW       128
	XORLW       8
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction451
	MOVF        FARG_correction_input+0, 0 
	SUBLW       133
L__correction451:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction11
	MOVLW       174
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction12
L_correction11:
;main.h,50 :: 		else if(input <= 3322) input += 484;
	MOVLW       128
	XORLW       12
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction452
	MOVF        FARG_correction_input+0, 0 
	SUBLW       250
L__correction452:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction13
	MOVLW       228
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction14
L_correction13:
;main.h,51 :: 		else if(input <= 4623) input += 530;
	MOVLW       128
	XORLW       18
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction453
	MOVF        FARG_correction_input+0, 0 
	SUBLW       15
L__correction453:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction15
	MOVLW       18
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction16
L_correction15:
;main.h,52 :: 		else if(input <= 5862) input += 648;
	MOVLW       128
	XORLW       22
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction454
	MOVF        FARG_correction_input+0, 0 
	SUBLW       230
L__correction454:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction17
	MOVLW       136
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction18
L_correction17:
;main.h,53 :: 		else if(input <= 7146) input += 743;
	MOVLW       128
	XORLW       27
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction455
	MOVF        FARG_correction_input+0, 0 
	SUBLW       234
L__correction455:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction19
	MOVLW       231
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction20
L_correction19:
;main.h,54 :: 		else if(input <= 8502) input += 820;
	MOVLW       128
	XORLW       33
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction456
	MOVF        FARG_correction_input+0, 0 
	SUBLW       54
L__correction456:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction21
	MOVLW       52
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction22
L_correction21:
;main.h,55 :: 		else if(input <= 10500) input += 900;
	MOVLW       128
	XORLW       41
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction457
	MOVF        FARG_correction_input+0, 0 
	SUBLW       4
L__correction457:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction23
	MOVLW       132
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction24
L_correction23:
;main.h,56 :: 		else  input += 850;
	MOVLW       82
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
L_correction24:
L_correction22:
L_correction20:
L_correction18:
L_correction16:
L_correction14:
L_correction12:
L_correction10:
L_correction8:
L_correction6:
L_correction4:
L_correction2:
;main.h,59 :: 		return input;
	MOVF        FARG_correction_input+0, 0 
	MOVWF       R0 
	MOVF        FARG_correction_input+1, 0 
	MOVWF       R1 
;main.h,60 :: 		}
L_end_correction:
	RETURN      0
; end of _correction

_get_reverse:

;main.h,64 :: 		int get_reverse() {
;main.h,65 :: 		return ADC_Get_Sample(1) * 4.883;
	MOVLW       1
	MOVWF       FARG_ADC_Get_Sample_channel+0 
	CALL        _ADC_Get_Sample+0, 0
	CALL        _word2double+0, 0
	MOVLW       137
	MOVWF       R4 
	MOVLW       65
	MOVWF       R5 
	MOVLW       28
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
;main.h,66 :: 		}
L_end_get_reverse:
	RETURN      0
; end of _get_reverse

_get_forward:

;main.h,69 :: 		int get_forward() {
;main.h,71 :: 		Forward = ADC_Get_Sample(0);
	CLRF        FARG_ADC_Get_Sample_channel+0 
	CALL        _ADC_Get_Sample+0, 0
	MOVF        R0, 0 
	MOVWF       get_forward_Forward_L0+0 
	MOVF        R1, 0 
	MOVWF       get_forward_Forward_L0+1 
;main.h,72 :: 		if(Forward==1023) Overload = 1;
	MOVF        R1, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__get_forward460
	MOVLW       255
	XORWF       R0, 0 
L__get_forward460:
	BTFSS       STATUS+0, 2 
	GOTO        L_get_forward25
	MOVLW       1
	MOVWF       main_Overload+0 
	GOTO        L_get_forward26
L_get_forward25:
;main.h,73 :: 		else Overload = 0;
	CLRF        main_Overload+0 
L_get_forward26:
;main.h,74 :: 		return Forward * 4.883;
	MOVF        get_forward_Forward_L0+0, 0 
	MOVWF       R0 
	MOVF        get_forward_Forward_L0+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVLW       137
	MOVWF       R4 
	MOVLW       65
	MOVWF       R5 
	MOVLW       28
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
;main.h,75 :: 		}
L_end_get_forward:
	RETURN      0
; end of _get_forward

_get_pwr:

;main.h,77 :: 		void get_pwr() {
;main.h,80 :: 		asm CLRWDT;
	CLRWDT
;main.h,82 :: 		Forward = get_forward();
	CALL        _get_forward+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_Forward_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_Forward_L0+1 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	MOVWF       get_pwr_Forward_L0+2 
	MOVWF       get_pwr_Forward_L0+3 
;main.h,83 :: 		Reverse = get_reverse();
	CALL        _get_reverse+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_Reverse_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_Reverse_L0+1 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	MOVWF       get_pwr_Reverse_L0+2 
	MOVWF       get_pwr_Reverse_L0+3 
;main.h,84 :: 		p = correction(Forward);
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       FARG_correction_input+0 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       FARG_correction_input+1 
	CALL        _correction+0, 0
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
;main.h,86 :: 		if(Reverse >= Forward)
	MOVLW       128
	XORWF       get_pwr_Reverse_L0+3, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       get_pwr_Forward_L0+3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr462
	MOVF        get_pwr_Forward_L0+2, 0 
	SUBWF       get_pwr_Reverse_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr462
	MOVF        get_pwr_Forward_L0+1, 0 
	SUBWF       get_pwr_Reverse_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr462
	MOVF        get_pwr_Forward_L0+0, 0 
	SUBWF       get_pwr_Reverse_L0+0, 0 
L__get_pwr462:
	BTFSS       STATUS+0, 0 
	GOTO        L_get_pwr27
;main.h,87 :: 		Forward = 999;
	MOVLW       231
	MOVWF       get_pwr_Forward_L0+0 
	MOVLW       3
	MOVWF       get_pwr_Forward_L0+1 
	MOVLW       0
	MOVWF       get_pwr_Forward_L0+2 
	MOVWF       get_pwr_Forward_L0+3 
	GOTO        L_get_pwr28
L_get_pwr27:
;main.h,89 :: 		Forward = ((Forward + Reverse) * 100) / (Forward - Reverse);
	MOVF        get_pwr_Reverse_L0+0, 0 
	ADDWF       get_pwr_Forward_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_Reverse_L0+1, 0 
	ADDWFC      get_pwr_Forward_L0+1, 0 
	MOVWF       R1 
	MOVF        get_pwr_Reverse_L0+2, 0 
	ADDWFC      get_pwr_Forward_L0+2, 0 
	MOVWF       R2 
	MOVF        get_pwr_Reverse_L0+3, 0 
	ADDWFC      get_pwr_Forward_L0+3, 0 
	MOVWF       R3 
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVWF       R6 
	MOVWF       R7 
	CALL        _Mul_32x32_U+0, 0
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       R4 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       R5 
	MOVF        get_pwr_Forward_L0+2, 0 
	MOVWF       R6 
	MOVF        get_pwr_Forward_L0+3, 0 
	MOVWF       R7 
	MOVF        get_pwr_Reverse_L0+0, 0 
	SUBWF       R4, 1 
	MOVF        get_pwr_Reverse_L0+1, 0 
	SUBWFB      R5, 1 
	MOVF        get_pwr_Reverse_L0+2, 0 
	SUBWFB      R6, 1 
	MOVF        get_pwr_Reverse_L0+3, 0 
	SUBWFB      R7, 1 
	CALL        _Div_32x32_S+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_Forward_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_Forward_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_Forward_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_Forward_L0+3 
;main.h,90 :: 		if(Forward>999) Forward = 999;
	MOVLW       128
	MOVWF       R4 
	MOVLW       128
	XORWF       R3, 0 
	SUBWF       R4, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr463
	MOVF        R2, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr463
	MOVF        R1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr463
	MOVF        R0, 0 
	SUBLW       231
L__get_pwr463:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_pwr29
	MOVLW       231
	MOVWF       get_pwr_Forward_L0+0 
	MOVLW       3
	MOVWF       get_pwr_Forward_L0+1 
	MOVLW       0
	MOVWF       get_pwr_Forward_L0+2 
	MOVWF       get_pwr_Forward_L0+3 
L_get_pwr29:
;main.h,91 :: 		}
L_get_pwr28:
;main.h,93 :: 		p = p * K_mult / 1000;   // mV to Volts
	MOVF        main_K_mult+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R4 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R5 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R6 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       122
	MOVWF       R6 
	MOVLW       136
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
;main.h,94 :: 		p = p / 1.414;
	MOVLW       244
	MOVWF       R4 
	MOVLW       253
	MOVWF       R5 
	MOVLW       52
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
;main.h,95 :: 		p = p * p / 5;
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
;main.h,96 :: 		p = p + 0.5;    // rounding to 0.1 W
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       126
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
;main.h,97 :: 		PWR = p;   // 0 - 1510 (151.0 Watts)
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _PWR+0 
	MOVF        R1, 0 
	MOVWF       _PWR+1 
;main.h,98 :: 		if(PWR<10) SWR = 1;
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr464
	MOVLW       10
	SUBWF       R0, 0 
L__get_pwr464:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_pwr30
	MOVLW       1
	MOVWF       _SWR+0 
	MOVLW       0
	MOVWF       _SWR+1 
	GOTO        L_get_pwr31
L_get_pwr30:
;main.h,99 :: 		else if(Forward<100) SWR = 999;
	MOVLW       128
	XORWF       get_pwr_Forward_L0+3, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr465
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr465
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr465
	MOVLW       100
	SUBWF       get_pwr_Forward_L0+0, 0 
L__get_pwr465:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_pwr32
	MOVLW       231
	MOVWF       _SWR+0 
	MOVLW       3
	MOVWF       _SWR+1 
	GOTO        L_get_pwr33
L_get_pwr32:
;main.h,100 :: 		else SWR = Forward;
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       _SWR+0 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       _SWR+1 
L_get_pwr33:
L_get_pwr31:
;main.h,101 :: 		return;
;main.h,102 :: 		}
L_end_get_pwr:
	RETURN      0
; end of _get_pwr

_get_swr:

;main.h,104 :: 		int get_swr() {
;main.h,105 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.h,106 :: 		if(p_cnt!=100) {
	MOVF        _p_cnt+0, 0 
	XORLW       100
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr34
;main.h,107 :: 		p_cnt += 1;
	INCF        _p_cnt+0, 1 
;main.h,108 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW       128
	XORWF       _P_max+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr467
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr467:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_swr35
	MOVF        _PWR+0, 0 
	MOVWF       _P_max+0 
	MOVF        _PWR+1, 0 
	MOVWF       _P_max+1 
L_get_swr35:
;main.h,109 :: 		}
	GOTO        L_get_swr36
L_get_swr34:
;main.h,111 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,112 :: 		show_pwr(P_max, SWR);
	MOVF        _P_max+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _P_max+1, 0 
	MOVWF       FARG_show_pwr+1 
	MOVF        _SWR+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _SWR+1, 0 
	MOVWF       FARG_show_pwr+1 
	CALL        _show_pwr+0, 0
;main.h,113 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,114 :: 		}
L_get_swr36:
;main.h,116 :: 		while((PWR<min_for_start | (PWR> max_for_start & max_for_start>0))) {  // waiting for good power
L_get_swr37:
	MOVLW       128
	XORWF       _PWR+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       main_min_for_start+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr468
	MOVF        main_min_for_start+0, 0 
	SUBWF       _PWR+0, 0 
L__get_swr468:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R2 
	MOVLW       128
	XORWF       main_max_for_start+1, 0 
	MOVWF       R1 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr469
	MOVF        _PWR+0, 0 
	SUBWF       main_max_for_start+0, 0 
L__get_swr469:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       main_max_for_start+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr470
	MOVF        main_max_for_start+0, 0 
	SUBLW       0
L__get_swr470:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	MOVF        R2, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr38
;main.h,117 :: 		asm CLRWDT;
	CLRWDT
;main.h,118 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.h,119 :: 		if(p_cnt!=100) {
	MOVF        _p_cnt+0, 0 
	XORLW       100
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr39
;main.h,120 :: 		p_cnt += 1;
	INCF        _p_cnt+0, 1 
;main.h,121 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW       128
	XORWF       _P_max+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr471
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr471:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_swr40
	MOVF        _PWR+0, 0 
	MOVWF       _P_max+0 
	MOVF        _PWR+1, 0 
	MOVWF       _P_max+1 
L_get_swr40:
;main.h,122 :: 		}
	GOTO        L_get_swr41
L_get_swr39:
;main.h,124 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,125 :: 		show_pwr(P_max, SWR);
	MOVF        _P_max+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _P_max+1, 0 
	MOVWF       FARG_show_pwr+1 
	MOVF        _SWR+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _SWR+1, 0 
	MOVWF       FARG_show_pwr+1 
	CALL        _show_pwr+0, 0
;main.h,126 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,127 :: 		}
L_get_swr41:
;main.h,129 :: 		if(Button(&PORTB, 0, 5, 1)) rready = 1;
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       5
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr42
	MOVLW       1
	MOVWF       _rready+0 
L_get_swr42:
;main.h,130 :: 		if(rready==1 & Button(&PORTB, 0, 5, 0)) { //  press button  Tune
	MOVF        _rready+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       FLOC__get_swr+0 
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       5
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        FLOC__get_swr+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr43
;main.h,131 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.h,132 :: 		SWR = 0;
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.h,133 :: 		return SWR;
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_get_swr
;main.h,134 :: 		}
L_get_swr43:
;main.h,135 :: 		} //  good power
	GOTO        L_get_swr37
L_get_swr38:
;main.h,136 :: 		return SWR;
	MOVF        _SWR+0, 0 
	MOVWF       R0 
	MOVF        _SWR+1, 0 
	MOVWF       R1 
;main.h,137 :: 		}
L_end_get_swr:
	RETURN      0
; end of _get_swr

_set_ind:

;main.h,139 :: 		void set_ind(char Ind) {  // 0 - 31
;main.h,141 :: 		Ind_011 = Ind.B0;
	BTFSC       FARG_set_ind_Ind+0, 0 
	GOTO        L__set_ind473
	BCF         LATB1_bit+0, BitPos(LATB1_bit+0) 
	GOTO        L__set_ind474
L__set_ind473:
	BSF         LATB1_bit+0, BitPos(LATB1_bit+0) 
L__set_ind474:
;main.h,142 :: 		Ind_022 = Ind.B1;
	BTFSC       FARG_set_ind_Ind+0, 1 
	GOTO        L__set_ind475
	BCF         LATB2_bit+0, BitPos(LATB2_bit+0) 
	GOTO        L__set_ind476
L__set_ind475:
	BSF         LATB2_bit+0, BitPos(LATB2_bit+0) 
L__set_ind476:
;main.h,143 :: 		Ind_045 = Ind.B2;
	BTFSC       FARG_set_ind_Ind+0, 2 
	GOTO        L__set_ind477
	BCF         LATA2_bit+0, BitPos(LATA2_bit+0) 
	GOTO        L__set_ind478
L__set_ind477:
	BSF         LATA2_bit+0, BitPos(LATA2_bit+0) 
L__set_ind478:
;main.h,144 :: 		Ind_1   = Ind.B3;
	BTFSC       FARG_set_ind_Ind+0, 3 
	GOTO        L__set_ind479
	BCF         LATA4_bit+0, BitPos(LATA4_bit+0) 
	GOTO        L__set_ind480
L__set_ind479:
	BSF         LATA4_bit+0, BitPos(LATA4_bit+0) 
L__set_ind480:
;main.h,145 :: 		Ind_22  = Ind.B4;
	BTFSC       FARG_set_ind_Ind+0, 4 
	GOTO        L__set_ind481
	BCF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	GOTO        L__set_ind482
L__set_ind481:
	BSF         LATA5_bit+0, BitPos(LATA5_bit+0) 
L__set_ind482:
;main.h,147 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,148 :: 		}
L_end_set_ind:
	RETURN      0
; end of _set_ind

_set_cap:

;main.h,150 :: 		void set_cap(char Cap) { // 0 - 31
;main.h,151 :: 		Cap_10  =  Cap.B0;
	BTFSC       FARG_set_cap_Cap+0, 0 
	GOTO        L__set_cap484
	BCF         LATC1_bit+0, BitPos(LATC1_bit+0) 
	GOTO        L__set_cap485
L__set_cap484:
	BSF         LATC1_bit+0, BitPos(LATC1_bit+0) 
L__set_cap485:
;main.h,152 :: 		Cap_22  =  Cap.B1;
	BTFSC       FARG_set_cap_Cap+0, 1 
	GOTO        L__set_cap486
	BCF         LATC2_bit+0, BitPos(LATC2_bit+0) 
	GOTO        L__set_cap487
L__set_cap486:
	BSF         LATC2_bit+0, BitPos(LATC2_bit+0) 
L__set_cap487:
;main.h,153 :: 		Cap_47  =  Cap.B2;
	BTFSC       FARG_set_cap_Cap+0, 2 
	GOTO        L__set_cap488
	BCF         LATC3_bit+0, BitPos(LATC3_bit+0) 
	GOTO        L__set_cap489
L__set_cap488:
	BSF         LATC3_bit+0, BitPos(LATC3_bit+0) 
L__set_cap489:
;main.h,154 :: 		Cap_100 =  Cap.B3;
	BTFSC       FARG_set_cap_Cap+0, 3 
	GOTO        L__set_cap490
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
	GOTO        L__set_cap491
L__set_cap490:
	BSF         LATC4_bit+0, BitPos(LATC4_bit+0) 
L__set_cap491:
;main.h,155 :: 		Cap_220 =  Cap.B4;
	BTFSC       FARG_set_cap_Cap+0, 4 
	GOTO        L__set_cap492
	BCF         LATC5_bit+0, BitPos(LATC5_bit+0) 
	GOTO        L__set_cap493
L__set_cap492:
	BSF         LATC5_bit+0, BitPos(LATC5_bit+0) 
L__set_cap493:
;main.h,157 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,158 :: 		}
L_end_set_cap:
	RETURN      0
; end of _set_cap

_set_sw:

;main.h,160 :: 		void set_sw(char SW) {  // 0 - IN,  1 - OUT
;main.h,161 :: 		Cap_sw = SW;
	BTFSC       FARG_set_sw_SW+0, 0 
	GOTO        L__set_sw495
	BCF         LATA6_bit+0, BitPos(LATA6_bit+0) 
	GOTO        L__set_sw496
L__set_sw495:
	BSF         LATA6_bit+0, BitPos(LATA6_bit+0) 
L__set_sw496:
;main.h,162 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,163 :: 		}
L_end_set_sw:
	RETURN      0
; end of _set_sw

_atu_reset:

;main.h,165 :: 		void atu_reset() {
;main.h,166 :: 		ind = 0;
	CLRF        main_ind+0 
;main.h,167 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,168 :: 		set_ind(ind);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,169 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,170 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,171 :: 		}
L_end_atu_reset:
	RETURN      0
; end of _atu_reset

_coarse_cap:

;main.h,173 :: 		void coarse_cap() {
;main.h,174 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_cap_step_L0+0 
;main.h,178 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,179 :: 		set_cap(cap);
	CLRF        FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,180 :: 		SWR = get_swr();
	CALL        _get_swr+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__coarse_cap+0 
	MOVF        R1, 0 
	MOVWF       FLOC__coarse_cap+1 
	MOVF        FLOC__coarse_cap+0, 0 
	MOVWF       _SWR+0 
	MOVF        FLOC__coarse_cap+1, 0 
	MOVWF       _SWR+1 
;main.h,181 :: 		min_swr = SWR + SWR/20;
	MOVLW       20
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FLOC__coarse_cap+0, 0 
	MOVWF       R0 
	MOVF        FLOC__coarse_cap+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__coarse_cap+0, 0 
	MOVWF       coarse_cap_min_swr_L0+0 
	MOVF        R1, 0 
	ADDWFC      FLOC__coarse_cap+1, 0 
	MOVWF       coarse_cap_min_swr_L0+1 
;main.h,182 :: 		for(count=step; count<=31;) {
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       coarse_cap_count_L0+0 
L_coarse_cap44:
	MOVF        coarse_cap_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_cap45
;main.h,183 :: 		set_cap(count);
	MOVF        coarse_cap_count_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,184 :: 		SWR = get_swr();
	CALL        _get_swr+0, 0
	MOVF        R0, 0 
	MOVWF       _SWR+0 
	MOVF        R1, 0 
	MOVWF       _SWR+1 
;main.h,185 :: 		if(SWR < min_swr) {
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       coarse_cap_min_swr_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap499
	MOVF        coarse_cap_min_swr_L0+0, 0 
	SUBWF       R0, 0 
L__coarse_cap499:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap47
;main.h,186 :: 		min_swr = SWR + SWR/20;
	MOVLW       20
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _SWR+0, 0 
	MOVWF       R0 
	MOVF        _SWR+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDWF       _SWR+0, 0 
	MOVWF       coarse_cap_min_swr_L0+0 
	MOVF        R1, 0 
	ADDWFC      _SWR+1, 0 
	MOVWF       coarse_cap_min_swr_L0+1 
;main.h,187 :: 		cap = count;
	MOVF        coarse_cap_count_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,188 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,189 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap500
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_cap500:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap48
	GOTO        L_coarse_cap45
L_coarse_cap48:
;main.h,190 :: 		count += step;
	MOVF        coarse_cap_step_L0+0, 0 
	ADDWF       coarse_cap_count_L0+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	MOVWF       coarse_cap_count_L0+0 
;main.h,191 :: 		if(count==9) count = 8;
	MOVF        R1, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap49
	MOVLW       8
	MOVWF       coarse_cap_count_L0+0 
	GOTO        L_coarse_cap50
L_coarse_cap49:
;main.h,192 :: 		else if(count==17) {count = 16; step = 4;}
	MOVF        coarse_cap_count_L0+0, 0 
	XORLW       17
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap51
	MOVLW       16
	MOVWF       coarse_cap_count_L0+0 
	MOVLW       4
	MOVWF       coarse_cap_step_L0+0 
L_coarse_cap51:
L_coarse_cap50:
;main.h,193 :: 		}
	GOTO        L_coarse_cap52
L_coarse_cap47:
;main.h,194 :: 		else break;
	GOTO        L_coarse_cap45
L_coarse_cap52:
;main.h,195 :: 		}
	GOTO        L_coarse_cap44
L_coarse_cap45:
;main.h,196 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,197 :: 		return;
;main.h,198 :: 		}
L_end_coarse_cap:
	RETURN      0
; end of _coarse_cap

_coarse_tune:

;main.h,200 :: 		void coarse_tune() {
;main.h,201 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_tune_step_L0+0 
;main.h,206 :: 		mem_cap = 0;
	CLRF        coarse_tune_mem_cap_L0+0 
;main.h,207 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,208 :: 		mem_step_cap = 3;
	MOVLW       3
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,209 :: 		min_swr = SWR + SWR/20;
	MOVLW       20
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _SWR+0, 0 
	MOVWF       R0 
	MOVF        _SWR+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDWF       _SWR+0, 0 
	MOVWF       coarse_tune_min_swr_L0+0 
	MOVF        R1, 0 
	ADDWFC      _SWR+1, 0 
	MOVWF       coarse_tune_min_swr_L0+1 
;main.h,210 :: 		for(count=0; count<=31;) {
	CLRF        coarse_tune_count_L0+0 
L_coarse_tune53:
	MOVF        coarse_tune_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_tune54
;main.h,211 :: 		set_ind(count);
	MOVF        coarse_tune_count_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,212 :: 		coarse_cap();
	CALL        _coarse_cap+0, 0
;main.h,213 :: 		SWR = get_swr();
	CALL        _get_swr+0, 0
	MOVF        R0, 0 
	MOVWF       _SWR+0 
	MOVF        R1, 0 
	MOVWF       _SWR+1 
;main.h,214 :: 		if(SWR < min_swr) {
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       coarse_tune_min_swr_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune502
	MOVF        coarse_tune_min_swr_L0+0, 0 
	SUBWF       R0, 0 
L__coarse_tune502:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune56
;main.h,215 :: 		min_swr = SWR + SWR/20;
	MOVLW       20
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _SWR+0, 0 
	MOVWF       R0 
	MOVF        _SWR+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDWF       _SWR+0, 0 
	MOVWF       coarse_tune_min_swr_L0+0 
	MOVF        R1, 0 
	ADDWFC      _SWR+1, 0 
	MOVWF       coarse_tune_min_swr_L0+1 
;main.h,216 :: 		ind = count;
	MOVF        coarse_tune_count_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,217 :: 		mem_cap = cap;
	MOVF        main_cap+0, 0 
	MOVWF       coarse_tune_mem_cap_L0+0 
;main.h,218 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,219 :: 		mem_step_cap = step_cap;
	MOVF        main_step_cap+0, 0 
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,220 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune503
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_tune503:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune57
	GOTO        L_coarse_tune54
L_coarse_tune57:
;main.h,221 :: 		count += step;
	MOVF        coarse_tune_step_L0+0, 0 
	ADDWF       coarse_tune_count_L0+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	MOVWF       coarse_tune_count_L0+0 
;main.h,222 :: 		if(count==9) count = 8;
	MOVF        R1, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_tune58
	MOVLW       8
	MOVWF       coarse_tune_count_L0+0 
	GOTO        L_coarse_tune59
L_coarse_tune58:
;main.h,223 :: 		else if(count==17) {count = 16; step = 4;}
	MOVF        coarse_tune_count_L0+0, 0 
	XORLW       17
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_tune60
	MOVLW       16
	MOVWF       coarse_tune_count_L0+0 
	MOVLW       4
	MOVWF       coarse_tune_step_L0+0 
L_coarse_tune60:
L_coarse_tune59:
;main.h,224 :: 		}
	GOTO        L_coarse_tune61
L_coarse_tune56:
;main.h,225 :: 		else break;
	GOTO        L_coarse_tune54
L_coarse_tune61:
;main.h,226 :: 		}
	GOTO        L_coarse_tune53
L_coarse_tune54:
;main.h,227 :: 		cap = mem_cap;
	MOVF        coarse_tune_mem_cap_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,228 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,229 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,230 :: 		step_cap = mem_step_cap;
	MOVF        coarse_tune_mem_step_cap_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,231 :: 		Delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_coarse_tune62:
	DECFSZ      R13, 1, 1
	BRA         L_coarse_tune62
	DECFSZ      R12, 1, 1
	BRA         L_coarse_tune62
	NOP
	NOP
;main.h,232 :: 		return;
;main.h,233 :: 		}
L_end_coarse_tune:
	RETURN      0
; end of _coarse_tune

_sharp_cap:

;main.h,236 :: 		void sharp_cap() {
;main.h,239 :: 		range = step_cap;
	MOVF        main_step_cap+0, 0 
	MOVWF       sharp_cap_range_L0+0 
;main.h,241 :: 		max_range = cap + range;
	MOVF        main_step_cap+0, 0 
	ADDWF       main_cap+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	MOVWF       sharp_cap_max_range_L0+0 
;main.h,242 :: 		if(max_range>31) max_range = 31;
	MOVF        R1, 0 
	SUBLW       31
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap63
	MOVLW       31
	MOVWF       sharp_cap_max_range_L0+0 
L_sharp_cap63:
;main.h,243 :: 		if(cap>range) min_range = cap - range; else min_range = 0;
	MOVF        main_cap+0, 0 
	SUBWF       sharp_cap_range_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap64
	MOVF        sharp_cap_range_L0+0, 0 
	SUBWF       main_cap+0, 0 
	MOVWF       sharp_cap_min_range_L0+0 
	GOTO        L_sharp_cap65
L_sharp_cap64:
	CLRF        sharp_cap_min_range_L0+0 
L_sharp_cap65:
;main.h,244 :: 		cap = min_range;
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,245 :: 		set_cap(cap);
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,246 :: 		SWR = get_swr();
	CALL        _get_swr+0, 0
	MOVF        R0, 0 
	MOVWF       _SWR+0 
	MOVF        R1, 0 
	MOVWF       _SWR+1 
;main.h,247 :: 		if(SWR==0) return;
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap505
	MOVLW       0
	XORWF       R0, 0 
L__sharp_cap505:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap66
	GOTO        L_end_sharp_cap
L_sharp_cap66:
;main.h,248 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,249 :: 		for(count=min_range+1; count<=max_range; count++)  {
	MOVF        sharp_cap_min_range_L0+0, 0 
	ADDLW       1
	MOVWF       sharp_cap_count_L0+0 
L_sharp_cap67:
	MOVF        sharp_cap_count_L0+0, 0 
	SUBWF       sharp_cap_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap68
;main.h,250 :: 		set_cap(count);
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,251 :: 		SWR = get_swr();
	CALL        _get_swr+0, 0
	MOVF        R0, 0 
	MOVWF       _SWR+0 
	MOVF        R1, 0 
	MOVWF       _SWR+1 
;main.h,252 :: 		if(SWR==0) return;
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap506
	MOVLW       0
	XORWF       R0, 0 
L__sharp_cap506:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap70
	GOTO        L_end_sharp_cap
L_sharp_cap70:
;main.h,253 :: 		if(SWR>=min_SWR) { Delay_ms(10); SWR = get_swr(); }
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap507
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap507:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap71
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_cap72:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_cap72
	DECFSZ      R12, 1, 1
	BRA         L_sharp_cap72
	NOP
	NOP
	CALL        _get_swr+0, 0
	MOVF        R0, 0 
	MOVWF       _SWR+0 
	MOVF        R1, 0 
	MOVWF       _SWR+1 
L_sharp_cap71:
;main.h,254 :: 		if(SWR>=min_SWR) { Delay_ms(10); SWR = get_swr(); }
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap508
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap508:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap73
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_cap74:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_cap74
	DECFSZ      R12, 1, 1
	BRA         L_sharp_cap74
	NOP
	NOP
	CALL        _get_swr+0, 0
	MOVF        R0, 0 
	MOVWF       _SWR+0 
	MOVF        R1, 0 
	MOVWF       _SWR+1 
L_sharp_cap73:
;main.h,255 :: 		if(SWR < min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap509
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap509:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap75
;main.h,256 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,257 :: 		cap = count;
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,258 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap510
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_cap510:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap76
	GOTO        L_sharp_cap68
L_sharp_cap76:
;main.h,259 :: 		}
	GOTO        L_sharp_cap77
L_sharp_cap75:
;main.h,260 :: 		else break;
	GOTO        L_sharp_cap68
L_sharp_cap77:
;main.h,249 :: 		for(count=min_range+1; count<=max_range; count++)  {
	INCF        sharp_cap_count_L0+0, 1 
;main.h,261 :: 		}
	GOTO        L_sharp_cap67
L_sharp_cap68:
;main.h,262 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,263 :: 		return;
;main.h,264 :: 		}
L_end_sharp_cap:
	RETURN      0
; end of _sharp_cap

_sharp_ind:

;main.h,266 :: 		void sharp_ind() {
;main.h,269 :: 		range = step_ind;
	MOVF        main_step_ind+0, 0 
	MOVWF       sharp_ind_range_L0+0 
;main.h,271 :: 		max_range = ind + range;
	MOVF        main_step_ind+0, 0 
	ADDWF       main_ind+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	MOVWF       sharp_ind_max_range_L0+0 
;main.h,272 :: 		if(max_range>31) max_range = 31;
	MOVF        R1, 0 
	SUBLW       31
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind78
	MOVLW       31
	MOVWF       sharp_ind_max_range_L0+0 
L_sharp_ind78:
;main.h,273 :: 		if(ind>range) min_range = ind - range; else min_range = 0;
	MOVF        main_ind+0, 0 
	SUBWF       sharp_ind_range_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind79
	MOVF        sharp_ind_range_L0+0, 0 
	SUBWF       main_ind+0, 0 
	MOVWF       sharp_ind_min_range_L0+0 
	GOTO        L_sharp_ind80
L_sharp_ind79:
	CLRF        sharp_ind_min_range_L0+0 
L_sharp_ind80:
;main.h,274 :: 		ind = min_range;
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,275 :: 		set_ind(ind);
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,276 :: 		SWR = get_swr();
	CALL        _get_swr+0, 0
	MOVF        R0, 0 
	MOVWF       _SWR+0 
	MOVF        R1, 0 
	MOVWF       _SWR+1 
;main.h,277 :: 		if(SWR==0) return;
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind512
	MOVLW       0
	XORWF       R0, 0 
L__sharp_ind512:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind81
	GOTO        L_end_sharp_ind
L_sharp_ind81:
;main.h,278 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,279 :: 		for(count=min_range+1; count<=max_range; count++) {
	MOVF        sharp_ind_min_range_L0+0, 0 
	ADDLW       1
	MOVWF       sharp_ind_count_L0+0 
L_sharp_ind82:
	MOVF        sharp_ind_count_L0+0, 0 
	SUBWF       sharp_ind_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind83
;main.h,280 :: 		set_ind(count);
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,281 :: 		SWR = get_swr();
	CALL        _get_swr+0, 0
	MOVF        R0, 0 
	MOVWF       _SWR+0 
	MOVF        R1, 0 
	MOVWF       _SWR+1 
;main.h,282 :: 		if(SWR==0) return;
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind513
	MOVLW       0
	XORWF       R0, 0 
L__sharp_ind513:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind85
	GOTO        L_end_sharp_ind
L_sharp_ind85:
;main.h,283 :: 		if(SWR>=min_SWR) { Delay_ms(10); SWR = get_swr(); }
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind514
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind514:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind86
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_ind87:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_ind87
	DECFSZ      R12, 1, 1
	BRA         L_sharp_ind87
	NOP
	NOP
	CALL        _get_swr+0, 0
	MOVF        R0, 0 
	MOVWF       _SWR+0 
	MOVF        R1, 0 
	MOVWF       _SWR+1 
L_sharp_ind86:
;main.h,284 :: 		if(SWR>=min_SWR) { Delay_ms(10); SWR = get_swr(); }
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind515
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind515:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind88
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_ind89:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_ind89
	DECFSZ      R12, 1, 1
	BRA         L_sharp_ind89
	NOP
	NOP
	CALL        _get_swr+0, 0
	MOVF        R0, 0 
	MOVWF       _SWR+0 
	MOVF        R1, 0 
	MOVWF       _SWR+1 
L_sharp_ind88:
;main.h,285 :: 		if(SWR < min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind516
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind516:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind90
;main.h,286 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,287 :: 		ind = count;
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,288 :: 		if(SWR<120) break;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind517
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_ind517:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind91
	GOTO        L_sharp_ind83
L_sharp_ind91:
;main.h,289 :: 		}
	GOTO        L_sharp_ind92
L_sharp_ind90:
;main.h,290 :: 		else break;
	GOTO        L_sharp_ind83
L_sharp_ind92:
;main.h,279 :: 		for(count=min_range+1; count<=max_range; count++) {
	INCF        sharp_ind_count_L0+0, 1 
;main.h,291 :: 		}
	GOTO        L_sharp_ind82
L_sharp_ind83:
;main.h,292 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,293 :: 		return;
;main.h,294 :: 		}
L_end_sharp_ind:
	RETURN      0
; end of _sharp_ind

_tune:

;main.h,297 :: 		void tune() {
;main.h,299 :: 		asm CLRWDT;
	CLRWDT
;main.h,300 :: 		rready = 0;
	CLRF        _rready+0 
;main.h,301 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,302 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,303 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,304 :: 		if(SWR<110) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune519
	MOVLW       110
	SUBWF       _SWR+0, 0 
L__tune519:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune93
	GOTO        L_end_tune
L_tune93:
;main.h,305 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,306 :: 		if(Loss_ind==0) lcd_ind();
	MOVF        main_Loss_ind+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_tune94
	CALL        _lcd_ind+0, 0
L_tune94:
;main.h,307 :: 		Delay_ms(50);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_tune95:
	DECFSZ      R13, 1, 1
	BRA         L_tune95
	DECFSZ      R12, 1, 1
	BRA         L_tune95
	DECFSZ      R11, 1, 1
	BRA         L_tune95
	NOP
;main.h,308 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,309 :: 		swr_a = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        _SWR+1, 0 
	MOVWF       _swr_a+1 
;main.h,310 :: 		if(SWR<110) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune520
	MOVLW       110
	SUBWF       _SWR+0, 0 
L__tune520:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune96
	GOTO        L_end_tune
L_tune96:
;main.h,311 :: 		if(max_swr>110 & SWR>max_swr) return;
	MOVLW       128
	MOVWF       R1 
	MOVLW       128
	XORWF       main_max_swr+1, 0 
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune521
	MOVF        main_max_swr+0, 0 
	SUBLW       110
L__tune521:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       128
	XORWF       main_max_swr+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune522
	MOVF        _SWR+0, 0 
	SUBWF       main_max_swr+0, 0 
L__tune522:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_tune97
	GOTO        L_end_tune
L_tune97:
;main.h,313 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       tune_swr_mem_L0+1 
;main.h,314 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL        _coarse_tune+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune523
	MOVLW       0
	XORWF       _SWR+0, 0 
L__tune523:
	BTFSS       STATUS+0, 2 
	GOTO        L_tune98
	CALL        _atu_reset+0, 0
	GOTO        L_end_tune
L_tune98:
;main.h,315 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune524
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune524:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune99
	GOTO        L_end_tune
L_tune99:
;main.h,316 :: 		sharp_ind();  if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_ind+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune525
	MOVLW       0
	XORWF       _SWR+0, 0 
L__tune525:
	BTFSS       STATUS+0, 2 
	GOTO        L_tune100
	CALL        _atu_reset+0, 0
	GOTO        L_end_tune
L_tune100:
;main.h,317 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune526
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune526:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune101
	GOTO        L_end_tune
L_tune101:
;main.h,318 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_cap+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune527
	MOVLW       0
	XORWF       _SWR+0, 0 
L__tune527:
	BTFSS       STATUS+0, 2 
	GOTO        L_tune102
	CALL        _atu_reset+0, 0
	GOTO        L_end_tune
L_tune102:
;main.h,319 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune528
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune528:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune103
	GOTO        L_end_tune
L_tune103:
;main.h,321 :: 		if(SWR<200 & SWR<swr_mem & (swr_mem-SWR)>100) return;
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R1 
	MOVLW       128
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune529
	MOVLW       200
	SUBWF       _SWR+0, 0 
L__tune529:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       tune_swr_mem_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune530
	MOVF        tune_swr_mem_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__tune530:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 0 
	MOVWF       R3 
	MOVF        _SWR+0, 0 
	SUBWF       tune_swr_mem_L0+0, 0 
	MOVWF       R1 
	MOVF        _SWR+1, 0 
	SUBWFB      tune_swr_mem_L0+1, 0 
	MOVWF       R2 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune531
	MOVF        R1, 0 
	SUBLW       100
L__tune531:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_tune104
	GOTO        L_end_tune
L_tune104:
;main.h,322 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       tune_swr_mem_L0+1 
;main.h,323 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       tune_ind_mem_L0+0 
	MOVLW       0
	MOVWF       tune_ind_mem_L0+1 
;main.h,324 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       tune_cap_mem_L0+0 
	MOVLW       0
	MOVWF       tune_cap_mem_L0+1 
;main.h,326 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_tune105
	CLRF        main_SW+0 
	GOTO        L_tune106
L_tune105:
	MOVLW       1
	MOVWF       main_SW+0 
L_tune106:
;main.h,327 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,328 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,329 :: 		Delay_ms(50);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_tune107:
	DECFSZ      R13, 1, 1
	BRA         L_tune107
	DECFSZ      R12, 1, 1
	BRA         L_tune107
	DECFSZ      R11, 1, 1
	BRA         L_tune107
	NOP
;main.h,330 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune532
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune532:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune108
	GOTO        L_end_tune
L_tune108:
;main.h,332 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL        _coarse_tune+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune533
	MOVLW       0
	XORWF       _SWR+0, 0 
L__tune533:
	BTFSS       STATUS+0, 2 
	GOTO        L_tune109
	CALL        _atu_reset+0, 0
	GOTO        L_end_tune
L_tune109:
;main.h,333 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune534
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune534:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune110
	GOTO        L_end_tune
L_tune110:
;main.h,334 :: 		sharp_ind(); if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_ind+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune535
	MOVLW       0
	XORWF       _SWR+0, 0 
L__tune535:
	BTFSS       STATUS+0, 2 
	GOTO        L_tune111
	CALL        _atu_reset+0, 0
	GOTO        L_end_tune
L_tune111:
;main.h,335 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune536
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune536:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune112
	GOTO        L_end_tune
L_tune112:
;main.h,336 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL        _sharp_cap+0, 0
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune537
	MOVLW       0
	XORWF       _SWR+0, 0 
L__tune537:
	BTFSS       STATUS+0, 2 
	GOTO        L_tune113
	CALL        _atu_reset+0, 0
	GOTO        L_end_tune
L_tune113:
;main.h,337 :: 		get_swr(); if(SWR<120) return;
	CALL        _get_swr+0, 0
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune538
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune538:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune114
	GOTO        L_end_tune
L_tune114:
;main.h,339 :: 		if(SWR>swr_mem) {
	MOVLW       128
	XORWF       tune_swr_mem_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune539
	MOVF        _SWR+0, 0 
	SUBWF       tune_swr_mem_L0+0, 0 
L__tune539:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune115
;main.h,340 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_tune116
	CLRF        main_SW+0 
	GOTO        L_tune117
L_tune116:
	MOVLW       1
	MOVWF       main_SW+0 
L_tune117:
;main.h,341 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,342 :: 		ind = ind_mem;
	MOVF        tune_ind_mem_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,343 :: 		cap = cap_mem;
	MOVF        tune_cap_mem_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,344 :: 		set_ind(ind);
	MOVF        tune_ind_mem_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,345 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,346 :: 		SWR = swr_mem;
	MOVF        tune_swr_mem_L0+0, 0 
	MOVWF       _SWR+0 
	MOVF        tune_swr_mem_L0+1, 0 
	MOVWF       _SWR+1 
;main.h,347 :: 		}
L_tune115:
;main.h,349 :: 		asm CLRWDT;
	CLRWDT
;main.h,350 :: 		return;
;main.h,351 :: 		}
L_end_tune:
	RETURN      0
; end of _tune

_main:

;main.c,34 :: 		void main() {
;main.c,35 :: 		if(RCON.B3==0) Restart = 1;
	BTFSC       RCON+0, 3 
	GOTO        L_main118
	MOVLW       1
	MOVWF       _Restart+0 
L_main118:
;main.c,36 :: 		pic_init();
	CALL        _pic_init+0, 0
;main.c,38 :: 		Delay_ms (300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main119:
	DECFSZ      R13, 1, 1
	BRA         L_main119
	DECFSZ      R12, 1, 1
	BRA         L_main119
	DECFSZ      R11, 1, 1
	BRA         L_main119
	NOP
;main.c,39 :: 		asm CLRWDT;
	CLRWDT
;main.c,40 :: 		cells_init();
	CALL        _cells_init+0, 0
;main.c,41 :: 		Soft_I2C_Init();
	CALL        _Soft_I2C_Init+0, 0
;main.c,42 :: 		if(type==0) { // 2-colors led  reset
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main120
;main.c,43 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,44 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,45 :: 		}
	GOTO        L_main121
L_main120:
;main.c,46 :: 		else if(type==6){
	MOVF        _type+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main122
;main.c,47 :: 		LATB.B6 = 0;
	BCF         LATB+0, 6 
;main.c,48 :: 		LATB.B7 = 0;
	BCF         LATB+0, 7 
;main.c,49 :: 		}
L_main122:
L_main121:
;main.c,50 :: 		Low = 0;
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
;main.c,51 :: 		Mid = 0;
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,52 :: 		High = 0;
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,53 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,55 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main123:
	DECFSZ      R13, 1, 1
	BRA         L_main123
	DECFSZ      R12, 1, 1
	BRA         L_main123
	DECFSZ      R11, 1, 1
	BRA         L_main123
	NOP
;main.c,56 :: 		asm CLRWDT;
	CLRWDT
;main.c,57 :: 		if(PORTB.B4==0 & PORTB.B5==0) {     // Test mode
	BTFSC       PORTB+0, 4 
	GOTO        L__main541
	BSF         R4, 0 
	GOTO        L__main542
L__main541:
	BCF         R4, 0 
L__main542:
	BTFSC       PORTB+0, 5 
	GOTO        L__main543
	BSF         STATUS+0, 0 
	GOTO        L__main544
L__main543:
	BCF         STATUS+0, 0 
L__main544:
	BTFSS       R4, 0 
	GOTO        L__main545
	BTFSS       STATUS+0, 0 
	GOTO        L__main545
	BSF         R4, 0 
	GOTO        L__main546
L__main545:
	BCF         R4, 0 
L__main546:
	BTFSS       R4, 0 
	GOTO        L_main124
;main.c,58 :: 		Test = 1;
	MOVLW       1
	MOVWF       _Test+0 
;main.c,59 :: 		Auto = 0;
	CLRF        _Auto+0 
;main.c,60 :: 		}
L_main124:
;main.c,62 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main125:
	DECFSZ      R13, 1, 1
	BRA         L_main125
	DECFSZ      R12, 1, 1
	BRA         L_main125
	DECFSZ      R11, 1, 1
	BRA         L_main125
	NOP
;main.c,63 :: 		asm CLRWDT;
	CLRWDT
;main.c,65 :: 		led_init();
	CALL        _led_init+0, 0
;main.c,66 :: 		if(PORTB.B4==0 & PORTB.B5==0 & PORTB.B0==0)  { // Fast Test mode (loop)
	BTFSC       PORTB+0, 4 
	GOTO        L__main547
	BSF         R4, 0 
	GOTO        L__main548
L__main547:
	BCF         R4, 0 
L__main548:
	BTFSC       PORTB+0, 5 
	GOTO        L__main549
	BSF         STATUS+0, 0 
	GOTO        L__main550
L__main549:
	BCF         STATUS+0, 0 
L__main550:
	BTFSS       R4, 0 
	GOTO        L__main551
	BTFSS       STATUS+0, 0 
	GOTO        L__main551
	BSF         R4, 0 
	GOTO        L__main552
L__main551:
	BCF         R4, 0 
L__main552:
	BTFSC       PORTB+0, 0 
	GOTO        L__main553
	BSF         STATUS+0, 0 
	GOTO        L__main554
L__main553:
	BCF         STATUS+0, 0 
L__main554:
	BTFSS       R4, 0 
	GOTO        L__main555
	BTFSS       STATUS+0, 0 
	GOTO        L__main555
	BSF         R4, 0 
	GOTO        L__main556
L__main555:
	BCF         R4, 0 
L__main556:
	BTFSS       R4, 0 
	GOTO        L_main126
;main.c,67 :: 		if(type==4 | type==5) led_wr_str (0, 12, "FAST TEST", 9); //  128*64
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main127
	CLRF        FARG_led_wr_str+0 
	MOVLW       12
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr1_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr1_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_main128
L_main127:
;main.c,68 :: 		else if(type!=0) led_wr_str (0, 3, "FAST TEST", 9); // 1602 | 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main129
	CLRF        FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr2_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr2_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_main129:
L_main128:
;main.c,69 :: 		set_cap(255);
	MOVLW       255
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,70 :: 		set_ind(255);
	MOVLW       255
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,71 :: 		set_sw(1);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,72 :: 		asm CLRWDT;
	CLRWDT
;main.c,73 :: 		while(1) {Delay_ms(500);asm CLRWDT;}
L_main130:
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main132:
	DECFSZ      R13, 1, 1
	BRA         L_main132
	DECFSZ      R12, 1, 1
	BRA         L_main132
	DECFSZ      R11, 1, 1
	BRA         L_main132
	NOP
	NOP
	CLRWDT
	GOTO        L_main130
;main.c,74 :: 		}
L_main126:
;main.c,75 :: 		asm CLRWDT;
	CLRWDT
;main.c,77 :: 		if(Button(&PORTB, 0, 100, 0))  { //  Fider loss input
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       100
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main133
;main.c,78 :: 		if(type==4 | type==5) { led_wr_str (0, 6, "Fider Loss", 10); // 128*64
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main134
	CLRF        FARG_led_wr_str+0 
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr3_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr3_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,79 :: 		led_wr_str (1, 6, "input", 5);   }
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr4_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr4_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       5
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_main135
L_main134:
;main.c,80 :: 		else if(type!=0) led_wr_str (0, 0, "Fider Loss input", 16); // 1602 | 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main136
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr5_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr5_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_main136:
L_main135:
;main.c,81 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x32));
	MOVLW       50
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,82 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,84 :: 		while(1) {
L_main137:
;main.c,85 :: 		if(Button(&PORTB, 5, 50, 0)){   // BYP button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       5
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main139
;main.c,86 :: 		if(Fid_loss<99) {
	MOVLW       99
	SUBWF       _Fid_loss+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main140
;main.c,87 :: 		Fid_loss ++;
	INCF        _Fid_loss+0, 1 
;main.c,88 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,89 :: 		EEPROM_Write(0x32, Dec2Bcd(Fid_loss));
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_Dec2Bcd_decnum+0 
	CALL        _Dec2Bcd+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	MOVLW       50
	MOVWF       FARG_EEPROM_Write_address+0 
	CALL        _EEPROM_Write+0, 0
;main.c,90 :: 		}
L_main140:
;main.c,91 :: 		while(Button(&PORTB, 5, 50, 0)) asm CLRWDT;
L_main141:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       5
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main142
	CLRWDT
	GOTO        L_main141
L_main142:
;main.c,92 :: 		}
L_main139:
;main.c,94 :: 		if(Button(&PORTB, 4, 50, 0)){   // AUTO button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       4
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main143
;main.c,95 :: 		if(Fid_loss>0) {
	MOVF        _Fid_loss+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main144
;main.c,96 :: 		Fid_loss --;
	DECF        _Fid_loss+0, 1 
;main.c,97 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,98 :: 		EEPROM_Write(0x32, Dec2Bcd(Fid_loss));
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_Dec2Bcd_decnum+0 
	CALL        _Dec2Bcd+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	MOVLW       50
	MOVWF       FARG_EEPROM_Write_address+0 
	CALL        _EEPROM_Write+0, 0
;main.c,99 :: 		}
L_main144:
;main.c,100 :: 		while(Button(&PORTB, 4, 50, 0)) asm CLRWDT;
L_main145:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       4
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main146
	CLRWDT
	GOTO        L_main145
L_main146:
;main.c,101 :: 		}
L_main143:
;main.c,102 :: 		asm CLRWDT;
	CLRWDT
;main.c,103 :: 		}  // while
	GOTO        L_main137
;main.c,104 :: 		} //  Fider loss input
L_main133:
;main.c,106 :: 		if(Test==0) {
	MOVF        _Test+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main147
;main.c,107 :: 		cap = EEPROM_Read(255);
	MOVLW       255
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_cap+0 
;main.c,108 :: 		ind = EEPROM_Read(254);
	MOVLW       254
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_ind+0 
;main.c,109 :: 		SW = EEPROM_Read(253);
	MOVLW       253
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_SW+0 
;main.c,110 :: 		swr_a = EEPROM_Read(252) * 256;
	MOVLW       252
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _swr_a+1 
	CLRF        _swr_a+0 
;main.c,111 :: 		swr_a += EEPROM_Read(251);
	MOVLW       251
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	ADDWF       _swr_a+0, 1 
	MOVLW       0
	ADDWFC      _swr_a+1, 1 
;main.c,112 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,113 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,114 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,115 :: 		if(Restart==1 ) lcd_prep_short = 1;
	MOVF        _Restart+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main148
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
L_main148:
;main.c,116 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,117 :: 		}
	GOTO        L_main149
L_main147:
;main.c,118 :: 		else Test_init();
	CALL        _test_init+0, 0
L_main149:
;main.c,120 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,124 :: 		while(1) {
L_main150:
;main.c,125 :: 		asm CLRWDT;
	CLRWDT
;main.c,126 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,128 :: 		if(Test==0) button_proc();
	MOVF        _Test+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main152
	CALL        _button_proc+0, 0
	GOTO        L_main153
L_main152:
;main.c,129 :: 		else button_proc_test();
	CALL        _button_proc_test+0, 0
L_main153:
;main.c,131 :: 		if(dysp_cnt!=0) dysp_cnt --;
	MOVLW       0
	XORWF       _dysp_cnt+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main557
	MOVLW       0
	XORWF       _dysp_cnt+0, 0 
L__main557:
	BTFSC       STATUS+0, 2 
	GOTO        L_main154
	MOVLW       1
	SUBWF       _dysp_cnt+0, 1 
	MOVLW       0
	SUBWFB      _dysp_cnt+1, 1 
	GOTO        L_main155
L_main154:
;main.c,132 :: 		else if(Test==0 & Dysp_delay!=0) dysp_off();
	MOVF        _Test+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _Dysp_delay+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main156
	CALL        _dysp_off+0, 0
L_main156:
L_main155:
;main.c,136 :: 		}
	GOTO        L_main150
;main.c,137 :: 		}
L_end_main:
	GOTO        $+0
; end of _main

_button_proc_test:

;main.c,142 :: 		void button_proc_test(void) {
;main.c,143 :: 		if(Button(&PORTB, 0, 50, 0)){    // Tune btn
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test157
;main.c,144 :: 		Delay_ms(250);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc_test158:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test158
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test158
	DECFSZ      R11, 1, 1
	BRA         L_button_proc_test158
	NOP
	NOP
;main.c,145 :: 		asm CLRWDT;
	CLRWDT
;main.c,146 :: 		if(PORTB.B0==1) { // short press button
	BTFSS       PORTB+0, 0 
	GOTO        L_button_proc_test159
;main.c,147 :: 		if(SW==0) SW = 1; else SW = 0;
	MOVF        main_SW+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test160
	MOVLW       1
	MOVWF       main_SW+0 
	GOTO        L_button_proc_test161
L_button_proc_test160:
	CLRF        main_SW+0 
L_button_proc_test161:
;main.c,148 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,149 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,150 :: 		}
	GOTO        L_button_proc_test162
L_button_proc_test159:
;main.c,152 :: 		if(L==1) L = 0; else L = 1;
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test163
	CLRF        _L+0 
	GOTO        L_button_proc_test164
L_button_proc_test163:
	MOVLW       1
	MOVWF       _L+0 
L_button_proc_test164:
;main.c,153 :: 		if(L==1) {
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test165
;main.c,154 :: 		if(type==4 |type==5)   // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test166
;main.c,155 :: 		led_wr_str (0, 16+12*8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr6_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr6_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc_test167
L_button_proc_test166:
;main.c,156 :: 		else if(type!=0 & type!=6)              // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test168
;main.c,157 :: 		led_wr_str (0, 8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr7_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr7_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc_test168:
L_button_proc_test167:
;main.c,158 :: 		}
	GOTO        L_button_proc_test169
L_button_proc_test165:
;main.c,160 :: 		if(type==4 |type==5)   // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test170
;main.c,161 :: 		led_wr_str (0, 16+12*8, "c", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr8_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr8_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc_test171
L_button_proc_test170:
;main.c,162 :: 		else if(type!=0 & type !=6)              // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test172
;main.c,163 :: 		led_wr_str (0, 8, "c", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr9_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr9_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc_test172:
L_button_proc_test171:
;main.c,164 :: 		}
L_button_proc_test169:
;main.c,165 :: 		}
L_button_proc_test162:
;main.c,166 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_button_proc_test173:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test174
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_button_proc_test173
L_button_proc_test174:
;main.c,167 :: 		}  // END Tune btn
L_button_proc_test157:
;main.c,169 :: 		if(Button(&PORTB, 5, 50, 0)){   // BYP button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       5
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test175
;main.c,170 :: 		asm CLRWDT;
	CLRWDT
;main.c,171 :: 		while(PORTB.B5==0) {
L_button_proc_test176:
	BTFSC       PORTB+0, 5 
	GOTO        L_button_proc_test177
;main.c,172 :: 		if(L & ind<31) {
	MOVLW       31
	SUBWF       main_ind+0, 0 
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test178
;main.c,173 :: 		ind ++;
	INCF        main_ind+0, 1 
;main.c,174 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,175 :: 		}
	GOTO        L_button_proc_test179
L_button_proc_test178:
;main.c,176 :: 		else if(!L & cap<31) {
	MOVF        _L+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVLW       31
	SUBWF       main_cap+0, 0 
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test180
;main.c,177 :: 		cap ++;
	INCF        main_cap+0, 1 
;main.c,178 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,179 :: 		}
L_button_proc_test180:
L_button_proc_test179:
;main.c,180 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,181 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,182 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_button_proc_test181:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test181
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test181
;main.c,183 :: 		asm CLRWDT;
	CLRWDT
;main.c,184 :: 		}
	GOTO        L_button_proc_test176
L_button_proc_test177:
;main.c,185 :: 		}   // end of BYP button
L_button_proc_test175:
;main.c,187 :: 		if(Button(&PORTB, 4, 50, 0) & Bypas==0){   // Auto button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       4
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        _bypas+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test182
;main.c,188 :: 		asm CLRWDT;
	CLRWDT
;main.c,189 :: 		while(PORTB.B4==0) {
L_button_proc_test183:
	BTFSC       PORTB+0, 4 
	GOTO        L_button_proc_test184
;main.c,190 :: 		if(L & ind>0) {
	MOVF        main_ind+0, 0 
	SUBLW       0
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test185
;main.c,191 :: 		ind --;
	DECF        main_ind+0, 1 
;main.c,192 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,193 :: 		}
	GOTO        L_button_proc_test186
L_button_proc_test185:
;main.c,194 :: 		else if(!L & cap>0) {
	MOVF        _L+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_cap+0, 0 
	SUBLW       0
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test187
;main.c,195 :: 		cap --;
	DECF        main_cap+0, 1 
;main.c,196 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,197 :: 		}
L_button_proc_test187:
L_button_proc_test186:
;main.c,198 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,199 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,200 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_button_proc_test188:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test188
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test188
;main.c,201 :: 		asm CLRWDT;
	CLRWDT
;main.c,202 :: 		}
	GOTO        L_button_proc_test183
L_button_proc_test184:
;main.c,203 :: 		}
L_button_proc_test182:
;main.c,204 :: 		return;
;main.c,205 :: 		}
L_end_button_proc_test:
	RETURN      0
; end of _button_proc_test

_button_proc:

;main.c,208 :: 		void button_proc(void) {
;main.c,209 :: 		if(Button(&PORTB, 0, 50, 0) | Soft_tune){
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        _Soft_tune+0, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc189
;main.c,210 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,211 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,212 :: 		Delay_ms(250);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc190:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc190
	DECFSZ      R12, 1, 1
	BRA         L_button_proc190
	DECFSZ      R11, 1, 1
	BRA         L_button_proc190
	NOP
	NOP
;main.c,213 :: 		asm CLRWDT;
	CLRWDT
;main.c,214 :: 		if(Soft_tune == 0 & PORTB.B0==1) { // short press button
	MOVF        _Soft_tune+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	BTFSC       PORTB+0, 0 
	GOTO        L__button_proc560
	BCF         STATUS+0, 0 
	GOTO        L__button_proc561
L__button_proc560:
	BSF         STATUS+0, 0 
L__button_proc561:
	CLRF        R0 
	BTFSC       STATUS+0, 0 
	INCF        R0, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc191
;main.c,215 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.c,216 :: 		bypas =0;
	CLRF        _bypas+0 
;main.c,217 :: 		}
	GOTO        L_button_proc192
L_button_proc191:
;main.c,219 :: 		p_Tx = 1;         //
	BSF         LATA7_bit+0, BitPos(LATA7_bit+0) 
;main.c,220 :: 		n_Tx = 0;         // TX request
	BCF         LATA3_bit+0, BitPos(LATA3_bit+0) 
;main.c,221 :: 		asm CLRWDT;
	CLRWDT
;main.c,222 :: 		Delay_ms(250);    //
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc193:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc193
	DECFSZ      R12, 1, 1
	BRA         L_button_proc193
	DECFSZ      R11, 1, 1
	BRA         L_button_proc193
	NOP
	NOP
;main.c,223 :: 		asm CLRWDT;
	CLRWDT
;main.c,224 :: 		btn_push();
	CALL        _btn_push+0, 0
;main.c,225 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,226 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT; }
L_button_proc194:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc195
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_button_proc194
L_button_proc195:
;main.c,227 :: 		Soft_tune = 0;
	CLRF        _Soft_tune+0 
;main.c,228 :: 		}
L_button_proc192:
;main.c,230 :: 		}
L_button_proc189:
;main.c,232 :: 		if(Button(&PORTB, 5, 50, 0)){   // BYP button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       5
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc196
;main.c,233 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,234 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,235 :: 		asm CLRWDT;
	CLRWDT
;main.c,236 :: 		if(bypas == 0) {
	MOVF        _bypas+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc197
;main.c,237 :: 		bypas = 1;
	MOVLW       1
	MOVWF       _bypas+0 
;main.c,238 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       _cap_mem+0 
;main.c,239 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       _ind_mem+0 
;main.c,240 :: 		SW_mem = SW;
	MOVF        main_SW+0, 0 
	MOVWF       _SW_mem+0 
;main.c,241 :: 		cap = 0;
	CLRF        main_cap+0 
;main.c,242 :: 		ind = 0;
	CLRF        main_ind+0 
;main.c,243 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,244 :: 		set_ind(ind);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,245 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,246 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,247 :: 		if(Loss_mode==0) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc198
	CALL        _lcd_ind+0, 0
L_button_proc198:
;main.c,248 :: 		Auto_mem = Auto;
	MOVF        _Auto+0, 0 
	MOVWF       _Auto_mem+0 
;main.c,249 :: 		Auto = 0;
	CLRF        _Auto+0 
;main.c,250 :: 		}
	GOTO        L_button_proc199
L_button_proc197:
;main.c,252 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,253 :: 		cap = cap_mem;
	MOVF        _cap_mem+0, 0 
	MOVWF       main_cap+0 
;main.c,254 :: 		ind = ind_mem;
	MOVF        _ind_mem+0, 0 
	MOVWF       main_ind+0 
;main.c,255 :: 		SW = SW_mem;
	MOVF        _SW_mem+0, 0 
	MOVWF       main_SW+0 
;main.c,256 :: 		set_cap(cap);
	MOVF        _cap_mem+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,257 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,258 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,259 :: 		if(Loss_mode==0) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc200
	CALL        _lcd_ind+0, 0
L_button_proc200:
;main.c,260 :: 		Auto = Auto_mem;
	MOVF        _Auto_mem+0, 0 
	MOVWF       _Auto+0 
;main.c,261 :: 		}
L_button_proc199:
;main.c,262 :: 		if(type==4 | type==5) {      // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc201
;main.c,263 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc202
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr10_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr10_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc203
L_button_proc202:
;main.c,264 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc204
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr11_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr11_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc205
L_button_proc204:
;main.c,265 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr12_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr12_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc205:
L_button_proc203:
;main.c,266 :: 		}
	GOTO        L_button_proc206
L_button_proc201:
;main.c,267 :: 		else if(type!=0 & type!=6) { //  1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc207
;main.c,268 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc208
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr13_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr13_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc209
L_button_proc208:
;main.c,269 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc210
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr14_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr14_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc211
L_button_proc210:
;main.c,270 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr15_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr15_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc211:
L_button_proc209:
;main.c,271 :: 		}
L_button_proc207:
L_button_proc206:
;main.c,272 :: 		while(Button(&PORTB, 5, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_button_proc212:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       5
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc213
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_button_proc212
L_button_proc213:
;main.c,273 :: 		}
L_button_proc196:
;main.c,275 :: 		if(Button(&PORTB, 4, 50, 0) & Bypas==0){   // Auto button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       4
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        _bypas+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc214
;main.c,276 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,277 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,278 :: 		asm CLRWDT;
	CLRWDT
;main.c,279 :: 		if(Auto == 0) Auto = 1;
	MOVF        _Auto+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc215
	MOVLW       1
	MOVWF       _Auto+0 
	GOTO        L_button_proc216
L_button_proc215:
;main.c,280 :: 		else Auto = 0;
	CLRF        _Auto+0 
L_button_proc216:
;main.c,281 :: 		EEPROM_Write(2, Auto);
	MOVLW       2
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _Auto+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,282 :: 		if(type==4 | type==5) {      // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc217
;main.c,283 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc218
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr16_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr16_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc219
L_button_proc218:
;main.c,284 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc220
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr17_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr17_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc221
L_button_proc220:
;main.c,285 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr18_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr18_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc221:
L_button_proc219:
;main.c,286 :: 		}
	GOTO        L_button_proc222
L_button_proc217:
;main.c,287 :: 		else if(type!=0 & type!=6) { //  1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc223
;main.c,288 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc224
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr19_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr19_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc225
L_button_proc224:
;main.c,289 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc226
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr20_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr20_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc227
L_button_proc226:
;main.c,290 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr21_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr21_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc227:
L_button_proc225:
;main.c,291 :: 		}
L_button_proc223:
L_button_proc222:
;main.c,292 :: 		while(Button(&PORTB, 4, 50, 0)) {lcd_pwr(); asm CLRWDT; }
L_button_proc228:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       4
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc229
	CALL        _lcd_pwr+0, 0
	CLRWDT
	GOTO        L_button_proc228
L_button_proc229:
;main.c,293 :: 		}
L_button_proc214:
;main.c,294 :: 		return;
;main.c,295 :: 		}
L_end_button_proc:
	RETURN      0
; end of _button_proc

_show_reset:

;main.c,297 :: 		void show_reset() {
;main.c,298 :: 		asm CLRWDT;
	CLRWDT
;main.c,299 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,300 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,301 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,302 :: 		EEPROM_Write(255, 0);
	MOVLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,303 :: 		EEPROM_Write(254, 0);
	MOVLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,304 :: 		EEPROM_Write(253, 1);
	MOVLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVLW       1
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,305 :: 		EEPROM_Write(252, 0);
	MOVLW       252
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,306 :: 		EEPROM_Write(251, 0);
	MOVLW       251
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,307 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,308 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,309 :: 		p_Tx = 0;
	BCF         LATA7_bit+0, BitPos(LATA7_bit+0) 
;main.c,310 :: 		n_Tx = 1;
	BSF         LATA3_bit+0, BitPos(LATA3_bit+0) 
;main.c,311 :: 		SWR = 0;
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.c,312 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,313 :: 		SWR_fixed_old = 0;
	CLRF        _SWR_fixed_old+0 
	CLRF        _SWR_fixed_old+1 
;main.c,314 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_reset230
;main.c,315 :: 		led_wr_str (2, 16, "RESET   ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr22_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr22_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,316 :: 		asm CLRWDT;
	CLRWDT
;main.c,317 :: 		delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_show_reset231:
	DECFSZ      R13, 1, 1
	BRA         L_show_reset231
	DECFSZ      R12, 1, 1
	BRA         L_show_reset231
	DECFSZ      R11, 1, 1
	BRA         L_show_reset231
	NOP
	NOP
;main.c,318 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr23_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr23_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,319 :: 		asm CLRWDT;
	CLRWDT
;main.c,320 :: 		}
	GOTO        L_show_reset232
L_show_reset230:
;main.c,321 :: 		else if(type!=0 & type!=6) {// 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_reset233
;main.c,322 :: 		led_wr_str (1, 0, "RESET   ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr24_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr24_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,323 :: 		asm CLRWDT;
	CLRWDT
;main.c,324 :: 		delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_show_reset234:
	DECFSZ      R13, 1, 1
	BRA         L_show_reset234
	DECFSZ      R12, 1, 1
	BRA         L_show_reset234
	DECFSZ      R11, 1, 1
	BRA         L_show_reset234
	NOP
	NOP
;main.c,325 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr25_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr25_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,326 :: 		asm CLRWDT;
	CLRWDT
;main.c,327 :: 		}
	GOTO        L_show_reset235
L_show_reset233:
;main.c,329 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,330 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,331 :: 		}
L_show_reset235:
L_show_reset232:
;main.c,332 :: 		Low = 0;
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
;main.c,333 :: 		Mid = 0;
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,334 :: 		High = 0;
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,335 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,336 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,337 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,338 :: 		return;
;main.c,339 :: 		}
L_end_show_reset:
	RETURN      0
; end of _show_reset

_btn_push:

;main.c,341 :: 		void btn_push() {
;main.c,342 :: 		asm CLRWDT;
	CLRWDT
;main.c,343 :: 		if(type==4 | type==5)  {   // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push236
;main.c,344 :: 		led_wr_str (2, 16+12*4, "TUNE", 4);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr26_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr26_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,345 :: 		}
	GOTO        L_btn_push237
L_btn_push236:
;main.c,346 :: 		else if(type!=0 & type!=6) {   // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push238
;main.c,347 :: 		led_wr_str (1, 4, "TUNE", 4);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr27_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr27_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,348 :: 		}
	GOTO        L_btn_push239
L_btn_push238:
;main.c,350 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,351 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,352 :: 		}
L_btn_push239:
L_btn_push237:
;main.c,353 :: 		Low = 0;
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
;main.c,354 :: 		Mid = 0;
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,355 :: 		High = 0;
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,356 :: 		tune();
	CALL        _tune+0, 0
;main.c,357 :: 		if(type==0) {    // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_btn_push240
;main.c,358 :: 		if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push564
	MOVF        _SWR+0, 0 
	SUBLW       150
L__btn_push564:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push241
	BCF         LATB+0, 6 
	BSF         LATB+0, 7 
	GOTO        L_btn_push242
L_btn_push241:
;main.c,359 :: 		else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push565
	MOVF        _SWR+0, 0 
	SUBLW       250
L__btn_push565:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push243
	BCF         PORTB+0, 6 
	BCF         PORTB+0, 7 
	GOTO        L_btn_push244
L_btn_push243:
;main.c,360 :: 		else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
	BSF         PORTB+0, 6 
	BCF         PORTB+0, 7 
L_btn_push244:
L_btn_push242:
;main.c,361 :: 		}
	GOTO        L_btn_push245
L_btn_push240:
;main.c,362 :: 		else if(type==6){
	MOVF        _type+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_btn_push246
;main.c,363 :: 		if(swr<=150) { LATB.B6 = 1; LATB.B7 = 0; } // Green
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push566
	MOVF        _SWR+0, 0 
	SUBLW       150
L__btn_push566:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push247
	BSF         LATB+0, 6 
	BCF         LATB+0, 7 
	GOTO        L_btn_push248
L_btn_push247:
;main.c,364 :: 		else if(swr<=250) {PORTB.B6 = 1; PORTB.B7 = 1;} // Orange
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push567
	MOVF        _SWR+0, 0 
	SUBLW       250
L__btn_push567:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push249
	BSF         PORTB+0, 6 
	BSF         PORTB+0, 7 
	GOTO        L_btn_push250
L_btn_push249:
;main.c,365 :: 		else { PORTB.B6 = 0; PORTB.B7 = 1; }  // Red
	BCF         PORTB+0, 6 
	BSF         PORTB+0, 7 
L_btn_push250:
L_btn_push248:
;main.c,366 :: 		}
	GOTO        L_btn_push251
L_btn_push246:
;main.c,367 :: 		else if(Loss_mode==0 | Loss_ind==0) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_Loss_ind+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push252
	CALL        _lcd_ind+0, 0
L_btn_push252:
L_btn_push251:
L_btn_push245:
;main.c,368 :: 		if(SWR<=150) Low = 1;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push568
	MOVF        _SWR+0, 0 
	SUBLW       150
L__btn_push568:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push253
	BSF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	GOTO        L_btn_push254
L_btn_push253:
;main.c,369 :: 		else if(SWR<=250) Mid = 1;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push569
	MOVF        _SWR+0, 0 
	SUBLW       250
L__btn_push569:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push255
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	GOTO        L_btn_push256
L_btn_push255:
;main.c,370 :: 		else High = 1;
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
L_btn_push256:
L_btn_push254:
;main.c,371 :: 		EEPROM_Write(255, cap);
	MOVLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_cap+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,372 :: 		EEPROM_Write(254, ind);
	MOVLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_ind+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,373 :: 		EEPROM_Write(253, SW);
	MOVLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_SW+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,374 :: 		EEPROM_Write(252, swr_a/256);
	MOVLW       252
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVLW       0
	MOVWF       R4 
	MOVLW       1
	MOVWF       R5 
	MOVF        _swr_a+0, 0 
	MOVWF       R0 
	MOVF        _swr_a+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,375 :: 		EEPROM_Write(251, swr_a%256);
	MOVLW       251
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVLW       0
	MOVWF       R4 
	MOVLW       1
	MOVWF       R5 
	MOVF        _swr_a+0, 0 
	MOVWF       R0 
	MOVF        _swr_a+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,376 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,377 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,378 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,379 :: 		SWR_fixed_old = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _SWR_fixed_old+0 
	MOVF        _SWR+1, 0 
	MOVWF       _SWR_fixed_old+1 
;main.c,380 :: 		p_Tx = 0;
	BCF         LATA7_bit+0, BitPos(LATA7_bit+0) 
;main.c,381 :: 		n_Tx = 1;
	BSF         LATA3_bit+0, BitPos(LATA3_bit+0) 
;main.c,382 :: 		asm CLRWDT;
	CLRWDT
;main.c,383 :: 		return;
;main.c,384 :: 		}
L_end_btn_push:
	RETURN      0
; end of _btn_push

_lcd_prep:

;main.c,386 :: 		void lcd_prep() {
;main.c,387 :: 		asm CLRWDT;
	CLRWDT
;main.c,388 :: 		if(type==4 |type==5){   // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep257
;main.c,389 :: 		if(lcd_prep_short==0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep258
;main.c,390 :: 		led_wr_str (0, 22, "ATU-100", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       22
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr28_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr28_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,391 :: 		led_wr_str (2, 4, "mini board", 10);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr29_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr29_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,392 :: 		led_wr_str (4, 16, "by N7DDC", 8);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr30_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr30_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,393 :: 		led_wr_str (6, 4, "FW ver 3.1", 10);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr31_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr31_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,394 :: 		asm CLRWDT;
	CLRWDT
;main.c,395 :: 		Delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_lcd_prep259:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep259
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep259
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep259
	NOP
	NOP
;main.c,396 :: 		asm CLRWDT;
	CLRWDT
;main.c,397 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep260:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep260
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep260
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep260
	NOP
	NOP
;main.c,398 :: 		asm CLRWDT;
	CLRWDT
;main.c,399 :: 		led_wr_str (0, 16, "        ", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr32_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr32_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,400 :: 		led_wr_str (2, 4, "          ", 10);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr33_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr33_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,401 :: 		led_wr_str (4, 16, "        ", 8);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr34_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr34_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,402 :: 		led_wr_str (6, 4, "          ", 10);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr35_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr35_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,403 :: 		}
L_lcd_prep258:
;main.c,404 :: 		Delay_ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_lcd_prep261:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep261
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep261
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep261
	NOP
	NOP
;main.c,405 :: 		led_wr_str (0, 16, "PWR=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr36_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr36_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,406 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr37_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr37_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,407 :: 		if(Auto) led_wr_str (0, 16+8*12, ".", 1);
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep262
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr38_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr38_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep262:
;main.c,408 :: 		}
	GOTO        L_lcd_prep263
L_lcd_prep257:
;main.c,409 :: 		else if(type!=0 & type!=6) {   // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep264
;main.c,410 :: 		if(lcd_prep_short==0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep265
;main.c,411 :: 		led_wr_str (0, 4, "ATU-100", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr39_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr39_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,412 :: 		led_wr_str (1, 3, "mini board", 10);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr40_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr40_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,413 :: 		asm CLRWDT;
	CLRWDT
;main.c,414 :: 		Delay_ms(700);
	MOVLW       15
	MOVWF       R11, 0
	MOVLW       53
	MOVWF       R12, 0
	MOVLW       81
	MOVWF       R13, 0
L_lcd_prep266:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep266
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep266
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep266
;main.c,415 :: 		asm CLRWDT;
	CLRWDT
;main.c,416 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep267:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep267
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep267
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep267
	NOP
	NOP
;main.c,417 :: 		asm CLRWDT;
	CLRWDT
;main.c,418 :: 		led_wr_str (0, 4, "by N7DDC", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr41_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr41_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,419 :: 		led_wr_str (1, 3, "FW ver 3.1", 10);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr42_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr42_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,420 :: 		asm CLRWDT;
	CLRWDT
;main.c,421 :: 		Delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_lcd_prep268:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep268
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep268
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep268
	NOP
	NOP
;main.c,422 :: 		asm CLRWDT;
	CLRWDT
;main.c,423 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep269:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep269
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep269
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep269
	NOP
	NOP
;main.c,424 :: 		asm CLRWDT;
	CLRWDT
;main.c,425 :: 		led_wr_str (0, 4, "        ", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr43_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr43_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,426 :: 		led_wr_str (1, 3, "          ", 10);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr44_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr44_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,427 :: 		}
L_lcd_prep265:
;main.c,428 :: 		Delay_ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_lcd_prep270:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep270
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep270
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep270
	NOP
	NOP
;main.c,429 :: 		led_wr_str (0, 0, "PWR=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr45_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr45_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,430 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr46_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr46_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,431 :: 		if(Auto) led_wr_str (0, 8, ".", 1);
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep271
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr47_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr47_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep271:
;main.c,432 :: 		}
L_lcd_prep264:
L_lcd_prep263:
;main.c,433 :: 		asm CLRWDT;
	CLRWDT
;main.c,434 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,435 :: 		return;
;main.c,436 :: 		}
L_end_lcd_prep:
	RETURN      0
; end of _lcd_prep

_lcd_swr:

;main.c,439 :: 		void lcd_swr(int swr) {
;main.c,440 :: 		asm CLRWDT;
	CLRWDT
;main.c,441 :: 		if(swr!=SWR_old) {
	MOVF        FARG_lcd_swr_swr+1, 0 
	XORWF       _SWR_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr572
	MOVF        _SWR_old+0, 0 
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr572:
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr272
;main.c,442 :: 		SWR_old = swr;
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       _SWR_old+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       _SWR_old+1 
;main.c,443 :: 		if(swr==1) {  // Low power
	MOVLW       0
	XORWF       FARG_lcd_swr_swr+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr573
	MOVLW       1
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr573:
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr273
;main.c,444 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, "0.00", 4);   // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr274
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr48_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr48_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr275
L_lcd_swr274:
;main.c,445 :: 		else if(type!=0 & type!=6) led_wr_str (1, 4, "0.00", 4);  // 1602  & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr276
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr49_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr49_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr277
L_lcd_swr276:
;main.c,446 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr278
;main.c,447 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,448 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,449 :: 		}
	GOTO        L_lcd_swr279
L_lcd_swr278:
;main.c,450 :: 		else if(type==6){
	MOVF        _type+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr280
;main.c,451 :: 		LATB.B6 = 0;
	BCF         LATB+0, 6 
;main.c,452 :: 		LATB.B7 = 0;
	BCF         LATB+0, 7 
;main.c,453 :: 		}
L_lcd_swr280:
L_lcd_swr279:
L_lcd_swr277:
L_lcd_swr275:
;main.c,454 :: 		Low = 0;
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
;main.c,455 :: 		Mid = 0;
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
;main.c,456 :: 		High = 0;
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
;main.c,457 :: 		SWR_old = 0;
	CLRF        _SWR_old+0 
	CLRF        _SWR_old+1 
;main.c,458 :: 		}
	GOTO        L_lcd_swr281
L_lcd_swr273:
;main.c,460 :: 		SWR_old = swr;
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       _SWR_old+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       _SWR_old+1 
;main.c,461 :: 		IntToStr(swr, work_str);
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,462 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,463 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,464 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,465 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,466 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr282
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr283
L_lcd_swr282:
;main.c,467 :: 		else if(type!=0 & type!=6) led_wr_str (1, 4, work_str_2, 4);       // 1602  & 128*32
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr284
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr285
L_lcd_swr284:
;main.c,468 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr286
;main.c,469 :: 		if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr574
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       150
L__lcd_swr574:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr287
	BCF         LATB+0, 6 
	BSF         LATB+0, 7 
	GOTO        L_lcd_swr288
L_lcd_swr287:
;main.c,470 :: 		else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr575
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       250
L__lcd_swr575:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr289
	BCF         PORTB+0, 6 
	BCF         PORTB+0, 7 
	GOTO        L_lcd_swr290
L_lcd_swr289:
;main.c,471 :: 		else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
	BSF         PORTB+0, 6 
	BCF         PORTB+0, 7 
L_lcd_swr290:
L_lcd_swr288:
;main.c,472 :: 		}
	GOTO        L_lcd_swr291
L_lcd_swr286:
;main.c,473 :: 		else if(type==6){
	MOVF        _type+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr292
;main.c,474 :: 		if(swr<=150) { LATB.B6 = 1; LATB.B7 = 0; } // Green
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr576
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       150
L__lcd_swr576:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr293
	BSF         LATB+0, 6 
	BCF         LATB+0, 7 
	GOTO        L_lcd_swr294
L_lcd_swr293:
;main.c,475 :: 		else if(swr<=250) {PORTB.B6 = 1; PORTB.B7 = 1;} // Orange
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr577
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       250
L__lcd_swr577:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr295
	BSF         PORTB+0, 6 
	BSF         PORTB+0, 7 
	GOTO        L_lcd_swr296
L_lcd_swr295:
;main.c,476 :: 		else { PORTB.B6 = 0; PORTB.B7 = 1; }  // Red
	BCF         PORTB+0, 6 
	BSF         PORTB+0, 7 
L_lcd_swr296:
L_lcd_swr294:
;main.c,477 :: 		}
L_lcd_swr292:
L_lcd_swr291:
L_lcd_swr285:
L_lcd_swr283:
;main.c,478 :: 		if(SWR<=150) {Low = 1; Mid = 0; High = 0;}
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr578
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       150
L__lcd_swr578:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr297
	BSF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
	GOTO        L_lcd_swr298
L_lcd_swr297:
;main.c,479 :: 		else if(SWR<=250) {Low = 0; Mid = 1; High = 0;}
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr579
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       250
L__lcd_swr579:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr299
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
	GOTO        L_lcd_swr300
L_lcd_swr299:
;main.c,480 :: 		else {Low = 0; Mid = 0; High = 1; }
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
L_lcd_swr300:
L_lcd_swr298:
;main.c,481 :: 		}
L_lcd_swr281:
;main.c,482 :: 		}
L_lcd_swr272:
;main.c,483 :: 		asm CLRWDT;
	CLRWDT
;main.c,484 :: 		return;
;main.c,485 :: 		}
L_end_lcd_swr:
	RETURN      0
; end of _lcd_swr

_button_delay:

;main.c,488 :: 		void button_delay() {
;main.c,489 :: 		if((Button(&PORTB, 0, 25, 0)) | (Button(&PORTB, 1, 25, 0)) | (Button(&PORTB, 2, 25, 0))) {
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       25
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__button_delay+0 
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       25
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 0 
	IORWF       FLOC__button_delay+0, 1 
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       25
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        FLOC__button_delay+0, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_delay301
;main.c,490 :: 		but = 1;
	MOVLW       1
	MOVWF       _but+0 
;main.c,491 :: 		}
L_button_delay301:
;main.c,492 :: 		return;
;main.c,493 :: 		}
L_end_button_delay:
	RETURN      0
; end of _button_delay

_show_pwr:

;main.c,495 :: 		void show_pwr(int Power, int SWR) {
;main.c,498 :: 		asm CLRWDT;
	CLRWDT
;main.c,500 :: 		if(Test==0 & Loss_ind==1 & SWR>=100) {
	MOVF        _Test+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_Loss_ind+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVLW       128
	XORWF       FARG_show_pwr_SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr582
	MOVLW       100
	SUBWF       FARG_show_pwr_SWR+0, 0 
L__show_pwr582:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr302
;main.c,501 :: 		if(Loss_mode==0) {   // prepare
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr303
;main.c,502 :: 		if(type==4 |type==5){   // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr304
;main.c,503 :: 		led_wr_str(4, 16, "ANT=0.0W", 8);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr50_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr50_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,504 :: 		led_wr_str(6, 16, "EFF=  0%", 8);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr51_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr51_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,505 :: 		}
	GOTO        L_show_pwr305
L_show_pwr304:
;main.c,506 :: 		else if(type==2 | type==3) {   // 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr306
;main.c,507 :: 		led_wr_str (0, 9, "ANT=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr52_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr52_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,508 :: 		led_wr_str (1, 9, "EFF=  0%", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr53_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr53_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,509 :: 		}
	GOTO        L_show_pwr307
L_show_pwr306:
;main.c,510 :: 		else if(type==1) {   // 1602 LCD
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr308
;main.c,511 :: 		led_wr_str (0, 9, "AN=0.0W", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr54_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr54_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,512 :: 		led_wr_str (1, 9, "EFF= 0%", 7);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr55_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr55_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,513 :: 		}
L_show_pwr308:
L_show_pwr307:
L_show_pwr305:
;main.c,514 :: 		}
L_show_pwr303:
;main.c,515 :: 		Loss_mode = 1;
	MOVLW       1
	MOVWF       _Loss_mode+0 
;main.c,516 :: 		}
	GOTO        L_show_pwr309
L_show_pwr302:
;main.c,518 :: 		if(Loss_mode==1) lcd_ind();
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr310
	CALL        _lcd_ind+0, 0
L_show_pwr310:
;main.c,519 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,520 :: 		}
L_show_pwr309:
;main.c,521 :: 		asm CLRWDT;
	CLRWDT
;main.c,522 :: 		if(Power != Power_old) {
	MOVF        FARG_show_pwr_Power+1, 0 
	XORWF       _Power_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr583
	MOVF        _Power_old+0, 0 
	XORWF       FARG_show_pwr_Power+0, 0 
L__show_pwr583:
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr311
;main.c,523 :: 		Power_old = Power;
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       _Power_old+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       _Power_old+1 
;main.c,526 :: 		if(Power >= 100) {   // > 10 W
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr584
	MOVLW       100
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr584:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr313
;main.c,527 :: 		Power += 5;  // rounding to 1 W
	MOVLW       5
	ADDWF       FARG_show_pwr_Power+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      FARG_show_pwr_Power+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       FARG_show_pwr_Power+0 
	MOVF        R1, 0 
	MOVWF       FARG_show_pwr_Power+1 
;main.c,528 :: 		IntToStr(Power, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,529 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,530 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,531 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,532 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,533 :: 		}
	GOTO        L_show_pwr314
L_show_pwr313:
;main.c,535 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,536 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr315
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr316
L_show_pwr315:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr316:
;main.c,537 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,538 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr317
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr318
L_show_pwr317:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr318:
;main.c,539 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,540 :: 		}
L_show_pwr314:
;main.c,542 :: 		if(type==4 | type==5) led_wr_str (0, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr319
	CLRF        FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr320
L_show_pwr319:
;main.c,543 :: 		else if(type!=0 & type!=6) led_wr_str (0, 4, work_str_2, 4);  // 1602  & 128*32
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr321
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr321:
L_show_pwr320:
;main.c,546 :: 		if(Loss_mode==1)  {
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr322
;main.c,547 :: 		if(ind==0 & cap==0) swr_a = SWR;
	MOVF        main_ind+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_cap+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr323
	MOVF        FARG_show_pwr_SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        FARG_show_pwr_SWR+1, 0 
	MOVWF       _swr_a+1 
L_show_pwr323:
;main.c,548 :: 		a = 1.0 / ((swr_a/100.0 + 100.0/swr_a) * Fid_loss/10.0 * 0.115 + 1.0); // Fider loss
	MOVF        _swr_a+0, 0 
	MOVWF       R0 
	MOVF        _swr_a+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+4 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+5 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+6 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+7 
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	MOVF        FLOC__show_pwr+4, 0 
	MOVWF       R0 
	MOVF        FLOC__show_pwr+5, 0 
	MOVWF       R1 
	MOVF        FLOC__show_pwr+6, 0 
	MOVWF       R2 
	MOVF        FLOC__show_pwr+7, 0 
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+0 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+1 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+2 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+3 
	MOVF        FLOC__show_pwr+4, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+5, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+6, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+7, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       72
	MOVWF       R2 
	MOVLW       133
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        FLOC__show_pwr+0, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+1, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+2, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+0 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+1 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+2 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+3 
	MOVF        _Fid_loss+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        FLOC__show_pwr+0, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+1, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+2, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       130
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       31
	MOVWF       R4 
	MOVLW       133
	MOVWF       R5 
	MOVLW       107
	MOVWF       R6 
	MOVLW       123
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       0
	MOVWF       R2 
	MOVLW       127
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+8 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+9 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+10 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+11 
	MOVF        FLOC__show_pwr+8, 0 
	MOVWF       show_pwr_a_L0+0 
	MOVF        FLOC__show_pwr+9, 0 
	MOVWF       show_pwr_a_L0+1 
	MOVF        FLOC__show_pwr+10, 0 
	MOVWF       show_pwr_a_L0+2 
	MOVF        FLOC__show_pwr+11, 0 
	MOVWF       show_pwr_a_L0+3 
;main.c,549 :: 		b = 4.0 / (2.0 + SWR/100.0 + 100.0/SWR);    // SWR loss
	MOVF        FARG_show_pwr_SWR+0, 0 
	MOVWF       R0 
	MOVF        FARG_show_pwr_SWR+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+4 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+5 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+6 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+7 
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	MOVF        FLOC__show_pwr+4, 0 
	MOVWF       R0 
	MOVF        FLOC__show_pwr+5, 0 
	MOVWF       R1 
	MOVF        FLOC__show_pwr+6, 0 
	MOVWF       R2 
	MOVF        FLOC__show_pwr+7, 0 
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+0 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+1 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+2 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+3 
	MOVF        FLOC__show_pwr+4, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+5, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+6, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+7, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       72
	MOVWF       R2 
	MOVLW       133
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        FLOC__show_pwr+0, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+1, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+2, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       0
	MOVWF       R2 
	MOVLW       129
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       show_pwr_b_L0+0 
	MOVF        R1, 0 
	MOVWF       show_pwr_b_L0+1 
	MOVF        R2, 0 
	MOVWF       show_pwr_b_L0+2 
	MOVF        R3, 0 
	MOVWF       show_pwr_b_L0+3 
;main.c,550 :: 		if(a>=1.0) a = 1.0;
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        FLOC__show_pwr+8, 0 
	MOVWF       R0 
	MOVF        FLOC__show_pwr+9, 0 
	MOVWF       R1 
	MOVF        FLOC__show_pwr+10, 0 
	MOVWF       R2 
	MOVF        FLOC__show_pwr+11, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr324
	MOVLW       0
	MOVWF       show_pwr_a_L0+0 
	MOVLW       0
	MOVWF       show_pwr_a_L0+1 
	MOVLW       0
	MOVWF       show_pwr_a_L0+2 
	MOVLW       127
	MOVWF       show_pwr_a_L0+3 
L_show_pwr324:
;main.c,551 :: 		if(b>=1.0) b = 1.0;
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        show_pwr_b_L0+0, 0 
	MOVWF       R0 
	MOVF        show_pwr_b_L0+1, 0 
	MOVWF       R1 
	MOVF        show_pwr_b_L0+2, 0 
	MOVWF       R2 
	MOVF        show_pwr_b_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr325
	MOVLW       0
	MOVWF       show_pwr_b_L0+0 
	MOVLW       0
	MOVWF       show_pwr_b_L0+1 
	MOVLW       0
	MOVWF       show_pwr_b_L0+2 
	MOVLW       127
	MOVWF       show_pwr_b_L0+3 
L_show_pwr325:
;main.c,552 :: 		p_ant = Power * a * b;
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       R0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVF        show_pwr_a_L0+0, 0 
	MOVWF       R4 
	MOVF        show_pwr_a_L0+1, 0 
	MOVWF       R5 
	MOVF        show_pwr_a_L0+2, 0 
	MOVWF       R6 
	MOVF        show_pwr_a_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        show_pwr_b_L0+0, 0 
	MOVWF       R4 
	MOVF        show_pwr_b_L0+1, 0 
	MOVWF       R5 
	MOVF        show_pwr_b_L0+2, 0 
	MOVWF       R6 
	MOVF        show_pwr_b_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       show_pwr_p_ant_L0+0 
	MOVF        R1, 0 
	MOVWF       show_pwr_p_ant_L0+1 
;main.c,553 :: 		eff = a * b * 100;
	MOVF        show_pwr_a_L0+0, 0 
	MOVWF       R0 
	MOVF        show_pwr_a_L0+1, 0 
	MOVWF       R1 
	MOVF        show_pwr_a_L0+2, 0 
	MOVWF       R2 
	MOVF        show_pwr_a_L0+3, 0 
	MOVWF       R3 
	MOVF        show_pwr_b_L0+0, 0 
	MOVWF       R4 
	MOVF        show_pwr_b_L0+1, 0 
	MOVWF       R5 
	MOVF        show_pwr_b_L0+2, 0 
	MOVWF       R6 
	MOVF        show_pwr_b_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       show_pwr_eff_L0+0 
	MOVF        R1, 0 
	MOVWF       show_pwr_eff_L0+1 
;main.c,554 :: 		if(eff>=100) eff = 99;
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr585
	MOVLW       100
	SUBWF       R0, 0 
L__show_pwr585:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr326
	MOVLW       99
	MOVWF       show_pwr_eff_L0+0 
	MOVLW       0
	MOVWF       show_pwr_eff_L0+1 
L_show_pwr326:
;main.c,557 :: 		if(p_ant >= 100) {   // > 10 W
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr586
	MOVLW       100
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr586:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr328
;main.c,558 :: 		p_ant += 5;  // rounding to 1 W
	MOVLW       5
	ADDWF       show_pwr_p_ant_L0+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      show_pwr_p_ant_L0+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       show_pwr_p_ant_L0+0 
	MOVF        R1, 0 
	MOVWF       show_pwr_p_ant_L0+1 
;main.c,559 :: 		IntToStr(p_ant, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,560 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,561 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,562 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,563 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,564 :: 		}
	GOTO        L_show_pwr329
L_show_pwr328:
;main.c,566 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,567 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr330
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr331
L_show_pwr330:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr331:
;main.c,568 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,569 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr332
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr333
L_show_pwr332:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr333:
;main.c,570 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,571 :: 		}
L_show_pwr329:
;main.c,573 :: 		if(type==4 | type==5) led_wr_str (4, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr334
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr335
L_show_pwr334:
;main.c,574 :: 		else if(type==2 | type==3) led_wr_str (0, 13, work_str_2, 4);  // 128*32
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr336
	CLRF        FARG_led_wr_str+0 
	MOVLW       13
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr337
L_show_pwr336:
;main.c,575 :: 		else if(type==1) led_wr_str (0, 12, work_str_2, 4);  // 1602
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr338
	CLRF        FARG_led_wr_str+0 
	MOVLW       12
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr338:
L_show_pwr337:
L_show_pwr335:
;main.c,577 :: 		IntToStr(eff, work_str);
	MOVF        show_pwr_eff_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_eff_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,578 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
;main.c,579 :: 		work_str_2[1] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+1 
;main.c,580 :: 		if(type==4 | type==5) led_wr_str(6, 16+5*12, work_str_2, 2);
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr339
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       76
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr340
L_show_pwr339:
;main.c,581 :: 		else if(type==2 | type==3) led_wr_str(1, 14, work_str_2, 2);
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr341
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       14
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr342
L_show_pwr341:
;main.c,582 :: 		else if(type==1) led_wr_str(1, 13, work_str_2, 2);
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr343
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       13
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr343:
L_show_pwr342:
L_show_pwr340:
;main.c,583 :: 		}
L_show_pwr322:
;main.c,584 :: 		}
L_show_pwr311:
;main.c,585 :: 		asm CLRWDT;
	CLRWDT
;main.c,586 :: 		return;
;main.c,587 :: 		}
L_end_show_pwr:
	RETURN      0
; end of _show_pwr

_lcd_pwr:

;main.c,590 :: 		void lcd_pwr() {
;main.c,591 :: 		int p = 0;
	CLRF        lcd_pwr_p_L0+0 
	CLRF        lcd_pwr_p_L0+1 
;main.c,593 :: 		int delta = Auto_delta - 100;
	MOVLW       100
	SUBWF       _Auto_delta+0, 0 
	MOVWF       lcd_pwr_delta_L0+0 
	MOVLW       0
	SUBWFB      _Auto_delta+1, 0 
	MOVWF       lcd_pwr_delta_L0+1 
;main.c,595 :: 		int SWR_fixed = 1;
	MOVLW       1
	MOVWF       lcd_pwr_SWR_fixed_L0+0 
	MOVLW       0
	MOVWF       lcd_pwr_SWR_fixed_L0+1 
;main.c,596 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,597 :: 		asm CLRWDT;
	CLRWDT
;main.c,599 :: 		cnt = 120;
	MOVLW       120
	MOVWF       lcd_pwr_cnt_L0+0 
;main.c,600 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	CLRF        lcd_pwr_peak_cnt_L0+0 
L_lcd_pwr344:
	MOVF        lcd_pwr_cnt_L0+0, 0 
	SUBWF       lcd_pwr_peak_cnt_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr345
;main.c,601 :: 		if(PORTB.B4==0 | PORTB.B5==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC       PORTB+0, 4 
	GOTO        L__lcd_pwr588
	BSF         R6, 0 
	GOTO        L__lcd_pwr589
L__lcd_pwr588:
	BCF         R6, 0 
L__lcd_pwr589:
	BTFSC       PORTB+0, 5 
	GOTO        L__lcd_pwr590
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr591
L__lcd_pwr590:
	BCF         STATUS+0, 0 
L__lcd_pwr591:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr592
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr592
	BCF         R6, 0 
	GOTO        L__lcd_pwr593
L__lcd_pwr592:
	BSF         R6, 0 
L__lcd_pwr593:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr594
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr595
L__lcd_pwr594:
	BCF         STATUS+0, 0 
L__lcd_pwr595:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr596
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr596
	BCF         R6, 0 
	GOTO        L__lcd_pwr597
L__lcd_pwr596:
	BSF         R6, 0 
L__lcd_pwr597:
	BTFSS       R6, 0 
	GOTO        L_lcd_pwr347
	CALL        _button_delay+0, 0
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr348
	CLRF        _but+0 
	GOTO        L_end_lcd_pwr
L_lcd_pwr348:
L_lcd_pwr347:
;main.c,602 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.c,603 :: 		if(PWR>p) {p = PWR; SWR_fixed = SWR;}
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr598
	MOVF        _PWR+0, 0 
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr598:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr349
	MOVF        _PWR+0, 0 
	MOVWF       lcd_pwr_p_L0+0 
	MOVF        _PWR+1, 0 
	MOVWF       lcd_pwr_p_L0+1 
	MOVF        _SWR+0, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+1 
L_lcd_pwr349:
;main.c,604 :: 		Delay_ms(3);
	MOVLW       16
	MOVWF       R12, 0
	MOVLW       148
	MOVWF       R13, 0
L_lcd_pwr350:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr350
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr350
	NOP
;main.c,600 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	INCF        lcd_pwr_peak_cnt_L0+0, 1 
;main.c,605 :: 		}
	GOTO        L_lcd_pwr344
L_lcd_pwr345:
;main.c,606 :: 		asm CLRWDT;
	CLRWDT
;main.c,607 :: 		Power = p;
	MOVF        lcd_pwr_p_L0+0, 0 
	MOVWF       _Power+0 
	MOVF        lcd_pwr_p_L0+1, 0 
	MOVWF       _Power+1 
;main.c,608 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,609 :: 		if(SWR_fixed>=100) {
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr599
	MOVLW       100
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr599:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr351
;main.c,610 :: 		dysp_on();          // dysplay ON
	CALL        _dysp_on+0, 0
;main.c,611 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,612 :: 		}
L_lcd_pwr351:
;main.c,614 :: 		if(Auto & SWR_fixed>=Auto_delta & ((SWR_fixed>SWR_fixed_old & (SWR_fixed-SWR_fixed_old)>delta) | (SWR_fixed<SWR_fixed_old & (SWR_fixed_old-SWR_fixed)>delta) | SWR_fixed_old==999))
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _Auto_delta+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr600
	MOVF        _Auto_delta+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr600:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       _Auto+0, 0 
	MOVWF       R5 
	MOVLW       128
	XORWF       _SWR_fixed_old+1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr601
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	SUBWF       _SWR_fixed_old+0, 0 
L__lcd_pwr601:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R3 
	MOVF        _SWR_fixed_old+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       R1 
	MOVF        _SWR_fixed_old+1, 0 
	SUBWFB      lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       lcd_pwr_delta_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr602
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr602:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R3, 0 
	MOVWF       R4 
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       _SWR_fixed_old+1, 0 
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr603
	MOVF        _SWR_fixed_old+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr603:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R3 
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	SUBWF       _SWR_fixed_old+0, 0 
	MOVWF       R1 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	SUBWFB      _SWR_fixed_old+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       lcd_pwr_delta_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr604
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr604:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	ANDWF       R0, 1 
	MOVF        R0, 0 
	IORWF       R4, 0 
	MOVWF       R1 
	MOVF        _SWR_fixed_old+1, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr605
	MOVLW       231
	XORWF       _SWR_fixed_old+0, 0 
L__lcd_pwr605:
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	MOVF        R5, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr352
;main.c,615 :: 		Soft_tune = 1;
	MOVLW       1
	MOVWF       _Soft_tune+0 
L_lcd_pwr352:
;main.c,617 :: 		if(PORTB.B4==0 | PORTB.B5==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }   // Fast return if button pressed
	BTFSC       PORTB+0, 4 
	GOTO        L__lcd_pwr606
	BSF         R6, 0 
	GOTO        L__lcd_pwr607
L__lcd_pwr606:
	BCF         R6, 0 
L__lcd_pwr607:
	BTFSC       PORTB+0, 5 
	GOTO        L__lcd_pwr608
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr609
L__lcd_pwr608:
	BCF         STATUS+0, 0 
L__lcd_pwr609:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr610
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr610
	BCF         R6, 0 
	GOTO        L__lcd_pwr611
L__lcd_pwr610:
	BSF         R6, 0 
L__lcd_pwr611:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr612
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr613
L__lcd_pwr612:
	BCF         STATUS+0, 0 
L__lcd_pwr613:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr614
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr614
	BCF         R6, 0 
	GOTO        L__lcd_pwr615
L__lcd_pwr614:
	BSF         R6, 0 
L__lcd_pwr615:
	BTFSS       R6, 0 
	GOTO        L_lcd_pwr353
	CALL        _button_delay+0, 0
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr354
	CLRF        _but+0 
	GOTO        L_end_lcd_pwr
L_lcd_pwr354:
L_lcd_pwr353:
;main.c,618 :: 		show_pwr(Power, SWR_fixed);
	MOVF        _Power+0, 0 
	MOVWF       FARG_show_pwr_Power+0 
	MOVF        _Power+1, 0 
	MOVWF       FARG_show_pwr_Power+1 
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_show_pwr_SWR+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_show_pwr_SWR+1 
	CALL        _show_pwr+0, 0
;main.c,620 :: 		if(PORTB.B4==0 | PORTB.B5==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC       PORTB+0, 4 
	GOTO        L__lcd_pwr616
	BSF         R6, 0 
	GOTO        L__lcd_pwr617
L__lcd_pwr616:
	BCF         R6, 0 
L__lcd_pwr617:
	BTFSC       PORTB+0, 5 
	GOTO        L__lcd_pwr618
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr619
L__lcd_pwr618:
	BCF         STATUS+0, 0 
L__lcd_pwr619:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr620
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr620
	BCF         R6, 0 
	GOTO        L__lcd_pwr621
L__lcd_pwr620:
	BSF         R6, 0 
L__lcd_pwr621:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr622
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr623
L__lcd_pwr622:
	BCF         STATUS+0, 0 
L__lcd_pwr623:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr624
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr624
	BCF         R6, 0 
	GOTO        L__lcd_pwr625
L__lcd_pwr624:
	BSF         R6, 0 
L__lcd_pwr625:
	BTFSS       R6, 0 
	GOTO        L_lcd_pwr355
	CALL        _button_delay+0, 0
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr356
	CLRF        _but+0 
	GOTO        L_end_lcd_pwr
L_lcd_pwr356:
L_lcd_pwr355:
;main.c,621 :: 		asm CLRWDT;
	CLRWDT
;main.c,622 :: 		if(Overload==1) {
	MOVF        main_Overload+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr357
;main.c,623 :: 		if(type==4 | type==5) {                  // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr358
;main.c,624 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr56_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr56_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,625 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr359:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr359
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr359
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr359
;main.c,626 :: 		asm CLRWDT;
	CLRWDT
;main.c,627 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr57_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr57_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,628 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr360:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr360
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr360
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr360
	NOP
	NOP
;main.c,629 :: 		asm CLRWDT;
	CLRWDT
;main.c,630 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr58_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr58_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,631 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr361:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr361
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr361
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr361
	NOP
;main.c,632 :: 		asm CLRWDT;
	CLRWDT
;main.c,633 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr59_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr59_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,634 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr362:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr362
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr362
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr362
	NOP
	NOP
;main.c,635 :: 		asm CLRWDT;
	CLRWDT
;main.c,636 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr60_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr60_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,637 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr363:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr363
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr363
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr363
	NOP
;main.c,638 :: 		asm CLRWDT;
	CLRWDT
;main.c,639 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr61_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr61_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,640 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr364:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr364
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr364
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr364
	NOP
	NOP
;main.c,641 :: 		asm CLRWDT;
	CLRWDT
;main.c,642 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr62_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr62_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,643 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr365:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr365
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr365
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr365
;main.c,644 :: 		led_wr_str (2, 16, "SWR=    ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr63_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr63_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,645 :: 		}
	GOTO        L_lcd_pwr366
L_lcd_pwr358:
;main.c,646 :: 		else if(type!=0 & type!=6)  {        // 1602  & 128*32// 1602
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr367
;main.c,647 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr64_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr64_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,648 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr368:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr368
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr368
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr368
;main.c,649 :: 		asm CLRWDT;
	CLRWDT
;main.c,650 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr65_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr65_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,651 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr369:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr369
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr369
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr369
	NOP
	NOP
;main.c,652 :: 		asm CLRWDT;
	CLRWDT
;main.c,653 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr66_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr66_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,654 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr370:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr370
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr370
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr370
	NOP
;main.c,655 :: 		asm CLRWDT;
	CLRWDT
;main.c,656 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr67_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr67_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,657 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr371:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr371
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr371
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr371
	NOP
	NOP
;main.c,658 :: 		asm CLRWDT;
	CLRWDT
;main.c,659 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr68_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr68_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,660 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr372:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr372
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr372
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr372
	NOP
;main.c,661 :: 		asm CLRWDT;
	CLRWDT
;main.c,662 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr69_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr69_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,663 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr373:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr373
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr373
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr373
	NOP
	NOP
;main.c,664 :: 		asm CLRWDT;
	CLRWDT
;main.c,665 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr70_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr70_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,666 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr374:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr374
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr374
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr374
;main.c,667 :: 		led_wr_str (1, 0, "SWR=    ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr71_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr71_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,668 :: 		}
L_lcd_pwr367:
L_lcd_pwr366:
;main.c,669 :: 		asm CLRWDT;
	CLRWDT
;main.c,670 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,671 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,672 :: 		}
L_lcd_pwr357:
;main.c,673 :: 		return;
;main.c,674 :: 		}
L_end_lcd_pwr:
	RETURN      0
; end of _lcd_pwr

_lcd_ind:

;main.c,676 :: 		void lcd_ind() {
;main.c,678 :: 		asm CLRWDT;
	CLRWDT
;main.c,680 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,681 :: 		if(ind.B0) work_int += Ind1;
	BTFSS       main_ind+0, 0 
	GOTO        L_lcd_ind376
	MOVF        _Ind1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind376:
;main.c,682 :: 		if(ind.B1) work_int += Ind2;
	BTFSS       main_ind+0, 1 
	GOTO        L_lcd_ind377
	MOVF        _Ind2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind377:
;main.c,683 :: 		if(ind.B2) work_int += Ind3;
	BTFSS       main_ind+0, 2 
	GOTO        L_lcd_ind378
	MOVF        _Ind3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind378:
;main.c,684 :: 		if(ind.B3) work_int += Ind4;
	BTFSS       main_ind+0, 3 
	GOTO        L_lcd_ind379
	MOVF        _Ind4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind379:
;main.c,685 :: 		if(ind.B4) work_int += Ind5;
	BTFSS       main_ind+0, 4 
	GOTO        L_lcd_ind380
	MOVF        _Ind5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind380:
;main.c,686 :: 		if(type==1) { //  1602 LCD
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind381
;main.c,687 :: 		if(work_int>9999) {    // more then 9999 nH
	MOVLW       128
	XORLW       39
	MOVWF       R0 
	MOVLW       128
	XORWF       _work_int+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_ind627
	MOVF        _work_int+0, 0 
	SUBLW       15
L__lcd_ind627:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_ind382
;main.c,688 :: 		work_int += 500; // round
	MOVLW       244
	ADDWF       _work_int+0, 0 
	MOVWF       R0 
	MOVLW       1
	ADDWFC      _work_int+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _work_int+0 
	MOVF        R1, 0 
	MOVWF       _work_int+1 
;main.c,689 :: 		IntToStr(work_int, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,690 :: 		work_str_2[0] = ' ';
	MOVLW       32
	MOVWF       _work_str_2+0 
;main.c,691 :: 		work_str_2[1] = work_str[1];
	MOVF        _work_str+1, 0 
	MOVWF       _work_str_2+1 
;main.c,692 :: 		work_str_2[2] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+2 
;main.c,693 :: 		}
	GOTO        L_lcd_ind383
L_lcd_ind382:
;main.c,695 :: 		work_int += 50; //  Round
	MOVLW       50
	ADDWF       _work_int+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      _work_int+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _work_int+0 
	MOVF        R1, 0 
	MOVWF       _work_int+1 
;main.c,696 :: 		IntToStr(work_int, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,697 :: 		if(work_str[2] != ' ') work_str_2[0] = work_str[2]; else work_str_2[0] = '0';
	MOVF        _work_str+2, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind384
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_lcd_ind385
L_lcd_ind384:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_lcd_ind385:
;main.c,698 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,699 :: 		if(work_str[3] != ' ') work_str_2[2] = work_str[3]; else work_str_2[2] = '0';
	MOVF        _work_str+3, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind386
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_lcd_ind387
L_lcd_ind386:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_lcd_ind387:
;main.c,700 :: 		}
L_lcd_ind383:
;main.c,701 :: 		}
	GOTO        L_lcd_ind388
L_lcd_ind381:
;main.c,702 :: 		else if(work_int>9999) {// more then 9999 nH
	MOVLW       128
	XORLW       39
	MOVWF       R0 
	MOVLW       128
	XORWF       _work_int+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_ind628
	MOVF        _work_int+0, 0 
	SUBLW       15
L__lcd_ind628:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_ind389
;main.c,703 :: 		work_int += 50; //  Round
	MOVLW       50
	ADDWF       _work_int+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      _work_int+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _work_int+0 
	MOVF        R1, 0 
	MOVWF       _work_int+1 
;main.c,704 :: 		IntToStr(work_int, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,705 :: 		work_str_2[0] = work_str[1];
	MOVF        _work_str+1, 0 
	MOVWF       _work_str_2+0 
;main.c,706 :: 		work_str_2[1] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+1 
;main.c,707 :: 		work_str_2[2] = '.';
	MOVLW       46
	MOVWF       _work_str_2+2 
;main.c,708 :: 		work_str_2[3] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+3 
;main.c,709 :: 		}
	GOTO        L_lcd_ind390
L_lcd_ind389:
;main.c,711 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,712 :: 		if(work_str[2] != ' ') work_str_2[0] = work_str[2]; else work_str_2[0] = '0';
	MOVF        _work_str+2, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind391
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_lcd_ind392
L_lcd_ind391:
	MOVLW       48
	MOVWF       _work_str_2+0 
L_lcd_ind392:
;main.c,713 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,714 :: 		if(work_str[3] != ' ') work_str_2[2] = work_str[3]; else work_str_2[2] = '0';
	MOVF        _work_str+3, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind393
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_lcd_ind394
L_lcd_ind393:
	MOVLW       48
	MOVWF       _work_str_2+2 
L_lcd_ind394:
;main.c,715 :: 		if(work_str[4] != ' ') work_str_2[3] = work_str[4]; else work_str_2[3] = '0';
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind395
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+3 
	GOTO        L_lcd_ind396
L_lcd_ind395:
	MOVLW       48
	MOVWF       _work_str_2+3 
L_lcd_ind396:
;main.c,716 :: 		}
L_lcd_ind390:
L_lcd_ind388:
;main.c,718 :: 		if(type==1) {
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind397
;main.c,719 :: 		if(SW==1) column = 0; else column = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind398
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind399
L_lcd_ind398:
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind399:
;main.c,720 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr72_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr72_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,721 :: 		led_wr_str (column, 14, "uH", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       14
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr73_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr73_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,722 :: 		led_wr_str (column, 11, work_str_2, 3);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,723 :: 		}
	GOTO        L_lcd_ind400
L_lcd_ind397:
;main.c,724 :: 		else if(type==4 | type==5) {  // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind401
;main.c,725 :: 		if(SW==1) column = 4; else column = 6;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind402
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind403
L_lcd_ind402:
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind403:
;main.c,726 :: 		led_wr_str (column, 16, "L=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr74_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr74_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,727 :: 		led_wr_str (column, 16+6*12, "uH", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       88
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr75_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr75_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,728 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       40
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,729 :: 		}
	GOTO        L_lcd_ind404
L_lcd_ind401:
;main.c,730 :: 		else if(type==2 | type==3) {// 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind405
;main.c,731 :: 		if(SW==1) column = 0; else column = 1;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind406
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind407
L_lcd_ind406:
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind407:
;main.c,732 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr76_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr76_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,733 :: 		led_wr_str (column, 15, "uH", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr77_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr77_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,734 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,735 :: 		}
L_lcd_ind405:
L_lcd_ind404:
L_lcd_ind400:
;main.c,737 :: 		asm CLRWDT;
	CLRWDT
;main.c,739 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,740 :: 		if(cap.B0) work_int += Cap1;
	BTFSS       main_cap+0, 0 
	GOTO        L_lcd_ind409
	MOVF        _Cap1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind409:
;main.c,741 :: 		if(cap.B1) work_int += Cap2;
	BTFSS       main_cap+0, 1 
	GOTO        L_lcd_ind410
	MOVF        _Cap2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind410:
;main.c,742 :: 		if(cap.B2) work_int += Cap3;
	BTFSS       main_cap+0, 2 
	GOTO        L_lcd_ind411
	MOVF        _Cap3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind411:
;main.c,743 :: 		if(cap.B3) work_int += Cap4;
	BTFSS       main_cap+0, 3 
	GOTO        L_lcd_ind412
	MOVF        _Cap4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind412:
;main.c,744 :: 		if(cap.B4) work_int += Cap5;
	BTFSS       main_cap+0, 4 
	GOTO        L_lcd_ind413
	MOVF        _Cap5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind413:
;main.c,746 :: 		if(type==4 | type==5) {  // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind414
;main.c,747 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,748 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,749 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,750 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,751 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,752 :: 		if(SW==1) column = 6; else column = 4;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind415
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind416
L_lcd_ind415:
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind416:
;main.c,753 :: 		led_wr_str (column, 16, "C=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr78_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr78_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,754 :: 		led_wr_str (column, 16+6*12, "pF", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       88
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr79_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr79_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,755 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       40
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,756 :: 		}
	GOTO        L_lcd_ind417
L_lcd_ind414:
;main.c,757 :: 		else if(type==2 | type==3) {// 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind418
;main.c,758 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,759 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,760 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,761 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,762 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,763 :: 		if(SW==1) column = 1; else column = 0;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind419
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind420
L_lcd_ind419:
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind420:
;main.c,764 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr80_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr80_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,765 :: 		led_wr_str (column, 15, "pF", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr81_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr81_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,766 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,767 :: 		}
	GOTO        L_lcd_ind421
L_lcd_ind418:
;main.c,768 :: 		else if(type==1) { // 1602 LCD
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind422
;main.c,769 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,770 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,771 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,772 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,773 :: 		if(SW==1) column = 1; else column = 0;
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind423
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind424
L_lcd_ind423:
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind424:
;main.c,774 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr82_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr82_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,775 :: 		led_wr_str (column, 14, "pF", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       14
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr83_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr83_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,776 :: 		led_wr_str (column, 11, work_str_2, 3);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,777 :: 		}
L_lcd_ind422:
L_lcd_ind421:
L_lcd_ind417:
;main.c,779 :: 		asm CLRWDT;
	CLRWDT
;main.c,780 :: 		return;
;main.c,781 :: 		}
L_end_lcd_ind:
	RETURN      0
; end of _lcd_ind

_Test_init:

;main.c,783 :: 		void Test_init(void) { // Test mode
;main.c,784 :: 		if(type==4 | type==5)        // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init425
;main.c,785 :: 		led_wr_str (0, 10, "TEST MODE", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr84_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr84_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Test_init426
L_Test_init425:
;main.c,786 :: 		else if(type!=0 & type!=6)            // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init427
;main.c,787 :: 		led_wr_str (0, 3, "TEST MODE", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr85_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr85_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Test_init427:
L_Test_init426:
;main.c,788 :: 		asm CLRWDT;
	CLRWDT
;main.c,789 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init428:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init428
	DECFSZ      R12, 1, 1
	BRA         L_Test_init428
	DECFSZ      R11, 1, 1
	BRA         L_Test_init428
	NOP
	NOP
;main.c,790 :: 		asm CLRWDT;
	CLRWDT
;main.c,791 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init429:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init429
	DECFSZ      R12, 1, 1
	BRA         L_Test_init429
	DECFSZ      R11, 1, 1
	BRA         L_Test_init429
	NOP
	NOP
;main.c,792 :: 		asm CLRWDT;
	CLRWDT
;main.c,793 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init430:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init430
	DECFSZ      R12, 1, 1
	BRA         L_Test_init430
	DECFSZ      R11, 1, 1
	BRA         L_Test_init430
	NOP
	NOP
;main.c,794 :: 		asm CLRWDT;
	CLRWDT
;main.c,795 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init431:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init431
	DECFSZ      R12, 1, 1
	BRA         L_Test_init431
	DECFSZ      R11, 1, 1
	BRA         L_Test_init431
	NOP
	NOP
;main.c,796 :: 		asm CLRWDT;
	CLRWDT
;main.c,797 :: 		if(type==4 | type==5)        // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init432
;main.c,798 :: 		led_wr_str (0, 10, "         ", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr86_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr86_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Test_init433
L_Test_init432:
;main.c,799 :: 		else if(type!=0 & type!=6)            // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init434
;main.c,800 :: 		led_wr_str (0, 3,  "         ", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr87_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr87_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Test_init434:
L_Test_init433:
;main.c,801 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,802 :: 		SW = 1; // C to OUT
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,803 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,804 :: 		EEPROM_Write(255, cap);
	MOVLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_cap+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,805 :: 		EEPROM_Write(254, ind);
	MOVLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_ind+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,806 :: 		EEPROM_Write(253, SW);
	MOVLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_SW+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,808 :: 		if(type==4 | type==5)        // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init435
;main.c,809 :: 		led_wr_str (0, 16+12*8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr88_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr88_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Test_init436
L_Test_init435:
;main.c,810 :: 		else if(type!=0 & type!=6)             // 1602 LCD or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       6
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init437
;main.c,811 :: 		led_wr_str (0, 8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr89_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr89_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Test_init437:
L_Test_init436:
;main.c,813 :: 		lcd_prep_short = 1;
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
;main.c,814 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,815 :: 		return;
;main.c,816 :: 		}
L_end_Test_init:
	RETURN      0
; end of _Test_init

_cells_init:

;main.c,818 :: 		void cells_init(void) {
;main.c,820 :: 		asm CLRWDT;
	CLRWDT
;main.c,822 :: 		type = EEPROM_Read(1); // type of display
	MOVLW       1
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _type+0 
;main.c,823 :: 		if(EEPROM_Read(2) == 1) Auto = 1;
	MOVLW       2
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_cells_init438
	MOVLW       1
	MOVWF       _Auto+0 
L_cells_init438:
;main.c,824 :: 		Rel_Del = Bcd2Dec(EEPROM_Read(3)); // Relay's Delay
	MOVLW       3
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_Rel_Del+0 
	MOVLW       0
	MOVWF       main_Rel_Del+1 
;main.c,825 :: 		Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10;  // Auto_delta
	MOVLW       4
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       _Auto_delta+0 
	MOVF        PRODH+0, 0 
	MOVWF       _Auto_delta+1 
;main.c,826 :: 		min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10; // min_for_start
	MOVLW       5
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       main_min_for_start+0 
	MOVF        PRODH+0, 0 
	MOVWF       main_min_for_start+1 
;main.c,827 :: 		max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10; // max_for_start
	MOVLW       6
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       main_max_for_start+0 
	MOVF        PRODH+0, 0 
	MOVWF       main_max_for_start+1 
;main.c,828 :: 		max_swr = Bcd2Dec(EEPROM_Read(9)) * 10; // Max SWR
	MOVLW       9
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       main_max_swr+0 
	MOVF        PRODH+0, 0 
	MOVWF       main_max_swr+1 
;main.c,829 :: 		K_Mult = Bcd2Dec(EEPROM_Read(10)); // Tandem Match rate
	MOVLW       10
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_K_mult+0 
;main.c,831 :: 		asm CLRWDT;
	CLRWDT
;main.c,832 :: 		Ind1 =  Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17));  // Ind1
	MOVLW       16
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       17
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind1+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind1+1 
;main.c,833 :: 		Ind2 =  Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19));  // Ind2
	MOVLW       18
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       19
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind2+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind2+1 
;main.c,834 :: 		Ind3 =  Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21));  // Ind3
	MOVLW       20
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       21
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind3+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind3+1 
;main.c,835 :: 		Ind4 =  Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23));  // Ind4
	MOVLW       22
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       23
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind4+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind4+1 
;main.c,836 :: 		Ind5 =  Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25));  // Ind5
	MOVLW       24
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       25
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind5+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind5+1 
;main.c,838 :: 		Cap1 =  Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33));  // Cap1
	MOVLW       32
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       33
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap1+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap1+1 
;main.c,839 :: 		Cap2 =  Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35));  // Cap2
	MOVLW       34
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       35
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap2+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap2+1 
;main.c,840 :: 		Cap3 =  Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37));  // Cap3
	MOVLW       36
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       37
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap3+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap3+1 
;main.c,841 :: 		Cap4 =  Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39));  // Cap4
	MOVLW       38
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       39
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap4+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap4+1 
;main.c,842 :: 		Cap5 =  Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41));  // Cap5
	MOVLW       40
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       41
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap5+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap5+1 
;main.c,844 :: 		Dysp_delay = Bcd2Dec(EEPROM_Read(0x30)); // Dysplay ON delay
	MOVLW       48
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Dysp_delay+0 
;main.c,845 :: 		Loss_ind = EEPROM_Read(0x31);
	MOVLW       49
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_Loss_ind+0 
;main.c,846 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x32));
	MOVLW       50
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,847 :: 		asm CLRWDT;
	CLRWDT
;main.c,848 :: 		}
L_end_cells_init:
	RETURN      0
; end of _cells_init

_show_loss:

;main.c,850 :: 		void show_loss(void) {
;main.c,851 :: 		IntToStr(Fid_loss, work_str);
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,852 :: 		if(Fid_loss>=10) work_str_2[0] = work_str[4];
	MOVLW       10
	SUBWF       _Fid_loss+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_show_loss439
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_loss440
L_show_loss439:
;main.c,853 :: 		else work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_loss440:
;main.c,854 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,855 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,856 :: 		if(type==4 | type==5) led_wr_str (2, 6, work_str_2, 3); // 128*64
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_loss441
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_loss442
L_show_loss441:
;main.c,857 :: 		else if(type!=0) led_wr_str (1, 3, work_str_2, 3); // 1602 | 128*32
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_loss443
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_loss443:
L_show_loss442:
;main.c,858 :: 		return;
;main.c,859 :: 		}
L_end_show_loss:
	RETURN      0
; end of _show_loss
