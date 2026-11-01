initialize-release
tryInitializeHeadFromGitHead
	| gitHead target branchName branch remoteAndRef |
	self headCommit ifNotNil: [^ true].
	gitHead := (self unitOfWork ref: self headRefBasename) ifNil: [^ false].
	target := (self unitOfWork objectReferenced: self headRefBasename) ifNil: [^ false].
	(gitHead isSymbolic and: [self isExternalBranch: gitHead targetRef]) ifFalse: [^ false].
	branchName := self externalBranchBasename: gitHead targetRef.
	branch := self createBranchNamed: branchName atCommit: target.
	remoteAndRef := self basicUpstreamRemoteNameAndRefForBranch: gitHead targetRef.
	remoteAndRef ifNotNil: [self setUpstreamRemoteNameAndRef: remoteAndRef for: branch].
	self updateSymbolicHeadTo: branch.
	^ true