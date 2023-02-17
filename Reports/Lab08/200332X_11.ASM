;=========================================================
;===========Display Hex value of factorial 5==============
MOV	AL,1;	Copy 1 to AL register
MOV	BL,5;	Copy 5 to BL register

REP:
	MUL	AL,BL; 	Multiply the values at AL and BL, the answer goes to AL
	DEC	BL;	Decrement BL register by 1
	JNZ	REP;	If BL != 0 then repeat the process

;Anwer is 120 in decimal and 78 when converted to Hexadecimal
MOV	AL,8A;	1000 1010
OUT	02;	Send the value in Al to port2

MOV	AL,FF;	1111 1111
OUT	02;	Send the value in Al to port2

END;
;=========================================================
