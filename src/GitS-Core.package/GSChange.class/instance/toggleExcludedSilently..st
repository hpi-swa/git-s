excluding
toggleExcludedSilently: aBoolean
	self isExcluded
		ifTrue: [self includeSilently: aBoolean]
		ifFalse: [self excludeSilently: aBoolean].