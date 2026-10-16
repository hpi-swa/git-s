actions-private
openDialog
	self
		dialog: (self dialogClass onChanges: self changes);
		addActionButton;
		addRefreshButton;
		addCloseButton.
	self dialog
		windowTitle: self windowTitle;
		subtitle: self subtitle;
		closeBlock: [self operationStarter dialogIsClosing];
		message: self initialMessage;
		open.
	^ self promise