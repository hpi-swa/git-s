actions-comparing
actionCompareCommit: aCommit to: anotherCommit
	^ (self pendingChanges
		changeSetsFromCommit: anotherCommit toCommit: aCommit;
		windowTitle: (self compareTitleFrom: anotherCommit to: aCommit);
		yourself) show