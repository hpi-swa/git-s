actions-comparing
actionCompareImageToCommit: aCommit
	^ (self pendingChanges
		changesFromCommitToImage: aCommit;
		windowTitle: (self compareTitleFrom: aCommit to: #image);
		beRefreshable;
		yourself) show