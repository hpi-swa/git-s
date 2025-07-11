actions-private
openDialog
	self dialog: (self dialogClass onChangeSets: self changeSets).
	self dialog windowTitle: self windowTitle.
	self actionBlock ifNotNil: [
		self dialog
			addButton: self actionLabel
			action: [self operationLifecycle operation: [self checkedAction]]
			color: self actionColor].
	self dialog
		addButton: self closeLabel
		action: [self operationLifecycle operation: [self close]]
		color: self closeColor;
		message: self initialMessage;
		open.
	^ self promise