actions-external-branches
actionCreateExternalBranchAtCommit: aCommit fromRef: aStringOrNil
	| branch externalBranch |
	branch := self requestBranchNameFor: 'an external branch' at: aCommit fromRef: aStringOrNil.
	externalBranch := self externalBranchName: branch.
	self checkRefExists: externalBranch displayName: branch.
	self unitOfWork
		updateRef: externalBranch
		to: aCommit
		message: 'export from squeak'.
	aStringOrNil ifNotNil: [self checkSetUpstreamForCreatedBranch: externalBranch to: aStringOrNil].
	^ externalBranch