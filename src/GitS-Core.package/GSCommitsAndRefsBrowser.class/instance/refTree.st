accessing
refTree
	^ refTree ifNil: [self initializeRefTree]