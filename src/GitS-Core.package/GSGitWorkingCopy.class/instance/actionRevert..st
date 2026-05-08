actions-reverting
actionRevert: aCommit
	self
		stashUncommittedChangesDuring: [(self pendingChangesForRevert: aCommit) commit]
		description: ('reverting {1}' gitSFormat: {aCommit showOneLine}).