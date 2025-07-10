pending-changes
pendingChangesForRevert: aCommit
	^ self pendingChanges
		changeSetsForRevert: aCommit;
		initialMessage: 'Revert ', aCommit message printString;
		windowTitle: 'Revert ', aCommit showOneLine;
		alwaysMaterialize;
		yourself