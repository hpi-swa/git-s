running
handleContinueCommandResult: aBlock
	self continueBlock: aBlock.
	self operation materializePendingChangeSets. "the user intends make edits in the image"