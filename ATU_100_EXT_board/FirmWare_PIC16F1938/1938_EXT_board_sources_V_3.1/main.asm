
_correction:

;main.h,42 :: 		int correction(int input) {
;main.h,44 :: 		if(input <= 80) return 0;
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction486
	MOVF       FARG_correction_input+0, 0
	SUBLW      80
L__correction486:
	BTFSS      STATUS+0, 0
	GOTO       L_correction0
	CLRF       R0
	CLRF       R1
	GOTO       L_end_correction
L_correction0:
;main.h,45 :: 		if(input <= 171) input += 244;
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction487
	MOVF       FARG_correction_input+0, 0
	SUBLW      171
L__correction487:
	BTFSS      STATUS+0, 0
	GOTO       L_correction1
	MOVLW      244
	ADDWF      FARG_correction_input+0, 1
	MOVLW      0
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction2
L_correction1:
;main.h,46 :: 		else if(input <= 328) input += 254;
	MOVLW      128
	XORLW      1
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction488
	MOVF       FARG_correction_input+0, 0
	SUBLW      72
L__correction488:
	BTFSS      STATUS+0, 0
	GOTO       L_correction3
	MOVLW      254
	ADDWF      FARG_correction_input+0, 1
	MOVLW      0
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction4
L_correction3:
;main.h,47 :: 		else if(input <= 582) input += 280;
	MOVLW      128
	XORLW      2
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction489
	MOVF       FARG_correction_input+0, 0
	SUBLW      70
L__correction489:
	BTFSS      STATUS+0, 0
	GOTO       L_correction5
	MOVLW      24
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction6
L_correction5:
;main.h,48 :: 		else if(input <= 820) input += 297;
	MOVLW      128
	XORLW      3
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction490
	MOVF       FARG_correction_input+0, 0
	SUBLW      52
L__correction490:
	BTFSS      STATUS+0, 0
	GOTO       L_correction7
	MOVLW      41
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction8
L_correction7:
;main.h,49 :: 		else if(input <= 1100) input += 310;
	MOVLW      128
	XORLW      4
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction491
	MOVF       FARG_correction_input+0, 0
	SUBLW      76
L__correction491:
	BTFSS      STATUS+0, 0
	GOTO       L_correction9
	MOVLW      54
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction10
L_correction9:
;main.h,50 :: 		else if(input <= 2181) input += 430;
	MOVLW      128
	XORLW      8
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction492
	MOVF       FARG_correction_input+0, 0
	SUBLW      133
L__correction492:
	BTFSS      STATUS+0, 0
	GOTO       L_correction11
	MOVLW      174
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction12
L_correction11:
;main.h,51 :: 		else if(input <= 3322) input += 484;
	MOVLW      128
	XORLW      12
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction493
	MOVF       FARG_correction_input+0, 0
	SUBLW      250
L__correction493:
	BTFSS      STATUS+0, 0
	GOTO       L_correction13
	MOVLW      228
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction14
L_correction13:
;main.h,52 :: 		else if(input <= 4623) input += 530;
	MOVLW      128
	XORLW      18
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction494
	MOVF       FARG_correction_input+0, 0
	SUBLW      15
L__correction494:
	BTFSS      STATUS+0, 0
	GOTO       L_correction15
	MOVLW      18
	ADDWF      FARG_correction_input+0, 1
	MOVLW      2
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction16
L_correction15:
;main.h,53 :: 		else if(input <= 5862) input += 648;
	MOVLW      128
	XORLW      22
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction495
	MOVF       FARG_correction_input+0, 0
	SUBLW      230
L__correction495:
	BTFSS      STATUS+0, 0
	GOTO       L_correction17
	MOVLW      136
	ADDWF      FARG_correction_input+0, 1
	MOVLW      2
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction18
L_correction17:
;main.h,54 :: 		else if(input <= 7146) input += 743;
	MOVLW      128
	XORLW      27
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction496
	MOVF       FARG_correction_input+0, 0
	SUBLW      234
L__correction496:
	BTFSS      STATUS+0, 0
	GOTO       L_correction19
	MOVLW      231
	ADDWF      FARG_correction_input+0, 1
	MOVLW      2
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction20
L_correction19:
;main.h,55 :: 		else if(input <= 8502) input += 800;
	MOVLW      128
	XORLW      33
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction497
	MOVF       FARG_correction_input+0, 0
	SUBLW      54
L__correction497:
	BTFSS      STATUS+0, 0
	GOTO       L_correction21
	MOVLW      32
	ADDWF      FARG_correction_input+0, 1
	MOVLW      3
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction22
L_correction21:
;main.h,56 :: 		else if(input <= 10500) input += 840;
	MOVLW      128
	XORLW      41
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction498
	MOVF       FARG_correction_input+0, 0
	SUBLW      4
L__correction498:
	BTFSS      STATUS+0, 0
	GOTO       L_correction23
	MOVLW      72
	ADDWF      FARG_correction_input+0, 1
	MOVLW      3
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction24
L_correction23:
;main.h,57 :: 		else  input += 860;
	MOVLW      92
	ADDWF      FARG_correction_input+0, 1
	MOVLW      3
	ADDWFC     FARG_correction_input+1, 1
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
	MOVF       FARG_correction_input+0, 0
	MOVWF      R0
	MOVF       FARG_correction_input+1, 0
	MOVWF      R1
;main.h,60 :: 		}
L_end_correction:
	RETURN
; end of _correction

_get_reverse:

;main.h,64 :: 		int get_reverse() {
;main.h,66 :: 		FVRCON = 0b10000001; // ADC 1024 vmV Vref
	MOVLW      129
	MOVWF      FVRCON+0
;main.h,67 :: 		while(FVRCON.B6 == 0);
L_get_reverse25:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_reverse26
	GOTO       L_get_reverse25
L_get_reverse26:
;main.h,68 :: 		Reverse = ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_reverse_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_reverse_Reverse_L0+1
;main.h,69 :: 		if(Reverse <= 1000) return Reverse;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_reverse500
	MOVF       R0, 0
	SUBLW      232
L__get_reverse500:
	BTFSS      STATUS+0, 0
	GOTO       L_get_reverse27
	MOVF       get_reverse_Reverse_L0+0, 0
	MOVWF      R0
	MOVF       get_reverse_Reverse_L0+1, 0
	MOVWF      R1
	GOTO       L_end_get_reverse
L_get_reverse27:
;main.h,70 :: 		FVRCON = 0b10000010; // ADC 2048 vmV Vref
	MOVLW      130
	MOVWF      FVRCON+0
;main.h,71 :: 		while(FVRCON.B6 == 0);
L_get_reverse28:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_reverse29
	GOTO       L_get_reverse28
L_get_reverse29:
;main.h,72 :: 		Reverse = ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_reverse_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_reverse_Reverse_L0+1
;main.h,73 :: 		if(Reverse <= 1000) return Reverse * 2;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_reverse501
	MOVF       R0, 0
	SUBLW      232
L__get_reverse501:
	BTFSS      STATUS+0, 0
	GOTO       L_get_reverse30
	MOVF       get_reverse_Reverse_L0+0, 0
	MOVWF      R0
	MOVF       get_reverse_Reverse_L0+1, 0
	MOVWF      R1
	LSLF       R0, 1
	RLF        R1, 1
	GOTO       L_end_get_reverse
L_get_reverse30:
;main.h,74 :: 		FVRCON = 0b10000011; // ADC 4096 vmV Vref
	MOVLW      131
	MOVWF      FVRCON+0
;main.h,75 :: 		while(FVRCON.B6 == 0);
L_get_reverse31:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_reverse32
	GOTO       L_get_reverse31
L_get_reverse32:
;main.h,76 :: 		Reverse = ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_reverse_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_reverse_Reverse_L0+1
;main.h,77 :: 		return Reverse * 4;
	MOVF       R0, 0
	MOVWF      R2
	MOVF       R1, 0
	MOVWF      R3
	LSLF       R2, 1
	RLF        R3, 1
	LSLF       R2, 1
	RLF        R3, 1
	MOVF       R2, 0
	MOVWF      R0
	MOVF       R3, 0
	MOVWF      R1
;main.h,78 :: 		}
L_end_get_reverse:
	RETURN
; end of _get_reverse

_get_forward:

;main.h,81 :: 		int get_forward() {
;main.h,83 :: 		FVRCON = 0b10000001; // ADC 1024 vmV Vref
	MOVLW      129
	MOVWF      FVRCON+0
;main.h,84 :: 		while(FVRCON.B6 == 0);
L_get_forward33:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_forward34
	GOTO       L_get_forward33
L_get_forward34:
;main.h,85 :: 		Forward = ADC_Get_Sample(1);
	MOVLW      1
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_forward_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_forward_Forward_L0+1
;main.h,86 :: 		if(Forward <= 1000) return Forward;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_forward503
	MOVF       R0, 0
	SUBLW      232
L__get_forward503:
	BTFSS      STATUS+0, 0
	GOTO       L_get_forward35
	MOVF       get_forward_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_forward_Forward_L0+1, 0
	MOVWF      R1
	GOTO       L_end_get_forward
L_get_forward35:
;main.h,87 :: 		FVRCON = 0b10000010; // ADC 2048 vmV Vref
	MOVLW      130
	MOVWF      FVRCON+0
;main.h,88 :: 		while(FVRCON.B6 == 0);
L_get_forward36:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_forward37
	GOTO       L_get_forward36
L_get_forward37:
;main.h,89 :: 		Forward = ADC_Get_Sample(1);
	MOVLW      1
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_forward_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_forward_Forward_L0+1
;main.h,90 :: 		if(Forward <= 1000) return Forward * 2;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_forward504
	MOVF       R0, 0
	SUBLW      232
L__get_forward504:
	BTFSS      STATUS+0, 0
	GOTO       L_get_forward38
	MOVF       get_forward_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_forward_Forward_L0+1, 0
	MOVWF      R1
	LSLF       R0, 1
	RLF        R1, 1
	GOTO       L_end_get_forward
L_get_forward38:
;main.h,91 :: 		FVRCON = 0b10000011; // ADC 4096 vmV Vref
	MOVLW      131
	MOVWF      FVRCON+0
;main.h,92 :: 		while(FVRCON.B6 == 0);
L_get_forward39:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_forward40
	GOTO       L_get_forward39
L_get_forward40:
;main.h,93 :: 		Forward = ADC_Get_Sample(1);
	MOVLW      1
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_forward_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_forward_Forward_L0+1
;main.h,94 :: 		if(Forward == 1023) Overload = 1;
	MOVF       R1, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__get_forward505
	MOVLW      255
	XORWF      R0, 0
L__get_forward505:
	BTFSS      STATUS+0, 2
	GOTO       L_get_forward41
	MOVLW      1
	MOVWF      main_Overload+0
	GOTO       L_get_forward42
L_get_forward41:
;main.h,95 :: 		else Overload = 0;
	CLRF       main_Overload+0
L_get_forward42:
;main.h,96 :: 		return Forward * 4;
	MOVF       get_forward_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_forward_Forward_L0+1, 0
	MOVWF      R1
	LSLF       R0, 1
	RLF        R1, 1
	LSLF       R0, 1
	RLF        R1, 1
;main.h,97 :: 		}
L_end_get_forward:
	RETURN
; end of _get_forward

_get_pwr:

;main.h,99 :: 		void get_pwr() {
;main.h,102 :: 		asm CLRWDT;
	CLRWDT
;main.h,104 :: 		Forward = get_forward();
	CALL       _get_forward+0
	MOVF       R0, 0
	MOVWF      get_pwr_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_Forward_L0+1
	MOVLW      0
	BTFSC      get_pwr_Forward_L0+1, 7
	MOVLW      255
	MOVWF      get_pwr_Forward_L0+2
	MOVWF      get_pwr_Forward_L0+3
;main.h,105 :: 		Reverse = get_reverse();
	CALL       _get_reverse+0
	MOVF       R0, 0
	MOVWF      get_pwr_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_Reverse_L0+1
	MOVLW      0
	BTFSC      get_pwr_Reverse_L0+1, 7
	MOVLW      255
	MOVWF      get_pwr_Reverse_L0+2
	MOVWF      get_pwr_Reverse_L0+3
;main.h,106 :: 		if(D_correction==1) p = correction(Forward * 3);
	MOVF       main_D_correction+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_get_pwr43
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      R1
	MOVLW      3
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	CALL       _Mul_16X16_U+0
	MOVF       R0, 0
	MOVWF      FARG_correction_input+0
	MOVF       R1, 0
	MOVWF      FARG_correction_input+1
	CALL       _correction+0
	CALL       _int2double+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
	GOTO       L_get_pwr44
L_get_pwr43:
;main.h,107 :: 		else p = Forward * 3;
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_Forward_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_Forward_L0+3, 0
	MOVWF      R3
	MOVLW      3
	MOVWF      R4
	CLRF       R5
	CLRF       R6
	CLRF       R7
	CALL       _Mul_32x32_U+0
	CALL       _longint2double+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
L_get_pwr44:
;main.h,109 :: 		if(Reverse >= Forward)
	MOVLW      128
	XORWF      get_pwr_Reverse_L0+3, 0
	MOVWF      R0
	MOVLW      128
	XORWF      get_pwr_Forward_L0+3, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr507
	MOVF       get_pwr_Forward_L0+2, 0
	SUBWF      get_pwr_Reverse_L0+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr507
	MOVF       get_pwr_Forward_L0+1, 0
	SUBWF      get_pwr_Reverse_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr507
	MOVF       get_pwr_Forward_L0+0, 0
	SUBWF      get_pwr_Reverse_L0+0, 0
L__get_pwr507:
	BTFSS      STATUS+0, 0
	GOTO       L_get_pwr45
;main.h,110 :: 		Forward = 999;
	MOVLW      231
	MOVWF      get_pwr_Forward_L0+0
	MOVLW      3
	MOVWF      get_pwr_Forward_L0+1
	CLRF       get_pwr_Forward_L0+2
	CLRF       get_pwr_Forward_L0+3
	GOTO       L_get_pwr46
L_get_pwr45:
;main.h,112 :: 		Forward = ((Forward + Reverse) * 100) / (Forward - Reverse);
	MOVF       get_pwr_Reverse_L0+0, 0
	ADDWF      get_pwr_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_Reverse_L0+1, 0
	ADDWFC     get_pwr_Forward_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_Reverse_L0+2, 0
	ADDWFC     get_pwr_Forward_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_Reverse_L0+3, 0
	ADDWFC     get_pwr_Forward_L0+3, 0
	MOVWF      R3
	MOVLW      100
	MOVWF      R4
	CLRF       R5
	CLRF       R6
	CLRF       R7
	CALL       _Mul_32x32_U+0
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      R4
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      R5
	MOVF       get_pwr_Forward_L0+2, 0
	MOVWF      R6
	MOVF       get_pwr_Forward_L0+3, 0
	MOVWF      R7
	MOVF       get_pwr_Reverse_L0+0, 0
	SUBWF      R4, 1
	MOVF       get_pwr_Reverse_L0+1, 0
	SUBWFB     R5, 1
	MOVF       get_pwr_Reverse_L0+2, 0
	SUBWFB     R6, 1
	MOVF       get_pwr_Reverse_L0+3, 0
	SUBWFB     R7, 1
	CALL       _Div_32x32_S+0
	MOVF       R0, 0
	MOVWF      get_pwr_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_Forward_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_Forward_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_Forward_L0+3
;main.h,113 :: 		if(Forward>999) Forward = 999;
	MOVLW      128
	MOVWF      R4
	MOVLW      128
	XORWF      R3, 0
	SUBWF      R4, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr508
	MOVF       R2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr508
	MOVF       R1, 0
	SUBLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr508
	MOVF       R0, 0
	SUBLW      231
L__get_pwr508:
	BTFSC      STATUS+0, 0
	GOTO       L_get_pwr47
	MOVLW      231
	MOVWF      get_pwr_Forward_L0+0
	MOVLW      3
	MOVWF      get_pwr_Forward_L0+1
	CLRF       get_pwr_Forward_L0+2
	CLRF       get_pwr_Forward_L0+3
L_get_pwr47:
;main.h,114 :: 		}
L_get_pwr46:
;main.h,116 :: 		p = p * K_Mult / 1000.0;   // mV to Volts on Input
	MOVF       main_K_Mult+0, 0
	MOVWF      R0
	CALL       _byte2double+0
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R4
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R5
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R6
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      122
	MOVWF      R6
	MOVLW      136
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
;main.h,117 :: 		p = p / 1.414;
	MOVLW      244
	MOVWF      R4
	MOVLW      253
	MOVWF      R5
	MOVLW      52
	MOVWF      R6
	MOVLW      127
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
;main.h,118 :: 		if(P_High==1) p = p * p / 50;     // 0 - 1500 ( 1500 Watts)
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_get_pwr48
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R3
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R4
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R5
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R6
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      72
	MOVWF      R6
	MOVLW      132
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
	GOTO       L_get_pwr49
L_get_pwr48:
;main.h,119 :: 		else p = p * p / 5;               // 0 - 1510 (151.0 Watts)
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R3
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R4
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R5
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R6
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      32
	MOVWF      R6
	MOVLW      129
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
L_get_pwr49:
;main.h,120 :: 		p = p + 0.5;    // rounding
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R3
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      126
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
;main.h,122 :: 		PWR = p;
	CALL       _double2int+0
	MOVF       R0, 0
	MOVWF      _PWR+0
	MOVF       R1, 0
	MOVWF      _PWR+1
;main.h,123 :: 		if(PWR<10) SWR = 1;
	MOVLW      128
	XORWF      R1, 0
	MOVWF      R2
	MOVLW      128
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr509
	MOVLW      10
	SUBWF      R0, 0
L__get_pwr509:
	BTFSC      STATUS+0, 0
	GOTO       L_get_pwr50
	MOVLW      1
	MOVWF      _SWR+0
	MOVLW      0
	MOVWF      _SWR+1
	GOTO       L_get_pwr51
L_get_pwr50:
;main.h,124 :: 		else if(Forward<100) SWR = 999;
	MOVLW      128
	XORWF      get_pwr_Forward_L0+3, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr510
	MOVLW      0
	SUBWF      get_pwr_Forward_L0+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr510
	MOVLW      0
	SUBWF      get_pwr_Forward_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr510
	MOVLW      100
	SUBWF      get_pwr_Forward_L0+0, 0
L__get_pwr510:
	BTFSC      STATUS+0, 0
	GOTO       L_get_pwr52
	MOVLW      231
	MOVWF      _SWR+0
	MOVLW      3
	MOVWF      _SWR+1
	GOTO       L_get_pwr53
L_get_pwr52:
;main.h,125 :: 		else SWR = Forward;
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      _SWR+0
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      _SWR+1
L_get_pwr53:
L_get_pwr51:
;main.h,126 :: 		return;
;main.h,127 :: 		}
L_end_get_pwr:
	RETURN
; end of _get_pwr

_get_swr:

