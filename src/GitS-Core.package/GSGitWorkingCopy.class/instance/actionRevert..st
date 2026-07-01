actions-reverting
actionRevert: aCommit
	self
		stashUncommittedChangesDuring: [
			(self pendingChangesForRevert: aCommit)
				alwaysOpenDialog;
				commit]
		description: ('reverting {1}' gitSFormat: {aCommit showOneLine}).