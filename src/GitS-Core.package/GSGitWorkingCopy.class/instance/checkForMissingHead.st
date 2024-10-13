importing
checkForMissingHead
	self headCommit ifNotNil: [^ self].
	{'main'. 'master'} do: [:each |
		(self unitOfWork objectReferenced: (self gitBranchName: each)) ifNotNil: [:commit |
			self updateSymbolicHeadTo: commit.
			^ self]].