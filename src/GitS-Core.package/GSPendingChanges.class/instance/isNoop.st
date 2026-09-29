testing
isNoop
	^ self isMerge not and: [self changes isEmpty]