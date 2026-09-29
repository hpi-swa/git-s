change-sets
changesForRevert: aCommit
	self changes: (self workingCopy
						changesToMergeCommitIntoHead: aCommit firstParent
						withBase: aCommit).