;main.h,129 :: 		void get_swr() {
;main.h,130 :: 		get_pwr();
	CALL       _get_pwr+0
;main.h,131 :: 		if(p_cnt!=100) {
	MOVF       _p_cnt+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr54
;main.h,132 :: 		p_cnt += 1;
	INCF       _p_cnt+0, 1
;main.h,133 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW      128
	XORWF      _P_max+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr512
	MOVF       _PWR+0, 0
	SUBWF      _P_max+0, 0
L__get_swr512:
	BTFSC      STATUS+0, 0
	GOTO       L_get_swr55
	MOVF       _PWR+0, 0
	MOVWF      _P_max+0
	MOVF       _PWR+1, 0
	MOVWF      _P_max+1
L_get_swr55:
;main.h,134 :: 		}
	GOTO       L_get_swr56
L_get_swr54:
;main.h,136 :: 		p_cnt = 0;
	CLRF       _p_cnt+0
;main.h,137 :: 		show_pwr(P_max, SWR);
	MOVF       _P_max+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _P_max+1, 0
	MOVWF      FARG_show_pwr+1
	MOVF       _SWR+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _SWR+1, 0
	MOVWF      FARG_show_pwr+1
	CALL       _show_pwr+0
;main.h,138 :: 		P_max = 0;
	CLRF       _P_max+0
	CLRF       _P_max+1
;main.h,139 :: 		}
L_get_swr56:
;main.h,140 :: 		while(PWR<min_for_start | (PWR> max_for_start & max_for_start>0)) {  // waiting for good power
L_get_swr57:
	MOVLW      128
	XORWF      _PWR+1, 0
	MOVWF      R2
	MOVLW      128
	XORWF      main_min_for_start+1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr513
	MOVF       main_min_for_start+0, 0
	SUBWF      _PWR+0, 0
L__get_swr513:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R2
	MOVLW      128
	XORWF      main_max_for_start+1, 0
	MOVWF      R1
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr514
	MOVF       _PWR+0, 0
	SUBWF      main_max_for_start+0, 0
L__get_swr514:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      main_max_for_start+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr515
	MOVF       main_max_for_start+0, 0
	SUBLW      0
L__get_swr515:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	MOVF       R2, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr58
;main.h,141 :: 		asm CLRWDT;
	CLRWDT
;main.h,142 :: 		get_pwr();
	CALL       _get_pwr+0
;main.h,143 :: 		if(p_cnt!=100) {
	MOVF       _p_cnt+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr59
;main.h,144 :: 		p_cnt += 1;
	INCF       _p_cnt+0, 1
;main.h,145 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW      128
	XORWF      _P_max+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr516
	MOVF       _PWR+0, 0
	SUBWF      _P_max+0, 0
L__get_swr516:
	BTFSC      STATUS+0, 0
	GOTO       L_get_swr60
	MOVF       _PWR+0, 0
	MOVWF      _P_max+0
	MOVF       _PWR+1, 0
	MOVWF      _P_max+1
L_get_swr60:
;main.h,146 :: 		}
	GOTO       L_get_swr61
L_get_swr59:
;main.h,148 :: 		p_cnt = 0;
	CLRF       _p_cnt+0
;main.h,149 :: 		show_pwr(P_max, SWR);
	MOVF       _P_max+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _P_max+1, 0
	MOVWF      FARG_show_pwr+1
	MOVF       _SWR+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _SWR+1, 0
	MOVWF      FARG_show_pwr+1
	CALL       _show_pwr+0
;main.h,150 :: 		P_max = 0;
	CLRF       _P_max+0
	CLRF       _P_max+1
;main.h,151 :: 		}
L_get_swr61:
;main.h,153 :: 		if(Button(&PORTB, 0, 5, 1)) rready = 1;
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      5
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr62
	MOVLW      1
	MOVWF      _rready+0
L_get_swr62:
;main.h,154 :: 		if(rready==1 & Button(&PORTB, 0, 5, 0)) { //  press button  Tune
	MOVF       _rready+0, 0
	XORLW      1
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      FLOC__get_swr+0
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      5
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       FLOC__get_swr+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr63
;main.h,155 :: 		show_reset();
	CALL       _show_reset+0
;main.h,156 :: 		SWR = 0;
	CLRF       _SWR+0
	CLRF       _SWR+1
;main.h,157 :: 		return;
	GOTO       L_end_get_swr
;main.h,158 :: 		}
L_get_swr63:
;main.h,159 :: 		} //  good power
	GOTO       L_get_swr57
L_get_swr58:
;main.h,160 :: 		return;
;main.h,161 :: 		}
L_end_get_swr:
	RETURN
; end of _get_swr

_set_ind:

;main.h,163 :: 		void set_ind(char Ind) {  // 0 - 31
;main.h,164 :: 		if(L_invert == 0) {
	MOVF       main_L_invert+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_set_ind64
;main.h,165 :: 		Ind_005 = Ind.B0;
	BTFSC      FARG_set_ind_Ind+0, 0
	GOTO       L__set_ind518
	BCF        LATB3_bit+0, BitPos(LATB3_bit+0)
	GOTO       L__set_ind519
L__set_ind518:
	BSF        LATB3_bit+0, BitPos(LATB3_bit+0)
L__set_ind519:
;main.h,166 :: 		Ind_011 = Ind.B1;
	BTFSC      FARG_set_ind_Ind+0, 1
	GOTO       L__set_ind520
	BCF        LATA2_bit+0, BitPos(LATA2_bit+0)
	GOTO       L__set_ind521
L__set_ind520:
	BSF        LATA2_bit+0, BitPos(LATA2_bit+0)
L__set_ind521:
;main.h,167 :: 		Ind_022 = Ind.B2;
	BTFSC      FARG_set_ind_Ind+0, 2
	GOTO       L__set_ind522
	BCF        LATB4_bit+0, BitPos(LATB4_bit+0)
	GOTO       L__set_ind523
L__set_ind522:
	BSF        LATB4_bit+0, BitPos(LATB4_bit+0)
L__set_ind523:
;main.h,168 :: 		Ind_045 = Ind.B3;
	BTFSC      FARG_set_ind_Ind+0, 3
	GOTO       L__set_ind524
	BCF        LATA3_bit+0, BitPos(LATA3_bit+0)
	GOTO       L__set_ind525
L__set_ind524:
	BSF        LATA3_bit+0, BitPos(LATA3_bit+0)
L__set_ind525:
;main.h,169 :: 		Ind_1   = Ind.B4;
	BTFSC      FARG_set_ind_Ind+0, 4
	GOTO       L__set_ind526
	BCF        LATB5_bit+0, BitPos(LATB5_bit+0)
	GOTO       L__set_ind527
L__set_ind526:
	BSF        LATB5_bit+0, BitPos(LATB5_bit+0)
L__set_ind527:
;main.h,170 :: 		Ind_22  = Ind.B5;
	BTFSC      FARG_set_ind_Ind+0, 5
	GOTO       L__set_ind528
	BCF        LATA5_bit+0, BitPos(LATA5_bit+0)
	GOTO       L__set_ind529
L__set_ind528:
	BSF        LATA5_bit+0, BitPos(LATA5_bit+0)
L__set_ind529:
;main.h,171 :: 		Ind_45  = Ind.B6;
	BTFSC      FARG_set_ind_Ind+0, 6
	GOTO       L__set_ind530
	BCF        LATA4_bit+0, BitPos(LATA4_bit+0)
	GOTO       L__set_ind531
L__set_ind530:
	BSF        LATA4_bit+0, BitPos(LATA4_bit+0)
L__set_ind531:
;main.h,173 :: 		}
	GOTO       L_set_ind65
L_set_ind64:
;main.h,175 :: 		Ind_005 = ~Ind.B0;
	BTFSC      FARG_set_ind_Ind+0, 0
	GOTO       L__set_ind532
	BSF        LATB3_bit+0, BitPos(LATB3_bit+0)
	GOTO       L__set_ind533
L__set_ind532:
	BCF        LATB3_bit+0, BitPos(LATB3_bit+0)
L__set_ind533:
;main.h,176 :: 		Ind_011 = ~Ind.B1;
	BTFSC      FARG_set_ind_Ind+0, 1
	GOTO       L__set_ind534
	BSF        LATA2_bit+0, BitPos(LATA2_bit+0)
	GOTO       L__set_ind535
L__set_ind534:
	BCF        LATA2_bit+0, BitPos(LATA2_bit+0)
L__set_ind535:
;main.h,177 :: 		Ind_022 = ~Ind.B2;
	BTFSC      FARG_set_ind_Ind+0, 2
	GOTO       L__set_ind536
	BSF        LATB4_bit+0, BitPos(LATB4_bit+0)
	GOTO       L__set_ind537
L__set_ind536:
	BCF        LATB4_bit+0, BitPos(LATB4_bit+0)
L__set_ind537:
;main.h,178 :: 		Ind_045 = ~Ind.B3;
	BTFSC      FARG_set_ind_Ind+0, 3
	GOTO       L__set_ind538
	BSF        LATA3_bit+0, BitPos(LATA3_bit+0)
	GOTO       L__set_ind539
L__set_ind538:
	BCF        LATA3_bit+0, BitPos(LATA3_bit+0)
L__set_ind539:
;main.h,179 :: 		Ind_1   = ~Ind.B4;
	BTFSC      FARG_set_ind_Ind+0, 4
	GOTO       L__set_ind540
	BSF        LATB5_bit+0, BitPos(LATB5_bit+0)
	GOTO       L__set_ind541
L__set_ind540:
	BCF        LATB5_bit+0, BitPos(LATB5_bit+0)
L__set_ind541:
;main.h,180 :: 		Ind_22  = ~Ind.B5;
	BTFSC      FARG_set_ind_Ind+0, 5
	GOTO       L__set_ind542
	BSF        LATA5_bit+0, BitPos(LATA5_bit+0)
	GOTO       L__set_ind543
L__set_ind542:
	BCF        LATA5_bit+0, BitPos(LATA5_bit+0)
L__set_ind543:
;main.h,181 :: 		Ind_45  = ~Ind.B6;
	BTFSC      FARG_set_ind_Ind+0, 6
	GOTO       L__set_ind544
	BSF        LATA4_bit+0, BitPos(LATA4_bit+0)
	GOTO       L__set_ind545
L__set_ind544:
	BCF        LATA4_bit+0, BitPos(LATA4_bit+0)
L__set_ind545:
;main.h,183 :: 		}
L_set_ind65:
;main.h,184 :: 		Vdelay_ms(Rel_Del);
	MOVF       main_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,185 :: 		}
L_end_set_ind:
	RETURN
; end of _set_ind

_set_cap:

;main.h,187 :: 		void set_cap(char Cap) { // 0 - 31
;main.h,188 :: 		Cap_10  =  Cap.B0;
	BTFSC      FARG_set_cap_Cap+0, 0
	GOTO       L__set_cap547
	BCF        LATC7_bit+0, BitPos(LATC7_bit+0)
	GOTO       L__set_cap548
L__set_cap547:
	BSF        LATC7_bit+0, BitPos(LATC7_bit+0)
L__set_cap548:
;main.h,189 :: 		Cap_22  =  Cap.B1;
	BTFSC      FARG_set_cap_Cap+0, 1
	GOTO       L__set_cap549
	BCF        LATC3_bit+0, BitPos(LATC3_bit+0)
	GOTO       L__set_cap550
L__set_cap549:
	BSF        LATC3_bit+0, BitPos(LATC3_bit+0)
L__set_cap550:
;main.h,190 :: 		Cap_47  =  Cap.B2;
	BTFSC      FARG_set_cap_Cap+0, 2
	GOTO       L__set_cap551
	BCF        LATC6_bit+0, BitPos(LATC6_bit+0)
	GOTO       L__set_cap552
L__set_cap551:
	BSF        LATC6_bit+0, BitPos(LATC6_bit+0)
L__set_cap552:
;main.h,191 :: 		Cap_100 =  Cap.B3;
	BTFSC      FARG_set_cap_Cap+0, 3
	GOTO       L__set_cap553
	BCF        LATC2_bit+0, BitPos(LATC2_bit+0)
	GOTO       L__set_cap554
L__set_cap553:
	BSF        LATC2_bit+0, BitPos(LATC2_bit+0)
L__set_cap554:
;main.h,192 :: 		Cap_220 =  Cap.B4;
	BTFSC      FARG_set_cap_Cap+0, 4
	GOTO       L__set_cap555
	BCF        LATC5_bit+0, BitPos(LATC5_bit+0)
	GOTO       L__set_cap556
L__set_cap555:
	BSF        LATC5_bit+0, BitPos(LATC5_bit+0)
L__set_cap556:
;main.h,193 :: 		Cap_470 =  Cap.B5;
	BTFSC      FARG_set_cap_Cap+0, 5
	GOTO       L__set_cap557
	BCF        LATC1_bit+0, BitPos(LATC1_bit+0)
	GOTO       L__set_cap558
L__set_cap557:
	BSF        LATC1_bit+0, BitPos(LATC1_bit+0)
L__set_cap558:
;main.h,194 :: 		Cap_1000 =  Cap.B6;
	BTFSC      FARG_set_cap_Cap+0, 6
	GOTO       L__set_cap559
	BCF        LATC4_bit+0, BitPos(LATC4_bit+0)
	GOTO       L__set_cap560
L__set_cap559:
	BSF        LATC4_bit+0, BitPos(LATC4_bit+0)
L__set_cap560:
;main.h,196 :: 		Vdelay_ms(Rel_Del);
	MOVF       main_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,197 :: 		}
L_end_set_cap:
	RETURN
; end of _set_cap

_set_sw:

;main.h,199 :: 		void set_sw(char SW) {  // 0 - IN,  1 - OUT
;main.h,200 :: 		Cap_sw = SW;
	BTFSC      FARG_set_sw_SW+0, 0
	GOTO       L__set_sw562
	BCF        LATC0_bit+0, BitPos(LATC0_bit+0)
	GOTO       L__set_sw563
L__set_sw562:
	BSF        LATC0_bit+0, BitPos(LATC0_bit+0)
L__set_sw563:
;main.h,201 :: 		Vdelay_ms(Rel_Del);
	MOVF       main_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,202 :: 		}
L_end_set_sw:
	RETURN
; end of _set_sw

_atu_reset:

;main.h,204 :: 		void atu_reset() {
;main.h,205 :: 		ind = 0;
	CLRF       main_ind+0
;main.h,206 :: 		cap = 0;
	CLRF       main_cap+0
;main.h,207 :: 		set_ind(ind);
	CLRF       FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,208 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,209 :: 		Vdelay_ms(Rel_Del);
	MOVF       main_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,210 :: 		}
L_end_atu_reset:
	RETURN
; end of _atu_reset

_coarse_cap:

;main.h,213 :: 		void coarse_cap() {
;main.h,214 :: 		char step = 3;
	MOVLW      3
	MOVWF      coarse_cap_step_L0+0
;main.h,218 :: 		cap = 0;
	CLRF       main_cap+0
;main.h,219 :: 		set_cap(cap);
	CLRF       FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,220 :: 		step_cap = step;
	MOVF       coarse_cap_step_L0+0, 0
	MOVWF      main_step_cap+0
;main.h,221 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap566
	MOVLW      0
	XORWF      _SWR+0, 0
L__coarse_cap566:
	BTFSS      STATUS+0, 2
	GOTO       L_coarse_cap66
	GOTO       L_end_coarse_cap
L_coarse_cap66:
;main.h,222 :: 		min_swr = SWR + SWR/20;
	MOVLW      20
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _SWR+0, 0
	MOVWF      R0
	MOVF       _SWR+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	ADDWF      _SWR+0, 0
	MOVWF      coarse_cap_min_swr_L0+0
	MOVF       R1, 0
	ADDWFC     _SWR+1, 0
	MOVWF      coarse_cap_min_swr_L0+1
;main.h,223 :: 		for(count=step; count<=31;) {
	MOVF       coarse_cap_step_L0+0, 0
	MOVWF      coarse_cap_count_L0+0
L_coarse_cap67:
	MOVF       coarse_cap_count_L0+0, 0
	SUBLW      31
	BTFSS      STATUS+0, 0
	GOTO       L_coarse_cap68
;main.h,224 :: 		set_cap(count*C_mult);
	MOVF       coarse_cap_count_L0+0, 0
	MOVWF      R0
	MOVF       main_C_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,225 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap567
	MOVLW      0
	XORWF      _SWR+0, 0
L__coarse_cap567:
	BTFSS      STATUS+0, 2
	GOTO       L_coarse_cap70
	GOTO       L_end_coarse_cap
L_coarse_cap70:
;main.h,226 :: 		if(SWR < min_swr) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      coarse_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap568
	MOVF       coarse_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__coarse_cap568:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_cap71
;main.h,227 :: 		min_swr = SWR + SWR/20;
	MOVLW      20
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _SWR+0, 0
	MOVWF      R0
	MOVF       _SWR+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	ADDWF      _SWR+0, 0
	MOVWF      coarse_cap_min_swr_L0+0
	MOVF       R1, 0
	ADDWFC     _SWR+1, 0
	MOVWF      coarse_cap_min_swr_L0+1
;main.h,228 :: 		cap = count*C_mult;
	MOVF       coarse_cap_count_L0+0, 0
	MOVWF      R0
	MOVF       main_C_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      main_cap+0
;main.h,229 :: 		step_cap = step;
	MOVF       coarse_cap_step_L0+0, 0
	MOVWF      main_step_cap+0
;main.h,230 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap569
	MOVLW      120
	SUBWF      _SWR+0, 0
L__coarse_cap569:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_cap72
	GOTO       L_coarse_cap68
L_coarse_cap72:
;main.h,231 :: 		count +=step;
	MOVF       coarse_cap_step_L0+0, 0
	ADDWF      coarse_cap_count_L0+0, 0
	MOVWF      R2
	MOVF       R2, 0
	MOVWF      coarse_cap_count_L0+0
;main.h,232 :: 		if(C_linear==0 & count==9) count = 8;
	MOVF       main_C_linear+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       R2, 0
	XORLW      9
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_coarse_cap73
	MOVLW      8
	MOVWF      coarse_cap_count_L0+0
	GOTO       L_coarse_cap74
L_coarse_cap73:
;main.h,233 :: 		else if(C_linear==0 & count==17) {count = 16; step = 4;}
	MOVF       main_C_linear+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       coarse_cap_count_L0+0, 0
	XORLW      17
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_coarse_cap75
	MOVLW      16
	MOVWF      coarse_cap_count_L0+0
	MOVLW      4
	MOVWF      coarse_cap_step_L0+0
L_coarse_cap75:
L_coarse_cap74:
;main.h,234 :: 		}
	GOTO       L_coarse_cap76
L_coarse_cap71:
;main.h,235 :: 		else break;
	GOTO       L_coarse_cap68
L_coarse_cap76:
;main.h,236 :: 		}
	GOTO       L_coarse_cap67
L_coarse_cap68:
;main.h,237 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,238 :: 		return;
;main.h,239 :: 		}
L_end_coarse_cap:
	RETURN
; end of _coarse_cap

_coarse_tune:

