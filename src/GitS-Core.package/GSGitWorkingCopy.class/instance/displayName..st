dialog
displayName: anObject
	anObject = #image ifTrue: [^ 'the image'].
	(anObject isKindOf: GitCommit) ifTrue: [^ anObject showOneLine].
	anObject ifNil: [^ '[no commit]'].
	(anObject isKindOf: String) ifTrue: [^ GitReference shortName: anObject].
	self error: 'unknown object supplied to displayName:'.