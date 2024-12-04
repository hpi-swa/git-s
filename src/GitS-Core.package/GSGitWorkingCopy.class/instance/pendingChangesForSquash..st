pending-changes
pendingChangesForSquash: aCommit
	^ (self
		pendingChangesForCherryPick: aCommit
		windowTitlePrefix: 'Squash ')
			initialMessage: self headCommit message, String lf, String lf, aCommit message;
			yourself