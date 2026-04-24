accessing
imageCommit
	^ self isBatchingEnabled
		ifTrue: [self pendingChangeSetsCommit]
		ifFalse: [self workingCopy createImageCommit]