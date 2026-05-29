refs
allReferences
	self tryEnsureRepositoryExistsIfFail: [^ {}].
	^ self unitOfWork allReferences