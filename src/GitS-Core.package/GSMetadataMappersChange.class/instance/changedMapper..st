accessing
changedMapper: aMapper
	changedMapper := aMapper.
	self changedMapperChanges do: [:each | each when: #isExcludedChangedSilently: send: #updateIsExcludedSilently: to: self].
	self updateIsExcludedSilently: false.