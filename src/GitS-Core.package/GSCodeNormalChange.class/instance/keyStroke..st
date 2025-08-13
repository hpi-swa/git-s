ui
keyStroke: aCharacter
	(super keyStroke: aCharacter) ifTrue: [^ true].
	^ self changeSet keyStroke: aCharacter on: self