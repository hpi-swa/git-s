interactions
click: anObject button: aNumber
	self
		moveTo: anObject;
		sendMouseButtonEvent: #mouseDown button: aNumber;
		sendMouseButtonEvent: #mouseUp button: aNumber.