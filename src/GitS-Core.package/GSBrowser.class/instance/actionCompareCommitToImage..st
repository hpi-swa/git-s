actions-comparing
actionCompareCommitToImage: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionCompareCommitToImage: aCommit].