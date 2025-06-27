ui
keyStroke: aCharacter
	aCharacter = $x ifTrue: [self toggleExcludedAll. ^ true].
	^ false