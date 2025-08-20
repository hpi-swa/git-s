actions-reverting
actionRevert: aCommit
	self stashUncommittedChangesDuring: [(self pendingChangesForRevert: aCommit) commit].