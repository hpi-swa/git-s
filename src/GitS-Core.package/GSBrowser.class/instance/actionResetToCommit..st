actions-branches
actionResetToCommit: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionResetToCommit: aCommit].