dialog
openDialogToCompareCommitToImage: aCommit
	^ (self pendingChangeSetsFromImageToCommit: aCommit)
		windowTitle: (self compareTitleFrom: #image to: aCommit);
		show