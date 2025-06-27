excluding
basicToggleExcluded
	self isExcluded
		ifTrue: [self basicInclude]
		ifFalse: [self basicExclude].