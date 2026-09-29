pending-changes
pendingChangesForRevert: aCommit
	^ self pendingChanges
		changesForRevert: aCommit;
		initialMessage: 'Revert ', aCommit message printString;
		windowTitle: 'Revert ', aCommit showOneLine;
		alwaysMaterialize;
		yourself