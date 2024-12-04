actions-branches
actionResetToCommitAndRestoreIt: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionResetToCommitAndRestoreIt: aCommit].