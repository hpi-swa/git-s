initialize-release
initialize
	super initialize.
	self
		buttonBuilders: Dictionary new;
		windowTitle: 'Changes';
		canDiscardEdits: false;
		changesTree: GSChangesTree new.