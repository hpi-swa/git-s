actions-private
beforeDialogOpen
	super beforeDialogOpen.
	self dialog addButton: self actionLabel action: [self dialogAction].