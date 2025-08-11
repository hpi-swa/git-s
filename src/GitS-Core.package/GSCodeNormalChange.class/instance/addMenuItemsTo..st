menu
addMenuItemsTo: aMenu
	super addMenuItemsTo: aMenu.
	aMenu
		add: 'revert'
		target: self changeSet
		selector: #revert:
		argument: self operation.