ui
handlesKeyStroke: aCharacter
	^ self keyStroke = aCharacter and: [self isActive]