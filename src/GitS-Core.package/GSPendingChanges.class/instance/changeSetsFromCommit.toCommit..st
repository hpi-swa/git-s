change-sets
changeSetsFromCommit: aCommit toCommit: anotherCommit
	self changeSets: (self workingCopy changeSetsFromCommit: aCommit toCommit: anotherCommit).