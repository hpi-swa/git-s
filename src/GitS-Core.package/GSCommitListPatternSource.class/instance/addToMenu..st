menu
addToMenu: aMenu
	aMenu
		target: self operationLifecycle;
		add: (GSGUIUtilities menuItem: self displayName enabled: self isActive)
		action: #toggleIsActive.