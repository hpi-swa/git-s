update
updateMenu
	<linterIgnoreSends: #(hasTitlebarWidgets)>
	self removeProperty: #hasTitlebarWidgets.
	super updateMenu.
	self stayUp ifTrue: [self removeStayUpBox; restoreStayUpButton].