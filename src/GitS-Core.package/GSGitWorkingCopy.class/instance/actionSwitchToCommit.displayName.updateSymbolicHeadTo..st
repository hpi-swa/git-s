actions-switching
actionSwitchToCommit: aCommit displayName: aString updateSymbolicHeadTo: anotherString
	self ensureImageIsCleanOrUserDiscardsChanges.
	(self
		actionMaterializeCommit: aCommit
		windowTitlePrefix: ('Switch to {1}: ' format: {aString}))
			then: [:x | self updateSymbolicHeadTo: anotherString].