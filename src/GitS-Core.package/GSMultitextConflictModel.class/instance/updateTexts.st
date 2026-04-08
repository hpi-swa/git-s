ui
updateTexts
	self isInEditMode
		ifTrue: [self isResolved
			ifTrue: [self texts: (self resolutionSources
						ifNotNil: [:sources | sources collect: #string]
						ifNil: [self someSources collect: [:source | '']])]
			ifFalse: [self changed: #text "trigger styling"]]
		ifFalse: [self isResolved
			ifTrue: [self texts: self diffSources]
			ifFalse: [self texts: self mergeSources]].