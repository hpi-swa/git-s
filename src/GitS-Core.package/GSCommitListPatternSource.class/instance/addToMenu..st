menu
addToMenu: aMenu
	aMenu
		target: self operationStarter;
		add: (GSGUIUtilities menuItem: self displayName enabled: self isActive)
		action: #toggleIsActive.