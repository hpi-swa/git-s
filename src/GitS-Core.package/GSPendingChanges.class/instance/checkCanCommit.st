actions-private
checkCanCommit
	self checkIsAtOriginalHeadCommit ifFalse: [^ false].
	self checkHasConflicts ifTrue: [^ false].
	self checkIsMessageEmpty ifTrue: [^ false].
	^ true