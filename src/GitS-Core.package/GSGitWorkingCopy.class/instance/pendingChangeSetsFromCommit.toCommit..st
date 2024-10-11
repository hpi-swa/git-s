pending-changes
pendingChangeSetsFromCommit: aCommit toCommit: anotherCommit
	^ self pendingChangeSets: (self changeSetsFromCommit: aCommit toCommit: anotherCommit)