change-sets
changeSetsFromImageToCommit: aCommit
	self refreshableChangeSets: [self workingCopy changeSetsFromImageToCommit: aCommit].