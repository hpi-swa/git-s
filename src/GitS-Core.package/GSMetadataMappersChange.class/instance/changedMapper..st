accessing
changedMapper: aMapper
	changedMapper := aMapper.
	self changedMapperChanges do: [:change |
		self listenToChangedMapperChangeEvents: change].
	self updateIsExcluded.