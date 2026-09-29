change-sets
changesFromCommit: aCommit toCommit: anotherCommit
	self changes: (self workingCopy changesFromCommit: aCommit toCommit: anotherCommit).