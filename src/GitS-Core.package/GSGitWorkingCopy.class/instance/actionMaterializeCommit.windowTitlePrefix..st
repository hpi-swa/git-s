actions-materializing
actionMaterializeCommit: aCommit windowTitlePrefix: aString
	^ (self pendingChanges
		changesFromImageToCommit: aCommit;
		windowTitle: aString, 'Load commit ', aCommit showOneLine;
		alwaysOpenDialog;
		yourself) materialize