```
; theory atm
1::
  ; def regions of the log
  high_x1, high_y1, high_x2, high_y2
  middle_x1, middle_y1, middle_x2, middle_y2
  low_x1, low_y1, low_x2, low_y2
  Loop {
  SearchForHigh:
    Pixelsearch, pHighX, pHighY, high_x1, high_y1, high_x2, high_y2, ,#color, fast
    return bool ; true or false
    if ErrorLevel {
	
	}
	else {
      ; it's high hit high
      send {high keybind}
      sleep 200 ; avoid flooding packets to server
    }

  SearchForMiddle:
    Pixelsearch, pMiddleX, pMiddley,  middle_x1, middle_y1, middle_x2, middle_y2, ,#color, fast
    return bool ; true or false
    if true {
      ; it's middle hit middle
      send {middle keybind}
      sleep 200 ; avoid flooding packets to server
    }

  SearchForLow:
    Pixelsearch, pLowX, pLowY, low_x1, low_y1, low_x2, low_y2, , #color, fast
    if true {
      ; it's middle hit middle
      send {low keybind}
      sleep 200 ; avoid flooding packets to server
      
    }
  }
```