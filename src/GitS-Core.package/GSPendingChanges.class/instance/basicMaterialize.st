actions-private
basicMaterialize
	self workingCopy materializeChanges: self changes.
	self dialog ifNotNil: [self dialog canDiscardEdits: true].