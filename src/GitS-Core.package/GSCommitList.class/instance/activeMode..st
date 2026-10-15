accessing
activeMode: aCommitListMode
	self
		basicActiveMode: aCommitListMode;
		recompile.
	GSGUIUtilities updateMenus.