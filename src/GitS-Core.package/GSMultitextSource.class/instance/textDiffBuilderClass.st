styling
textDiffBuilderClass
	^ self isClassCode ifTrue: [ClassDiffBuilder] ifFalse: [TextDiffBuilder]