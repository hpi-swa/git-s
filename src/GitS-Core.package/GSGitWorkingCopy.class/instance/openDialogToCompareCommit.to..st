dialog
openDialogToCompareCommit: aCommit to: anotherCommit
	^ (self pendingChangeSetsFromCommit: anotherCommit to: aCommit)
		windowTitle: (self compareTitleFrom: aCommit to: anotherCommit);
		show