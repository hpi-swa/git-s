accessing
changes: aCollection
	changes := aCollection.
	self dialog ifNotNil: [self dialog changes: aCollection].