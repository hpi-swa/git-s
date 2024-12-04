actions-merging
actionMergeCommit: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionMergeCommit: aCommit].