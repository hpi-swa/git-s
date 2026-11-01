morphic ui
applyUserInterfaceTheme
	super applyUserInterfaceTheme.
	self
		changed: #okColor;
		changed: #cancelColor.