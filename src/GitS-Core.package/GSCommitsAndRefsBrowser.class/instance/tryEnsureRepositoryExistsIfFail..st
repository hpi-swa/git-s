ui
tryEnsureRepositoryExistsIfFail: aBlock
	^ (self workingCopyOrNil ifNil: [^ self]) tryEnsureRepositoryExistsIfFail: aBlock