actions-git-branches
actionCreateGitBranchAtCommit: aCommit fromRef: aStringOrNil
	| branch gitRef |
	branch := self requestBranchNameFor: 'an external branch' at: aCommit fromRef: aStringOrNil.
	gitRef := self gitBranchName: branch.
	self checkRefExists: gitRef displayName: branch.
	self unitOfWork
		updateRef: gitRef
		to: aCommit
		message: 'export from squeak'.
	aStringOrNil ifNotNil: [self checkSetUpstreamForCreatedBranch: gitRef to: aStringOrNil].
	^ gitRef