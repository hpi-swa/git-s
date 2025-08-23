commit-list
putAncestryCommitListOn: aStream
	self ifRepositoryDoesNotExist: [^ self].
	self activeWorkingCopy ifNil: [^ self].
	GitHistoryWalker new
		startingFromAll: self commitListStartingCommits
		do: [:commit | aStream nextPut: commit].