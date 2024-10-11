accessing
windowTitle
	^ self shouldAlwaysOpenDialog
		ifTrue: [self basicWindowTitle]
		ifFalse: ['Resolve conflicts to ', self basicWindowTitle withFirstCharacterDownshifted]