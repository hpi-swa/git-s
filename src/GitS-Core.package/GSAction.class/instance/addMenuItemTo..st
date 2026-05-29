menu
addMenuItemTo: aMenu
	self isActive ifFalse: [^ self].
	aMenu
		target: self;
		add: self labelWithKeyStroke action: #run.