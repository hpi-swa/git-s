actions
actionCompareCommitToParent: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy openDialogToCompareCommitToParent: aCommit]