interactions
sendKeystroke: aCharacter buttons: anInteger
	self
		sendKeyEvent: #keyDown key: aCharacter buttons: anInteger;
		sendKeyEvent: #keyUp key: aCharacter buttons: anInteger;
		sendKeyEvent: #keystroke key: aCharacter buttons: anInteger.