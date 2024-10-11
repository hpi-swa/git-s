actions-private
beforeDialogOpen
	super beforeDialogOpen.
	self dialog message: self initialMessage.