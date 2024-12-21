actions-private
openDialog
	self dialog: (self dialogClass onChangeSets: self changeSets).
	self dialog
		windowTitle: self windowTitle;
		addCloseButton: self closeLabel;
		message: self initialMessage.
	self actionBlock ifNotNil: [
		self dialog
			addButton: self actionLabel
			action: [self operationLifecycle operation: [self checkedAction]]].
	self dialog open.
	^ self promise