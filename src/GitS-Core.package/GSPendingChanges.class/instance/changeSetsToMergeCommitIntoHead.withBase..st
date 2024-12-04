change-sets
changeSetsToMergeCommitIntoHead: rightCommit withBase: baseCommit
	self changeSets: (self workingCopy
						changeSetsToMergeCommitIntoHead: rightCommit
						withBase: baseCommit).