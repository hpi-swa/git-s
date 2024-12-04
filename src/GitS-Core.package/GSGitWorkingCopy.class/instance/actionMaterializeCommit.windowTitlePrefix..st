actions-materializing
actionMaterializeCommit: aCommit windowTitlePrefix: aString
	^ (self pendingChanges
		changeSetsFromImageToCommit: aCommit;
		windowTitle: aString, 'Load commit ', aCommit showOneLine;
		alwaysOpenDialog;
		yourself) materialize