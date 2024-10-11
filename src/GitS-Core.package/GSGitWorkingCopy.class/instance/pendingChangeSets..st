pending-changes
pendingChangeSets: aCollection
	^ GSChangesToCommit new
		workingCopy: self;
		changeSets: aCollection;
		yourself