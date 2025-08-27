interactions
sendEvent: anEvent expectHandled: aBoolean
	self sendEvent: anEvent.
	aBoolean ifTrue: [self assert: anEvent wasHandled description: 'Expected event to be handled'].