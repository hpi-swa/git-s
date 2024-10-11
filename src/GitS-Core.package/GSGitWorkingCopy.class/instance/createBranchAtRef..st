branches
createBranchAtRef: aString
	| commit |
	commit := (self commitReferencedBy: aString to: 'create a branch') ifNil: [^ nil].	
	^ self createBranchAtCommit: commit fromRef: aString