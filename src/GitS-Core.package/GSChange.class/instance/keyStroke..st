ui
keyStroke: aCharacter
	aCharacter = $x ifTrue: [self toggleExcluded. ^ true].
	aCharacter = $i ifTrue: [self inspect. ^ true].
	aCharacter = $I ifTrue: [self explore. ^ true].
	^ false