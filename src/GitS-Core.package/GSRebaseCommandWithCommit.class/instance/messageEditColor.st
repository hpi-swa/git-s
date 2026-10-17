colors
messageEditColor
	^ (self userInterfaceTheme get: #passColor for: #TestRunner)
		ifNil: [Color r: 0 g: 0.8 b: 0]