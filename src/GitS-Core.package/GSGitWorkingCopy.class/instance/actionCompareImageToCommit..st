actions-comparing
actionCompareImageToCommit: aCommit
	^ (self pendingChanges
		changeSetsFromCommitToImage: aCommit;
		windowTitle: (self compareTitleFrom: aCommit to: #image);
		beRefreshable;
		yourself) show