; ===== CONTROL THE TRAFFIC LIGHTS - Using a loop (200332X_08.ASM) =============================

	CLO; 		Close unwanted windows.
Start:
			
	MOV AL,84; 	Copy 10000100 into the AL register.
	MOV BL,A;	10 cycles
	OUT 01; 	Red on left side and Green on right side.
	CALL 30;	Call time delay procedure

	MOV AL,48;	Copy 01001000 into the AL register.
	MOV BL,1;	1 cycle
	OUT 01;		Yellow on both sides.
	CALL 30;	Call time delay procedure	
	
	MOV AL,30;	Copy 00110000 into the AL register.
	MOV BL,5;	5 cycles
	OUT 01;		Green on left side and Red on right side.
	CALL 30;	Call time delay procedure
		
	
	JMP Start	; Jump back to the start.
	
	
; ===== Program Ends ==========================================

;---TIME DELAY PROCEDURE STORED AT ADDRESS [30]----------------
	ORG 30;		Generate machine code from address[30]
	
	PUSH BL;	Save BL on the stack
	PUSHF;		Save CPU flags on the stack
REP:
	DEC BL;		Substract 1 from BL value
	JNZ REP;	If BL !=0 ,Jump back to REP
	
	POPF;		Restore the CPU flags from the stack to their original value
	POP BL;		Restore BL from the stack to original
	
	RET;		Return from the procedure.
;---------------------------------------------------------------
	END;