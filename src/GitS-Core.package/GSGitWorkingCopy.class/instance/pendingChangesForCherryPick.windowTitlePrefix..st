git-operations
pendingChangesForCherryPick: aCommit windowTitlePrefix: aString
	^ self pendingChanges
		changeSetsForPick: aCommit;
		windowTitle: aString, aCommit showOneLine;
		initialMessage: aCommit message;
		alwaysMaterialize;
		yourself