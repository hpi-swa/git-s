menu
addToMenu: aMenu
	super addToMenu: aMenu.
	aMenu
		addLine;
		addItem: [:item | item contents: 'what to search:'].
	self sources do: [:each | each addToMenu: aMenu].
	aMenu
		target: self operationLifecycle;
		addLine;
		addItem: [:item | item contents: 'search using:'].
	self matchers do: [:each |
		aMenu
			add: (GSGUIUtilities menuItem: each displayName enabled: self activeMatcher = each)
			selector: #activeMatcher:
			argument: each].
	aMenu
		addLine;
		add: (GSGUIUtilities menuItem: 'case sensitive' enabled: self caseSensitive)
		action: #toggleCaseSensitive.