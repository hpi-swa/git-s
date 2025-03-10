actions-git-branches
actionCreateGitBranchAtRef: aString
	^ self
		actionCreateGitBranchAtCommit: (self commitReferencedBy: aString to: 'create an external branch')
		fromRef: aString