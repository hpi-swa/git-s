enumerating
allEntriesDo: aBlock
	aBlock value: self.
	self isInDirectoryMode ifTrue: [self object allEntriesDo: aBlock].