actions-comparing
actionCompareCommitToDialogCommit: aCommit
	self actionCompareCommit: aCommit to: (self selectCommitInDialog: 'Select commit to compare to').