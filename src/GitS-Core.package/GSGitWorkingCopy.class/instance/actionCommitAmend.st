actions-committing
actionCommitAmend
	^ (self pendingChanges
		changeSetsFromHeadCommitToImage;
		doAmend;
		windowTitle: 'Changes to commit (amend)';
		initialMessage: self headCommit message;
		alwaysOpenDialog;
		beRefreshable;
		yourself) commit