;main.h,241 :: 		void coarse_tune() {
;main.h,242 :: 		char step = 3;
	MOVLW      3
	MOVWF      coarse_tune_step_L0+0
;main.h,247 :: 		mem_cap = 0;
	CLRF       coarse_tune_mem_cap_L0+0
;main.h,248 :: 		step_ind = step;
	MOVF       coarse_tune_step_L0+0, 0
	MOVWF      main_step_ind+0
;main.h,249 :: 		mem_step_cap = 3;
	MOVLW      3
	MOVWF      coarse_tune_mem_step_cap_L0+0
;main.h,250 :: 		min_swr = SWR + SWR/20;
	MOVLW      20
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _SWR+0, 0
	MOVWF      R0
	MOVF       _SWR+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	ADDWF      _SWR+0, 0
	MOVWF      coarse_tune_min_swr_L0+0
	MOVF       R1, 0
	ADDWFC     _SWR+1, 0
	MOVWF      coarse_tune_min_swr_L0+1
;main.h,251 :: 		for(count=0; count<=31;) {
	CLRF       coarse_tune_count_L0+0
L_coarse_tune77:
	MOVF       coarse_tune_count_L0+0, 0
	SUBLW      31
	BTFSS      STATUS+0, 0
	GOTO       L_coarse_tune78
;main.h,252 :: 		set_ind(count*L_mult);
	MOVF       coarse_tune_count_L0+0, 0
	MOVWF      R0
	MOVF       main_L_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,253 :: 		coarse_cap();
	CALL       _coarse_cap+0
;main.h,254 :: 		get_swr();  if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_tune571
	MOVLW      0
	XORWF      _SWR+0, 0
L__coarse_tune571:
	BTFSS      STATUS+0, 2
	GOTO       L_coarse_tune80
	GOTO       L_end_coarse_tune
L_coarse_tune80:
;main.h,255 :: 		if(SWR < min_swr) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      coarse_tune_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_tune572
	MOVF       coarse_tune_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__coarse_tune572:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_tune81
;main.h,256 :: 		min_swr = SWR + SWR/20;
	MOVLW      20
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _SWR+0, 0
	MOVWF      R0
	MOVF       _SWR+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	ADDWF      _SWR+0, 0
	MOVWF      coarse_tune_min_swr_L0+0
	MOVF       R1, 0
	ADDWFC     _SWR+1, 0
	MOVWF      coarse_tune_min_swr_L0+1
;main.h,257 :: 		ind = count*L_mult;
	MOVF       coarse_tune_count_L0+0, 0
	MOVWF      R0
	MOVF       main_L_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      main_ind+0
;main.h,258 :: 		mem_cap = cap;
	MOVF       main_cap+0, 0
	MOVWF      coarse_tune_mem_cap_L0+0
;main.h,259 :: 		step_ind = step;
	MOVF       coarse_tune_step_L0+0, 0
	MOVWF      main_step_ind+0
;main.h,260 :: 		mem_step_cap = step_cap;
	MOVF       main_step_cap+0, 0
	MOVWF      coarse_tune_mem_step_cap_L0+0
;main.h,261 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_tune573
	MOVLW      120
	SUBWF      _SWR+0, 0
L__coarse_tune573:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_tune82
	GOTO       L_coarse_tune78
L_coarse_tune82:
;main.h,262 :: 		count +=step;
	MOVF       coarse_tune_step_L0+0, 0
	ADDWF      coarse_tune_count_L0+0, 0
	MOVWF      R2
	MOVF       R2, 0
	MOVWF      coarse_tune_count_L0+0
;main.h,263 :: 		if(L_linear==0 & count==9) count = 8;
	MOVF       main_L_linear+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       R2, 0
	XORLW      9
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_coarse_tune83
	MOVLW      8
	MOVWF      coarse_tune_count_L0+0
	GOTO       L_coarse_tune84
L_coarse_tune83:
;main.h,264 :: 		else if(L_linear==0 & count==17) {count = 16; step = 4;}
	MOVF       main_L_linear+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       coarse_tune_count_L0+0, 0
	XORLW      17
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_coarse_tune85
	MOVLW      16
	MOVWF      coarse_tune_count_L0+0
	MOVLW      4
	MOVWF      coarse_tune_step_L0+0
L_coarse_tune85:
L_coarse_tune84:
;main.h,265 :: 		}
	GOTO       L_coarse_tune86
L_coarse_tune81:
;main.h,266 :: 		else break;
	GOTO       L_coarse_tune78
L_coarse_tune86:
;main.h,267 :: 		}
	GOTO       L_coarse_tune77
L_coarse_tune78:
;main.h,268 :: 		cap = mem_cap;
	MOVF       coarse_tune_mem_cap_L0+0, 0
	MOVWF      main_cap+0
;main.h,269 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,270 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,271 :: 		step_cap = mem_step_cap;
	MOVF       coarse_tune_mem_step_cap_L0+0, 0
	MOVWF      main_step_cap+0
;main.h,272 :: 		Delay_ms(10);
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_coarse_tune87:
	DECFSZ     R13, 1
	GOTO       L_coarse_tune87
	DECFSZ     R12, 1
	GOTO       L_coarse_tune87
	NOP
	NOP
;main.h,273 :: 		return;
;main.h,274 :: 		}
L_end_coarse_tune:
	RETURN
; end of _coarse_tune

_sharp_cap:

;main.h,276 :: 		void sharp_cap() {
;main.h,279 :: 		range = step_cap*C_mult;
	MOVF       main_step_cap+0, 0
	MOVWF      R0
	MOVF       main_C_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      sharp_cap_range_L0+0
;main.h,281 :: 		max_range = cap + range;
	MOVF       R0, 0
	ADDWF      main_cap+0, 0
	MOVWF      R4
	MOVF       R4, 0
	MOVWF      sharp_cap_max_range_L0+0
;main.h,282 :: 		if(max_range>32*C_mult-1) max_range = 32*C_mult-1;
	MOVLW      5
	MOVWF      R2
	MOVF       main_C_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__sharp_cap575:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_cap576
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__sharp_cap575
L__sharp_cap576:
	MOVLW      1
	SUBWF      R0, 0
	MOVWF      R2
	MOVLW      0
	SUBWFB     R1, 0
	MOVWF      R3
	MOVLW      128
	XORWF      R3, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap577
	MOVF       R4, 0
	SUBWF      R2, 0
L__sharp_cap577:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap88
	MOVLW      5
	MOVWF      R0
	MOVF       main_C_mult+0, 0
	MOVWF      sharp_cap_max_range_L0+0
	MOVF       R0, 0
L__sharp_cap578:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_cap579
	LSLF       sharp_cap_max_range_L0+0, 1
	ADDLW      255
	GOTO       L__sharp_cap578
L__sharp_cap579:
	DECF       sharp_cap_max_range_L0+0, 1
L_sharp_cap88:
;main.h,283 :: 		if(cap>range) min_range = cap - range; else min_range = 0;
	MOVF       main_cap+0, 0
	SUBWF      sharp_cap_range_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap89
	MOVF       sharp_cap_range_L0+0, 0
	SUBWF      main_cap+0, 0
	MOVWF      sharp_cap_min_range_L0+0
	GOTO       L_sharp_cap90
L_sharp_cap89:
	CLRF       sharp_cap_min_range_L0+0
L_sharp_cap90:
;main.h,284 :: 		cap = min_range;
	MOVF       sharp_cap_min_range_L0+0, 0
	MOVWF      main_cap+0
;main.h,285 :: 		set_cap(cap);
	MOVF       sharp_cap_min_range_L0+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,286 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap580
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_cap580:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_cap91
	GOTO       L_end_sharp_cap
L_sharp_cap91:
;main.h,287 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_cap_min_swr_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_cap_min_swr_L0+1
;main.h,288 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF       main_C_mult+0, 0
	ADDWF      sharp_cap_min_range_L0+0, 0
	MOVWF      sharp_cap_count_L0+0
L_sharp_cap92:
	MOVF       sharp_cap_count_L0+0, 0
	SUBWF      sharp_cap_max_range_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_cap93
;main.h,289 :: 		set_cap(count);
	MOVF       sharp_cap_count_L0+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,290 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap581
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_cap581:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_cap95
	GOTO       L_end_sharp_cap
L_sharp_cap95:
;main.h,291 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap582
	MOVF       sharp_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_cap582:
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_cap96
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_sharp_cap97:
	DECFSZ     R13, 1
	GOTO       L_sharp_cap97
	DECFSZ     R12, 1
	GOTO       L_sharp_cap97
	NOP
	NOP
	CALL       _get_swr+0
L_sharp_cap96:
;main.h,292 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap583
	MOVF       sharp_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_cap583:
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_cap98
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_sharp_cap99:
	DECFSZ     R13, 1
	GOTO       L_sharp_cap99
	DECFSZ     R12, 1
	GOTO       L_sharp_cap99
	NOP
	NOP
	CALL       _get_swr+0
L_sharp_cap98:
;main.h,293 :: 		if(SWR < min_SWR) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap584
	MOVF       sharp_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_cap584:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap100
;main.h,294 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_cap_min_swr_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_cap_min_swr_L0+1
;main.h,295 :: 		cap = count;
	MOVF       sharp_cap_count_L0+0, 0
	MOVWF      main_cap+0
;main.h,296 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap585
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sharp_cap585:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap101
	GOTO       L_sharp_cap93
L_sharp_cap101:
;main.h,297 :: 		}
	GOTO       L_sharp_cap102
L_sharp_cap100:
;main.h,298 :: 		else break;
	GOTO       L_sharp_cap93
L_sharp_cap102:
;main.h,288 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF       main_C_mult+0, 0
	ADDWF      sharp_cap_count_L0+0, 1
;main.h,299 :: 		}
	GOTO       L_sharp_cap92
L_sharp_cap93:
;main.h,300 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,301 :: 		return;
;main.h,302 :: 		}
L_end_sharp_cap:
	RETURN
; end of _sharp_cap

_sharp_ind:

;main.h,304 :: 		void sharp_ind() {
;main.h,307 :: 		range = step_ind * L_mult;
	MOVF       main_step_ind+0, 0
	MOVWF      R0
	MOVF       main_L_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      sharp_ind_range_L0+0
;main.h,309 :: 		max_range = ind + range;
	MOVF       R0, 0
	ADDWF      main_ind+0, 0
	MOVWF      R4
	MOVF       R4, 0
	MOVWF      sharp_ind_max_range_L0+0
;main.h,310 :: 		if(max_range>32*L_mult-1) max_range = 32*L_mult-1;
	MOVLW      5
	MOVWF      R2
	MOVF       main_L_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__sharp_ind587:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_ind588
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__sharp_ind587
L__sharp_ind588:
	MOVLW      1
	SUBWF      R0, 0
	MOVWF      R2
	MOVLW      0
	SUBWFB     R1, 0
	MOVWF      R3
	MOVLW      128
	XORWF      R3, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind589
	MOVF       R4, 0
	SUBWF      R2, 0
L__sharp_ind589:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind103
	MOVLW      5
	MOVWF      R0
	MOVF       main_L_mult+0, 0
	MOVWF      sharp_ind_max_range_L0+0
	MOVF       R0, 0
L__sharp_ind590:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_ind591
	LSLF       sharp_ind_max_range_L0+0, 1
	ADDLW      255
	GOTO       L__sharp_ind590
L__sharp_ind591:
	DECF       sharp_ind_max_range_L0+0, 1
L_sharp_ind103:
;main.h,311 :: 		if(ind>range) min_range = ind - range; else min_range = 0;
	MOVF       main_ind+0, 0
	SUBWF      sharp_ind_range_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind104
	MOVF       sharp_ind_range_L0+0, 0
	SUBWF      main_ind+0, 0
	MOVWF      sharp_ind_min_range_L0+0
	GOTO       L_sharp_ind105
L_sharp_ind104:
	CLRF       sharp_ind_min_range_L0+0
L_sharp_ind105:
;main.h,312 :: 		ind = min_range;
	MOVF       sharp_ind_min_range_L0+0, 0
	MOVWF      main_ind+0
;main.h,313 :: 		set_ind(ind);
	MOVF       sharp_ind_min_range_L0+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,314 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind592
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_ind592:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_ind106
	GOTO       L_end_sharp_ind
L_sharp_ind106:
;main.h,315 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_ind_min_SWR_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_ind_min_SWR_L0+1
;main.h,316 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF       main_L_mult+0, 0
	ADDWF      sharp_ind_min_range_L0+0, 0
	MOVWF      sharp_ind_count_L0+0
L_sharp_ind107:
	MOVF       sharp_ind_count_L0+0, 0
	SUBWF      sharp_ind_max_range_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_ind108
;main.h,317 :: 		set_ind(count);
	MOVF       sharp_ind_count_L0+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,318 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind593
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_ind593:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_ind110
	GOTO       L_end_sharp_ind
L_sharp_ind110:
;main.h,319 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_ind_min_SWR_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind594
	MOVF       sharp_ind_min_SWR_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_ind594:
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_ind111
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_sharp_ind112:
	DECFSZ     R13, 1
	GOTO       L_sharp_ind112
	DECFSZ     R12, 1
	GOTO       L_sharp_ind112
	NOP
	NOP
	CALL       _get_swr+0
L_sharp_ind111:
;main.h,320 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_ind_min_SWR_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind595
	MOVF       sharp_ind_min_SWR_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_ind595:
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_ind113
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_sharp_ind114:
	DECFSZ     R13, 1
	GOTO       L_sharp_ind114
	DECFSZ     R12, 1
	GOTO       L_sharp_ind114
	NOP
	NOP
	CALL       _get_swr+0
L_sharp_ind113:
;main.h,321 :: 		if(SWR < min_SWR) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_ind_min_SWR_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind596
	MOVF       sharp_ind_min_SWR_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_ind596:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind115
;main.h,322 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_ind_min_SWR_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_ind_min_SWR_L0+1
;main.h,323 :: 		ind = count;
	MOVF       sharp_ind_count_L0+0, 0
	MOVWF      main_ind+0
;main.h,324 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind597
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sharp_ind597:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind116
	GOTO       L_sharp_ind108
L_sharp_ind116:
;main.h,325 :: 		}
	GOTO       L_sharp_ind117
L_sharp_ind115:
;main.h,326 :: 		else break;
	GOTO       L_sharp_ind108
L_sharp_ind117:
;main.h,316 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF       main_L_mult+0, 0
	ADDWF      sharp_ind_count_L0+0, 1
;main.h,327 :: 		}
	GOTO       L_sharp_ind107
L_sharp_ind108:
;main.h,328 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,329 :: 		return;
;main.h,330 :: 		}
L_end_sharp_ind:
	RETURN
; end of _sharp_ind

_sub_tune:

