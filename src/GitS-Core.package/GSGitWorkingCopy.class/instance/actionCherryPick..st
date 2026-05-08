actions-cherry-picking
actionCherryPick: aCommit
	self
		stashUncommittedChangesDuring: [(self pendingChangesForCherryPick: aCommit) commit]
		description: ('cherry-picking {1}' gitSFormat: {aCommit}).