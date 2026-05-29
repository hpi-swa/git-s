importing
checkForMissingHead
	| gitHead target |
	self headCommit ifNotNil: [^ self].
	gitHead := self unitOfWork ref: self headRefBasename.
	gitHead ifNil: [^ self].
	target := self unitOfWork objectReferenced: self headRefBasename.
	target ifNil: [^ self].
	(gitHead isSymbolic and: [self isExternalBranch: gitHead targetRef]) ifTrue: [ | branchName branch remoteAndRef |
		branchName := self externalBranchBasename: gitHead targetRef.
		branch := self createBranchNamed: branchName atCommit: target.
		remoteAndRef := self basicUpstreamRemoteNameAndRefForBranch: gitHead targetRef.
		remoteAndRef ifNotNil: [self setUpstreamRemoteNameAndRef: remoteAndRef for: branch].
		target := branch].
	target ifNotNil: [self updateSymbolicHeadTo: target].