interactions
click: anObject button: aNumber
	self
		moveTo: anObject;
		sendMouseButtonEvent: #mouseDown button: aNumber expectHandled: true;
		sendMouseButtonEvent: #mouseUp button: aNumber expectHandled: false.