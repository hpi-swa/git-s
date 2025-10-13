change-sets
changeSetsToMergeCommitIntoHead: incomingCommit withBase: baseCommit
	self changeSets: (self workingCopy
						changeSetsToMergeCommitIntoHead: incomingCommit
						withBase: baseCommit).