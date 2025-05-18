interactions
sendKeyEvent: aSymbol key: aCharacter
	self sendEventAndExpectHandled:
		(KeyboardEvent new
			setType: aSymbol
			buttons: 0
			position: self hand position
			keyValue: aCharacter
			hand: self hand
			stamp: Time millisecondClockValue).