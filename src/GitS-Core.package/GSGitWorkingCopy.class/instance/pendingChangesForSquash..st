pending-changes
pendingChangesForSquash: aCommit
	^ (self
		pendingChangesForCherryPick: aCommit
		windowTitlePrefix: 'Squash ')
			initialMessage: self headCommit message, String cr, String cr, aCommit message;
			author: nil;
			yourself