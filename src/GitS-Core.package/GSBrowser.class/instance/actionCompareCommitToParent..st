actions-comparing
actionCompareCommitToParent: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionCompareCommitToParent: aCommit]