accessing
imageCommit
	^ self isBatchingEnabled
		ifTrue: [self pendingChangesCommit]
		ifFalse: [self workingCopy createImageCommit]