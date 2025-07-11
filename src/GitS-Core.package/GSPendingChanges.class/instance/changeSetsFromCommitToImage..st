change-sets
changeSetsFromCommitToImage: aCommit
	self refreshableChangeSets: [self workingCopy changeSetsFromCommitToImage: aCommit].