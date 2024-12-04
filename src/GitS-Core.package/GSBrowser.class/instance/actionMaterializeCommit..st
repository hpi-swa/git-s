actions-materializing
actionMaterializeCommit: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionMaterializeCommit: aCommit].