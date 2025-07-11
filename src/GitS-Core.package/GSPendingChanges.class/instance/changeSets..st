accessing
changeSets: aCollection
	changeSets := aCollection.
	self dialog ifNotNil: [self dialog changeSets: aCollection].