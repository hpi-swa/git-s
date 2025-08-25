update
updateMenu
	self removeProperty: #hasTitlebarWidgets.
	super updateMenu.
	self stayUp ifTrue: [self removeStayUpBox; restoreStayUpButton].