interactions
moveTo: anObject
	| target |
	target := self find: anObject.
	self hand position = target position ifTrue: [^ self].
	self sendEvent:
		(MouseMoveEvent new
			setType: #mouseMove
			startPoint: self hand position
			endPoint: target position
			trail: {target position}
			buttons: 0
			hand: self hand
			stamp: Time millisecondClockValue)