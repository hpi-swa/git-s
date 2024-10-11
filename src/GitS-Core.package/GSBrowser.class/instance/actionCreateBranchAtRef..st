actions
actionCreateBranchAtRef: aString
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy createBranchAtRef: aString].