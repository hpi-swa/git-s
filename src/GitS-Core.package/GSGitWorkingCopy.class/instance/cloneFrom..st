git-operations
cloneFrom: aStringOrUrl
	| gitHead target |
	self handleCredentialsDuring: [self fsgitRepository cloneFrom: aStringOrUrl].
	gitHead := self unitOfWork ref: self headRefBasename.
	gitHead ifNil: [^ self error: 'No HEAD found after clone.'].
	target := self unitOfWork objectReferenced: self headRefBasename.
	target ifNil: [^ self inform: 'The main branch of the repository does not contain a commit.'].
	(gitHead isSymbolic and: [self isGitBranchRef: gitHead targetRef]) ifTrue: [ | branchName branch |
		branchName := gitHead targetRef allButFirst: self gitBranchesBaseName size.
		branch := self createBranchNamed: branchName atCommit: target.
		self setUpstreamRemoteName: self unitOfWork remoteNames first andRef: branchName for: branch.
		target := branch].
	target ifNotNil: [self updateSymbolicHeadTo: target].