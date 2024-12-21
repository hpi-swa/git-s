ui
commitList
	| commits |
	self ifRepositoryDoesNotExist: [^ {}].
	self activeWorkingCopy ifNil: [^ {}].
	commits := GitHistoryWalker new startingFromAll: self commitListStartingCommits.
	self ensureActiveCommitIdentityIn: commits.
	^ commits