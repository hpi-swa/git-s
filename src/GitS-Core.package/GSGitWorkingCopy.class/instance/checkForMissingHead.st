importing
checkForMissingHead
	self headCommit ifNotNil: [^ self].
	{'main'. 'master'} do: [:each |
		(self unitOfWork objectReferenced: (self externalBranchName: each)) ifNotNil: [:commit |
			self updateSymbolicHeadTo: commit.
			^ self]].