menu
changesTreeMenu: aMenu
	(self selectedChange ifNil: [self changesTree]) addMenuItemsTo: aMenu.
	^ aMenu