actions
actionCompareCommitToImage: aCommit
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy openDialogToShowChangeSetsFromImageTo: aCommit].