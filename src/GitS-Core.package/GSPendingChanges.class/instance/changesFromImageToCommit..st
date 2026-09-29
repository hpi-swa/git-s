change-sets
changesFromImageToCommit: aCommit
	self refreshableChanges: [self workingCopy changesFromImageToCommit: aCommit].