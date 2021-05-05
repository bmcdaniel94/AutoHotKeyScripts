/*
INSTRUCTIONS:
	-Check if Mini-game is running
	-Find the highlighted Box
	-Click on the box
	-ad-nausem
*/


;;VARS DEC & USER-INPUT;;

		;;GLOBAL VARS;;
		X1 := 38
		Y1 := 470
		X2 := 309
		Y2 := 471
		
		
;;FUNCTIONS;;


#Singleinstance force

F2:: 
; Toggle := !Toggle
		
Loop {

	MouseGetPos, X, Y	; find the position of the mouse
		
	PixelSearch, X, Y, X1, Y1, X2, Y2, 0xCC0033, 60, Fast
	If (ErrorLevel = 0) { ; case 1 - find the color and click
		MouseMove, X, Y
		Click
	}
	else {	; case 2 - mini-game isn't open
		; open it
		send {.}
	}
	Sleep 800
}
return

F3:: Pause
Esc::exitapp