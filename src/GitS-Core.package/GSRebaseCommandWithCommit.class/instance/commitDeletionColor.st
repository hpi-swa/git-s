colors
commitDeletionColor
	^ (self userInterfaceTheme get: #errorColor for: #TestRunner)
		ifNil: [Color r: 0.8 g: 0.15 b: 0]