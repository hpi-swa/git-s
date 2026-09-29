actions-committing
actionCommitWithInitialMessage: aString
	^ (self pendingChanges
		changesFromHeadCommitToImage;
		windowTitle: 'Changes to commit';
		initialMessage: aString;
		alwaysOpenDialog;
		beRefreshable;
		yourself) commit