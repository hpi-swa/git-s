menu
addMenuItemsTo: aMenu
	super addMenuItemsTo: aMenu. 
	self addInstallOrRevertMenuItemTo: aMenu.
	aMenu target: self.
	self canBrowse ifTrue: [
		aMenu add: 'browse (b)' action: #actionBrowse].
	aMenu
		add: 'senders (n)' action: #actionSenders;
		add: 'implementors (m)' action: #actionImplementors;
		add: 'references (N)' action: #actionReferences.