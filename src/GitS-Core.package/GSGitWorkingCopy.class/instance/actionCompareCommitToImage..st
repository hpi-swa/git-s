actions-comparing
actionCompareCommitToImage: aCommit
	^ (self pendingChanges
		changesFromImageToCommit: aCommit;
		windowTitle: (self compareTitleFrom: #image to: aCommit);
		beRefreshable;
		yourself) show