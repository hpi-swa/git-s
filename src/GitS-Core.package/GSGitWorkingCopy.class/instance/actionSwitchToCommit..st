actions-switching
actionSwitchToCommit: aCommit
	self
		actionSwitchToCommit: aCommit
		displayName: aCommit showOneLine
		updateSymbolicHeadTo: aCommit asHexHash.