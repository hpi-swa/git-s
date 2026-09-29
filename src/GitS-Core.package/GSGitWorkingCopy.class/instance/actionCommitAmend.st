actions-committing
actionCommitAmend
	^ (self pendingChanges
		changesFromHeadCommitToImage;
		doAmend;
		windowTitle: 'Changes to commit (amend)';
		initialMessage: self headCommit message;
		alwaysOpenDialog;
		beRefreshable;
		yourself) commit