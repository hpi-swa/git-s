accessing
canMapperBeRemoved
	self hasIncludedConflicts ifTrue: [^ false].
	^ self canMapperBeRemovedForVersion: self effectiveVersionToWrite