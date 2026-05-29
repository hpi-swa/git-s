ui
tryEnsureRepositoryExistsIfFail: aBlock
	^ (self activeWorkingCopy ifNil: [^ self]) tryEnsureRepositoryExistsIfFail: aBlock