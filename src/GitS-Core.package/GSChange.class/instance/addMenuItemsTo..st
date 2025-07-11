menu
addMenuItemsTo: aMenu
	aMenu
		target: self;
		add: (self isExcluded ifTrue: ['include'] ifFalse: ['exclude']), ' (x)' action: #toggleExcluded.
	self mapper addChangeMenuItemsTo: aMenu path: self path.