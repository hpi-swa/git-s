updating
promptToSetIsExcludedSilently: aBoolean
	self changedMapperChanges ifEmpty: [^ self].
	(self confirm: self edgeCaseReachedMessage) ifFalse: [^ self].
	self isExcluded: self isExcludedInEdgeCase silently: aBoolean.