;main.h,333 :: 		void sub_tune () {
;main.h,336 :: 		swr_mem = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sub_tune_swr_mem_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sub_tune_swr_mem_L0+1
;main.h,337 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL       _coarse_tune+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune599
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune599:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune118
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune118:
;main.h,338 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune600
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune600:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune119
	GOTO       L_end_sub_tune
L_sub_tune119:
;main.h,339 :: 		sharp_ind();  if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_ind+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune601
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune601:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune120
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune120:
;main.h,340 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune602
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune602:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune121
	GOTO       L_end_sub_tune
L_sub_tune121:
;main.h,341 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_cap+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune603
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune603:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune122
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune122:
;main.h,342 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune604
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune604:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune123
	GOTO       L_end_sub_tune
L_sub_tune123:
;main.h,344 :: 		if(SWR<200 & SWR<swr_mem & (swr_mem-SWR)>100) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R1
	MOVLW      128
	SUBWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune605
	MOVLW      200
	SUBWF      _SWR+0, 0
L__sub_tune605:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sub_tune_swr_mem_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune606
	MOVF       sub_tune_swr_mem_L0+0, 0
	SUBWF      _SWR+0, 0
L__sub_tune606:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      R1, 0
	MOVWF      R3
	MOVF       _SWR+0, 0
	SUBWF      sub_tune_swr_mem_L0+0, 0
	MOVWF      R1
	MOVF       _SWR+1, 0
	SUBWFB     sub_tune_swr_mem_L0+1, 0
	MOVWF      R2
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      R2, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune607
	MOVF       R1, 0
	SUBLW      100
L__sub_tune607:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R3, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_sub_tune124
	GOTO       L_end_sub_tune
L_sub_tune124:
;main.h,345 :: 		swr_mem = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sub_tune_swr_mem_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sub_tune_swr_mem_L0+1
;main.h,346 :: 		ind_mem = ind;
	MOVF       main_ind+0, 0
	MOVWF      sub_tune_ind_mem_L0+0
	CLRF       sub_tune_ind_mem_L0+1
;main.h,347 :: 		cap_mem = cap;
	MOVF       main_cap+0, 0
	MOVWF      sub_tune_cap_mem_L0+0
	CLRF       sub_tune_cap_mem_L0+1
;main.h,349 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune125
	CLRF       main_SW+0
	GOTO       L_sub_tune126
L_sub_tune125:
	MOVLW      1
	MOVWF      main_SW+0
L_sub_tune126:
;main.h,350 :: 		atu_reset();
	CALL       _atu_reset+0
;main.h,351 :: 		set_sw(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.h,352 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11
	MOVLW      4
	MOVWF      R12
	MOVLW      186
	MOVWF      R13
L_sub_tune127:
	DECFSZ     R13, 1
	GOTO       L_sub_tune127
	DECFSZ     R12, 1
	GOTO       L_sub_tune127
	DECFSZ     R11, 1
	GOTO       L_sub_tune127
	NOP
;main.h,353 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune608
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune608:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune128
	GOTO       L_end_sub_tune
L_sub_tune128:
;main.h,355 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL       _coarse_tune+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune609
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune609:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune129
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune129:
;main.h,356 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune610
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune610:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune130
	GOTO       L_end_sub_tune
L_sub_tune130:
;main.h,357 :: 		sharp_ind(); if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_ind+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune611
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune611:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune131
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune131:
;main.h,358 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune612
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune612:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune132
	GOTO       L_end_sub_tune
L_sub_tune132:
;main.h,359 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_cap+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune613
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune613:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune133
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune133:
;main.h,360 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune614
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune614:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune134
	GOTO       L_end_sub_tune
L_sub_tune134:
;main.h,362 :: 		if(SWR>swr_mem) {
	MOVLW      128
	XORWF      sub_tune_swr_mem_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune615
	MOVF       _SWR+0, 0
	SUBWF      sub_tune_swr_mem_L0+0, 0
L__sub_tune615:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune135
;main.h,363 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune136
	CLRF       main_SW+0
	GOTO       L_sub_tune137
L_sub_tune136:
	MOVLW      1
	MOVWF      main_SW+0
L_sub_tune137:
;main.h,364 :: 		set_sw(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.h,365 :: 		ind = ind_mem;
	MOVF       sub_tune_ind_mem_L0+0, 0
	MOVWF      main_ind+0
;main.h,366 :: 		cap = cap_mem;
	MOVF       sub_tune_cap_mem_L0+0, 0
	MOVWF      main_cap+0
;main.h,367 :: 		set_ind(ind);
	MOVF       sub_tune_ind_mem_L0+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,368 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,369 :: 		SWR = swr_mem;
	MOVF       sub_tune_swr_mem_L0+0, 0
	MOVWF      _SWR+0
	MOVF       sub_tune_swr_mem_L0+1, 0
	MOVWF      _SWR+1
;main.h,370 :: 		}
L_sub_tune135:
;main.h,372 :: 		asm CLRWDT;
	CLRWDT
;main.h,373 :: 		return;
;main.h,374 :: 		}
L_end_sub_tune:
	RETURN
; end of _sub_tune

_tune:

;main.h,378 :: 		void tune() {
;main.h,380 :: 		asm CLRWDT;
	CLRWDT
;main.h,382 :: 		p_cnt = 0;
	CLRF       _p_cnt+0
;main.h,383 :: 		P_max = 0;
	CLRF       _P_max+0
	CLRF       _P_max+1
;main.h,385 :: 		rready = 0;
	CLRF       _rready+0
;main.h,386 :: 		get_swr();
	CALL       _get_swr+0
;main.h,387 :: 		if(SWR<110) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune617
	MOVLW      110
	SUBWF      _SWR+0, 0
L__tune617:
	BTFSC      STATUS+0, 0
	GOTO       L_tune138
	GOTO       L_end_tune
L_tune138:
;main.h,388 :: 		atu_reset();
	CALL       _atu_reset+0
;main.h,389 :: 		if(Loss_ind==0) lcd_ind();
	MOVF       main_Loss_ind+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_tune139
	CALL       _lcd_ind+0
L_tune139:
;main.h,390 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11
	MOVLW      4
	MOVWF      R12
	MOVLW      186
	MOVWF      R13
L_tune140:
	DECFSZ     R13, 1
	GOTO       L_tune140
	DECFSZ     R12, 1
	GOTO       L_tune140
	DECFSZ     R11, 1
	GOTO       L_tune140
	NOP
;main.h,391 :: 		get_swr();
	CALL       _get_swr+0
;main.h,392 :: 		swr_a = SWR;
	MOVF       _SWR+0, 0
	MOVWF      _swr_a+0
	MOVF       _SWR+1, 0
	MOVWF      _swr_a+1
;main.h,393 :: 		if(SWR<110) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune618
	MOVLW      110
	SUBWF      _SWR+0, 0
L__tune618:
	BTFSC      STATUS+0, 0
	GOTO       L_tune141
	GOTO       L_end_tune
L_tune141:
;main.h,394 :: 		if(max_swr>110 & SWR>max_swr) return;
	MOVLW      128
	MOVWF      R1
	MOVLW      128
	XORWF      main_max_swr+1, 0
	SUBWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune619
	MOVF       main_max_swr+0, 0
	SUBLW      110
L__tune619:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1
	MOVLW      128
	XORWF      main_max_swr+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune620
	MOVF       _SWR+0, 0
	SUBWF      main_max_swr+0, 0
L__tune620:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_tune142
	GOTO       L_end_tune
L_tune142:
;main.h,396 :: 		sub_tune(); if(SWR==0) {atu_reset(); return;}
	CALL       _sub_tune+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune621
	MOVLW      0
	XORWF      _SWR+0, 0
L__tune621:
	BTFSS      STATUS+0, 2
	GOTO       L_tune143
	CALL       _atu_reset+0
	GOTO       L_end_tune
L_tune143:
;main.h,397 :: 		if(SWR<120) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune622
	MOVLW      120
	SUBWF      _SWR+0, 0
L__tune622:
	BTFSC      STATUS+0, 0
	GOTO       L_tune144
	GOTO       L_end_tune
L_tune144:
;main.h,398 :: 		if(C_q==5 & L_q==5) return;
	MOVF       main_C_q+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_L_q+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_tune145
	GOTO       L_end_tune
L_tune145:
;main.h,400 :: 		if(L_q>5) {
	MOVF       main_L_q+0, 0
	SUBLW      5
	BTFSC      STATUS+0, 0
	GOTO       L_tune146
;main.h,401 :: 		step_ind = L_mult;
	MOVF       main_L_mult+0, 0
	MOVWF      main_step_ind+0
;main.h,402 :: 		L_mult = 1;
	MOVLW      1
	MOVWF      main_L_mult+0
;main.h,403 :: 		sharp_ind();
	CALL       _sharp_ind+0
;main.h,404 :: 		}
L_tune146:
;main.h,405 :: 		if(SWR<120) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune623
	MOVLW      120
	SUBWF      _SWR+0, 0
L__tune623:
	BTFSC      STATUS+0, 0
	GOTO       L_tune147
	GOTO       L_end_tune
L_tune147:
;main.h,406 :: 		if(C_q>5) {
	MOVF       main_C_q+0, 0
	SUBLW      5
	BTFSC      STATUS+0, 0
	GOTO       L_tune148
;main.h,407 :: 		step_cap = C_mult;  // = C_mult
	MOVF       main_C_mult+0, 0
	MOVWF      main_step_cap+0
;main.h,408 :: 		C_mult = 1;
	MOVLW      1
	MOVWF      main_C_mult+0
;main.h,409 :: 		sharp_cap();
	CALL       _sharp_cap+0
;main.h,410 :: 		}
L_tune148:
;main.h,411 :: 		if(L_q==5)L_mult = 1;
	MOVF       main_L_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_tune149
	MOVLW      1
	MOVWF      main_L_mult+0
	GOTO       L_tune150
L_tune149:
;main.h,412 :: 		else if(L_q==6) L_mult = 2;
	MOVF       main_L_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_tune151
	MOVLW      2
	MOVWF      main_L_mult+0
	GOTO       L_tune152
L_tune151:
;main.h,413 :: 		else if(L_q==7) L_mult = 4;
	MOVF       main_L_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_tune153
	MOVLW      4
	MOVWF      main_L_mult+0
L_tune153:
L_tune152:
L_tune150:
;main.h,414 :: 		if(C_q==5) C_mult =1;
	MOVF       main_C_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_tune154
	MOVLW      1
	MOVWF      main_C_mult+0
	GOTO       L_tune155
L_tune154:
;main.h,415 :: 		else if(C_q==6) C_mult = 2;
	MOVF       main_C_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_tune156
	MOVLW      2
	MOVWF      main_C_mult+0
	GOTO       L_tune157
L_tune156:
;main.h,416 :: 		else if(C_q==7) C_mult = 4;
	MOVF       main_C_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_tune158
	MOVLW      4
	MOVWF      main_C_mult+0
L_tune158:
L_tune157:
L_tune155:
;main.h,417 :: 		asm CLRWDT;
	CLRWDT
;main.h,418 :: 		return;
;main.h,419 :: 		}
L_end_tune:
	RETURN
; end of _tune

_main:

;main.c,32 :: 		void main() {
;main.c,33 :: 		if(STATUS.B4==0) Restart = 1;
	BTFSC      STATUS+0, 4
	GOTO       L_main159
	MOVLW      1
	MOVWF      _Restart+0
L_main159:
;main.c,34 :: 		pic_init();
	CALL       _pic_init+0
;main.c,36 :: 		Delay_ms (300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_main160:
	DECFSZ     R13, 1
	GOTO       L_main160
	DECFSZ     R12, 1
	GOTO       L_main160
	DECFSZ     R11, 1
	GOTO       L_main160
	NOP
;main.c,37 :: 		asm CLRWDT;
	CLRWDT
;main.c,38 :: 		cells_init();
	CALL       _cells_init+0
;main.c,39 :: 		Soft_I2C_Init();
	CALL       _Soft_I2C_Init+0
;main.c,40 :: 		if(type==0) { // 2-colors led  reset
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main161
;main.c,41 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main.c,42 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main.c,43 :: 		}
L_main161:
;main.c,44 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _byte2double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,46 :: 		Delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_main162:
	DECFSZ     R13, 1
	GOTO       L_main162
	DECFSZ     R12, 1
	GOTO       L_main162
	DECFSZ     R11, 1
	GOTO       L_main162
	NOP
;main.c,47 :: 		asm CLRWDT;
	CLRWDT
;main.c,49 :: 		if(PORTB.B1==0 & PORTB.B2==0) {  // Test mode
	BTFSC      PORTB+0, 1
	GOTO       L__main625
	BSF        R4, 0
	GOTO       L__main626
L__main625:
	BCF        R4, 0
L__main626:
	BTFSC      PORTB+0, 2
	GOTO       L__main627
	BSF        3, 0
	GOTO       L__main628
L__main627:
	BCF        3, 0
L__main628:
	BTFSS      R4, 0
	GOTO       L__main629
	BTFSS      3, 0
	GOTO       L__main629
	BSF        R4, 0
	GOTO       L__main630
L__main629:
	BCF        R4, 0
L__main630:
	BTFSS      R4, 0
	GOTO       L_main163
;main.c,50 :: 		Test = 1;
	MOVLW      1
	MOVWF      _Test+0
;main.c,51 :: 		Auto =0;
	CLRF       _Auto+0
;main.c,52 :: 		}
L_main163:
;main.c,53 :: 		if(L_q==5)L_mult = 1;
	MOVF       main_L_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main164
	MOVLW      1
	MOVWF      main_L_mult+0
	GOTO       L_main165
L_main164:
;main.c,54 :: 		else if(L_q==6) L_mult = 2;
	MOVF       main_L_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main166
	MOVLW      2
	MOVWF      main_L_mult+0
	GOTO       L_main167
L_main166:
;main.c,55 :: 		else if(L_q==7) L_mult = 4;
	MOVF       main_L_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_main168
	MOVLW      4
	MOVWF      main_L_mult+0
L_main168:
L_main167:
L_main165:
;main.c,56 :: 		if(C_q==5) C_mult =1;
	MOVF       main_C_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main169
	MOVLW      1
	MOVWF      main_C_mult+0
	GOTO       L_main170
L_main169:
;main.c,57 :: 		else if(C_q==6) C_mult = 2;
	MOVF       main_C_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main171
	MOVLW      2
	MOVWF      main_C_mult+0
	GOTO       L_main172
L_main171:
;main.c,58 :: 		else if(C_q==7) C_mult = 4;
	MOVF       main_C_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_main173
	MOVLW      4
	MOVWF      main_C_mult+0
L_main173:
L_main172:
L_main170:
;main.c,60 :: 		Delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_main174:
	DECFSZ     R13, 1
	GOTO       L_main174
	DECFSZ     R12, 1
	GOTO       L_main174
	DECFSZ     R11, 1
	GOTO       L_main174
	NOP
;main.c,61 :: 		asm CLRWDT;
	CLRWDT
;main.c,62 :: 		led_init();
	CALL       _led_init+0
;main.c,64 :: 		if(PORTB.B1==0 & PORTB.B2==0 & PORTB.B0==0)  { // Fast Test mode (loop)
	BTFSC      PORTB+0, 1
	GOTO       L__main631
	BSF        R4, 0
	GOTO       L__main632
L__main631:
	BCF        R4, 0
L__main632:
	BTFSC      PORTB+0, 2
	GOTO       L__main633
	BSF        3, 0
	GOTO       L__main634
L__main633:
	BCF        3, 0
L__main634:
	BTFSS      R4, 0
	GOTO       L__main635
	BTFSS      3, 0
	GOTO       L__main635
	BSF        R4, 0
	GOTO       L__main636
L__main635:
	BCF        R4, 0
L__main636:
	BTFSC      PORTB+0, 0
	GOTO       L__main637
	BSF        3, 0
	GOTO       L__main638
L__main637:
	BCF        3, 0
L__main638:
	BTFSS      R4, 0
	GOTO       L__main639
	BTFSS      3, 0
	GOTO       L__main639
	BSF        R4, 0
	GOTO       L__main640
L__main639:
	BCF        R4, 0
L__main640:
	BTFSS      R4, 0
	GOTO       L_main175
;main.c,65 :: 		if(type==4 | type==5)  led_wr_str (0, 12, "FAST TEST", 9); // 128*64
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_main176
	CLRF       FARG_led_wr_str+0
	MOVLW      12
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr1_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr1_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_main177
L_main176:
;main.c,66 :: 		else if(type!=0) led_wr_str (0, 3, "FAST TEST", 9); // 1602 | 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main178
	CLRF       FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr2_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr2_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_main178:
L_main177:
;main.c,67 :: 		set_cap(255);
	MOVLW      255
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,68 :: 		if(L_invert==0) set_ind(255);
	MOVF       main_L_invert+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main179
	MOVLW      255
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
	GOTO       L_main180
L_main179:
;main.c,69 :: 		else set_ind(0);
	CLRF       FARG_set_ind_Ind+0
	CALL       _set_ind+0
L_main180:
;main.c,70 :: 		set_sw(1);
	MOVLW      1
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,71 :: 		asm CLRWDT;
	CLRWDT
;main.c,72 :: 		while(1) {Delay_ms(500);asm CLRWDT;}
L_main181:
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_main183:
	DECFSZ     R13, 1
	GOTO       L_main183
	DECFSZ     R12, 1
	GOTO       L_main183
	DECFSZ     R11, 1
	GOTO       L_main183
	NOP
	NOP
	CLRWDT
	GOTO       L_main181
;main.c,73 :: 		}
L_main175:
;main.c,74 :: 		asm CLRWDT;
	CLRWDT
;main.c,76 :: 		if(Button(&PORTB, 0, 100, 0))  { //  Fider loss input
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      100
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main184
;main.c,77 :: 		if(type==4 | type==5) { led_wr_str (0, 6, "Fider Loss", 10); // 128*64
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_main185
	CLRF       FARG_led_wr_str+0
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr3_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr3_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,78 :: 		led_wr_str (1, 6, "input", 5);   }
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr4_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr4_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      5
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_main186
L_main185:
;main.c,79 :: 		else if(type!=0) led_wr_str (0, 0, "Fider Loss input", 16); // 1602 | 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main187
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr5_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr5_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_main187:
L_main186:
;main.c,80 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW      52
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      _Fid_loss+0
;main.c,81 :: 		show_loss();
	CALL       _show_loss+0
;main.c,83 :: 		while(1) {
L_main188:
;main.c,84 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main190
;main.c,85 :: 		if(Fid_loss<99) {
	MOVLW      99
	SUBWF      _Fid_loss+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main191
;main.c,86 :: 		Fid_loss ++;
	INCF       _Fid_loss+0, 1
;main.c,87 :: 		show_loss();
	CALL       _show_loss+0
;main.c,88 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF       _Fid_loss+0, 0
	MOVWF      FARG_Dec2Bcd_decnum+0
	CALL       _Dec2Bcd+0
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	MOVLW      52
	MOVWF      FARG_EEPROM_Write_Address+0
	CALL       _EEPROM_Write+0
;main.c,89 :: 		}
L_main191:
;main.c,90 :: 		while(Button(&PORTB, 2, 50, 0)) asm CLRWDT;
L_main192:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main193
	CLRWDT
	GOTO       L_main192
L_main193:
;main.c,91 :: 		}
L_main190:
;main.c,93 :: 		if(Button(&PORTB, 1, 50, 0)){   // AUTO button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main194
;main.c,94 :: 		if(Fid_loss>0) {
	MOVF       _Fid_loss+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_main195
;main.c,95 :: 		Fid_loss --;
	DECF       _Fid_loss+0, 1
;main.c,96 :: 		show_loss();
	CALL       _show_loss+0
;main.c,97 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF       _Fid_loss+0, 0
	MOVWF      FARG_Dec2Bcd_decnum+0
	CALL       _Dec2Bcd+0
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	MOVLW      52
	MOVWF      FARG_EEPROM_Write_Address+0
	CALL       _EEPROM_Write+0
;main.c,98 :: 		}
L_main195:
;main.c,99 :: 		while(Button(&PORTB, 1, 50, 0)) asm CLRWDT;
L_main196:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main197
	CLRWDT
	GOTO       L_main196
L_main197:
;main.c,100 :: 		}
L_main194:
;main.c,101 :: 		asm CLRWDT;
	CLRWDT
;main.c,102 :: 		}  // while
	GOTO       L_main188
;main.c,103 :: 		} //  Fider loss input
L_main184:
;main.c,105 :: 		if(Test==0) {
	MOVF       _Test+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main198
;main.c,106 :: 		cap = EEPROM_Read(255);
	MOVLW      255
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_cap+0
;main.c,107 :: 		ind = EEPROM_Read(254);
	MOVLW      254
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_ind+0
;main.c,108 :: 		SW = EEPROM_Read(253);
	MOVLW      253
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_SW+0
;main.c,109 :: 		swr_a = EEPROM_Read(252) * 256;
	MOVLW      252
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      _swr_a+1
	CLRF       _swr_a+0
;main.c,110 :: 		swr_a += EEPROM_Read(251);
	MOVLW      251
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	ADDWF      _swr_a+0, 1
	MOVLW      0
	ADDWFC     _swr_a+1, 1
;main.c,111 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,112 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,113 :: 		set_sw(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,114 :: 		if(Restart==1 ) lcd_prep_short = 1;
	MOVF       _Restart+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main199
	MOVLW      1
	MOVWF      _lcd_prep_short+0
L_main199:
;main.c,115 :: 		lcd_prep();
	CALL       _lcd_prep+0
;main.c,116 :: 		}
	GOTO       L_main200
L_main198:
;main.c,117 :: 		else Test_init();
	CALL       _test_init+0
L_main200:
;main.c,119 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,125 :: 		while(1) {
L_main201:
;main.c,126 :: 		asm CLRWDT;
	CLRWDT
;main.c,127 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,129 :: 		if(Test==0) button_proc();
	MOVF       _Test+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main203
	CALL       _button_proc+0
	GOTO       L_main204
L_main203:
;main.c,130 :: 		else button_proc_test();
	CALL       _button_proc_test+0
L_main204:
;main.c,132 :: 		if(dysp_cnt!=0) dysp_cnt --;
	MOVLW      0
	XORWF      _dysp_cnt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main641
	MOVLW      0
	XORWF      _dysp_cnt+0, 0
L__main641:
	BTFSC      STATUS+0, 2
	GOTO       L_main205
	MOVLW      1
	SUBWF      _dysp_cnt+0, 1
	MOVLW      0
	SUBWFB     _dysp_cnt+1, 1
	GOTO       L_main206
L_main205:
;main.c,133 :: 		else if(Test==0 & Dysp_delay!=0) dysp_off();
	MOVF       _Test+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _Dysp_delay+0, 0
	XORLW      0
	MOVLW      1
	BTFSC      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_main207
	CALL       _dysp_off+0
L_main207:
L_main206:
;main.c,137 :: 		}
	GOTO       L_main201
;main.c,138 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_button_proc_test:

;main.c,143 :: 		void button_proc_test(void) {
;main.c,144 :: 		if(Button(&PORTB, 0, 50, 0)){    // Tune btn
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test208
;main.c,145 :: 		Delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_button_proc_test209:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test209
	DECFSZ     R12, 1
	GOTO       L_button_proc_test209
	DECFSZ     R11, 1
	GOTO       L_button_proc_test209
	NOP
	NOP
;main.c,146 :: 		asm CLRWDT;
	CLRWDT
;main.c,147 :: 		if(PORTB.B0==1) { // short press button
	BTFSS      PORTB+0, 0
	GOTO       L_button_proc_test210
;main.c,148 :: 		if(SW==0) SW = 1; else SW = 0;
	MOVF       main_SW+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc_test211
	MOVLW      1
	MOVWF      main_SW+0
	GOTO       L_button_proc_test212
L_button_proc_test211:
	CLRF       main_SW+0
L_button_proc_test212:
;main.c,149 :: 		set_sw(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,150 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,151 :: 		}
	GOTO       L_button_proc_test213
L_button_proc_test210:
;main.c,153 :: 		if(L==1) L = 0; else L = 1;
	MOVF       _L+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc_test214
	CLRF       _L+0
	GOTO       L_button_proc_test215
L_button_proc_test214:
	MOVLW      1
	MOVWF      _L+0
L_button_proc_test215:
;main.c,154 :: 		if(L==1) {
	MOVF       _L+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc_test216
;main.c,155 :: 		if(type==4 |type==5)   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test217
;main.c,156 :: 		led_wr_str (0, 16+12*8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr6_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr6_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test218
L_button_proc_test217:
;main.c,157 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test219
;main.c,158 :: 		led_wr_str (0, 8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr7_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr7_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc_test219:
L_button_proc_test218:
;main.c,159 :: 		}
	GOTO       L_button_proc_test220
L_button_proc_test216:
;main.c,161 :: 		if(type==4 |type==5)   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test221
;main.c,162 :: 		led_wr_str (0, 16+12*8, "c", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr8_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr8_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test222
L_button_proc_test221:
;main.c,163 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test223
;main.c,164 :: 		led_wr_str (0, 8, "c", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr9_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr9_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc_test223:
L_button_proc_test222:
;main.c,165 :: 		}
L_button_proc_test220:
;main.c,166 :: 		}
L_button_proc_test213:
;main.c,167 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_button_proc_test224:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test225
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc_test224
L_button_proc_test225:
;main.c,168 :: 		}  // END Tune btn
L_button_proc_test208:
;main.c,170 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test226
;main.c,171 :: 		asm CLRWDT;
	CLRWDT
;main.c,172 :: 		while(PORTB.B2==0) {
L_button_proc_test227:
	BTFSC      PORTB+0, 2
	GOTO       L_button_proc_test228
;main.c,173 :: 		if(L & ind<32*L_mult-1) {
	MOVLW      5
	MOVWF      R2
	MOVF       main_L_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__button_proc_test643:
	BTFSC      STATUS+0, 2
	GOTO       L__button_proc_test644
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__button_proc_test643
L__button_proc_test644:
	MOVLW      1
	SUBWF      R0, 0
	MOVWF      R2
	MOVLW      0
	SUBWFB     R1, 0
	MOVWF      R3
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      R3, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__button_proc_test645
	MOVF       R2, 0
	SUBWF      main_ind+0, 0
L__button_proc_test645:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       _L+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test229
;main.c,174 :: 		ind ++;
	INCF       main_ind+0, 1
;main.c,175 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,176 :: 		}
	GOTO       L_button_proc_test230
L_button_proc_test229:
;main.c,177 :: 		else if(!L & cap<32*L_mult-1) {
	MOVF       _L+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R4
	MOVLW      5
	MOVWF      R2
	MOVF       main_L_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__button_proc_test646:
	BTFSC      STATUS+0, 2
	GOTO       L__button_proc_test647
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__button_proc_test646
L__button_proc_test647:
	MOVLW      1
	SUBWF      R0, 0
	MOVWF      R2
	MOVLW      0
	SUBWFB     R1, 0
	MOVWF      R3
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      R3, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__button_proc_test648
	MOVF       R2, 0
	SUBWF      main_cap+0, 0
L__button_proc_test648:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R4, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test231
;main.c,178 :: 		cap ++;
	INCF       main_cap+0, 1
;main.c,179 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,180 :: 		}
L_button_proc_test231:
L_button_proc_test230:
;main.c,181 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,182 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,183 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_button_proc_test232:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test232
	DECFSZ     R12, 1
	GOTO       L_button_proc_test232
;main.c,184 :: 		asm CLRWDT;
	CLRWDT
;main.c,185 :: 		}
	GOTO       L_button_proc_test227
L_button_proc_test228:
;main.c,186 :: 		}   // end of BYP button
L_button_proc_test226:
;main.c,188 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       _bypas+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test233
;main.c,189 :: 		asm CLRWDT;
	CLRWDT
;main.c,190 :: 		while(PORTB.B1==0) {
L_button_proc_test234:
	BTFSC      PORTB+0, 1
	GOTO       L_button_proc_test235
;main.c,191 :: 		if(L & ind>0) {
	MOVF       main_ind+0, 0
	SUBLW      0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       _L+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test236
;main.c,192 :: 		ind --;
	DECF       main_ind+0, 1
;main.c,193 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,194 :: 		}
	GOTO       L_button_proc_test237
L_button_proc_test236:
;main.c,195 :: 		else if(!L & cap>0) {
	MOVF       _L+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_cap+0, 0
	SUBLW      0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test238
;main.c,196 :: 		cap --;
	DECF       main_cap+0, 1
;main.c,197 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,198 :: 		}
L_button_proc_test238:
L_button_proc_test237:
;main.c,199 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,200 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,201 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_button_proc_test239:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test239
	DECFSZ     R12, 1
	GOTO       L_button_proc_test239
;main.c,202 :: 		asm CLRWDT;
	CLRWDT
;main.c,203 :: 		}
	GOTO       L_button_proc_test234
L_button_proc_test235:
;main.c,204 :: 		}
L_button_proc_test233:
;main.c,205 :: 		return;
;main.c,206 :: 		}
L_end_button_proc_test:
	RETURN
; end of _button_proc_test

_button_proc:

;main.c,209 :: 		void button_proc(void) {
;main.c,210 :: 		if(Button(&PORTB, 0, 50, 0) | Soft_tune){
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       _Soft_tune+0, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc240
;main.c,211 :: 		dysp_on();
	CALL       _dysp_on+0
;main.c,212 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _byte2double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,213 :: 		Delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_button_proc241:
	DECFSZ     R13, 1
	GOTO       L_button_proc241
	DECFSZ     R12, 1
	GOTO       L_button_proc241
	DECFSZ     R11, 1
	GOTO       L_button_proc241
	NOP
	NOP
;main.c,214 :: 		asm CLRWDT;
	CLRWDT
;main.c,215 :: 		if(Soft_tune == 0 & PORTB.B0==1) { // short press button
	MOVF       _Soft_tune+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	BTFSC      PORTB+0, 0
	GOTO       L__button_proc650
	BCF        3, 0
	GOTO       L__button_proc651
L__button_proc650:
	BSF        3, 0
L__button_proc651:
	CLRF       R0
	BTFSC      3, 0
	INCF       R0, 1
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc242
;main.c,216 :: 		show_reset();
	CALL       _show_reset+0
;main.c,217 :: 		bypas =0;
	CLRF       _bypas+0
;main.c,218 :: 		}
	GOTO       L_button_proc243
L_button_proc242:
;main.c,220 :: 		p_Tx = 1;         //
	BSF        LATA7_bit+0, BitPos(LATA7_bit+0)
;main.c,221 :: 		n_Tx = 0;         // TX request
	BCF        LATA6_bit+0, BitPos(LATA6_bit+0)
;main.c,222 :: 		Delay_ms(250);    //
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_button_proc244:
	DECFSZ     R13, 1
	GOTO       L_button_proc244
	DECFSZ     R12, 1
	GOTO       L_button_proc244
	DECFSZ     R11, 1
	GOTO       L_button_proc244
	NOP
	NOP
;main.c,223 :: 		btn_push();
	CALL       _btn_push+0
;main.c,224 :: 		bypas = 0;
	CLRF       _bypas+0
;main.c,225 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT; }
L_button_proc245:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc246
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc245
L_button_proc246:
;main.c,226 :: 		Soft_tune = 0;
	CLRF       _Soft_tune+0
;main.c,227 :: 		}
L_button_proc243:
;main.c,228 :: 		}
L_button_proc240:
;main.c,230 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc247
;main.c,231 :: 		dysp_on();
	CALL       _dysp_on+0
;main.c,232 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _byte2double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,233 :: 		asm CLRWDT;
	CLRWDT
;main.c,234 :: 		if(bypas == 0) {
	MOVF       _bypas+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc248
;main.c,235 :: 		bypas = 1;
	MOVLW      1
	MOVWF      _bypas+0
;main.c,236 :: 		cap_mem = cap;
	MOVF       main_cap+0, 0
	MOVWF      _cap_mem+0
;main.c,237 :: 		ind_mem = ind;
	MOVF       main_ind+0, 0
	MOVWF      _ind_mem+0
;main.c,238 :: 		SW_mem = SW;
	MOVF       main_SW+0, 0
	MOVWF      _SW_mem+0
;main.c,239 :: 		cap = 0;
	CLRF       main_cap+0
;main.c,240 :: 		ind = 0;
	CLRF       main_ind+0
;main.c,241 :: 		SW = 1;
	MOVLW      1
	MOVWF      main_SW+0
;main.c,242 :: 		set_ind(ind);
	CLRF       FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,243 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,244 :: 		set_SW(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,245 :: 		if(Loss_mode==0) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc249
	CALL       _lcd_ind+0
L_button_proc249:
;main.c,246 :: 		Auto_mem = Auto;
	MOVF       _Auto+0, 0
	MOVWF      _Auto_mem+0
;main.c,247 :: 		Auto = 0;
	CLRF       _Auto+0
;main.c,248 :: 		}
	GOTO       L_button_proc250
L_button_proc248:
;main.c,250 :: 		bypas = 0;
	CLRF       _bypas+0
;main.c,251 :: 		cap = cap_mem;
	MOVF       _cap_mem+0, 0
	MOVWF      main_cap+0
;main.c,252 :: 		ind = ind_mem;
	MOVF       _ind_mem+0, 0
	MOVWF      main_ind+0
;main.c,253 :: 		SW = SW_mem;
	MOVF       _SW_mem+0, 0
	MOVWF      main_SW+0
;main.c,254 :: 		set_cap(cap);
	MOVF       _cap_mem+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,255 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,256 :: 		set_SW(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,257 :: 		if(Loss_mode==0) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc251
	CALL       _lcd_ind+0
L_button_proc251:
;main.c,258 :: 		Auto = Auto_mem;
	MOVF       _Auto_mem+0, 0
	MOVWF      _Auto+0
;main.c,259 :: 		}
L_button_proc250:
;main.c,260 :: 		if(type==4 | type==5) {      // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc252
;main.c,261 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc253
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr10_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr10_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc254
L_button_proc253:
;main.c,262 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc255
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr11_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr11_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc256
L_button_proc255:
;main.c,263 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr12_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr12_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc256:
L_button_proc254:
;main.c,264 :: 		}
	GOTO       L_button_proc257
L_button_proc252:
;main.c,265 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc258
;main.c,266 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc259
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr13_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr13_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc260
L_button_proc259:
;main.c,267 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc261
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr14_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr14_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc262
L_button_proc261:
;main.c,268 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr15_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr15_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc262:
L_button_proc260:
;main.c,269 :: 		}
L_button_proc258:
L_button_proc257:
;main.c,270 :: 		asm CLRWDT;
	CLRWDT
;main.c,271 :: 		while(Button(&PORTB, 2, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_button_proc263:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc264
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc263
L_button_proc264:
;main.c,272 :: 		}
L_button_proc247:
;main.c,274 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       _bypas+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc265
;main.c,275 :: 		dysp_on();
	CALL       _dysp_on+0
;main.c,276 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _byte2double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,277 :: 		asm CLRWDT;
	CLRWDT
;main.c,278 :: 		if(Auto == 0) Auto = 1;
	MOVF       _Auto+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc266
	MOVLW      1
	MOVWF      _Auto+0
	GOTO       L_button_proc267
L_button_proc266:
;main.c,279 :: 		else Auto = 0;
	CLRF       _Auto+0
L_button_proc267:
;main.c,280 :: 		EEPROM_Write(2, Auto);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _Auto+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,281 :: 		if(type==4 | type==5) {      // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc268
;main.c,282 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc269
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr16_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr16_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc270
L_button_proc269:
;main.c,283 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc271
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr17_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr17_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc272
L_button_proc271:
;main.c,284 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr18_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr18_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc272:
L_button_proc270:
;main.c,285 :: 		}
	GOTO       L_button_proc273
L_button_proc268:
;main.c,286 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc274
;main.c,287 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc275
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr19_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr19_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc276
L_button_proc275:
;main.c,288 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc277
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr20_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr20_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc278
L_button_proc277:
;main.c,289 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr21_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr21_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc278:
L_button_proc276:
;main.c,290 :: 		}
L_button_proc274:
L_button_proc273:
;main.c,291 :: 		asm CLRWDT;
	CLRWDT
;main.c,292 :: 		while(Button(&PORTB, 1, 50, 0)) {lcd_pwr(); asm CLRWDT; }
L_button_proc279:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc280
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc279
L_button_proc280:
;main.c,293 :: 		}
L_button_proc265:
;main.c,294 :: 		return;
;main.c,295 :: 		}
L_end_button_proc:
	RETURN
; end of _button_proc

_show_reset:

;main.c,297 :: 		void show_reset() {
;main.c,298 :: 		atu_reset();
	CALL       _atu_reset+0
;main.c,299 :: 		SW = 1;
	MOVLW      1
	MOVWF      main_SW+0
;main.c,300 :: 		set_sw(SW);
	MOVLW      1
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,301 :: 		EEPROM_Write(255, 0);
	MOVLW      255
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,302 :: 		EEPROM_Write(254, 0);
	MOVLW      254
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,303 :: 		EEPROM_Write(253, 1);
	MOVLW      253
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,304 :: 		EEPROM_Write(252, 0);
	MOVLW      252
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,305 :: 		EEPROM_Write(251, 0);
	MOVLW      251
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,306 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,307 :: 		Loss_mode = 0;
	CLRF       _Loss_mode+0
;main.c,308 :: 		p_Tx = 0;
	BCF        LATA7_bit+0, BitPos(LATA7_bit+0)
;main.c,309 :: 		n_Tx = 1;
	BSF        LATA6_bit+0, BitPos(LATA6_bit+0)
;main.c,310 :: 		SWR = 0;
	CLRF       _SWR+0
	CLRF       _SWR+1
;main.c,311 :: 		PWR = 0;
	CLRF       _PWR+0
	CLRF       _PWR+1
;main.c,312 :: 		SWR_fixed_old = 0;
	CLRF       _SWR_fixed_old+0
	CLRF       _SWR_fixed_old+1
;main.c,313 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_reset281
;main.c,314 :: 		led_wr_str (2, 16, "RESET   ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr22_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr22_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,315 :: 		asm CLRWDT;
	CLRWDT
;main.c,316 :: 		delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_show_reset282:
	DECFSZ     R13, 1
	GOTO       L_show_reset282
	DECFSZ     R12, 1
	GOTO       L_show_reset282
	DECFSZ     R11, 1
	GOTO       L_show_reset282
	NOP
	NOP
;main.c,317 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr23_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr23_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,318 :: 		asm CLRWDT;
	CLRWDT
;main.c,319 :: 		}
	GOTO       L_show_reset283
L_show_reset281:
;main.c,320 :: 		else if(type!=0) {// 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_show_reset284
;main.c,321 :: 		led_wr_str (1, 0, "RESET   ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr24_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr24_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,322 :: 		asm CLRWDT;
	CLRWDT
;main.c,323 :: 		delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_show_reset285:
	DECFSZ     R13, 1
	GOTO       L_show_reset285
	DECFSZ     R12, 1
	GOTO       L_show_reset285
	DECFSZ     R11, 1
	GOTO       L_show_reset285
	NOP
	NOP
;main.c,324 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr25_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr25_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,325 :: 		asm CLRWDT;
	CLRWDT
;main.c,326 :: 		}
	GOTO       L_show_reset286
L_show_reset284:
;main.c,328 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main.c,329 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main.c,330 :: 		}
L_show_reset286:
L_show_reset283:
;main.c,331 :: 		SWR_old = 10000;
	MOVLW      16
	MOVWF      _SWR_old+0
	MOVLW      39
	MOVWF      _SWR_old+1
;main.c,332 :: 		Power_old = 10000;
	MOVLW      16
	MOVWF      _Power_old+0
	MOVLW      39
	MOVWF      _Power_old+1
;main.c,333 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,334 :: 		return;
;main.c,335 :: 		}
L_end_show_reset:
	RETURN
; end of _show_reset

_btn_push:

;main.c,337 :: 		void btn_push() {
;main.c,338 :: 		asm CLRWDT;
	CLRWDT
;main.c,339 :: 		if(type==4 | type==5)  {   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_btn_push287
;main.c,340 :: 		led_wr_str (2, 16+12*4, "TUNE", 4);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr26_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr26_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,341 :: 		}
	GOTO       L_btn_push288
L_btn_push287:
;main.c,342 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_btn_push289
;main.c,343 :: 		led_wr_str (1, 4, "TUNE", 4);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr27_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr27_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,344 :: 		}
	GOTO       L_btn_push290
L_btn_push289:
;main.c,346 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main.c,347 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main.c,348 :: 		}
L_btn_push290:
L_btn_push288:
;main.c,349 :: 		tune();
	CALL       _tune+0
;main.c,350 :: 		if(type==0) {    // real-time 2-colors led work
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_btn_push291
;main.c,351 :: 		if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__btn_push654
	MOVF       _SWR+0, 0
	SUBLW      150
L__btn_push654:
	BTFSS      STATUS+0, 0
	GOTO       L_btn_push292
	BCF        LATB+0, 6
	BSF        LATB+0, 7
	GOTO       L_btn_push293
L_btn_push292:
;main.c,352 :: 		else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__btn_push655
	MOVF       _SWR+0, 0
	SUBLW      250
L__btn_push655:
	BTFSS      STATUS+0, 0
	GOTO       L_btn_push294
	BCF        PORTB+0, 6
	BCF        PORTB+0, 7
	GOTO       L_btn_push295
L_btn_push294:
;main.c,353 :: 		else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
	BSF        PORTB+0, 6
	BCF        PORTB+0, 7
L_btn_push295:
L_btn_push293:
;main.c,354 :: 		}
	GOTO       L_btn_push296
L_btn_push291:
;main.c,355 :: 		else if(Loss_mode==0 | Loss_ind==0) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_Loss_ind+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_btn_push297
	CALL       _lcd_ind+0
L_btn_push297:
L_btn_push296:
;main.c,356 :: 		EEPROM_Write(255, cap);
	MOVLW      255
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_cap+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,357 :: 		EEPROM_Write(254, ind);
	MOVLW      254
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_ind+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,358 :: 		EEPROM_Write(253, SW);
	MOVLW      253
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_SW+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,359 :: 		EEPROM_Write(252, swr_a/256);
	MOVLW      252
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      0
	MOVWF      R4
	MOVLW      1
	MOVWF      R5
	MOVF       _swr_a+0, 0
	MOVWF      R0
	MOVF       _swr_a+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,360 :: 		EEPROM_Write(251, swr_a%256);
	MOVLW      251
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      0
	MOVWF      R4
	MOVLW      1
	MOVWF      R5
	MOVF       _swr_a+0, 0
	MOVWF      R0
	MOVF       _swr_a+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R8, 0
	MOVWF      R0
	MOVF       R9, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,361 :: 		SWR_old = 10000;
	MOVLW      16
	MOVWF      _SWR_old+0
	MOVLW      39
	MOVWF      _SWR_old+1
;main.c,362 :: 		Power_old = 10000;
	MOVLW      16
	MOVWF      _Power_old+0
	MOVLW      39
	MOVWF      _Power_old+1
;main.c,363 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,364 :: 		SWR_fixed_old = SWR;
	MOVF       _SWR+0, 0
	MOVWF      _SWR_fixed_old+0
	MOVF       _SWR+1, 0
	MOVWF      _SWR_fixed_old+1
;main.c,365 :: 		p_Tx = 0;
	BCF        LATA7_bit+0, BitPos(LATA7_bit+0)
;main.c,366 :: 		n_Tx = 1;
	BSF        LATA6_bit+0, BitPos(LATA6_bit+0)
;main.c,367 :: 		asm CLRWDT;
	CLRWDT
;main.c,368 :: 		return;
;main.c,369 :: 		}
L_end_btn_push:
	RETURN
