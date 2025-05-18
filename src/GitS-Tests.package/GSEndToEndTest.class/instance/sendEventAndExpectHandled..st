interactions
sendEventAndExpectHandled: anEvent
	self
		sendEvent: anEvent;
		assert: anEvent wasHandled description: 'Expected event to be handled'.