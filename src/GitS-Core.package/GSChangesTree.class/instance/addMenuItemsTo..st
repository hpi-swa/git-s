menu
addMenuItemsTo: aMenu
	self allActions do: [:each | each addMenuItemTo: aMenu].