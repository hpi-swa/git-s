accessing
commitNow
	^ self cachedCommit ifNil: [self recreateNow]