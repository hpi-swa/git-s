actions-comparing
actionCompareCommit: aCommit to: anotherCommit
	^ (self pendingChanges
		changeSetsFromCommit: anotherCommit toCommit: aCommit;
		windowTitle: (self compareTitleFrom: aCommit to: anotherCommit);
		yourself) show