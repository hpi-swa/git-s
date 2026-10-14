testing
isNoop
	^ self allowsEmptyChanges not and: [self changes isEmpty]