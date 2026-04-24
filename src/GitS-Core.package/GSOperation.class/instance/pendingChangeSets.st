materialization
pendingChangeSets
	^ self workingCopy
		changeSetsFromCommit: self initialImageCommit
		toCommit: self pendingChangeSetsCommit