change-sets
changesToMergeCommitIntoHead: incomingCommit withBase: baseCommit
	self changes: (self workingCopy
						changesToMergeCommitIntoHead: incomingCommit
						withBase: baseCommit).