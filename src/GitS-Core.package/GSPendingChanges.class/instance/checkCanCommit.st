actions-private
checkCanCommit
	self checkIsAtOriginalHeadCommit ifFalse: [^ false].
	self checkHasConflicts ifTrue: [^ false].
	self checkHasIncludedChanges ifFalse: [^ false].
	self checkIsMessageEmpty ifTrue: [^ false].
	^ true