; end of _btn_push

_lcd_prep:

;main.c,372 :: 		void lcd_prep() {
;main.c,373 :: 		asm CLRWDT;
	CLRWDT
;main.c,374 :: 		if(type==4 |type==5){   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep298
;main.c,375 :: 		if(lcd_prep_short==0) {
	MOVF       _lcd_prep_short+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep299
;main.c,376 :: 		led_wr_str (0, 22, "ATU-100", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      22
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr28_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr28_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,377 :: 		led_wr_str (2, 6, "EXT board", 9);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr29_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr29_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,378 :: 		led_wr_str (4, 16, "by N7DDC", 8);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr30_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr30_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,379 :: 		led_wr_str (6, 4, "FW ver 3.1", 10);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr31_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr31_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,380 :: 		asm CLRWDT;
	CLRWDT
;main.c,381 :: 		Delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_lcd_prep300:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep300
	DECFSZ     R12, 1
	GOTO       L_lcd_prep300
	DECFSZ     R11, 1
	GOTO       L_lcd_prep300
	NOP
	NOP
;main.c,382 :: 		asm CLRWDT;
	CLRWDT
;main.c,383 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_prep301:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep301
	DECFSZ     R12, 1
	GOTO       L_lcd_prep301
	DECFSZ     R11, 1
	GOTO       L_lcd_prep301
	NOP
	NOP
;main.c,384 :: 		asm CLRWDT;
	CLRWDT
;main.c,385 :: 		led_wr_str (0, 16, "        ", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr32_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr32_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,386 :: 		led_wr_str (2, 4, "          ", 10);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr33_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr33_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,387 :: 		led_wr_str (4, 16, "        ", 8);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr34_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr34_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,388 :: 		led_wr_str (6, 4, "          ", 10);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr35_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr35_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,389 :: 		}
L_lcd_prep299:
;main.c,390 :: 		Delay_ms(150);
	MOVLW      4
	MOVWF      R11
	MOVLW      12
	MOVWF      R12
	MOVLW      51
	MOVWF      R13
L_lcd_prep302:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep302
	DECFSZ     R12, 1
	GOTO       L_lcd_prep302
	DECFSZ     R11, 1
	GOTO       L_lcd_prep302
	NOP
	NOP
;main.c,391 :: 		if(P_High==1) led_wr_str (0, 16, "PWR=  0W", 8);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep303
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr36_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr36_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_prep304
L_lcd_prep303:
;main.c,392 :: 		else  led_wr_str (0, 16, "PWR=0.0W", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr37_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr37_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep304:
;main.c,393 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr38_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr38_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,394 :: 		if(Auto) led_wr_str (0, 16+8*12, ".", 1);
	MOVF       _Auto+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep305
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr39_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr39_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep305:
;main.c,395 :: 		}
	GOTO       L_lcd_prep306
L_lcd_prep298:
;main.c,396 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep307
;main.c,397 :: 		if(lcd_prep_short==0) {
	MOVF       _lcd_prep_short+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep308
;main.c,398 :: 		led_wr_str (0, 4, "ATU-100", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr40_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr40_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,399 :: 		led_wr_str (1, 3, "EXT board", 9);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr41_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr41_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,400 :: 		asm CLRWDT;
	CLRWDT
;main.c,401 :: 		Delay_ms(700);
	MOVLW      15
	MOVWF      R11
	MOVLW      53
	MOVWF      R12
	MOVLW      81
	MOVWF      R13
L_lcd_prep309:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep309
	DECFSZ     R12, 1
	GOTO       L_lcd_prep309
	DECFSZ     R11, 1
	GOTO       L_lcd_prep309
;main.c,402 :: 		asm CLRWDT;
	CLRWDT
;main.c,403 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_prep310:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep310
	DECFSZ     R12, 1
	GOTO       L_lcd_prep310
	DECFSZ     R11, 1
	GOTO       L_lcd_prep310
	NOP
	NOP
;main.c,404 :: 		asm CLRWDT;
	CLRWDT
;main.c,405 :: 		led_wr_str (0, 4, "by N7DDC", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr42_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr42_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,406 :: 		led_wr_str (1, 3, "FW ver 3.1", 10);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr43_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr43_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,407 :: 		asm CLRWDT;
	CLRWDT
;main.c,408 :: 		Delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_lcd_prep311:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep311
	DECFSZ     R12, 1
	GOTO       L_lcd_prep311
	DECFSZ     R11, 1
	GOTO       L_lcd_prep311
	NOP
	NOP
;main.c,409 :: 		asm CLRWDT;
	CLRWDT
;main.c,410 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_prep312:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep312
	DECFSZ     R12, 1
	GOTO       L_lcd_prep312
	DECFSZ     R11, 1
	GOTO       L_lcd_prep312
	NOP
	NOP
;main.c,411 :: 		asm CLRWDT;
	CLRWDT
;main.c,412 :: 		led_wr_str (0, 4, "        ", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr44_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr44_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,413 :: 		led_wr_str (1, 3, "          ", 10);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr45_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr45_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,414 :: 		}
L_lcd_prep308:
;main.c,415 :: 		Delay_ms(150);
	MOVLW      4
	MOVWF      R11
	MOVLW      12
	MOVWF      R12
	MOVLW      51
	MOVWF      R13
L_lcd_prep313:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep313
	DECFSZ     R12, 1
	GOTO       L_lcd_prep313
	DECFSZ     R11, 1
	GOTO       L_lcd_prep313
	NOP
	NOP
;main.c,416 :: 		if(P_High==1) led_wr_str (0, 0, "PWR=  0W", 8);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep314
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr46_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr46_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_prep315
L_lcd_prep314:
;main.c,417 :: 		else led_wr_str (0, 0, "PWR=0.0W", 8);
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr47_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr47_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep315:
;main.c,418 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr48_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr48_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,419 :: 		if(Auto) led_wr_str (0, 8, ".", 1);
	MOVF       _Auto+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep316
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr49_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr49_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep316:
;main.c,420 :: 		}
L_lcd_prep307:
L_lcd_prep306:
;main.c,421 :: 		asm CLRWDT;
	CLRWDT
;main.c,422 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,423 :: 		return;
;main.c,424 :: 		}
L_end_lcd_prep:
	RETURN
; end of _lcd_prep

_lcd_swr:

;main.c,427 :: 		void lcd_swr(int swr) {
;main.c,428 :: 		asm CLRWDT;
	CLRWDT
;main.c,429 :: 		if(swr!=SWR_old) {
	MOVF       FARG_lcd_swr_swr+1, 0
	XORWF      _SWR_old+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr658
	MOVF       _SWR_old+0, 0
	XORWF      FARG_lcd_swr_swr+0, 0
L__lcd_swr658:
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr317
;main.c,430 :: 		SWR_old = swr;
	MOVF       FARG_lcd_swr_swr+0, 0
	MOVWF      _SWR_old+0
	MOVF       FARG_lcd_swr_swr+1, 0
	MOVWF      _SWR_old+1
;main.c,431 :: 		if(swr==1) {  // Low power
	MOVLW      0
	XORWF      FARG_lcd_swr_swr+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr659
	MOVLW      1
	XORWF      FARG_lcd_swr_swr+0, 0
L__lcd_swr659:
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_swr318
;main.c,432 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, "0.00", 4);   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr319
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr50_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr50_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr320
L_lcd_swr319:
;main.c,433 :: 		else if(type!=0) led_wr_str (1, 4, "0.00", 4);  // 1602  & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr321
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr51_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr51_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr322
L_lcd_swr321:
;main.c,434 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_swr323
;main.c,435 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main.c,436 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main.c,437 :: 		}
L_lcd_swr323:
L_lcd_swr322:
L_lcd_swr320:
;main.c,438 :: 		SWR_old = 0;
	CLRF       _SWR_old+0
	CLRF       _SWR_old+1
;main.c,439 :: 		}
	GOTO       L_lcd_swr324
L_lcd_swr318:
;main.c,441 :: 		SWR_old = swr;
	MOVF       FARG_lcd_swr_swr+0, 0
	MOVWF      _SWR_old+0
	MOVF       FARG_lcd_swr_swr+1, 0
	MOVWF      _SWR_old+1
;main.c,442 :: 		IntToStr(swr, work_str);
	MOVF       FARG_lcd_swr_swr+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_lcd_swr_swr+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,443 :: 		work_str_2[0] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+0
;main.c,444 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,445 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,446 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main.c,447 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr325
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr326
L_lcd_swr325:
;main.c,448 :: 		else if(type!=0) led_wr_str (1, 4, work_str_2, 4);       // 1602  & 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr327
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr328
L_lcd_swr327:
;main.c,449 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_swr329
;main.c,450 :: 		if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_lcd_swr_swr+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr660
	MOVF       FARG_lcd_swr_swr+0, 0
	SUBLW      150
L__lcd_swr660:
	BTFSS      STATUS+0, 0
	GOTO       L_lcd_swr330
	BCF        LATB+0, 6
	BSF        LATB+0, 7
	GOTO       L_lcd_swr331
L_lcd_swr330:
;main.c,451 :: 		else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_lcd_swr_swr+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr661
	MOVF       FARG_lcd_swr_swr+0, 0
	SUBLW      250
L__lcd_swr661:
	BTFSS      STATUS+0, 0
	GOTO       L_lcd_swr332
	BCF        PORTB+0, 6
	BCF        PORTB+0, 7
	GOTO       L_lcd_swr333
L_lcd_swr332:
;main.c,452 :: 		else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
	BSF        PORTB+0, 6
	BCF        PORTB+0, 7
L_lcd_swr333:
L_lcd_swr331:
;main.c,453 :: 		}
L_lcd_swr329:
L_lcd_swr328:
L_lcd_swr326:
;main.c,454 :: 		}
L_lcd_swr324:
;main.c,455 :: 		}
L_lcd_swr317:
;main.c,456 :: 		asm CLRWDT;
	CLRWDT
;main.c,457 :: 		return;
;main.c,458 :: 		}
L_end_lcd_swr:
	RETURN
; end of _lcd_swr

_button_delay:

;main.c,461 :: 		void button_delay() {
;main.c,462 :: 		if((Button(&PORTB, 0, 25, 0)) | (Button(&PORTB, 1, 25, 0)) | (Button(&PORTB, 2, 25, 0))) {
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      25
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	MOVWF      FLOC__button_delay+0
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      25
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	IORWF       FLOC__button_delay+0, 1
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      25
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       FLOC__button_delay+0, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_delay334
;main.c,463 :: 		but = 1;
	MOVLW      1
	MOVWF      _but+0
;main.c,464 :: 		}
L_button_delay334:
;main.c,465 :: 		return;
;main.c,466 :: 		}
L_end_button_delay:
	RETURN
; end of _button_delay

_show_pwr:

;main.c,468 :: 		void show_pwr(int Power, int SWR) {
;main.c,471 :: 		a = 100;
	MOVLW      0
	MOVWF      show_pwr_a_L0+0
	MOVLW      0
	MOVWF      show_pwr_a_L0+1
	MOVLW      72
	MOVWF      show_pwr_a_L0+2
	MOVLW      133
	MOVWF      show_pwr_a_L0+3
;main.c,472 :: 		asm CLRWDT;
	CLRWDT
;main.c,474 :: 		if(Test==0 & Loss_ind==1 & SWR>=100) {
	MOVF       _Test+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_Loss_ind+0, 0
	XORLW      1
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      R1, 1
	MOVLW      128
	XORWF      FARG_show_pwr_SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr664
	MOVLW      100
	SUBWF      FARG_show_pwr_SWR+0, 0
L__show_pwr664:
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr335
;main.c,475 :: 		if(Loss_mode==0) {   // prepare
	MOVF       _Loss_mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr336
;main.c,476 :: 		if(type==4 |type==5){   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr337
;main.c,477 :: 		if(P_High==1) led_wr_str(4, 16, "ANT=  0W", 8);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr338
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr52_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr52_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr339
L_show_pwr338:
;main.c,478 :: 		else led_wr_str(4, 16, "ANT=0.0W", 8);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr53_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr53_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr339:
;main.c,479 :: 		led_wr_str(6, 16, "EFF=  0%", 8);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr54_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr54_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,480 :: 		}
	GOTO       L_show_pwr340
L_show_pwr337:
;main.c,481 :: 		else if(type==2 | type==3) {   // 128*32 OLED
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr341
;main.c,482 :: 		if(P_High==1) led_wr_str (0, 9, "ANT=  0W", 8);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr342
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr55_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr55_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr343
L_show_pwr342:
;main.c,483 :: 		else led_wr_str (0, 9, "ANT=0.0W", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr56_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr56_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr343:
;main.c,484 :: 		led_wr_str (1, 9, "EFF=  0%", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr57_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr57_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,485 :: 		}
	GOTO       L_show_pwr344
L_show_pwr341:
;main.c,486 :: 		else if(type==1) {   // 1602 LCD
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr345
;main.c,487 :: 		if(P_High==1) led_wr_str (0, 9, "AN=  0W", 7);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr346
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr58_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr58_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr347
L_show_pwr346:
;main.c,488 :: 		else led_wr_str (0, 9, "AN=0.0W", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr59_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr59_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr347:
;main.c,489 :: 		led_wr_str (1, 9, "EFF= 0%", 7);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr60_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr60_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,490 :: 		}
L_show_pwr345:
L_show_pwr344:
L_show_pwr340:
;main.c,491 :: 		}
L_show_pwr336:
;main.c,492 :: 		Loss_mode = 1;
	MOVLW      1
	MOVWF      _Loss_mode+0
;main.c,493 :: 		}
	GOTO       L_show_pwr348
L_show_pwr335:
;main.c,495 :: 		if(Loss_mode==1) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr349
	CALL       _lcd_ind+0
L_show_pwr349:
;main.c,496 :: 		Loss_mode = 0;
	CLRF       _Loss_mode+0
;main.c,497 :: 		}
L_show_pwr348:
;main.c,498 :: 		asm CLRWDT;
	CLRWDT
;main.c,499 :: 		if(Power != Power_old) {
	MOVF       FARG_show_pwr_Power+1, 0
	XORWF      _Power_old+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr665
	MOVF       _Power_old+0, 0
	XORWF      FARG_show_pwr_Power+0, 0
L__show_pwr665:
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr350
;main.c,500 :: 		Power_old = Power;
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      _Power_old+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      _Power_old+1
;main.c,502 :: 		if(P_High==0) {
	MOVF       main_P_High+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr351
;main.c,503 :: 		if(Power >= 100) {   // > 10 W
	MOVLW      128
	XORWF      FARG_show_pwr_Power+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr666
	MOVLW      100
	SUBWF      FARG_show_pwr_Power+0, 0
L__show_pwr666:
	BTFSS      STATUS+0, 0
	GOTO       L_show_pwr352
;main.c,504 :: 		Power += 5;  // rounding to 1 W
	MOVLW      5
	ADDWF      FARG_show_pwr_Power+0, 0
	MOVWF      R0
	MOVLW      0
	ADDWFC     FARG_show_pwr_Power+1, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      FARG_show_pwr_Power+0
	MOVF       R1, 0
	MOVWF      FARG_show_pwr_Power+1
;main.c,505 :: 		IntToStr(Power, work_str);
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,506 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,507 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,508 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,509 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,510 :: 		}
	GOTO       L_show_pwr353
L_show_pwr352:
;main.c,512 :: 		IntToStr(Power, work_str);
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,513 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF       _work_str+4, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr354
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
	GOTO       L_show_pwr355
L_show_pwr354:
	MOVLW      48
	MOVWF      _work_str_2+0
L_show_pwr355:
;main.c,514 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,515 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF       _work_str+5, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr356
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
	GOTO       L_show_pwr357
L_show_pwr356:
	MOVLW      48
	MOVWF      _work_str_2+2
L_show_pwr357:
;main.c,516 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,517 :: 		}
L_show_pwr353:
;main.c,518 :: 		}
	GOTO       L_show_pwr358
L_show_pwr351:
;main.c,520 :: 		if(Power<999){   // 0 - 1500 Watts
	MOVLW      128
	XORWF      FARG_show_pwr_Power+1, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr667
	MOVLW      231
	SUBWF      FARG_show_pwr_Power+0, 0
L__show_pwr667:
	BTFSC      STATUS+0, 0
	GOTO       L_show_pwr359
;main.c,521 :: 		IntToStr(Power, work_str);
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,522 :: 		work_str_2[0] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+0
;main.c,523 :: 		work_str_2[1] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+1
;main.c,524 :: 		work_str_2[2] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
;main.c,525 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,526 :: 		}
	GOTO       L_show_pwr360
L_show_pwr359:
;main.c,528 :: 		IntToStr(Power, work_str);
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,529 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,530 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,531 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,532 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main.c,533 :: 		}
L_show_pwr360:
;main.c,534 :: 		}
L_show_pwr358:
;main.c,535 :: 		if(type==4 | type==5) led_wr_str (0, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr361
	CLRF       FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr362
L_show_pwr361:
;main.c,536 :: 		else if(type!=0) led_wr_str (0, 4, work_str_2, 4);  // 1602  & 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr363
	CLRF       FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr363:
L_show_pwr362:
;main.c,538 :: 		asm CLRWDT;
	CLRWDT
;main.c,540 :: 		if(Loss_mode==1)  {
	MOVF       _Loss_mode+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr364
;main.c,541 :: 		if(ind==0 & cap==0) swr_a = SWR;
	MOVF       main_ind+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_cap+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr365
	MOVF       FARG_show_pwr_SWR+0, 0
	MOVWF      _swr_a+0
	MOVF       FARG_show_pwr_SWR+1, 0
	MOVWF      _swr_a+1
L_show_pwr365:
;main.c,542 :: 		a = 1.0 / ((swr_a/100.0 + 100.0/swr_a) * Fid_loss/10.0 * 0.115 + 1.0); // Fider loss
	MOVF       _swr_a+0, 0
	MOVWF      R0
	MOVF       _swr_a+1, 0
	MOVWF      R1
	CALL       _int2double+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+4
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+5
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+6
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+7
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      72
	MOVWF      R6
	MOVLW      133
	MOVWF      R7
	MOVF       FLOC__show_pwr+4, 0
	MOVWF      R0
	MOVF       FLOC__show_pwr+5, 0
	MOVWF      R1
	MOVF       FLOC__show_pwr+6, 0
	MOVWF      R2
	MOVF       FLOC__show_pwr+7, 0
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+0
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+1
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+2
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+3
	MOVF       FLOC__show_pwr+4, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+5, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+6, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+7, 0
	MOVWF      R7
	MOVLW      0
	MOVWF      R0
	MOVLW      0
	MOVWF      R1
	MOVLW      72
	MOVWF      R2
	MOVLW      133
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       FLOC__show_pwr+0, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+1, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+2, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+3, 0
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+0
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+1
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+2
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+3
	MOVF       _Fid_loss+0, 0
	MOVWF      R0
	CALL       _byte2double+0
	MOVF       FLOC__show_pwr+0, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+1, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+2, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      32
	MOVWF      R6
	MOVLW      130
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVLW      31
	MOVWF      R4
	MOVLW      133
	MOVWF      R5
	MOVLW      107
	MOVWF      R6
	MOVLW      123
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      127
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      R4
	MOVF       R1, 0
	MOVWF      R5
	MOVF       R2, 0
	MOVWF      R6
	MOVF       R3, 0
	MOVWF      R7
	MOVLW      0
	MOVWF      R0
	MOVLW      0
	MOVWF      R1
	MOVLW      0
	MOVWF      R2
	MOVLW      127
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+8
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+9
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+10
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+11
	MOVF       FLOC__show_pwr+8, 0
	MOVWF      show_pwr_a_L0+0
	MOVF       FLOC__show_pwr+9, 0
	MOVWF      show_pwr_a_L0+1
	MOVF       FLOC__show_pwr+10, 0
	MOVWF      show_pwr_a_L0+2
	MOVF       FLOC__show_pwr+11, 0
	MOVWF      show_pwr_a_L0+3
;main.c,543 :: 		b = 4.0 / (2.0 + SWR/100.0 + 100.0/SWR);    // SWR loss
	MOVF       FARG_show_pwr_SWR+0, 0
	MOVWF      R0
	MOVF       FARG_show_pwr_SWR+1, 0
	MOVWF      R1
	CALL       _int2double+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+4
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+5
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+6
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+7
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      72
	MOVWF      R6
	MOVLW      133
	MOVWF      R7
	MOVF       FLOC__show_pwr+4, 0
	MOVWF      R0
	MOVF       FLOC__show_pwr+5, 0
	MOVWF      R1
	MOVF       FLOC__show_pwr+6, 0
	MOVWF      R2
	MOVF       FLOC__show_pwr+7, 0
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      128
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+0
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+1
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+2
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+3
	MOVF       FLOC__show_pwr+4, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+5, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+6, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+7, 0
	MOVWF      R7
	MOVLW      0
	MOVWF      R0
	MOVLW      0
	MOVWF      R1
	MOVLW      72
	MOVWF      R2
	MOVLW      133
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       FLOC__show_pwr+0, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+1, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+2, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+3, 0
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      R4
	MOVF       R1, 0
	MOVWF      R5
	MOVF       R2, 0
	MOVWF      R6
	MOVF       R3, 0
	MOVWF      R7
	MOVLW      0
	MOVWF      R0
	MOVLW      0
	MOVWF      R1
	MOVLW      0
	MOVWF      R2
	MOVLW      129
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      show_pwr_b_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_b_L0+1
	MOVF       R2, 0
	MOVWF      show_pwr_b_L0+2
	MOVF       R3, 0
	MOVWF      show_pwr_b_L0+3
;main.c,544 :: 		if(a>=1.0) a = 1.0;
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      127
	MOVWF      R7
	MOVF       FLOC__show_pwr+8, 0
	MOVWF      R0
	MOVF       FLOC__show_pwr+9, 0
	MOVWF      R1
	MOVF       FLOC__show_pwr+10, 0
	MOVWF      R2
	MOVF       FLOC__show_pwr+11, 0
	MOVWF      R3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr366
	MOVLW      0
	MOVWF      show_pwr_a_L0+0
	MOVLW      0
	MOVWF      show_pwr_a_L0+1
	MOVLW      0
	MOVWF      show_pwr_a_L0+2
	MOVLW      127
	MOVWF      show_pwr_a_L0+3
L_show_pwr366:
;main.c,545 :: 		if(b>=1.0) b = 1.0;
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      127
	MOVWF      R7
	MOVF       show_pwr_b_L0+0, 0
	MOVWF      R0
	MOVF       show_pwr_b_L0+1, 0
	MOVWF      R1
	MOVF       show_pwr_b_L0+2, 0
	MOVWF      R2
	MOVF       show_pwr_b_L0+3, 0
	MOVWF      R3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr367
	MOVLW      0
	MOVWF      show_pwr_b_L0+0
	MOVLW      0
	MOVWF      show_pwr_b_L0+1
	MOVLW      0
	MOVWF      show_pwr_b_L0+2
	MOVLW      127
	MOVWF      show_pwr_b_L0+3
L_show_pwr367:
;main.c,546 :: 		p_ant = Power * a * b;
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      R0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      R1
	CALL       _int2double+0
	MOVF       show_pwr_a_L0+0, 0
	MOVWF      R4
	MOVF       show_pwr_a_L0+1, 0
	MOVWF      R5
	MOVF       show_pwr_a_L0+2, 0
	MOVWF      R6
	MOVF       show_pwr_a_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVF       show_pwr_b_L0+0, 0
	MOVWF      R4
	MOVF       show_pwr_b_L0+1, 0
	MOVWF      R5
	MOVF       show_pwr_b_L0+2, 0
	MOVWF      R6
	MOVF       show_pwr_b_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0, 0
	MOVWF      show_pwr_p_ant_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_p_ant_L0+1
;main.c,547 :: 		eff = a * b * 100;
	MOVF       show_pwr_a_L0+0, 0
	MOVWF      R0
	MOVF       show_pwr_a_L0+1, 0
	MOVWF      R1
	MOVF       show_pwr_a_L0+2, 0
	MOVWF      R2
	MOVF       show_pwr_a_L0+3, 0
	MOVWF      R3
	MOVF       show_pwr_b_L0+0, 0
	MOVWF      R4
	MOVF       show_pwr_b_L0+1, 0
	MOVWF      R5
	MOVF       show_pwr_b_L0+2, 0
	MOVWF      R6
	MOVF       show_pwr_b_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      72
	MOVWF      R6
	MOVLW      133
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0, 0
	MOVWF      show_pwr_eff_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_eff_L0+1
;main.c,548 :: 		if(eff>=100) eff = 99;
	MOVLW      128
	XORWF      R1, 0
	MOVWF      R2
	MOVLW      128
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr668
	MOVLW      100
	SUBWF      R0, 0
L__show_pwr668:
	BTFSS      STATUS+0, 0
	GOTO       L_show_pwr368
	MOVLW      99
	MOVWF      show_pwr_eff_L0+0
	MOVLW      0
	MOVWF      show_pwr_eff_L0+1
L_show_pwr368:
;main.c,550 :: 		if(P_High==0) {
	MOVF       main_P_High+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr369
;main.c,551 :: 		if(p_ant >= 100) {   // > 10 W
	MOVLW      128
	XORWF      show_pwr_p_ant_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr669
	MOVLW      100
	SUBWF      show_pwr_p_ant_L0+0, 0
L__show_pwr669:
	BTFSS      STATUS+0, 0
	GOTO       L_show_pwr370
;main.c,552 :: 		p_ant += 5;  // rounding to 1 W
	MOVLW      5
	ADDWF      show_pwr_p_ant_L0+0, 0
	MOVWF      R0
	MOVLW      0
	ADDWFC     show_pwr_p_ant_L0+1, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      show_pwr_p_ant_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_p_ant_L0+1
;main.c,553 :: 		IntToStr(p_ant, work_str);
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,554 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,555 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,556 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,557 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,558 :: 		}
	GOTO       L_show_pwr371
L_show_pwr370:
;main.c,560 :: 		IntToStr(p_ant, work_str);
	MOVF       show_pwr_p_ant_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_p_ant_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,561 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF       _work_str+4, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr372
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
	GOTO       L_show_pwr373
L_show_pwr372:
	MOVLW      48
	MOVWF      _work_str_2+0
L_show_pwr373:
;main.c,562 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,563 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF       _work_str+5, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr374
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
	GOTO       L_show_pwr375
L_show_pwr374:
	MOVLW      48
	MOVWF      _work_str_2+2
L_show_pwr375:
;main.c,564 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,565 :: 		}
L_show_pwr371:
;main.c,566 :: 		}
	GOTO       L_show_pwr376
L_show_pwr369:
;main.c,568 :: 		if(p_ant<999){   // 0 - 1500 Watts
	MOVLW      128
	XORWF      show_pwr_p_ant_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr670
	MOVLW      231
	SUBWF      show_pwr_p_ant_L0+0, 0
L__show_pwr670:
	BTFSC      STATUS+0, 0
	GOTO       L_show_pwr377
;main.c,569 :: 		IntToStr(p_ant, work_str);
	MOVF       show_pwr_p_ant_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_p_ant_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,570 :: 		work_str_2[0] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+0
;main.c,571 :: 		work_str_2[1] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+1
;main.c,572 :: 		work_str_2[2] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
;main.c,573 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,574 :: 		}
	GOTO       L_show_pwr378
L_show_pwr377:
;main.c,576 :: 		IntToStr(p_ant, work_str);
	MOVF       show_pwr_p_ant_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_p_ant_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,577 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,578 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,579 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,580 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main.c,581 :: 		}
L_show_pwr378:
;main.c,582 :: 		}
L_show_pwr376:
;main.c,583 :: 		if(type==4 | type==5) led_wr_str (4, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr379
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr380
L_show_pwr379:
;main.c,584 :: 		else if(type==2 | type==3) led_wr_str (0, 13, work_str_2, 4);  // 128*32
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr381
	CLRF       FARG_led_wr_str+0
	MOVLW      13
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr382
L_show_pwr381:
;main.c,585 :: 		else if(type!=0) led_wr_str (0, 12, work_str_2, 4);  // 1602
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr383
	CLRF       FARG_led_wr_str+0
	MOVLW      12
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr383:
L_show_pwr382:
L_show_pwr380:
;main.c,587 :: 		IntToStr(eff, work_str);
	MOVF       show_pwr_eff_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_eff_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,588 :: 		work_str_2[0] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
;main.c,589 :: 		work_str_2[1] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+1
;main.c,590 :: 		if(type==4 | type==5) led_wr_str(6, 16+5*12, work_str_2, 2);
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr384
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      76
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr385
L_show_pwr384:
;main.c,591 :: 		else if(type==2 | type==3) led_wr_str(1, 14, work_str_2, 2);
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr386
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      14
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr387
L_show_pwr386:
;main.c,592 :: 		else if(type==1) led_wr_str(1, 13, work_str_2, 2);
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr388
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      13
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr388:
L_show_pwr387:
L_show_pwr385:
;main.c,593 :: 		}
L_show_pwr364:
;main.c,594 :: 		}
L_show_pwr350:
;main.c,595 :: 		asm CLRWDT;
	CLRWDT
