git-operations
cloneFrom: aStringOrUrl
	self handleCredentialsDuring: [self fsgitRepository cloneFrom: aStringOrUrl].