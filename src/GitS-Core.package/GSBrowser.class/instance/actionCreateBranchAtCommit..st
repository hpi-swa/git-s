actions
actionCreateBranchAtCommit: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy createBranchAtCommit: aCommit].