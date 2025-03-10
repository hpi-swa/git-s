actions-branches
actionResetToCommit: aCommit
	| branch |
	branch := self currentBranchOrCancel.
	self unitOfWork
		updateRef: branch
		to: aCommit
		message: 'reset ', aCommit hexHash.