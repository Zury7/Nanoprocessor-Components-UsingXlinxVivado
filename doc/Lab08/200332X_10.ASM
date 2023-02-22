; ======================================================
; ===== 99sevseg.asm ===================================
; ===== Seven Segment Displays Port 02 to display '32'(200332X_10.ASM) =================
Start:

	
	MOV	AL,9E	; 1001 1110 
	OUT	02	; Send the data in AL to Port 02

	MOV	AL,B7	; 1011 0111
	OUT	02	; Send the data in AL to Port 02


	JMP	Start
	
	END
; ======================================================
;Note on Segment mapping
;FROM THE LEFT
	; 1st bit : TopMost 
	; 2nd bit : LeftTop
	; 3rd bit : LeftBottom
	; 4th bit : Bottom
	; 5th bit : RightBottom
	; 6th bit : Middle
	; 7th bit : TopRight
	; 8th/last bit : If 0 :left segment Elseif 1: right segment