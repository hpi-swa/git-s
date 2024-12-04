actions-branches
actionCreateBranchAtCommit: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionCreateBranchAtCommit: aCommit].