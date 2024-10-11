pending-changes
pendingChangeSetsForPick: aCommit
	^ (self pendingChangeSets:
			(self
				changeSetsToMergeCommitIntoHead: aCommit
				withBase: aCommit firstParent))
		windowTitle: aCommit showOneLine;
		yourself