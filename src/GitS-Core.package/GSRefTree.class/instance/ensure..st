adding
ensure: aString
	| relative segments |
	aString = self ref ifTrue: [^ self].
	(self children sorted: [:each | each ref size] descending)
		detect: [:each | each wants: aString]
		ifFound: [:found | ^ found ensure: aString].
	aString ifEmpty: [^ self addTree: aString].
	relative := self relative: aString.
	segments := relative splitBy: '/'.
	segments size = 1 ifTrue: [^ self addRef: aString].
	(segments size = 2 and: [segments last isEmpty]) ifTrue: [^ self addTree: aString].
	^ (self addTree: self ref, segments first, $/)
		ensure: aString