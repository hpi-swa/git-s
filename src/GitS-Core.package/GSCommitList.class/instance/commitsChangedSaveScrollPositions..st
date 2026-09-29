generating
commitsChangedSaveScrollPositions: aBoolean
	| change |
	change := [self changed: #commitColumns; changed: #activeCommitIndex].
	aBoolean
		ifTrue: [GSUpdatingList
					saveScrollPositionsOf: self
					listSelector: #commitColumns
					during: change]
		ifFalse: [change value].