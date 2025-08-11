menu
addMenuItemsTo: aMenu
	super addMenuItemsTo: aMenu.
	self operation ifNotNil: [:operation |
		aMenu
			add: 'revert'
			target: self changeSet
			selector: #revert:
			argument: operation].