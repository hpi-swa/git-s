ui
keyStroke: aCharacter
	aCharacter = $x ifTrue: [self toggleExcluded. ^ true].
	^ false