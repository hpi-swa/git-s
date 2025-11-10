interactions
sendKeyEvent: aSymbol key: aCharacter buttons: anInteger
	self sendEventAndExpectHandled:
		(KeyboardEvent new
			setType: aSymbol
			buttons: anInteger
			position: self hand position
			keyValue: aCharacter asciiValue
			hand: self hand
			stamp: Time millisecondClockValue).