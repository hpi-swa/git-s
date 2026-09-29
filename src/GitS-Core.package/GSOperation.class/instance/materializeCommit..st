materialization
materializeCommit: aCommit
	self isBatchingEnabled ifTrue: [^ self pendingChangesCommit: aCommit].
	self materializeChanges: (self workingCopy changesFromImageToCommit: aCommit).