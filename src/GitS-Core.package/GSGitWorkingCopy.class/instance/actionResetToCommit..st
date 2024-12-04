actions-branches
actionResetToCommit: aCommit
	| branch |
	branch := self currentBranchIfNilInformAnd: [^ false].
	self unitOfWork
		updateRef: branch
		to: aCommit
		message: 'reset ', aCommit hexHash.
	^ true