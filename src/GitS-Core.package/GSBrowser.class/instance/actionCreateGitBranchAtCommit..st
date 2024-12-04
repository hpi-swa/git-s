actions-branches
actionCreateGitBranchAtCommit: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionCreateGitBranchAtCommit: aCommit].