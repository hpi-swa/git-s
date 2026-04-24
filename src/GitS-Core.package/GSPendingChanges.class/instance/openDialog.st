actions-private
openDialog
	self dialog: (self dialogClass onChangeSets: self changeSets).
	self dialog windowTitle: self windowTitle.
	self actionBlock ifNotNil: [
		self dialog
			addButton: self actionLabel
			action: [self operationStarter ensureActiveOperationDuring: [self checkedAction]]
			color: self actionColor
			location: #bottom].
	self canRefresh ifTrue: [
		self dialog
			addButton: 'Refresh'
			action: [self operationStarter ensureActiveOperationDuring: [self refresh]]
			color: nil
			location: #changesTree].
	self dialog
		closeBlock: [self operationStarter ensureActiveOperationDuring: [self dialogIsClosing]];
		addButton: self closeLabel
		action: [self operationStarter ensureActiveOperationDuring: [self closeDialog]]
		color: self closeColor
		location: #bottom;
		message: self initialMessage;
		open.
	^ self promise