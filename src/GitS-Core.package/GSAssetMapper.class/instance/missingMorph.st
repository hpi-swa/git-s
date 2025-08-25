toolbuilder
missingMorph
	^ (GSTextUtilities italic: 'Missing') asMorph
		textColor: (UserInterfaceTheme current get: #textColor for: PluggableTextMorph);
		yourself