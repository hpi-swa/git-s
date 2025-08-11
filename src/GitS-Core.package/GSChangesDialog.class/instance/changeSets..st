accessing
changeSets: aCollection
	changeSets := aCollection.
	self
		changes: nil;
		updateChangesTree.