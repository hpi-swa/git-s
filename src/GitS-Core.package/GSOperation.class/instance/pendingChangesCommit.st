accessing
pendingChangesCommit
	self assert: self isBatchingEnabled.
	^ self basicPendingChangesCommit ifNil: [self initializePendingChangesCommit]