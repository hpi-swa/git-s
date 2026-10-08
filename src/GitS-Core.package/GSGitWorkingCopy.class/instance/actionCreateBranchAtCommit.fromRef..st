actions-branches
actionCreateBranchAtCommit: aCommit fromRef: aStringOrNil
	| basename branch |
	basename := self requestBranchNameFor: 'a branch' at: aCommit fromRef: aStringOrNil.
	branch := self createBranchNamed: basename atCommit: aCommit.
	aStringOrNil ifNotNil: [self checkSetUpstreamForCreatedBranch: branch to: aStringOrNil].
	^ branch