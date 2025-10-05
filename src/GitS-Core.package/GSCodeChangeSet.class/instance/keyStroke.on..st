ui
keyStroke: aCharacter on: aChange
	aCharacter = $r ifTrue: [
		(self activeInstallOrRevertMenuItemFor: aChange) = #revert
			ifTrue: [self revertChange: aChange].
		^ true].
	(aCharacter = $b and: [self canBrowse: aChange]) ifTrue: [
		self actionBrowse: aChange.
		^ true].
	aCharacter = $n ifTrue: [self actionSendersOf: aChange. ^ true].
	aCharacter = $m ifTrue: [self actionImplementorsOf: aChange. ^ true].
	aCharacter = $N ifTrue: [self actionReferencesTo: aChange. ^ true].
	^ false