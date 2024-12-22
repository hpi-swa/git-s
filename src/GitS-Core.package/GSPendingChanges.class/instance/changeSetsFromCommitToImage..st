change-sets
changeSetsFromCommitToImage: aCommit
	self changeSets: (self workingCopy changeSetsFromCommitToImage: aCommit).