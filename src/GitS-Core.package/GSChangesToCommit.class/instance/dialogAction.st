actions-private
dialogAction
	self checkIsAtOriginalHeadCommit ifFalse: [^ self].
	self checkHasConflicts ifTrue: [^ self].
	self checkIsMessageEmpty ifTrue: [^ self].
	self runNow.