caching
invalidate
	self creationProcess ifNotNil: #terminate.
	self
		creationProcess: nil;
		cachedCommit: nil.