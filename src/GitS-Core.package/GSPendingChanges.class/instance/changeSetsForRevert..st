change-sets
changeSetsForRevert: aCommit
	self changeSets: (self workingCopy
						changeSetsToMergeCommitIntoHead: aCommit firstParent
						withBase: aCommit).