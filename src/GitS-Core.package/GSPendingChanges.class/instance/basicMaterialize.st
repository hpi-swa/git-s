actions-private
basicMaterialize
	self workingCopy materializeChangeSets: self changeSets.
	self dialog ifNotNil: [self dialog canDiscardEdits: true].