accessing
changedMapper: aMapper
	self assert: self metadataBuilder notNil.
	changedMapper := aMapper.
	self changedMapperChanges do: [:change |
		self listenToChangedMapperChangeEvents: change].
	self updateIsExcluded.