;main.c,596 :: 		return;
;main.c,597 :: 		}
L_end_show_pwr:
	RETURN
; end of _show_pwr

_lcd_pwr:

;main.c,599 :: 		void lcd_pwr() {
;main.c,600 :: 		int p = 0;
	CLRF       lcd_pwr_p_L0+0
	CLRF       lcd_pwr_p_L0+1
;main.c,602 :: 		int delta = Auto_delta - 100;
	MOVLW      100
	SUBWF      _Auto_delta+0, 0
	MOVWF      lcd_pwr_delta_L0+0
	MOVLW      0
	SUBWFB     _Auto_delta+1, 0
	MOVWF      lcd_pwr_delta_L0+1
;main.c,604 :: 		int SWR_fixed = 1;
	MOVLW      1
	MOVWF      lcd_pwr_SWR_fixed_L0+0
	MOVLW      0
	MOVWF      lcd_pwr_SWR_fixed_L0+1
;main.c,605 :: 		PWR = 0;
	CLRF       _PWR+0
	CLRF       _PWR+1
;main.c,606 :: 		asm CLRWDT;
	CLRWDT
;main.c,608 :: 		cnt = 120;
	MOVLW      120
	MOVWF      lcd_pwr_cnt_L0+0
;main.c,609 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	CLRF       lcd_pwr_peak_cnt_L0+0
L_lcd_pwr389:
	MOVF       lcd_pwr_cnt_L0+0, 0
	SUBWF      lcd_pwr_peak_cnt_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_lcd_pwr390
;main.c,610 :: 		if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC      PORTB+0, 1
	GOTO       L__lcd_pwr672
	BSF        R6, 0
	GOTO       L__lcd_pwr673
L__lcd_pwr672:
	BCF        R6, 0
L__lcd_pwr673:
	BTFSC      PORTB+0, 2
	GOTO       L__lcd_pwr674
	BSF        3, 0
	GOTO       L__lcd_pwr675
L__lcd_pwr674:
	BCF        3, 0
L__lcd_pwr675:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr676
	BTFSC      3, 0
	GOTO       L__lcd_pwr676
	BCF        R6, 0
	GOTO       L__lcd_pwr677
L__lcd_pwr676:
	BSF        R6, 0
L__lcd_pwr677:
	BTFSC      PORTB+0, 0
	GOTO       L__lcd_pwr678
	BSF        3, 0
	GOTO       L__lcd_pwr679
L__lcd_pwr678:
	BCF        3, 0
L__lcd_pwr679:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr680
	BTFSC      3, 0
	GOTO       L__lcd_pwr680
	BCF        R6, 0
	GOTO       L__lcd_pwr681
L__lcd_pwr680:
	BSF        R6, 0
L__lcd_pwr681:
	BTFSS      R6, 0
	GOTO       L_lcd_pwr392
	CALL       _button_delay+0
	MOVF       _but+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr393
	CLRF       _but+0
	GOTO       L_end_lcd_pwr
L_lcd_pwr393:
L_lcd_pwr392:
;main.c,611 :: 		get_pwr();
	CALL       _get_pwr+0
;main.c,612 :: 		if(PWR>p) {p = PWR; SWR_fixed = SWR;}
	MOVLW      128
	XORWF      lcd_pwr_p_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr682
	MOVF       _PWR+0, 0
	SUBWF      lcd_pwr_p_L0+0, 0
L__lcd_pwr682:
	BTFSC      STATUS+0, 0
	GOTO       L_lcd_pwr394
	MOVF       _PWR+0, 0
	MOVWF      lcd_pwr_p_L0+0
	MOVF       _PWR+1, 0
	MOVWF      lcd_pwr_p_L0+1
	MOVF       _SWR+0, 0
	MOVWF      lcd_pwr_SWR_fixed_L0+0
	MOVF       _SWR+1, 0
	MOVWF      lcd_pwr_SWR_fixed_L0+1
L_lcd_pwr394:
;main.c,613 :: 		Delay_ms(3);
	MOVLW      16
	MOVWF      R12
	MOVLW      148
	MOVWF      R13
L_lcd_pwr395:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr395
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr395
	NOP
;main.c,609 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	INCF       lcd_pwr_peak_cnt_L0+0, 1
;main.c,614 :: 		}
	GOTO       L_lcd_pwr389
