colors
textColor
	^ (self userInterfaceTheme get: #textColor for: PluggableListMorph)
		ifNil: [^ Color black]