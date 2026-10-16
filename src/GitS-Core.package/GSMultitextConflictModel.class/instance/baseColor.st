colors
baseColor
	^ ((self userInterfaceTheme get: #argument for: #SHTextStylerST80) ifNotNil: #first)
		ifNil: [Color fromString: '#777573']