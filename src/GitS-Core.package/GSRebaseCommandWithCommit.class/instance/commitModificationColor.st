colors
commitModificationColor
	^ (self userInterfaceTheme get: #color for: #TextAction)
		ifNil: [Color r: 0 g: 0.4 b: 0.95]