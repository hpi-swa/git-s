actions-comparing
actionCompareCommitToImage: aCommit
	^ (self pendingChanges
		changeSetsFromImageToCommit: aCommit;
		windowTitle: (self compareTitleFrom: #image to: aCommit);
		yourself) show