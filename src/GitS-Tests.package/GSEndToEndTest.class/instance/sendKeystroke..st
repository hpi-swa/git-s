interactions
sendKeystroke: aCharacter
	self
		sendKeyEvent: #keyDown key: aCharacter;
		sendKeyEvent: #keyUp key: aCharacter;
		sendKeyEvent: #keystroke key: aCharacter.