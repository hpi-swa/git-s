interactions
sendMouseButtonEvent: aSymbol button: aNumber
	self sendEventAndExpectHandled:
		(MouseButtonEvent new
			setType: aSymbol
			position: self hand position
			which: 0
			buttons: aNumber
			hand: self hand
			stamp: Time millisecondClockValue).