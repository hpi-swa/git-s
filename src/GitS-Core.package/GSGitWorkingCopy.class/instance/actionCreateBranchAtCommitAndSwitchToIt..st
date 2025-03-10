actions-branches
actionCreateBranchAtCommitAndSwitchToIt: aCommit
	self actionSwitchToBranch: (self actionCreateBranchAtCommit: aCommit).