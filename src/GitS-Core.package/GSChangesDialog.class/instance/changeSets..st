accessing
changeSets: aCollection
	changeSets := aCollection.
	self
		changes: nil;
		updateChangesTree;
		selectedChange:
			((self changes includes: self selectedChange)
				ifTrue: [self selectedChange]
				ifFalse: [nil]).