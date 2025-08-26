updating
promptToSetIsExcludedSilently: aBoolean
	(self confirm: self edgeCaseReachedMessage) ifFalse: [^ self].
	self isExcluded: self isExcludedInEdgeCase silently: aBoolean.