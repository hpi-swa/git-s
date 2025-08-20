actions-cherry-picking
actionCherryPick: aCommit
	self stashUncommittedChangesDuring: [(self pendingChangesForCherryPick: aCommit) commit].