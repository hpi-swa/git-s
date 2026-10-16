colors
currentColor
	^ ((self userInterfaceTheme get: #string for: #SHTextStylerST80) ifNotNil: #first)
		ifNil: [Color fromString: '#2C9999']