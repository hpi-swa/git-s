menu
addMenuItemsTo: aMenu
	aMenu
		target: self;
		add: (self isExcluded ifTrue: ['include'] ifFalse: ['exclude']), ' (x)' action: #toggleExcluded;
		add: 'inspect (i)' action: #inspect;
		add: 'explore (I)' action: #explore.