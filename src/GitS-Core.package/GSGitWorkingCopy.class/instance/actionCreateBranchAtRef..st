actions-branches
actionCreateBranchAtRef: aString
	^ self
		actionCreateBranchAtCommit: (self commitReferencedBy: aString to: 'create a branch')
		fromRef: aString