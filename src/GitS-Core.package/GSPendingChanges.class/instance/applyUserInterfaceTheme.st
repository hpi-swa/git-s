preferences
applyUserInterfaceTheme
	super applyUserInterfaceTheme.
	self future changed: #actionColor.
	self future changed: #closeColor.