actions-rebasing
actionRebaseOntoCommit: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionRebaseOntoCommit: aCommit].