L_lcd_pwr390:
;main.c,615 :: 		asm CLRWDT;
	CLRWDT
;main.c,616 :: 		Power = p;
	MOVF       lcd_pwr_p_L0+0, 0
	MOVWF      _Power+0
	MOVF       lcd_pwr_p_L0+1, 0
	MOVWF      _Power+1
;main.c,617 :: 		lcd_swr(SWR_fixed);
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      FARG_lcd_swr_swr+0
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      FARG_lcd_swr_swr+1
	CALL       _lcd_swr+0
;main.c,618 :: 		if(SWR_fixed>=100) {
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr683
	MOVLW      100
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
L__lcd_pwr683:
	BTFSS      STATUS+0, 0
	GOTO       L_lcd_pwr396
;main.c,619 :: 		dysp_on();          // dysplay ON
	CALL       _dysp_on+0
;main.c,620 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _byte2double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,621 :: 		}
L_lcd_pwr396:
;main.c,623 :: 		if(Auto & SWR_fixed>=Auto_delta & ((SWR_fixed>SWR_fixed_old & (SWR_fixed-SWR_fixed_old)>delta) | (SWR_fixed<SWR_fixed_old & (SWR_fixed_old-SWR_fixed)>delta) | SWR_fixed_old==999))
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _Auto_delta+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr684
	MOVF       _Auto_delta+0, 0
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
L__lcd_pwr684:
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      _Auto+0, 0
	MOVWF      R5
	MOVLW      128
	XORWF      _SWR_fixed_old+1, 0
	MOVWF      R3
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	SUBWF      R3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr685
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	SUBWF      _SWR_fixed_old+0, 0
L__lcd_pwr685:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R3
	MOVF       _SWR_fixed_old+0, 0
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      R1
	MOVF       _SWR_fixed_old+1, 0
	SUBWFB     lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R2
	MOVLW      128
	XORWF      lcd_pwr_delta_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      R2, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr686
	MOVF       R1, 0
	SUBWF      lcd_pwr_delta_L0+0, 0
L__lcd_pwr686:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      R3, 0
	MOVWF      R4
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R3
	MOVLW      128
	XORWF      _SWR_fixed_old+1, 0
	SUBWF      R3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr687
	MOVF       _SWR_fixed_old+0, 0
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
L__lcd_pwr687:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R3
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	SUBWF      _SWR_fixed_old+0, 0
	MOVWF      R1
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	SUBWFB     _SWR_fixed_old+1, 0
	MOVWF      R2
	MOVLW      128
	XORWF      lcd_pwr_delta_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      R2, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr688
	MOVF       R1, 0
	SUBWF      lcd_pwr_delta_L0+0, 0
L__lcd_pwr688:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R3, 0
	ANDWF      R0, 1
	MOVF       R0, 0
	IORWF       R4, 0
	MOVWF      R1
	MOVF       _SWR_fixed_old+1, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr689
	MOVLW      231
	XORWF      _SWR_fixed_old+0, 0
L__lcd_pwr689:
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	MOVF       R5, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_pwr397
;main.c,624 :: 		Soft_tune = 1;
	MOVLW      1
	MOVWF      _Soft_tune+0
L_lcd_pwr397:
;main.c,626 :: 		if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }   // Fast return if button pressed
	BTFSC      PORTB+0, 1
	GOTO       L__lcd_pwr690
	BSF        R6, 0
	GOTO       L__lcd_pwr691
L__lcd_pwr690:
	BCF        R6, 0
L__lcd_pwr691:
	BTFSC      PORTB+0, 2
	GOTO       L__lcd_pwr692
	BSF        3, 0
	GOTO       L__lcd_pwr693
L__lcd_pwr692:
	BCF        3, 0
L__lcd_pwr693:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr694
	BTFSC      3, 0
	GOTO       L__lcd_pwr694
	BCF        R6, 0
	GOTO       L__lcd_pwr695
L__lcd_pwr694:
	BSF        R6, 0
L__lcd_pwr695:
	BTFSC      PORTB+0, 0
	GOTO       L__lcd_pwr696
	BSF        3, 0
	GOTO       L__lcd_pwr697
L__lcd_pwr696:
	BCF        3, 0
L__lcd_pwr697:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr698
	BTFSC      3, 0
	GOTO       L__lcd_pwr698
	BCF        R6, 0
	GOTO       L__lcd_pwr699
L__lcd_pwr698:
	BSF        R6, 0
L__lcd_pwr699:
	BTFSS      R6, 0
	GOTO       L_lcd_pwr398
	CALL       _button_delay+0
	MOVF       _but+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr399
	CLRF       _but+0
	GOTO       L_end_lcd_pwr
L_lcd_pwr399:
L_lcd_pwr398:
;main.c,627 :: 		show_pwr(Power, SWR_fixed);
	MOVF       _Power+0, 0
	MOVWF      FARG_show_pwr_Power+0
	MOVF       _Power+1, 0
	MOVWF      FARG_show_pwr_Power+1
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      FARG_show_pwr_SWR+0
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      FARG_show_pwr_SWR+1
	CALL       _show_pwr+0
;main.c,629 :: 		if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC      PORTB+0, 1
	GOTO       L__lcd_pwr700
	BSF        R6, 0
	GOTO       L__lcd_pwr701
L__lcd_pwr700:
	BCF        R6, 0
L__lcd_pwr701:
	BTFSC      PORTB+0, 2
	GOTO       L__lcd_pwr702
	BSF        3, 0
	GOTO       L__lcd_pwr703
L__lcd_pwr702:
	BCF        3, 0
L__lcd_pwr703:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr704
	BTFSC      3, 0
	GOTO       L__lcd_pwr704
	BCF        R6, 0
	GOTO       L__lcd_pwr705
L__lcd_pwr704:
	BSF        R6, 0
L__lcd_pwr705:
	BTFSC      PORTB+0, 0
	GOTO       L__lcd_pwr706
	BSF        3, 0
	GOTO       L__lcd_pwr707
L__lcd_pwr706:
	BCF        3, 0
L__lcd_pwr707:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr708
	BTFSC      3, 0
	GOTO       L__lcd_pwr708
	BCF        R6, 0
	GOTO       L__lcd_pwr709
L__lcd_pwr708:
	BSF        R6, 0
L__lcd_pwr709:
	BTFSS      R6, 0
	GOTO       L_lcd_pwr400
	CALL       _button_delay+0
	MOVF       _but+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr401
	CLRF       _but+0
	GOTO       L_end_lcd_pwr
L_lcd_pwr401:
L_lcd_pwr400:
;main.c,630 :: 		asm CLRWDT;
	CLRWDT
