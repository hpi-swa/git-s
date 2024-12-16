adding
ensureRef: aString
	^ self children
		detect: [:each | each ref = aString]
		ifNone: [self addRef: aString]