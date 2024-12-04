actions-branches
actionCreateBranchAtCommit: aCommit fromRef: aStringOrNil
	| name branch |
	name := self requestBranchNameFor: 'a branch' at: aCommit fromRef: aStringOrNil.
	name isEmptyOrNil ifTrue: [^ nil].
	branch := self createBranchNamed: name atCommit: aCommit.
	aStringOrNil ifNotNil: [self checkSetUpstreamForCreatedBranch: branch to: aStringOrNil].
	^ branch