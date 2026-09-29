running
handleContinueCommandResult: aBlock
	self continueBlock: aBlock.
	self operation materializePendingChanges. "the user intends make edits in the image"