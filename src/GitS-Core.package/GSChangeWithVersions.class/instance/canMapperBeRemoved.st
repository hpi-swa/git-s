accessing
canMapperBeRemoved
	"an unresolved conflict has no version to write yet"
	self hasIncludedConflicts ifTrue: [^ false].
	^ self canMapperBeRemovedForVersion: self effectiveVersionToWrite