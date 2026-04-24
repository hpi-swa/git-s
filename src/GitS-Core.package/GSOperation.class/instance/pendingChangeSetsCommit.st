accessing
pendingChangeSetsCommit
	self assert: self isBatchingEnabled.
	^ self basicPendingChangeSetsCommit ifNil: [self initializePendingChangeSetsCommit]