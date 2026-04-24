menu
settingsMenu: aMenu
	aMenu
		target: self operationStarter;
		title: 'Search settings';
		addStayUpItem;
		add: 'help...' target: GSHelp selector: #edit: argument: #searching;
		addLine;
		addItem: [:item | item contents: 'what to enter:'].
	self modes do: [:each |
		aMenu
			add: (GSGUIUtilities menuItem: each displayName enabled: self activeMode = each)
			selector: #activeMode:
			argument: each].
	self modes do: [:each | each addToMenu: aMenu].
	self scope addToMenu: aMenu.
	^ aMenu