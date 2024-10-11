actions-private
openDialog
	self dialog: (self dialogClass onChangeSets: self changeSets).
	self dialog
		windowTitle: self windowTitle;
		addCloseButton: self closeButtonName.
	self beforeDialogOpen.
	self dialog open.
	^ self promise