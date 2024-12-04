head
currentSymbolicHeadTarget
	^ self headRef isSymbolic
		ifTrue: [self currentHeadTarget]
		ifFalse: [nil]