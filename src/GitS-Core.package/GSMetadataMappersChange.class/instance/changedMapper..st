accessing
changedMapper: aMapper
	changedMapper := aMapper.
	self changedMapperChanges do: [:each | each addDependent: self].
	self updateIsExcludedSilently: false.