;main.c,631 :: 		if(Overload==1) {
	MOVF       main_Overload+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr402
;main.c,632 :: 		if(type==4 | type==5) {                  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_pwr403
;main.c,633 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr61_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr61_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,634 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr404:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr404
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr404
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr404
;main.c,635 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr62_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr62_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,636 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr405:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr405
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr405
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr405
	NOP
	NOP
;main.c,637 :: 		asm CLRWDT;
	CLRWDT
;main.c,638 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr63_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr63_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,639 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr406:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr406
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr406
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr406
	NOP
;main.c,640 :: 		asm CLRWDT;
	CLRWDT
;main.c,641 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr64_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr64_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,642 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr407:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr407
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr407
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr407
	NOP
	NOP
;main.c,643 :: 		asm CLRWDT;
	CLRWDT
;main.c,644 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr65_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr65_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,645 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr408:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr408
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr408
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr408
	NOP
;main.c,646 :: 		asm CLRWDT;
	CLRWDT
;main.c,647 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr66_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr66_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,648 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr409:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr409
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr409
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr409
	NOP
	NOP
;main.c,649 :: 		asm CLRWDT;
	CLRWDT
;main.c,650 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr67_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr67_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,651 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr410:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr410
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr410
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr410
;main.c,652 :: 		led_wr_str (2, 16, "SWR=    ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr68_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr68_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,653 :: 		}
	GOTO       L_lcd_pwr411
L_lcd_pwr403:
;main.c,654 :: 		else if(type!=0)  {        // 1602  & 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_pwr412
;main.c,655 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr69_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr69_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,656 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr413:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr413
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr413
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr413
;main.c,657 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr70_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr70_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,658 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr414:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr414
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr414
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr414
	NOP
	NOP
;main.c,659 :: 		asm CLRWDT;
	CLRWDT
;main.c,660 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr71_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr71_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,661 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr415:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr415
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr415
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr415
	NOP
;main.c,662 :: 		asm CLRWDT;
	CLRWDT
;main.c,663 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr72_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr72_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,664 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr416:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr416
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr416
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr416
	NOP
	NOP
;main.c,665 :: 		asm CLRWDT;
	CLRWDT
;main.c,666 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr73_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr73_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,667 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr417:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr417
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr417
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr417
	NOP
;main.c,668 :: 		asm CLRWDT;
	CLRWDT
;main.c,669 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr74_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr74_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,670 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr418:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr418
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr418
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr418
	NOP
	NOP
;main.c,671 :: 		asm CLRWDT;
	CLRWDT
;main.c,672 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr75_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr75_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,673 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr419:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr419
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr419
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr419
;main.c,674 :: 		led_wr_str (1, 0, "SWR=    ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr76_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr76_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,675 :: 		}
L_lcd_pwr412:
L_lcd_pwr411:
;main.c,676 :: 		asm CLRWDT;
	CLRWDT
;main.c,677 :: 		SWR_old = 10000;
	MOVLW      16
	MOVWF      _SWR_old+0
	MOVLW      39
	MOVWF      _SWR_old+1
;main.c,678 :: 		lcd_swr(SWR_fixed);
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      FARG_lcd_swr_swr+0
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      FARG_lcd_swr_swr+1
	CALL       _lcd_swr+0
;main.c,679 :: 		}
L_lcd_pwr402:
;main.c,680 :: 		return;
;main.c,681 :: 		}
L_end_lcd_pwr:
	RETURN
; end of _lcd_pwr

_lcd_ind:

;main.c,683 :: 		void lcd_ind() {
;main.c,685 :: 		asm CLRWDT;
	CLRWDT
;main.c,687 :: 		work_int = 0;
	CLRF       _work_int+0
	CLRF       _work_int+1
;main.c,688 :: 		if(ind.B0) work_int += Ind1;
	BTFSS      main_ind+0, 0
	GOTO       L_lcd_ind421
	MOVF       _Ind1+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind1+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind421:
;main.c,689 :: 		if(ind.B1) work_int += Ind2;
	BTFSS      main_ind+0, 1
	GOTO       L_lcd_ind422
	MOVF       _Ind2+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind2+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind422:
;main.c,690 :: 		if(ind.B2) work_int += Ind3;
	BTFSS      main_ind+0, 2
	GOTO       L_lcd_ind423
	MOVF       _Ind3+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind3+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind423:
;main.c,691 :: 		if(ind.B3) work_int += Ind4;
	BTFSS      main_ind+0, 3
	GOTO       L_lcd_ind424
	MOVF       _Ind4+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind4+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind424:
;main.c,692 :: 		if(ind.B4) work_int += Ind5;
	BTFSS      main_ind+0, 4
	GOTO       L_lcd_ind425
	MOVF       _Ind5+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind5+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind425:
;main.c,693 :: 		if(ind.B5) work_int += Ind6;
	BTFSS      main_ind+0, 5
	GOTO       L_lcd_ind426
	MOVF       _Ind6+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind6+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind426:
;main.c,694 :: 		if(ind.B6) work_int += Ind7;
	BTFSS      main_ind+0, 6
	GOTO       L_lcd_ind427
	MOVF       _Ind7+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind7+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind427:
;main.c,695 :: 		if(work_int>9999) {    // more then 9999 nH
	MOVLW      128
	XORLW      39
	MOVWF      R0
	MOVLW      128
	XORWF      _work_int+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_ind711
	MOVF       _work_int+0, 0
	SUBLW      15
L__lcd_ind711:
	BTFSC      STATUS+0, 0
	GOTO       L_lcd_ind428
;main.c,696 :: 		work_int += 50; // round
	MOVLW      50
	ADDWF      _work_int+0, 0
	MOVWF      R0
	MOVLW      0
	ADDWFC     _work_int+1, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      _work_int+0
	MOVF       R1, 0
	MOVWF      _work_int+1
;main.c,697 :: 		IntToStr(work_int, work_str);
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,698 :: 		work_str_2[0] = work_str[1];
	MOVF       _work_str+1, 0
	MOVWF      _work_str_2+0
;main.c,699 :: 		work_str_2[1] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+1
;main.c,700 :: 		work_str_2[2] = '.';
	MOVLW      46
	MOVWF      _work_str_2+2
;main.c,701 :: 		work_str_2[3] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+3
;main.c,702 :: 		}
	GOTO       L_lcd_ind429
L_lcd_ind428:
;main.c,704 :: 		IntToStr(work_int, work_str);
	MOVF       _work_int+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _work_int+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,705 :: 		if(work_str[2] != ' ') work_str_2[0] = work_str[2]; else work_str_2[0] = '0';
	MOVF       _work_str+2, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind430
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
	GOTO       L_lcd_ind431
L_lcd_ind430:
	MOVLW      48
	MOVWF      _work_str_2+0
L_lcd_ind431:
;main.c,706 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,707 :: 		if(work_str[3] != ' ') work_str_2[2] = work_str[3]; else work_str_2[2] = '0';
	MOVF       _work_str+3, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind432
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+2
	GOTO       L_lcd_ind433
L_lcd_ind432:
	MOVLW      48
	MOVWF      _work_str_2+2
L_lcd_ind433:
;main.c,708 :: 		if(work_str[4] != ' ') work_str_2[3] = work_str[4]; else work_str_2[3] = '0';
	MOVF       _work_str+4, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind434
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+3
	GOTO       L_lcd_ind435
L_lcd_ind434:
	MOVLW      48
	MOVWF      _work_str_2+3
L_lcd_ind435:
;main.c,709 :: 		}
L_lcd_ind429:
;main.c,710 :: 		if(type==4 | type==5) {  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind436
;main.c,711 :: 		if(SW==1) column = 4; else column = 6;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind437
	MOVLW      4
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind438
L_lcd_ind437:
	MOVLW      6
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind438:
;main.c,712 :: 		led_wr_str (column, 16, "L=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr77_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr77_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,713 :: 		led_wr_str (column, 16+6*12, "uH", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      88
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr78_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr78_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,714 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      40
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,715 :: 		}
	GOTO       L_lcd_ind439
L_lcd_ind436:
;main.c,716 :: 		else if(type==2 | type==3) {// 128*32 OLED
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind440
;main.c,717 :: 		if(SW==1) column = 0; else column = 1;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind441
	CLRF       lcd_ind_column_L0+0
	GOTO       L_lcd_ind442
L_lcd_ind441:
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind442:
;main.c,718 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr79_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr79_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,719 :: 		led_wr_str (column, 15, "uH", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr80_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr80_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,720 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      11
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,721 :: 		}
	GOTO       L_lcd_ind443
L_lcd_ind440:
;main.c,722 :: 		else if(type==1) { //  1602 LCD
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind444
;main.c,723 :: 		if(SW==1) column = 0; else column = 1;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind445
	CLRF       lcd_ind_column_L0+0
	GOTO       L_lcd_ind446
L_lcd_ind445:
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind446:
;main.c,724 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr81_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr81_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,725 :: 		led_wr_str (column, 15, "u", 1);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr82_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr82_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,726 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      11
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,727 :: 		}
L_lcd_ind444:
L_lcd_ind443:
L_lcd_ind439:
;main.c,729 :: 		asm CLRWDT;
	CLRWDT
;main.c,731 :: 		work_int = 0;
	CLRF       _work_int+0
	CLRF       _work_int+1
;main.c,732 :: 		if(cap.B0) work_int += Cap1;
	BTFSS      main_cap+0, 0
	GOTO       L_lcd_ind448
	MOVF       _Cap1+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap1+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind448:
;main.c,733 :: 		if(cap.B1) work_int += Cap2;
	BTFSS      main_cap+0, 1
	GOTO       L_lcd_ind449
	MOVF       _Cap2+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap2+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind449:
;main.c,734 :: 		if(cap.B2) work_int += Cap3;
	BTFSS      main_cap+0, 2
	GOTO       L_lcd_ind450
	MOVF       _Cap3+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap3+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind450:
;main.c,735 :: 		if(cap.B3) work_int += Cap4;
	BTFSS      main_cap+0, 3
	GOTO       L_lcd_ind451
	MOVF       _Cap4+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap4+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind451:
;main.c,736 :: 		if(cap.B4) work_int += Cap5;
	BTFSS      main_cap+0, 4
	GOTO       L_lcd_ind452
	MOVF       _Cap5+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap5+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind452:
;main.c,737 :: 		if(cap.B5) work_int += Cap6;
	BTFSS      main_cap+0, 5
	GOTO       L_lcd_ind453
	MOVF       _Cap6+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap6+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind453:
;main.c,738 :: 		if(cap.B6) work_int += Cap7;
	BTFSS      main_cap+0, 6
	GOTO       L_lcd_ind454
	MOVF       _Cap7+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap7+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind454:
;main.c,739 :: 		IntToStr(work_int, work_str);
	MOVF       _work_int+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _work_int+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,740 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,741 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,742 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,743 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main.c,745 :: 		if(type==4 | type==5) {  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind455
;main.c,746 :: 		if(SW==1) column = 6; else column = 4;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind456
	MOVLW      6
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind457
L_lcd_ind456:
	MOVLW      4
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind457:
;main.c,747 :: 		led_wr_str (column, 16, "C=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr83_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr83_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,748 :: 		led_wr_str (column, 16+6*12, "pF", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      88
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr84_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr84_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,749 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      40
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,750 :: 		}
	GOTO       L_lcd_ind458
L_lcd_ind455:
;main.c,751 :: 		else if(type==2 | type==3) {// 128*32 OLED
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind459
;main.c,752 :: 		if(SW==1) column = 1; else column = 0;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind460
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind461
L_lcd_ind460:
	CLRF       lcd_ind_column_L0+0
L_lcd_ind461:
;main.c,753 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr85_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr85_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,754 :: 		led_wr_str (column, 15, "pF", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr86_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr86_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,755 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      11
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,756 :: 		}
	GOTO       L_lcd_ind462
L_lcd_ind459:
;main.c,757 :: 		else if(type==1) { // 1602 LCD
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind463
;main.c,758 :: 		if(SW==1) column = 1; else column = 0;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind464
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind465
L_lcd_ind464:
	CLRF       lcd_ind_column_L0+0
L_lcd_ind465:
;main.c,759 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr87_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr87_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,760 :: 		led_wr_str (column, 15, "p", 1);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr88_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr88_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,761 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      11
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,762 :: 		}
L_lcd_ind463:
L_lcd_ind462:
L_lcd_ind458:
;main.c,764 :: 		asm CLRWDT;
	CLRWDT
;main.c,765 :: 		return;
;main.c,766 :: 		}
L_end_lcd_ind:
	RETURN
; end of _lcd_ind

_Test_init:

;main.c,769 :: 		void Test_init(void) { // Test mode
;main.c,770 :: 		if(type==4 | type==5)        // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_Test_init466
;main.c,771 :: 		led_wr_str (0, 10, "TEST MODE", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr89_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr89_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_Test_init467
L_Test_init466:
;main.c,772 :: 		else if(type!=0)            // 1602 LCD  or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_Test_init468
;main.c,773 :: 		led_wr_str (0, 3, "TEST MODE", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr90_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr90_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_Test_init468:
L_Test_init467:
;main.c,774 :: 		asm CLRWDT;
	CLRWDT
;main.c,775 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_Test_init469:
	DECFSZ     R13, 1
	GOTO       L_Test_init469
	DECFSZ     R12, 1
	GOTO       L_Test_init469
	DECFSZ     R11, 1
	GOTO       L_Test_init469
	NOP
	NOP
;main.c,776 :: 		asm CLRWDT;
	CLRWDT
;main.c,777 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_Test_init470:
	DECFSZ     R13, 1
	GOTO       L_Test_init470
	DECFSZ     R12, 1
	GOTO       L_Test_init470
	DECFSZ     R11, 1
	GOTO       L_Test_init470
	NOP
	NOP
;main.c,778 :: 		asm CLRWDT;
	CLRWDT
;main.c,779 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_Test_init471:
	DECFSZ     R13, 1
	GOTO       L_Test_init471
	DECFSZ     R12, 1
	GOTO       L_Test_init471
	DECFSZ     R11, 1
	GOTO       L_Test_init471
	NOP
	NOP
;main.c,780 :: 		asm CLRWDT;
	CLRWDT
;main.c,781 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_Test_init472:
	DECFSZ     R13, 1
	GOTO       L_Test_init472
	DECFSZ     R12, 1
	GOTO       L_Test_init472
	DECFSZ     R11, 1
	GOTO       L_Test_init472
	NOP
	NOP
;main.c,782 :: 		asm CLRWDT;
	CLRWDT
;main.c,783 :: 		if(type==4 | type==5)        // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_Test_init473
;main.c,784 :: 		led_wr_str (0, 10, "         ", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr91_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr91_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_Test_init474
L_Test_init473:
;main.c,785 :: 		else if(type!=0)            // 1602 LCD  or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_Test_init475
;main.c,786 :: 		led_wr_str (0, 3,  "         ", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr92_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr92_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_Test_init475:
L_Test_init474:
;main.c,787 :: 		atu_reset();
	CALL       _atu_reset+0
;main.c,788 :: 		SW = 1; // C to OUT
	MOVLW      1
	MOVWF      main_SW+0
;main.c,789 :: 		set_sw(SW);
	MOVLW      1
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,790 :: 		EEPROM_Write(255, cap);
	MOVLW      255
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_cap+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,791 :: 		EEPROM_Write(254, ind);
	MOVLW      254
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_ind+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,792 :: 		EEPROM_Write(253, SW);
	MOVLW      253
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_SW+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,794 :: 		if(type==4 | type==5)        // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_Test_init476
;main.c,795 :: 		led_wr_str (0, 16+12*8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr93_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr93_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_Test_init477
L_Test_init476:
;main.c,796 :: 		else if(type!=0)             // 1602 LCD or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_Test_init478
;main.c,797 :: 		led_wr_str (0, 8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr94_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr94_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_Test_init478:
L_Test_init477:
;main.c,799 :: 		lcd_prep_short = 1;
	MOVLW      1
	MOVWF      _lcd_prep_short+0
;main.c,800 :: 		lcd_prep();
	CALL       _lcd_prep+0
;main.c,801 :: 		return;
;main.c,802 :: 		}
L_end_Test_init:
	RETURN
; end of _Test_init

_cells_init:

;main.c,805 :: 		void cells_init(void) {
;main.c,807 :: 		asm CLRWDT;
	CLRWDT
;main.c,809 :: 		type = EEPROM_Read(1); // type of display
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      _type+0
;main.c,810 :: 		if(EEPROM_Read(2) == 1) Auto = 1;
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_cells_init479
	MOVLW      1
	MOVWF      _Auto+0
L_cells_init479:
;main.c,811 :: 		Rel_Del = Bcd2Dec(EEPROM_Read(3)); // Relay's Delay
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      main_Rel_Del+0
	CLRF       main_Rel_Del+1
;main.c,812 :: 		Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10;  // Auto_delta
	MOVLW      4
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      _Auto_delta+0
	MOVF       R1, 0
	MOVWF      _Auto_delta+1
;main.c,813 :: 		min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10; // P_min_for_start
	MOVLW      5
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      main_min_for_start+0
	MOVF       R1, 0
	MOVWF      main_min_for_start+1
;main.c,814 :: 		max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10; // P_max_for_start
	MOVLW      6
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      main_max_for_start+0
	MOVF       R1, 0
	MOVWF      main_max_for_start+1
;main.c,817 :: 		max_swr = Bcd2Dec(EEPROM_Read(9)) * 10; // Max SWR
	MOVLW      9
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      main_max_swr+0
	MOVF       R1, 0
	MOVWF      main_max_swr+1
;main.c,818 :: 		L_q = EEPROM_Read(10);
	MOVLW      10
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_L_q+0
;main.c,819 :: 		L_linear = EEPROM_Read(11);
	MOVLW      11
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_L_linear+0
;main.c,820 :: 		C_q = EEPROM_Read(12);
	MOVLW      12
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_C_q+0
;main.c,821 :: 		C_linear = EEPROM_Read(13);
	MOVLW      13
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_C_linear+0
;main.c,822 :: 		D_correction = EEPROM_Read(14);
	MOVLW      14
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_D_correction+0
;main.c,823 :: 		L_invert = EEPROM_Read(15);
	MOVLW      15
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_L_invert+0
;main.c,825 :: 		asm CLRWDT;
	CLRWDT
;main.c,826 :: 		Ind1 =  Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17));  // Ind1
	MOVLW      16
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      17
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind1+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind1+1
;main.c,827 :: 		Ind2 =  Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19));  // Ind2
	MOVLW      18
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      19
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind2+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind2+1
;main.c,828 :: 		Ind3 =  Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21));  // Ind3
	MOVLW      20
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      21
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind3+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind3+1
;main.c,829 :: 		Ind4 =  Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23));  // Ind4
	MOVLW      22
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      23
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind4+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind4+1
;main.c,830 :: 		Ind5 =  Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25));  // Ind5
	MOVLW      24
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      25
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind5+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind5+1
;main.c,831 :: 		Ind6 =  Bcd2Dec(EEPROM_Read(26)) * 100 + Bcd2Dec(EEPROM_Read(27));  // Ind6
	MOVLW      26
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      27
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind6+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind6+1
;main.c,832 :: 		Ind7 =  Bcd2Dec(EEPROM_Read(28)) * 100 + Bcd2Dec(EEPROM_Read(29));  // Ind7
	MOVLW      28
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      29
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind7+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind7+1
;main.c,834 :: 		Cap1 =  Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33));  // Cap1
	MOVLW      32
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      33
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap1+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap1+1
;main.c,835 :: 		Cap2 =  Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35));  // Cap2
	MOVLW      34
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      35
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap2+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap2+1
;main.c,836 :: 		Cap3 =  Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37));  // Cap3
	MOVLW      36
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      37
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap3+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap3+1
;main.c,837 :: 		Cap4 =  Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39));  // Cap4
	MOVLW      38
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      39
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap4+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap4+1
;main.c,838 :: 		Cap5 =  Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41));  // Cap5
	MOVLW      40
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      41
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap5+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap5+1
;main.c,839 :: 		Cap6 =  Bcd2Dec(EEPROM_Read(42)) * 100 + Bcd2Dec(EEPROM_Read(43));  // Cap6
	MOVLW      42
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      43
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap6+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap6+1
;main.c,840 :: 		Cap7 =  Bcd2Dec(EEPROM_Read(44)) * 100 + Bcd2Dec(EEPROM_Read(45));  // Cap7
	MOVLW      44
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      45
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap7+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap7+1
;main.c,842 :: 		P_High = EEPROM_Read(0x30);  // High power
	MOVLW      48
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_P_High+0
;main.c,843 :: 		K_Mult = Bcd2Dec(EEPROM_Read(0x31)); // Tandem Match rate
	MOVLW      49
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      main_K_Mult+0
;main.c,844 :: 		Dysp_delay = Bcd2Dec(EEPROM_Read(0x32)); // Dysplay ON delay
	MOVLW      50
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      _Dysp_delay+0
;main.c,845 :: 		Loss_ind = EEPROM_Read(0x33);
	MOVLW      51
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_Loss_ind+0
;main.c,846 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW      52
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      _Fid_loss+0
;main.c,847 :: 		asm CLRWDT;
	CLRWDT
;main.c,848 :: 		return;
;main.c,850 :: 		}
L_end_cells_init:
	RETURN
; end of _cells_init

_show_loss:

;main.c,852 :: 		void show_loss(void) {
;main.c,853 :: 		IntToStr(Fid_loss, work_str);
	MOVF       _Fid_loss+0, 0
	MOVWF      FARG_IntToStr_input+0
	CLRF       FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,854 :: 		if(Fid_loss>=10) work_str_2[0] = work_str[4];
	MOVLW      10
	SUBWF      _Fid_loss+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_show_loss480
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
	GOTO       L_show_loss481
L_show_loss480:
;main.c,855 :: 		else work_str_2[0] = '0';
	MOVLW      48
	MOVWF      _work_str_2+0
L_show_loss481:
;main.c,856 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,857 :: 		work_str_2[2] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
;main.c,858 :: 		if(type==4 | type==5) led_wr_str (2, 6, work_str_2, 3); // 128*64
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_loss482
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_loss483
L_show_loss482:
;main.c,859 :: 		else if(type!=0) led_wr_str (1, 3, work_str_2, 3); // 1602 | 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_show_loss484
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_loss484:
L_show_loss483:
;main.c,860 :: 		return;
;main.c,861 :: 		}
L_end_show_loss:
	RETURN
; end of _show_loss
