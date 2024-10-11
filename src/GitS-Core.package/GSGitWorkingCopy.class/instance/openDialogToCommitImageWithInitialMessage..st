dialog
openDialogToCommitImageWithInitialMessage: aString
	^ self pendingChangeSetsFromHeadCommitToImage
		windowTitle: 'Changes to commit';
		initialMessage: aString;
		alwaysOpenDialog;
		commit