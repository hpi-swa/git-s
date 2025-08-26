updating
updateIsExcludedSilently: aBoolean
	self reachedEdgeCase
		ifTrue: [self isExcludedMatchesEdgeCase ifFalse: [self promptToSetIsExcludedSilently: aBoolean]]
		ifFalse: [self isExcludedMatchesEdgeCase ifTrue: [self isExcluded: self isExcludedInEdgeCase not silently: aBoolean]].