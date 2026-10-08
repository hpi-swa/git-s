accessing
changedMapper: aMapper
	self
		assert: self metadataBuilder notNil
		description: 'The metadata builder must be set before the changed mapper, so that the change can listen to the changes of that mapper'.
	changedMapper := aMapper.
	self changedMapperChanges do: [:change |
		self listenToChangedMapperChangeEvents: change].
	self updateIsExcluded.