actions-branches
actionCreateBranchAtRef: aString
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionCreateBranchAtRef: aString].