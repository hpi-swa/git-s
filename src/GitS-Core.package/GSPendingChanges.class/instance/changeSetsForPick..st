change-sets
changeSetsForPick: aCommit
	self changeSets: (self workingCopy
						changeSetsToMergeCommitIntoHead: aCommit
						withBase: aCommit firstParent).