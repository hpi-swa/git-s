ui
keyStroke: aCharacter on: aChange
	aCharacter = $r ifTrue: [
		(self activeInstallOrRevertMenuItemFor: aChange) = #revert
			ifTrue: [self revertChange: aChange].
		^ true].
	^ false