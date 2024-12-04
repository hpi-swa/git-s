actions-committing
actionCommitWithInitialMessage: aString
	^ (self pendingChanges
		changeSetsFromHeadCommitToImage;
		windowTitle: 'Changes to commit';
		initialMessage: aString;
		alwaysOpenDialog;
		yourself) commit