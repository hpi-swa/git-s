actions-comparing
actionCompareCommitToParent: aCommit
	self actionCompareCommit: aCommit to: (self chooseCommitParent: aCommit).