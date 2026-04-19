updating
applyUserInterfaceTheme
	super applyUserInterfaceTheme.
	GSRebaseOperation applyUserInterfaceTheme.
	self changed: #operations.