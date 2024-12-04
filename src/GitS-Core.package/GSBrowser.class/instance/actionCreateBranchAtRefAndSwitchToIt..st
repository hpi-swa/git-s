actions-branches
actionCreateBranchAtRefAndSwitchToIt: aString
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionCreateBranchAtRefAndSwitchToIt: aString].