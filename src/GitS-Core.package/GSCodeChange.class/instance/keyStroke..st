ui
keyStroke: aCharacter
	(super keyStroke: aCharacter) ifTrue: [^ true].
	aCharacter = $r ifTrue: [
		self activeInstallOrRevertMenuItem = #revert ifTrue: [self actionRevert].
		^ true].
	(aCharacter = $b and: [self canBrowse]) ifTrue: [self actionBrowse. ^ true].
	aCharacter = $n ifTrue: [self actionSenders. ^ true].
	aCharacter = $m ifTrue: [self actionImplementors. ^ true].
	aCharacter = $N ifTrue: [self actionReferences. ^ true].
	^ false