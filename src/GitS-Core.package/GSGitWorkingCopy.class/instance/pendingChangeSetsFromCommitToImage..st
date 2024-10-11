pending-changes
pendingChangeSetsFromCommitToImage: aCommit
	^ self pendingChangeSets: (self changeSetsFromCommitToImage: aCommit)