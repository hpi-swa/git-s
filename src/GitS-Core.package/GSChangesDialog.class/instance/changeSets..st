accessing
changeSets: aCollection
	changeSets := aCollection.
	self
		changes: nil;
		changesTree: nil;
		changed: #rootNodes;
		selectedChange: nil;
		postOpen.