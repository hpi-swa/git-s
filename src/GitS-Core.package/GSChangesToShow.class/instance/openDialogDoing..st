actions-private
openDialogDoing: aBlock
	self dialog: (self dialogClass onChangeSets: self changeSets).
	self dialog
		windowTitle: self windowTitle;
		addCloseButton: self closeButtonName.
	aBlock value.
	self dialog open.
	^ self promise