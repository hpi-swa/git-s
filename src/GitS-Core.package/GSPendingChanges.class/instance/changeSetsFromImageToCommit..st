change-sets
changeSetsFromImageToCommit: aCommit
	self changeSets: (self workingCopy changeSetsFromImageToCommit: aCommit).