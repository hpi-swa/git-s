interactions
sendControl: aCharacter
	self sendKeystroke: aCharacter buttons: (2r1000 "cmd" bitShift: MouseEvent numButtons).