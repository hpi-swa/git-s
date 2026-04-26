actions-external-branches
actionCreateExternalBranchAtRef: aString
	^ self
		actionCreateExternalBranchAtCommit: (self commitReferencedBy: aString to: 'create an external branch')
		fromRef: aString