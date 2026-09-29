change-sets
changesFromCommitToImage: aCommit
	self refreshableChanges: [self workingCopy changesFromCommitToImage: aCommit].