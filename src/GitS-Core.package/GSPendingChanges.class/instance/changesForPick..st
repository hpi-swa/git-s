change-sets
changesForPick: aCommit
	self changes: (self workingCopy
						changesToMergeCommitIntoHead: aCommit
						withBase: aCommit firstParent).