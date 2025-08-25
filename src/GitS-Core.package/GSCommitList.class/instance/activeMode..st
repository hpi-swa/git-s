accessing
activeMode: aCommitListMode
	self
		basicActiveMode: aCommitListMode;
		changed: #expression; "trigger styling"
		markNotYetGenerated.
	GSGUIUtilities updateMenus.