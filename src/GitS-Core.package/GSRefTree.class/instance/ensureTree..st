adding
ensureTree: aString
	^ self
		findTree: aString
		ifFound: [:tree | tree]
		ifNone: [self addTree: aString]