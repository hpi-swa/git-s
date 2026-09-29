materialization
pendingChanges
	^ self workingCopy
		changesFromCommit: self initialImageCommit
		toCommit: self pendingChangesCommit