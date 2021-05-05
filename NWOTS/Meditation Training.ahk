1::
#MaxThreadsPerHotkey 2
	Loop {
		; relaunch minigame
		ControlSend, Static7, {n}, Way of the Shinobi 3.3.1.5 ;replace with the key to open meditation
		; wait until ball is position
		sleep 800
		
		; smack that hoe
		loop 6 {
		ControlSend, Static7, {space}, Way of the Shinobi 3.3.1.5
		}
		
		; close minigame
		ControlSend, Static7, {n}, Way of the Shinobi 3.3.1.5
		sleep 600
	}
	
2::exitapp
3::pause