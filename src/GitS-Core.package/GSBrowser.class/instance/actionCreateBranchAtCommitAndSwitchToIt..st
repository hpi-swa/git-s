actions-branches
actionCreateBranchAtCommitAndSwitchToIt: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionCreateBranchAtCommitAndSwitchToIt: aCommit].