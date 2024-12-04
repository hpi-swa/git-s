actions-branches
actionCreateGitBranchAtRef: aString
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionCreateGitBranchAtRef: aString].