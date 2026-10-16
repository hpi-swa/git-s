colors
incomingColor
	^ ((self userInterfaceTheme get: #primitive for: #SHTextStylerST80) ifNotNil: #first)
		ifNil: [Color fromString: '#6AAA64']